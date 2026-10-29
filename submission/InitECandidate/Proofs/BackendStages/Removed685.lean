import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.BackendStages.Alloc685
import Flapjack.Compiler.Backend.Backend
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
namespace InitECandidate.Proofs.BackendStages
def RemovedBody685_0 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 160#64)))

def RemovedBody685_1 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 2#64)

def RemovedBody685_2 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 1

def RemovedBody685_3 : StackLang.HolProg 64 :=
.seq RemovedBody685_1 RemovedBody685_2

def RemovedBody685_4 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody685_5 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) RemovedBody685_3 RemovedBody685_4

def RemovedBody685_6 : StackLang.HolProg 64 :=
.seq RemovedBody685_0 RemovedBody685_5

def RemovedBody685_7 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody685_8 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsl 7 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 5#64)))

def RemovedBody685_9 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 152#64))

def RemovedBody685_10 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 4
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 144#64))

def RemovedBody685_11 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 2
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 112#64))

def RemovedBody685_12 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 7
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 136#64))

def RemovedBody685_13 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 6
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 128#64))

def RemovedBody685_14 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 72#64))

def RemovedBody685_15 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 5
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 120#64))

def RemovedBody685_16 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 3
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 40#64))

def RemovedBody685_17 : StackLang.HolProg 64 :=
.seq RemovedBody685_15 RemovedBody685_16

def RemovedBody685_18 : StackLang.HolProg 64 :=
.seq RemovedBody685_14 RemovedBody685_17

def RemovedBody685_19 : StackLang.HolProg 64 :=
.seq RemovedBody685_13 RemovedBody685_18

def RemovedBody685_20 : StackLang.HolProg 64 :=
.seq RemovedBody685_12 RemovedBody685_19

def RemovedBody685_21 : StackLang.HolProg 64 :=
.seq RemovedBody685_11 RemovedBody685_20

def RemovedBody685_22 : StackLang.HolProg 64 :=
.seq RemovedBody685_10 RemovedBody685_21

def RemovedBody685_23 : StackLang.HolProg 64 :=
.seq RemovedBody685_9 RemovedBody685_22

def RemovedBody685_24 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody685_25 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 2887#64)

def RemovedBody685_26 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody685_27 : StackLang.HolProg 64 :=
.seq RemovedBody685_25 RemovedBody685_26

def RemovedBody685_28 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody685_29 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 2#64)

def RemovedBody685_30 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 1

def RemovedBody685_31 : StackLang.HolProg 64 :=
.seq RemovedBody685_29 RemovedBody685_30

def RemovedBody685_32 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody685_33 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) RemovedBody685_31 RemovedBody685_32

def RemovedBody685_34 : StackLang.HolProg 64 :=
.seq RemovedBody685_28 RemovedBody685_33

def RemovedBody685_35 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def RemovedBody685_36 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody685_37 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 685 3

def RemovedBody685_38 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody685_39 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody685_40 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody685_41 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody685_42 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def RemovedBody685_43 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def RemovedBody685_44 : StackLang.HolProg 64 :=
.seq RemovedBody685_42 RemovedBody685_43

def RemovedBody685_45 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def RemovedBody685_46 : StackLang.HolProg 64 :=
.seq RemovedBody685_44 RemovedBody685_45

def RemovedBody685_47 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody685_48 : StackLang.HolProg 64 :=
.seq RemovedBody685_46 RemovedBody685_47

def RemovedBody685_49 : StackLang.HolProg 64 :=
.seq RemovedBody685_41 RemovedBody685_48

def RemovedBody685_50 : StackLang.HolProg 64 :=
.seq RemovedBody685_40 RemovedBody685_49

def RemovedBody685_51 : StackLang.HolProg 64 :=
.seq RemovedBody685_39 RemovedBody685_50

def RemovedBody685_52 : StackLang.HolProg 64 :=
.seq RemovedBody685_38 RemovedBody685_51

def RemovedBody685_53 : StackLang.HolProg 64 :=
.seq RemovedBody685_37 RemovedBody685_52

def RemovedBody685_54 : StackLang.HolProg 64 :=
.seq RemovedBody685_36 RemovedBody685_53

def RemovedBody685_55 : StackLang.HolProg 64 :=
.seq RemovedBody685_35 RemovedBody685_54

def RemovedBody685_56 : StackLang.HolProg 64 :=
.seq RemovedBody685_34 RemovedBody685_55

def RemovedBody685_57 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody685_58 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody685_59 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody685_60 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody685_61 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody685_62 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody685_63 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 6 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def RemovedBody685_64 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 144#64))

def RemovedBody685_65 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 4
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 136#64))

def RemovedBody685_66 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 2
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 128#64))

def RemovedBody685_67 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 3
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 120#64))

def RemovedBody685_68 : StackLang.HolProg 64 :=
.seq RemovedBody685_66 RemovedBody685_67

def RemovedBody685_69 : StackLang.HolProg 64 :=
.seq RemovedBody685_65 RemovedBody685_68

def RemovedBody685_70 : StackLang.HolProg 64 :=
.seq RemovedBody685_64 RemovedBody685_69

def RemovedBody685_71 : StackLang.HolProg 64 :=
.seq RemovedBody685_63 RemovedBody685_70

def RemovedBody685_72 : StackLang.HolProg 64 :=
.seq RemovedBody685_62 RemovedBody685_71

def RemovedBody685_73 : StackLang.HolProg 64 :=
.seq RemovedBody685_61 RemovedBody685_72

def RemovedBody685_74 : StackLang.HolProg 64 :=
.seq RemovedBody685_60 RemovedBody685_73

def RemovedBody685_75 : StackLang.HolProg 64 :=
.seq RemovedBody685_59 RemovedBody685_74

def RemovedBody685_76 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 144#64))

def RemovedBody685_77 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 4
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 136#64))

def RemovedBody685_78 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 2
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 128#64))

def RemovedBody685_79 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 3
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 120#64))

def RemovedBody685_80 : StackLang.HolProg 64 :=
.seq RemovedBody685_78 RemovedBody685_79

def RemovedBody685_81 : StackLang.HolProg 64 :=
.seq RemovedBody685_77 RemovedBody685_80

def RemovedBody685_82 : StackLang.HolProg 64 :=
.seq RemovedBody685_76 RemovedBody685_81

def RemovedBody685_83 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def RemovedBody685_84 : StackLang.HolProg 64 :=
.seq RemovedBody685_82 RemovedBody685_83

def RemovedBody685_85 : StackLang.HolProg 64 :=
.call (some (RemovedBody685_75, 0, 685, 2)) (Sum.inl 69) (some (RemovedBody685_84, 685, 3))

def RemovedBody685_86 : StackLang.HolProg 64 :=
.seq RemovedBody685_58 RemovedBody685_85

def RemovedBody685_87 : StackLang.HolProg 64 :=
.seq RemovedBody685_57 RemovedBody685_86

def RemovedBody685_88 : StackLang.HolProg 64 :=
.seq RemovedBody685_56 RemovedBody685_87

def RemovedBody685_89 : StackLang.HolProg 64 :=
.seq RemovedBody685_27 RemovedBody685_88

def RemovedBody685_90 : StackLang.HolProg 64 :=
.seq RemovedBody685_24 RemovedBody685_89

def RemovedBody685_91 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody685_92 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 1 4
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 4)))

def RemovedBody685_93 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 5 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 0)))

def RemovedBody685_94 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody685_95 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsl 4 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 1#64)))

def RemovedBody685_96 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody685_97 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 7 4
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 0)))

def RemovedBody685_98 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody685_99 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 8 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 3)))

def RemovedBody685_100 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody685_101 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 9 4
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 3)))

def RemovedBody685_102 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody685_103 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 10 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 2)))

def RemovedBody685_104 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody685_105 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 4 4
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 2)))

def RemovedBody685_106 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 6
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 144#64))

def RemovedBody685_107 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 7
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 136#64))

def RemovedBody685_108 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 128#64))

def RemovedBody685_109 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 2
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 120#64))

def RemovedBody685_110 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 4
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 104#64))

def RemovedBody685_111 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 96#64))

def RemovedBody685_112 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 8
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 88#64))

def RemovedBody685_113 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 5
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 80#64))

def RemovedBody685_114 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 9
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 64#64))

def RemovedBody685_115 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 3
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 56#64))

def RemovedBody685_116 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 32#64))

def RemovedBody685_117 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 3
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 24#64))

def RemovedBody685_118 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 10
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody685_119 : StackLang.HolProg 64 :=
.seq RemovedBody685_117 RemovedBody685_118

def RemovedBody685_120 : StackLang.HolProg 64 :=
.seq RemovedBody685_116 RemovedBody685_119

def RemovedBody685_121 : StackLang.HolProg 64 :=
.seq RemovedBody685_115 RemovedBody685_120

def RemovedBody685_122 : StackLang.HolProg 64 :=
.seq RemovedBody685_114 RemovedBody685_121

def RemovedBody685_123 : StackLang.HolProg 64 :=
.seq RemovedBody685_113 RemovedBody685_122

def RemovedBody685_124 : StackLang.HolProg 64 :=
.seq RemovedBody685_112 RemovedBody685_123

def RemovedBody685_125 : StackLang.HolProg 64 :=
.seq RemovedBody685_111 RemovedBody685_124

def RemovedBody685_126 : StackLang.HolProg 64 :=
.seq RemovedBody685_110 RemovedBody685_125

def RemovedBody685_127 : StackLang.HolProg 64 :=
.seq RemovedBody685_109 RemovedBody685_126

def RemovedBody685_128 : StackLang.HolProg 64 :=
.seq RemovedBody685_108 RemovedBody685_127

def RemovedBody685_129 : StackLang.HolProg 64 :=
.seq RemovedBody685_107 RemovedBody685_128

def RemovedBody685_130 : StackLang.HolProg 64 :=
.seq RemovedBody685_106 RemovedBody685_129

def RemovedBody685_131 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody685_132 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 2888#64)

def RemovedBody685_133 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody685_134 : StackLang.HolProg 64 :=
.seq RemovedBody685_132 RemovedBody685_133

def RemovedBody685_135 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody685_136 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 2#64)

def RemovedBody685_137 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 1

def RemovedBody685_138 : StackLang.HolProg 64 :=
.seq RemovedBody685_136 RemovedBody685_137

def RemovedBody685_139 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody685_140 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) RemovedBody685_138 RemovedBody685_139

def RemovedBody685_141 : StackLang.HolProg 64 :=
.seq RemovedBody685_135 RemovedBody685_140

def RemovedBody685_142 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def RemovedBody685_143 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody685_144 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 685 5

def RemovedBody685_145 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody685_146 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody685_147 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody685_148 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody685_149 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def RemovedBody685_150 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def RemovedBody685_151 : StackLang.HolProg 64 :=
.seq RemovedBody685_149 RemovedBody685_150

def RemovedBody685_152 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def RemovedBody685_153 : StackLang.HolProg 64 :=
.seq RemovedBody685_151 RemovedBody685_152

def RemovedBody685_154 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody685_155 : StackLang.HolProg 64 :=
.seq RemovedBody685_153 RemovedBody685_154

def RemovedBody685_156 : StackLang.HolProg 64 :=
.seq RemovedBody685_148 RemovedBody685_155

def RemovedBody685_157 : StackLang.HolProg 64 :=
.seq RemovedBody685_147 RemovedBody685_156

def RemovedBody685_158 : StackLang.HolProg 64 :=
.seq RemovedBody685_146 RemovedBody685_157

def RemovedBody685_159 : StackLang.HolProg 64 :=
.seq RemovedBody685_145 RemovedBody685_158

def RemovedBody685_160 : StackLang.HolProg 64 :=
.seq RemovedBody685_144 RemovedBody685_159

def RemovedBody685_161 : StackLang.HolProg 64 :=
.seq RemovedBody685_143 RemovedBody685_160

def RemovedBody685_162 : StackLang.HolProg 64 :=
.seq RemovedBody685_142 RemovedBody685_161

def RemovedBody685_163 : StackLang.HolProg 64 :=
.seq RemovedBody685_141 RemovedBody685_162

def RemovedBody685_164 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody685_165 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody685_166 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody685_167 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody685_168 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody685_169 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody685_170 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 2 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def RemovedBody685_171 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 96#64))

def RemovedBody685_172 : StackLang.HolProg 64 :=
.seq RemovedBody685_170 RemovedBody685_171

def RemovedBody685_173 : StackLang.HolProg 64 :=
.seq RemovedBody685_169 RemovedBody685_172

def RemovedBody685_174 : StackLang.HolProg 64 :=
.seq RemovedBody685_168 RemovedBody685_173

def RemovedBody685_175 : StackLang.HolProg 64 :=
.seq RemovedBody685_167 RemovedBody685_174

def RemovedBody685_176 : StackLang.HolProg 64 :=
.seq RemovedBody685_166 RemovedBody685_175

def RemovedBody685_177 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 96#64))

def RemovedBody685_178 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def RemovedBody685_179 : StackLang.HolProg 64 :=
.seq RemovedBody685_177 RemovedBody685_178

def RemovedBody685_180 : StackLang.HolProg 64 :=
.call (some (RemovedBody685_176, 0, 685, 4)) (Sum.inl 68) (some (RemovedBody685_179, 685, 5))

def RemovedBody685_181 : StackLang.HolProg 64 :=
.seq RemovedBody685_165 RemovedBody685_180

def RemovedBody685_182 : StackLang.HolProg 64 :=
.seq RemovedBody685_164 RemovedBody685_181

def RemovedBody685_183 : StackLang.HolProg 64 :=
.seq RemovedBody685_163 RemovedBody685_182

def RemovedBody685_184 : StackLang.HolProg 64 :=
.seq RemovedBody685_134 RemovedBody685_183

def RemovedBody685_185 : StackLang.HolProg 64 :=
.seq RemovedBody685_131 RemovedBody685_184

def RemovedBody685_186 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody685_187 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 1 0
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 0)))

def RemovedBody685_188 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 96#64))

def RemovedBody685_189 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 2
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 48#64))

def RemovedBody685_190 : StackLang.HolProg 64 :=
.seq RemovedBody685_188 RemovedBody685_189

def RemovedBody685_191 : StackLang.HolProg 64 :=
.seq RemovedBody685_187 RemovedBody685_190

def RemovedBody685_192 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody685_193 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 2889#64)

def RemovedBody685_194 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody685_195 : StackLang.HolProg 64 :=
.seq RemovedBody685_193 RemovedBody685_194

def RemovedBody685_196 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody685_197 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 2#64)

def RemovedBody685_198 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 1

def RemovedBody685_199 : StackLang.HolProg 64 :=
.seq RemovedBody685_197 RemovedBody685_198

def RemovedBody685_200 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody685_201 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) RemovedBody685_199 RemovedBody685_200

def RemovedBody685_202 : StackLang.HolProg 64 :=
.seq RemovedBody685_196 RemovedBody685_201

def RemovedBody685_203 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def RemovedBody685_204 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody685_205 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 685 7

def RemovedBody685_206 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody685_207 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody685_208 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody685_209 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody685_210 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def RemovedBody685_211 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def RemovedBody685_212 : StackLang.HolProg 64 :=
.seq RemovedBody685_210 RemovedBody685_211

def RemovedBody685_213 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def RemovedBody685_214 : StackLang.HolProg 64 :=
.seq RemovedBody685_212 RemovedBody685_213

def RemovedBody685_215 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody685_216 : StackLang.HolProg 64 :=
.seq RemovedBody685_214 RemovedBody685_215

def RemovedBody685_217 : StackLang.HolProg 64 :=
.seq RemovedBody685_209 RemovedBody685_216

def RemovedBody685_218 : StackLang.HolProg 64 :=
.seq RemovedBody685_208 RemovedBody685_217

def RemovedBody685_219 : StackLang.HolProg 64 :=
.seq RemovedBody685_207 RemovedBody685_218

def RemovedBody685_220 : StackLang.HolProg 64 :=
.seq RemovedBody685_206 RemovedBody685_219

def RemovedBody685_221 : StackLang.HolProg 64 :=
.seq RemovedBody685_205 RemovedBody685_220

def RemovedBody685_222 : StackLang.HolProg 64 :=
.seq RemovedBody685_204 RemovedBody685_221

def RemovedBody685_223 : StackLang.HolProg 64 :=
.seq RemovedBody685_203 RemovedBody685_222

def RemovedBody685_224 : StackLang.HolProg 64 :=
.seq RemovedBody685_202 RemovedBody685_223

def RemovedBody685_225 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody685_226 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody685_227 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody685_228 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody685_229 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody685_230 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody685_231 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 2 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def RemovedBody685_232 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 96#64))

def RemovedBody685_233 : StackLang.HolProg 64 :=
.seq RemovedBody685_231 RemovedBody685_232

def RemovedBody685_234 : StackLang.HolProg 64 :=
.seq RemovedBody685_230 RemovedBody685_233

def RemovedBody685_235 : StackLang.HolProg 64 :=
.seq RemovedBody685_229 RemovedBody685_234

def RemovedBody685_236 : StackLang.HolProg 64 :=
.seq RemovedBody685_228 RemovedBody685_235

def RemovedBody685_237 : StackLang.HolProg 64 :=
.seq RemovedBody685_227 RemovedBody685_236

def RemovedBody685_238 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 96#64))

def RemovedBody685_239 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def RemovedBody685_240 : StackLang.HolProg 64 :=
.seq RemovedBody685_238 RemovedBody685_239

def RemovedBody685_241 : StackLang.HolProg 64 :=
.call (some (RemovedBody685_237, 0, 685, 6)) (Sum.inl 68) (some (RemovedBody685_240, 685, 7))

def RemovedBody685_242 : StackLang.HolProg 64 :=
.seq RemovedBody685_226 RemovedBody685_241

def RemovedBody685_243 : StackLang.HolProg 64 :=
.seq RemovedBody685_225 RemovedBody685_242

def RemovedBody685_244 : StackLang.HolProg 64 :=
.seq RemovedBody685_224 RemovedBody685_243

def RemovedBody685_245 : StackLang.HolProg 64 :=
.seq RemovedBody685_195 RemovedBody685_244

def RemovedBody685_246 : StackLang.HolProg 64 :=
.seq RemovedBody685_192 RemovedBody685_245

def RemovedBody685_247 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody685_248 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 1 0
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 0)))

def RemovedBody685_249 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 96#64))

def RemovedBody685_250 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 2
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody685_251 : StackLang.HolProg 64 :=
.seq RemovedBody685_249 RemovedBody685_250

def RemovedBody685_252 : StackLang.HolProg 64 :=
.seq RemovedBody685_248 RemovedBody685_251

def RemovedBody685_253 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody685_254 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 2890#64)

def RemovedBody685_255 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody685_256 : StackLang.HolProg 64 :=
.seq RemovedBody685_254 RemovedBody685_255

def RemovedBody685_257 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody685_258 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 2#64)

def RemovedBody685_259 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 1

def RemovedBody685_260 : StackLang.HolProg 64 :=
.seq RemovedBody685_258 RemovedBody685_259

def RemovedBody685_261 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody685_262 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) RemovedBody685_260 RemovedBody685_261

def RemovedBody685_263 : StackLang.HolProg 64 :=
.seq RemovedBody685_257 RemovedBody685_262

def RemovedBody685_264 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def RemovedBody685_265 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody685_266 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 685 9

def RemovedBody685_267 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody685_268 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody685_269 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody685_270 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody685_271 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def RemovedBody685_272 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def RemovedBody685_273 : StackLang.HolProg 64 :=
.seq RemovedBody685_271 RemovedBody685_272

def RemovedBody685_274 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def RemovedBody685_275 : StackLang.HolProg 64 :=
.seq RemovedBody685_273 RemovedBody685_274

def RemovedBody685_276 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody685_277 : StackLang.HolProg 64 :=
.seq RemovedBody685_275 RemovedBody685_276

def RemovedBody685_278 : StackLang.HolProg 64 :=
.seq RemovedBody685_270 RemovedBody685_277

def RemovedBody685_279 : StackLang.HolProg 64 :=
.seq RemovedBody685_269 RemovedBody685_278

def RemovedBody685_280 : StackLang.HolProg 64 :=
.seq RemovedBody685_268 RemovedBody685_279

def RemovedBody685_281 : StackLang.HolProg 64 :=
.seq RemovedBody685_267 RemovedBody685_280

def RemovedBody685_282 : StackLang.HolProg 64 :=
.seq RemovedBody685_266 RemovedBody685_281

def RemovedBody685_283 : StackLang.HolProg 64 :=
.seq RemovedBody685_265 RemovedBody685_282

def RemovedBody685_284 : StackLang.HolProg 64 :=
.seq RemovedBody685_264 RemovedBody685_283

def RemovedBody685_285 : StackLang.HolProg 64 :=
.seq RemovedBody685_263 RemovedBody685_284

def RemovedBody685_286 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody685_287 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody685_288 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody685_289 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody685_290 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody685_291 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody685_292 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 2 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def RemovedBody685_293 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 96#64))

def RemovedBody685_294 : StackLang.HolProg 64 :=
.seq RemovedBody685_292 RemovedBody685_293

def RemovedBody685_295 : StackLang.HolProg 64 :=
.seq RemovedBody685_291 RemovedBody685_294

def RemovedBody685_296 : StackLang.HolProg 64 :=
.seq RemovedBody685_290 RemovedBody685_295

def RemovedBody685_297 : StackLang.HolProg 64 :=
.seq RemovedBody685_289 RemovedBody685_296

def RemovedBody685_298 : StackLang.HolProg 64 :=
.seq RemovedBody685_288 RemovedBody685_297

def RemovedBody685_299 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 96#64))

def RemovedBody685_300 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def RemovedBody685_301 : StackLang.HolProg 64 :=
.seq RemovedBody685_299 RemovedBody685_300

def RemovedBody685_302 : StackLang.HolProg 64 :=
.call (some (RemovedBody685_298, 0, 685, 8)) (Sum.inl 68) (some (RemovedBody685_301, 685, 9))

def RemovedBody685_303 : StackLang.HolProg 64 :=
.seq RemovedBody685_287 RemovedBody685_302

def RemovedBody685_304 : StackLang.HolProg 64 :=
.seq RemovedBody685_286 RemovedBody685_303

def RemovedBody685_305 : StackLang.HolProg 64 :=
.seq RemovedBody685_285 RemovedBody685_304

def RemovedBody685_306 : StackLang.HolProg 64 :=
.seq RemovedBody685_256 RemovedBody685_305

def RemovedBody685_307 : StackLang.HolProg 64 :=
.seq RemovedBody685_253 RemovedBody685_306

def RemovedBody685_308 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody685_309 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 1 0
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 0)))

def RemovedBody685_310 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 2
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 96#64))

def RemovedBody685_311 : StackLang.HolProg 64 :=
.seq RemovedBody685_309 RemovedBody685_310

def RemovedBody685_312 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody685_313 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 2891#64)

def RemovedBody685_314 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody685_315 : StackLang.HolProg 64 :=
.seq RemovedBody685_313 RemovedBody685_314

def RemovedBody685_316 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody685_317 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 2#64)

def RemovedBody685_318 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 1

def RemovedBody685_319 : StackLang.HolProg 64 :=
.seq RemovedBody685_317 RemovedBody685_318

def RemovedBody685_320 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody685_321 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) RemovedBody685_319 RemovedBody685_320

def RemovedBody685_322 : StackLang.HolProg 64 :=
.seq RemovedBody685_316 RemovedBody685_321

def RemovedBody685_323 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def RemovedBody685_324 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody685_325 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 685 11

def RemovedBody685_326 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody685_327 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody685_328 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody685_329 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody685_330 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def RemovedBody685_331 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def RemovedBody685_332 : StackLang.HolProg 64 :=
.seq RemovedBody685_330 RemovedBody685_331

def RemovedBody685_333 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def RemovedBody685_334 : StackLang.HolProg 64 :=
.seq RemovedBody685_332 RemovedBody685_333

def RemovedBody685_335 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody685_336 : StackLang.HolProg 64 :=
.seq RemovedBody685_334 RemovedBody685_335

def RemovedBody685_337 : StackLang.HolProg 64 :=
.seq RemovedBody685_329 RemovedBody685_336

def RemovedBody685_338 : StackLang.HolProg 64 :=
.seq RemovedBody685_328 RemovedBody685_337

def RemovedBody685_339 : StackLang.HolProg 64 :=
.seq RemovedBody685_327 RemovedBody685_338

def RemovedBody685_340 : StackLang.HolProg 64 :=
.seq RemovedBody685_326 RemovedBody685_339

def RemovedBody685_341 : StackLang.HolProg 64 :=
.seq RemovedBody685_325 RemovedBody685_340

def RemovedBody685_342 : StackLang.HolProg 64 :=
.seq RemovedBody685_324 RemovedBody685_341

def RemovedBody685_343 : StackLang.HolProg 64 :=
.seq RemovedBody685_323 RemovedBody685_342

def RemovedBody685_344 : StackLang.HolProg 64 :=
.seq RemovedBody685_322 RemovedBody685_343

def RemovedBody685_345 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody685_346 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody685_347 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody685_348 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody685_349 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody685_350 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody685_351 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 6 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def RemovedBody685_352 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 128#64))

def RemovedBody685_353 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 120#64))

def RemovedBody685_354 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 128#64))

def RemovedBody685_355 : StackLang.HolProg 64 :=
.seq RemovedBody685_353 RemovedBody685_354

def RemovedBody685_356 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 112#64))

def RemovedBody685_357 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 120#64))

def RemovedBody685_358 : StackLang.HolProg 64 :=
.seq RemovedBody685_356 RemovedBody685_357

def RemovedBody685_359 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 104#64))

def RemovedBody685_360 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 112#64))

def RemovedBody685_361 : StackLang.HolProg 64 :=
.seq RemovedBody685_359 RemovedBody685_360

def RemovedBody685_362 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 96#64))

def RemovedBody685_363 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 104#64))

def RemovedBody685_364 : StackLang.HolProg 64 :=
.seq RemovedBody685_362 RemovedBody685_363

def RemovedBody685_365 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 3
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 88#64))

def RemovedBody685_366 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 80#64))

def RemovedBody685_367 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 96#64))

def RemovedBody685_368 : StackLang.HolProg 64 :=
.seq RemovedBody685_366 RemovedBody685_367

def RemovedBody685_369 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 5
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 72#64))

def RemovedBody685_370 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 64#64))

def RemovedBody685_371 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 80#64))

def RemovedBody685_372 : StackLang.HolProg 64 :=
.seq RemovedBody685_370 RemovedBody685_371

def RemovedBody685_373 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 4
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 56#64))

def RemovedBody685_374 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 2
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 48#64))

def RemovedBody685_375 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 40#64))

def RemovedBody685_376 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 64#64))

def RemovedBody685_377 : StackLang.HolProg 64 :=
.seq RemovedBody685_375 RemovedBody685_376

def RemovedBody685_378 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 32#64))

def RemovedBody685_379 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 56#64))

def RemovedBody685_380 : StackLang.HolProg 64 :=
.seq RemovedBody685_378 RemovedBody685_379

def RemovedBody685_381 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 24#64))

def RemovedBody685_382 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 88#64))

def RemovedBody685_383 : StackLang.HolProg 64 :=
.seq RemovedBody685_381 RemovedBody685_382

def RemovedBody685_384 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody685_385 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 48#64))

def RemovedBody685_386 : StackLang.HolProg 64 :=
.seq RemovedBody685_384 RemovedBody685_385

def RemovedBody685_387 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody685_388 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 40#64))

def RemovedBody685_389 : StackLang.HolProg 64 :=
.seq RemovedBody685_387 RemovedBody685_388

def RemovedBody685_390 : StackLang.HolProg 64 :=
.seq RemovedBody685_386 RemovedBody685_389

def RemovedBody685_391 : StackLang.HolProg 64 :=
.seq RemovedBody685_383 RemovedBody685_390

def RemovedBody685_392 : StackLang.HolProg 64 :=
.seq RemovedBody685_380 RemovedBody685_391

def RemovedBody685_393 : StackLang.HolProg 64 :=
.seq RemovedBody685_377 RemovedBody685_392

def RemovedBody685_394 : StackLang.HolProg 64 :=
.seq RemovedBody685_374 RemovedBody685_393

def RemovedBody685_395 : StackLang.HolProg 64 :=
.seq RemovedBody685_373 RemovedBody685_394

def RemovedBody685_396 : StackLang.HolProg 64 :=
.seq RemovedBody685_372 RemovedBody685_395

def RemovedBody685_397 : StackLang.HolProg 64 :=
.seq RemovedBody685_369 RemovedBody685_396

def RemovedBody685_398 : StackLang.HolProg 64 :=
.seq RemovedBody685_368 RemovedBody685_397

def RemovedBody685_399 : StackLang.HolProg 64 :=
.seq RemovedBody685_365 RemovedBody685_398

def RemovedBody685_400 : StackLang.HolProg 64 :=
.seq RemovedBody685_364 RemovedBody685_399

def RemovedBody685_401 : StackLang.HolProg 64 :=
.seq RemovedBody685_361 RemovedBody685_400

def RemovedBody685_402 : StackLang.HolProg 64 :=
.seq RemovedBody685_358 RemovedBody685_401

def RemovedBody685_403 : StackLang.HolProg 64 :=
.seq RemovedBody685_355 RemovedBody685_402

def RemovedBody685_404 : StackLang.HolProg 64 :=
.seq RemovedBody685_352 RemovedBody685_403

def RemovedBody685_405 : StackLang.HolProg 64 :=
.seq RemovedBody685_351 RemovedBody685_404

def RemovedBody685_406 : StackLang.HolProg 64 :=
.seq RemovedBody685_350 RemovedBody685_405

def RemovedBody685_407 : StackLang.HolProg 64 :=
.seq RemovedBody685_349 RemovedBody685_406

def RemovedBody685_408 : StackLang.HolProg 64 :=
.seq RemovedBody685_348 RemovedBody685_407

def RemovedBody685_409 : StackLang.HolProg 64 :=
.seq RemovedBody685_347 RemovedBody685_408

def RemovedBody685_410 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 128#64))

def RemovedBody685_411 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 120#64))

def RemovedBody685_412 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 128#64))

def RemovedBody685_413 : StackLang.HolProg 64 :=
.seq RemovedBody685_411 RemovedBody685_412

def RemovedBody685_414 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 112#64))

def RemovedBody685_415 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 120#64))

def RemovedBody685_416 : StackLang.HolProg 64 :=
.seq RemovedBody685_414 RemovedBody685_415

def RemovedBody685_417 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 104#64))

def RemovedBody685_418 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 112#64))

def RemovedBody685_419 : StackLang.HolProg 64 :=
.seq RemovedBody685_417 RemovedBody685_418

def RemovedBody685_420 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 96#64))

def RemovedBody685_421 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 104#64))

def RemovedBody685_422 : StackLang.HolProg 64 :=
.seq RemovedBody685_420 RemovedBody685_421

def RemovedBody685_423 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 3
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 88#64))

def RemovedBody685_424 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 80#64))

def RemovedBody685_425 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 96#64))

def RemovedBody685_426 : StackLang.HolProg 64 :=
.seq RemovedBody685_424 RemovedBody685_425

def RemovedBody685_427 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 5
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 72#64))

def RemovedBody685_428 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 64#64))

def RemovedBody685_429 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 80#64))

def RemovedBody685_430 : StackLang.HolProg 64 :=
.seq RemovedBody685_428 RemovedBody685_429

def RemovedBody685_431 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 4
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 56#64))

def RemovedBody685_432 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 2
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 48#64))

def RemovedBody685_433 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 40#64))

def RemovedBody685_434 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 64#64))

def RemovedBody685_435 : StackLang.HolProg 64 :=
.seq RemovedBody685_433 RemovedBody685_434

def RemovedBody685_436 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 32#64))

def RemovedBody685_437 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 56#64))

def RemovedBody685_438 : StackLang.HolProg 64 :=
.seq RemovedBody685_436 RemovedBody685_437

def RemovedBody685_439 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 24#64))

def RemovedBody685_440 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 88#64))

def RemovedBody685_441 : StackLang.HolProg 64 :=
.seq RemovedBody685_439 RemovedBody685_440

def RemovedBody685_442 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody685_443 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 48#64))

def RemovedBody685_444 : StackLang.HolProg 64 :=
.seq RemovedBody685_442 RemovedBody685_443

def RemovedBody685_445 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody685_446 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 40#64))

def RemovedBody685_447 : StackLang.HolProg 64 :=
.seq RemovedBody685_445 RemovedBody685_446

def RemovedBody685_448 : StackLang.HolProg 64 :=
.seq RemovedBody685_444 RemovedBody685_447

def RemovedBody685_449 : StackLang.HolProg 64 :=
.seq RemovedBody685_441 RemovedBody685_448

def RemovedBody685_450 : StackLang.HolProg 64 :=
.seq RemovedBody685_438 RemovedBody685_449

def RemovedBody685_451 : StackLang.HolProg 64 :=
.seq RemovedBody685_435 RemovedBody685_450

def RemovedBody685_452 : StackLang.HolProg 64 :=
.seq RemovedBody685_432 RemovedBody685_451

def RemovedBody685_453 : StackLang.HolProg 64 :=
.seq RemovedBody685_431 RemovedBody685_452

def RemovedBody685_454 : StackLang.HolProg 64 :=
.seq RemovedBody685_430 RemovedBody685_453

def RemovedBody685_455 : StackLang.HolProg 64 :=
.seq RemovedBody685_427 RemovedBody685_454

def RemovedBody685_456 : StackLang.HolProg 64 :=
.seq RemovedBody685_426 RemovedBody685_455

def RemovedBody685_457 : StackLang.HolProg 64 :=
.seq RemovedBody685_423 RemovedBody685_456

def RemovedBody685_458 : StackLang.HolProg 64 :=
.seq RemovedBody685_422 RemovedBody685_457

def RemovedBody685_459 : StackLang.HolProg 64 :=
.seq RemovedBody685_419 RemovedBody685_458

def RemovedBody685_460 : StackLang.HolProg 64 :=
.seq RemovedBody685_416 RemovedBody685_459

def RemovedBody685_461 : StackLang.HolProg 64 :=
.seq RemovedBody685_413 RemovedBody685_460

def RemovedBody685_462 : StackLang.HolProg 64 :=
.seq RemovedBody685_410 RemovedBody685_461

def RemovedBody685_463 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def RemovedBody685_464 : StackLang.HolProg 64 :=
.seq RemovedBody685_462 RemovedBody685_463

def RemovedBody685_465 : StackLang.HolProg 64 :=
.call (some (RemovedBody685_409, 0, 685, 10)) (Sum.inl 68) (some (RemovedBody685_464, 685, 11))

def RemovedBody685_466 : StackLang.HolProg 64 :=
.seq RemovedBody685_346 RemovedBody685_465

def RemovedBody685_467 : StackLang.HolProg 64 :=
.seq RemovedBody685_345 RemovedBody685_466

def RemovedBody685_468 : StackLang.HolProg 64 :=
.seq RemovedBody685_344 RemovedBody685_467

def RemovedBody685_469 : StackLang.HolProg 64 :=
.seq RemovedBody685_315 RemovedBody685_468

def RemovedBody685_470 : StackLang.HolProg 64 :=
.seq RemovedBody685_312 RemovedBody685_469

def RemovedBody685_471 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody685_472 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody685_473 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody685_474 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 1 5
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 5)))

def RemovedBody685_475 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 5
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 88#64))

def RemovedBody685_476 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 6
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 80#64))

def RemovedBody685_477 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 2
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 72#64))

def RemovedBody685_478 : StackLang.HolProg 64 :=
.seq RemovedBody685_476 RemovedBody685_477

def RemovedBody685_479 : StackLang.HolProg 64 :=
.seq RemovedBody685_475 RemovedBody685_478

def RemovedBody685_480 : StackLang.HolProg 64 :=
.seq RemovedBody685_474 RemovedBody685_479

def RemovedBody685_481 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody685_482 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 2892#64)

def RemovedBody685_483 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody685_484 : StackLang.HolProg 64 :=
.seq RemovedBody685_482 RemovedBody685_483

def RemovedBody685_485 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody685_486 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 2#64)

def RemovedBody685_487 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 1

def RemovedBody685_488 : StackLang.HolProg 64 :=
.seq RemovedBody685_486 RemovedBody685_487

def RemovedBody685_489 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody685_490 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) RemovedBody685_488 RemovedBody685_489

def RemovedBody685_491 : StackLang.HolProg 64 :=
.seq RemovedBody685_485 RemovedBody685_490

def RemovedBody685_492 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def RemovedBody685_493 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody685_494 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 685 13

def RemovedBody685_495 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody685_496 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody685_497 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody685_498 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody685_499 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def RemovedBody685_500 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def RemovedBody685_501 : StackLang.HolProg 64 :=
.seq RemovedBody685_499 RemovedBody685_500

def RemovedBody685_502 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def RemovedBody685_503 : StackLang.HolProg 64 :=
.seq RemovedBody685_501 RemovedBody685_502

def RemovedBody685_504 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody685_505 : StackLang.HolProg 64 :=
.seq RemovedBody685_503 RemovedBody685_504

def RemovedBody685_506 : StackLang.HolProg 64 :=
.seq RemovedBody685_498 RemovedBody685_505

def RemovedBody685_507 : StackLang.HolProg 64 :=
.seq RemovedBody685_497 RemovedBody685_506

def RemovedBody685_508 : StackLang.HolProg 64 :=
.seq RemovedBody685_496 RemovedBody685_507

def RemovedBody685_509 : StackLang.HolProg 64 :=
.seq RemovedBody685_495 RemovedBody685_508

def RemovedBody685_510 : StackLang.HolProg 64 :=
.seq RemovedBody685_494 RemovedBody685_509

def RemovedBody685_511 : StackLang.HolProg 64 :=
.seq RemovedBody685_493 RemovedBody685_510

def RemovedBody685_512 : StackLang.HolProg 64 :=
.seq RemovedBody685_492 RemovedBody685_511

def RemovedBody685_513 : StackLang.HolProg 64 :=
.seq RemovedBody685_491 RemovedBody685_512

def RemovedBody685_514 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody685_515 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody685_516 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody685_517 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody685_518 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody685_519 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody685_520 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 88#64))

def RemovedBody685_521 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 2
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 40#64))

def RemovedBody685_522 : StackLang.HolProg 64 :=
.seq RemovedBody685_520 RemovedBody685_521

def RemovedBody685_523 : StackLang.HolProg 64 :=
.seq RemovedBody685_519 RemovedBody685_522

def RemovedBody685_524 : StackLang.HolProg 64 :=
.seq RemovedBody685_518 RemovedBody685_523

def RemovedBody685_525 : StackLang.HolProg 64 :=
.seq RemovedBody685_517 RemovedBody685_524

def RemovedBody685_526 : StackLang.HolProg 64 :=
.seq RemovedBody685_516 RemovedBody685_525

def RemovedBody685_527 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 88#64))

def RemovedBody685_528 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 2
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 40#64))

def RemovedBody685_529 : StackLang.HolProg 64 :=
.seq RemovedBody685_527 RemovedBody685_528

def RemovedBody685_530 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def RemovedBody685_531 : StackLang.HolProg 64 :=
.seq RemovedBody685_529 RemovedBody685_530

def RemovedBody685_532 : StackLang.HolProg 64 :=
.call (some (RemovedBody685_526, 0, 685, 12)) (Sum.inl 678) (some (RemovedBody685_531, 685, 13))

def RemovedBody685_533 : StackLang.HolProg 64 :=
.seq RemovedBody685_515 RemovedBody685_532

def RemovedBody685_534 : StackLang.HolProg 64 :=
.seq RemovedBody685_514 RemovedBody685_533

def RemovedBody685_535 : StackLang.HolProg 64 :=
.seq RemovedBody685_513 RemovedBody685_534

def RemovedBody685_536 : StackLang.HolProg 64 :=
.seq RemovedBody685_484 RemovedBody685_535

def RemovedBody685_537 : StackLang.HolProg 64 :=
.seq RemovedBody685_481 RemovedBody685_536

def RemovedBody685_538 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody685_539 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 1 0
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 0)))

def RemovedBody685_540 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 88#64))

def RemovedBody685_541 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 2
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 40#64))

def RemovedBody685_542 : StackLang.HolProg 64 :=
.seq RemovedBody685_540 RemovedBody685_541

def RemovedBody685_543 : StackLang.HolProg 64 :=
.seq RemovedBody685_539 RemovedBody685_542

def RemovedBody685_544 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody685_545 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 2893#64)

def RemovedBody685_546 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody685_547 : StackLang.HolProg 64 :=
.seq RemovedBody685_545 RemovedBody685_546

def RemovedBody685_548 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody685_549 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 2#64)

def RemovedBody685_550 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 1

def RemovedBody685_551 : StackLang.HolProg 64 :=
.seq RemovedBody685_549 RemovedBody685_550

def RemovedBody685_552 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody685_553 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) RemovedBody685_551 RemovedBody685_552

def RemovedBody685_554 : StackLang.HolProg 64 :=
.seq RemovedBody685_548 RemovedBody685_553

def RemovedBody685_555 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def RemovedBody685_556 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody685_557 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 685 15

def RemovedBody685_558 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody685_559 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody685_560 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody685_561 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody685_562 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def RemovedBody685_563 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def RemovedBody685_564 : StackLang.HolProg 64 :=
.seq RemovedBody685_562 RemovedBody685_563

def RemovedBody685_565 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def RemovedBody685_566 : StackLang.HolProg 64 :=
.seq RemovedBody685_564 RemovedBody685_565

def RemovedBody685_567 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody685_568 : StackLang.HolProg 64 :=
.seq RemovedBody685_566 RemovedBody685_567

def RemovedBody685_569 : StackLang.HolProg 64 :=
.seq RemovedBody685_561 RemovedBody685_568

def RemovedBody685_570 : StackLang.HolProg 64 :=
.seq RemovedBody685_560 RemovedBody685_569

def RemovedBody685_571 : StackLang.HolProg 64 :=
.seq RemovedBody685_559 RemovedBody685_570

def RemovedBody685_572 : StackLang.HolProg 64 :=
.seq RemovedBody685_558 RemovedBody685_571

def RemovedBody685_573 : StackLang.HolProg 64 :=
.seq RemovedBody685_557 RemovedBody685_572

def RemovedBody685_574 : StackLang.HolProg 64 :=
.seq RemovedBody685_556 RemovedBody685_573

def RemovedBody685_575 : StackLang.HolProg 64 :=
.seq RemovedBody685_555 RemovedBody685_574

def RemovedBody685_576 : StackLang.HolProg 64 :=
.seq RemovedBody685_554 RemovedBody685_575

def RemovedBody685_577 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody685_578 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody685_579 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody685_580 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody685_581 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody685_582 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody685_583 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 88#64))

def RemovedBody685_584 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 2
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 40#64))

def RemovedBody685_585 : StackLang.HolProg 64 :=
.seq RemovedBody685_583 RemovedBody685_584

def RemovedBody685_586 : StackLang.HolProg 64 :=
.seq RemovedBody685_582 RemovedBody685_585

def RemovedBody685_587 : StackLang.HolProg 64 :=
.seq RemovedBody685_581 RemovedBody685_586

def RemovedBody685_588 : StackLang.HolProg 64 :=
.seq RemovedBody685_580 RemovedBody685_587

def RemovedBody685_589 : StackLang.HolProg 64 :=
.seq RemovedBody685_579 RemovedBody685_588

def RemovedBody685_590 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 88#64))

def RemovedBody685_591 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 2
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 40#64))

def RemovedBody685_592 : StackLang.HolProg 64 :=
.seq RemovedBody685_590 RemovedBody685_591

def RemovedBody685_593 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def RemovedBody685_594 : StackLang.HolProg 64 :=
.seq RemovedBody685_592 RemovedBody685_593

def RemovedBody685_595 : StackLang.HolProg 64 :=
.call (some (RemovedBody685_589, 0, 685, 14)) (Sum.inl 678) (some (RemovedBody685_594, 685, 15))

def RemovedBody685_596 : StackLang.HolProg 64 :=
.seq RemovedBody685_578 RemovedBody685_595

def RemovedBody685_597 : StackLang.HolProg 64 :=
.seq RemovedBody685_577 RemovedBody685_596

def RemovedBody685_598 : StackLang.HolProg 64 :=
.seq RemovedBody685_576 RemovedBody685_597

def RemovedBody685_599 : StackLang.HolProg 64 :=
.seq RemovedBody685_547 RemovedBody685_598

def RemovedBody685_600 : StackLang.HolProg 64 :=
.seq RemovedBody685_544 RemovedBody685_599

def RemovedBody685_601 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody685_602 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody685_603 : StackLang.HolProg 64 :=
.seq RemovedBody685_601 RemovedBody685_602

def RemovedBody685_604 : StackLang.HolProg 64 :=
.seq RemovedBody685_600 RemovedBody685_603

def RemovedBody685_605 : StackLang.HolProg 64 :=
.seq RemovedBody685_543 RemovedBody685_604

def RemovedBody685_606 : StackLang.HolProg 64 :=
.seq RemovedBody685_538 RemovedBody685_605

def RemovedBody685_607 : StackLang.HolProg 64 :=
.seq RemovedBody685_537 RemovedBody685_606

def RemovedBody685_608 : StackLang.HolProg 64 :=
.seq RemovedBody685_480 RemovedBody685_607

def RemovedBody685_609 : StackLang.HolProg 64 :=
.seq RemovedBody685_473 RemovedBody685_608

def RemovedBody685_610 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody685_611 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 1 5
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 5)))

def RemovedBody685_612 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 4
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 136#64))

def RemovedBody685_613 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 40#64))

def RemovedBody685_614 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 24#64))

def RemovedBody685_615 : StackLang.HolProg 64 :=
.seq RemovedBody685_613 RemovedBody685_614

def RemovedBody685_616 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 88#64))

def RemovedBody685_617 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 40#64))

def RemovedBody685_618 : StackLang.HolProg 64 :=
.seq RemovedBody685_616 RemovedBody685_617

def RemovedBody685_619 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 5
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 88#64))

def RemovedBody685_620 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 6
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 72#64))

def RemovedBody685_621 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 48#64))

def RemovedBody685_622 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 32#64))

def RemovedBody685_623 : StackLang.HolProg 64 :=
.seq RemovedBody685_621 RemovedBody685_622

def RemovedBody685_624 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 56#64))

def RemovedBody685_625 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 48#64))

def RemovedBody685_626 : StackLang.HolProg 64 :=
.seq RemovedBody685_624 RemovedBody685_625

def RemovedBody685_627 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 64#64))

def RemovedBody685_628 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 56#64))

def RemovedBody685_629 : StackLang.HolProg 64 :=
.seq RemovedBody685_627 RemovedBody685_628

def RemovedBody685_630 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 2
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 64#64))

def RemovedBody685_631 : StackLang.HolProg 64 :=
.seq RemovedBody685_629 RemovedBody685_630

def RemovedBody685_632 : StackLang.HolProg 64 :=
.seq RemovedBody685_626 RemovedBody685_631

def RemovedBody685_633 : StackLang.HolProg 64 :=
.seq RemovedBody685_623 RemovedBody685_632

def RemovedBody685_634 : StackLang.HolProg 64 :=
.seq RemovedBody685_620 RemovedBody685_633

def RemovedBody685_635 : StackLang.HolProg 64 :=
.seq RemovedBody685_619 RemovedBody685_634

def RemovedBody685_636 : StackLang.HolProg 64 :=
.seq RemovedBody685_618 RemovedBody685_635

def RemovedBody685_637 : StackLang.HolProg 64 :=
.seq RemovedBody685_615 RemovedBody685_636

def RemovedBody685_638 : StackLang.HolProg 64 :=
.seq RemovedBody685_612 RemovedBody685_637

def RemovedBody685_639 : StackLang.HolProg 64 :=
.seq RemovedBody685_611 RemovedBody685_638

def RemovedBody685_640 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody685_641 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 2894#64)

def RemovedBody685_642 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody685_643 : StackLang.HolProg 64 :=
.seq RemovedBody685_641 RemovedBody685_642

def RemovedBody685_644 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody685_645 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 2#64)

def RemovedBody685_646 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 1

def RemovedBody685_647 : StackLang.HolProg 64 :=
.seq RemovedBody685_645 RemovedBody685_646

def RemovedBody685_648 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody685_649 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) RemovedBody685_647 RemovedBody685_648

def RemovedBody685_650 : StackLang.HolProg 64 :=
.seq RemovedBody685_644 RemovedBody685_649

def RemovedBody685_651 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def RemovedBody685_652 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody685_653 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 685 17

def RemovedBody685_654 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody685_655 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody685_656 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody685_657 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody685_658 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def RemovedBody685_659 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def RemovedBody685_660 : StackLang.HolProg 64 :=
.seq RemovedBody685_658 RemovedBody685_659

def RemovedBody685_661 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def RemovedBody685_662 : StackLang.HolProg 64 :=
.seq RemovedBody685_660 RemovedBody685_661

def RemovedBody685_663 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody685_664 : StackLang.HolProg 64 :=
.seq RemovedBody685_662 RemovedBody685_663

def RemovedBody685_665 : StackLang.HolProg 64 :=
.seq RemovedBody685_657 RemovedBody685_664

def RemovedBody685_666 : StackLang.HolProg 64 :=
.seq RemovedBody685_656 RemovedBody685_665

def RemovedBody685_667 : StackLang.HolProg 64 :=
.seq RemovedBody685_655 RemovedBody685_666

def RemovedBody685_668 : StackLang.HolProg 64 :=
.seq RemovedBody685_654 RemovedBody685_667

def RemovedBody685_669 : StackLang.HolProg 64 :=
.seq RemovedBody685_653 RemovedBody685_668

def RemovedBody685_670 : StackLang.HolProg 64 :=
.seq RemovedBody685_652 RemovedBody685_669

def RemovedBody685_671 : StackLang.HolProg 64 :=
.seq RemovedBody685_651 RemovedBody685_670

def RemovedBody685_672 : StackLang.HolProg 64 :=
.seq RemovedBody685_650 RemovedBody685_671

def RemovedBody685_673 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody685_674 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody685_675 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody685_676 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody685_677 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody685_678 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody685_679 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 2
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 104#64))

def RemovedBody685_680 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 3
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 96#64))

def RemovedBody685_681 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 88#64))

def RemovedBody685_682 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 4
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 80#64))

def RemovedBody685_683 : StackLang.HolProg 64 :=
.seq RemovedBody685_681 RemovedBody685_682

def RemovedBody685_684 : StackLang.HolProg 64 :=
.seq RemovedBody685_680 RemovedBody685_683

def RemovedBody685_685 : StackLang.HolProg 64 :=
.seq RemovedBody685_679 RemovedBody685_684

def RemovedBody685_686 : StackLang.HolProg 64 :=
.seq RemovedBody685_678 RemovedBody685_685

def RemovedBody685_687 : StackLang.HolProg 64 :=
.seq RemovedBody685_677 RemovedBody685_686

def RemovedBody685_688 : StackLang.HolProg 64 :=
.seq RemovedBody685_676 RemovedBody685_687

def RemovedBody685_689 : StackLang.HolProg 64 :=
.seq RemovedBody685_675 RemovedBody685_688

def RemovedBody685_690 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 2
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 104#64))

def RemovedBody685_691 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 3
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 96#64))

def RemovedBody685_692 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 88#64))

def RemovedBody685_693 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 4
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 80#64))

def RemovedBody685_694 : StackLang.HolProg 64 :=
.seq RemovedBody685_692 RemovedBody685_693

def RemovedBody685_695 : StackLang.HolProg 64 :=
.seq RemovedBody685_691 RemovedBody685_694

def RemovedBody685_696 : StackLang.HolProg 64 :=
.seq RemovedBody685_690 RemovedBody685_695

def RemovedBody685_697 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def RemovedBody685_698 : StackLang.HolProg 64 :=
.seq RemovedBody685_696 RemovedBody685_697

def RemovedBody685_699 : StackLang.HolProg 64 :=
.call (some (RemovedBody685_689, 0, 685, 16)) (Sum.inl 670) (some (RemovedBody685_698, 685, 17))

def RemovedBody685_700 : StackLang.HolProg 64 :=
.seq RemovedBody685_674 RemovedBody685_699

def RemovedBody685_701 : StackLang.HolProg 64 :=
.seq RemovedBody685_673 RemovedBody685_700

def RemovedBody685_702 : StackLang.HolProg 64 :=
.seq RemovedBody685_672 RemovedBody685_701

def RemovedBody685_703 : StackLang.HolProg 64 :=
.seq RemovedBody685_643 RemovedBody685_702

def RemovedBody685_704 : StackLang.HolProg 64 :=
.seq RemovedBody685_640 RemovedBody685_703

def RemovedBody685_705 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody685_706 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 1 0
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 0)))

def RemovedBody685_707 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 2
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 104#64))

def RemovedBody685_708 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 3
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 96#64))

def RemovedBody685_709 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 88#64))

def RemovedBody685_710 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 4
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 80#64))

def RemovedBody685_711 : StackLang.HolProg 64 :=
.seq RemovedBody685_709 RemovedBody685_710

def RemovedBody685_712 : StackLang.HolProg 64 :=
.seq RemovedBody685_708 RemovedBody685_711

def RemovedBody685_713 : StackLang.HolProg 64 :=
.seq RemovedBody685_707 RemovedBody685_712

def RemovedBody685_714 : StackLang.HolProg 64 :=
.seq RemovedBody685_706 RemovedBody685_713

def RemovedBody685_715 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody685_716 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 2895#64)

def RemovedBody685_717 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody685_718 : StackLang.HolProg 64 :=
.seq RemovedBody685_716 RemovedBody685_717

def RemovedBody685_719 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody685_720 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 2#64)

def RemovedBody685_721 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 1

def RemovedBody685_722 : StackLang.HolProg 64 :=
.seq RemovedBody685_720 RemovedBody685_721

def RemovedBody685_723 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody685_724 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) RemovedBody685_722 RemovedBody685_723

def RemovedBody685_725 : StackLang.HolProg 64 :=
.seq RemovedBody685_719 RemovedBody685_724

def RemovedBody685_726 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def RemovedBody685_727 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody685_728 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 685 19

def RemovedBody685_729 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody685_730 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody685_731 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody685_732 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody685_733 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def RemovedBody685_734 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def RemovedBody685_735 : StackLang.HolProg 64 :=
.seq RemovedBody685_733 RemovedBody685_734

def RemovedBody685_736 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def RemovedBody685_737 : StackLang.HolProg 64 :=
.seq RemovedBody685_735 RemovedBody685_736

def RemovedBody685_738 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody685_739 : StackLang.HolProg 64 :=
.seq RemovedBody685_737 RemovedBody685_738

def RemovedBody685_740 : StackLang.HolProg 64 :=
.seq RemovedBody685_732 RemovedBody685_739

def RemovedBody685_741 : StackLang.HolProg 64 :=
.seq RemovedBody685_731 RemovedBody685_740

def RemovedBody685_742 : StackLang.HolProg 64 :=
.seq RemovedBody685_730 RemovedBody685_741

def RemovedBody685_743 : StackLang.HolProg 64 :=
.seq RemovedBody685_729 RemovedBody685_742

def RemovedBody685_744 : StackLang.HolProg 64 :=
.seq RemovedBody685_728 RemovedBody685_743

def RemovedBody685_745 : StackLang.HolProg 64 :=
.seq RemovedBody685_727 RemovedBody685_744

def RemovedBody685_746 : StackLang.HolProg 64 :=
.seq RemovedBody685_726 RemovedBody685_745

def RemovedBody685_747 : StackLang.HolProg 64 :=
.seq RemovedBody685_725 RemovedBody685_746

def RemovedBody685_748 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody685_749 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody685_750 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody685_751 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody685_752 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody685_753 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody685_754 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 4
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 104#64))

def RemovedBody685_755 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 88#64))

def RemovedBody685_756 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 3
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 64#64))

def RemovedBody685_757 : StackLang.HolProg 64 :=
.seq RemovedBody685_755 RemovedBody685_756

def RemovedBody685_758 : StackLang.HolProg 64 :=
.seq RemovedBody685_754 RemovedBody685_757

def RemovedBody685_759 : StackLang.HolProg 64 :=
.seq RemovedBody685_753 RemovedBody685_758

def RemovedBody685_760 : StackLang.HolProg 64 :=
.seq RemovedBody685_752 RemovedBody685_759

def RemovedBody685_761 : StackLang.HolProg 64 :=
.seq RemovedBody685_751 RemovedBody685_760

def RemovedBody685_762 : StackLang.HolProg 64 :=
.seq RemovedBody685_750 RemovedBody685_761

def RemovedBody685_763 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 4
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 104#64))

def RemovedBody685_764 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 88#64))

def RemovedBody685_765 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 3
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 64#64))

def RemovedBody685_766 : StackLang.HolProg 64 :=
.seq RemovedBody685_764 RemovedBody685_765

def RemovedBody685_767 : StackLang.HolProg 64 :=
.seq RemovedBody685_763 RemovedBody685_766

def RemovedBody685_768 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def RemovedBody685_769 : StackLang.HolProg 64 :=
.seq RemovedBody685_767 RemovedBody685_768

def RemovedBody685_770 : StackLang.HolProg 64 :=
.call (some (RemovedBody685_762, 0, 685, 18)) (Sum.inl 670) (some (RemovedBody685_769, 685, 19))

def RemovedBody685_771 : StackLang.HolProg 64 :=
.seq RemovedBody685_749 RemovedBody685_770

def RemovedBody685_772 : StackLang.HolProg 64 :=
.seq RemovedBody685_748 RemovedBody685_771

def RemovedBody685_773 : StackLang.HolProg 64 :=
.seq RemovedBody685_747 RemovedBody685_772

def RemovedBody685_774 : StackLang.HolProg 64 :=
.seq RemovedBody685_718 RemovedBody685_773

def RemovedBody685_775 : StackLang.HolProg 64 :=
.seq RemovedBody685_715 RemovedBody685_774

def RemovedBody685_776 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody685_777 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 1 0
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 0)))

def RemovedBody685_778 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 2 3
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 3)))

def RemovedBody685_779 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 4
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 104#64))

def RemovedBody685_780 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 88#64))

def RemovedBody685_781 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 3
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 64#64))

def RemovedBody685_782 : StackLang.HolProg 64 :=
.seq RemovedBody685_780 RemovedBody685_781

def RemovedBody685_783 : StackLang.HolProg 64 :=
.seq RemovedBody685_779 RemovedBody685_782

def RemovedBody685_784 : StackLang.HolProg 64 :=
.seq RemovedBody685_778 RemovedBody685_783

def RemovedBody685_785 : StackLang.HolProg 64 :=
.seq RemovedBody685_777 RemovedBody685_784

def RemovedBody685_786 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody685_787 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 2896#64)

def RemovedBody685_788 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody685_789 : StackLang.HolProg 64 :=
.seq RemovedBody685_787 RemovedBody685_788

def RemovedBody685_790 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody685_791 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 2#64)

def RemovedBody685_792 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 1

def RemovedBody685_793 : StackLang.HolProg 64 :=
.seq RemovedBody685_791 RemovedBody685_792

def RemovedBody685_794 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody685_795 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) RemovedBody685_793 RemovedBody685_794

def RemovedBody685_796 : StackLang.HolProg 64 :=
.seq RemovedBody685_790 RemovedBody685_795

def RemovedBody685_797 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def RemovedBody685_798 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody685_799 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 685 21

def RemovedBody685_800 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody685_801 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody685_802 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody685_803 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody685_804 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def RemovedBody685_805 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def RemovedBody685_806 : StackLang.HolProg 64 :=
.seq RemovedBody685_804 RemovedBody685_805

def RemovedBody685_807 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def RemovedBody685_808 : StackLang.HolProg 64 :=
.seq RemovedBody685_806 RemovedBody685_807

def RemovedBody685_809 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody685_810 : StackLang.HolProg 64 :=
.seq RemovedBody685_808 RemovedBody685_809

def RemovedBody685_811 : StackLang.HolProg 64 :=
.seq RemovedBody685_803 RemovedBody685_810

def RemovedBody685_812 : StackLang.HolProg 64 :=
.seq RemovedBody685_802 RemovedBody685_811

def RemovedBody685_813 : StackLang.HolProg 64 :=
.seq RemovedBody685_801 RemovedBody685_812

def RemovedBody685_814 : StackLang.HolProg 64 :=
.seq RemovedBody685_800 RemovedBody685_813

def RemovedBody685_815 : StackLang.HolProg 64 :=
.seq RemovedBody685_799 RemovedBody685_814

def RemovedBody685_816 : StackLang.HolProg 64 :=
.seq RemovedBody685_798 RemovedBody685_815

def RemovedBody685_817 : StackLang.HolProg 64 :=
.seq RemovedBody685_797 RemovedBody685_816

def RemovedBody685_818 : StackLang.HolProg 64 :=
.seq RemovedBody685_796 RemovedBody685_817

def RemovedBody685_819 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody685_820 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody685_821 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody685_822 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody685_823 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody685_824 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody685_825 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 4
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 136#64))

def RemovedBody685_826 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 88#64))

def RemovedBody685_827 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 3
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 40#64))

def RemovedBody685_828 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 32#64))

def RemovedBody685_829 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 40#64))

def RemovedBody685_830 : StackLang.HolProg 64 :=
.seq RemovedBody685_828 RemovedBody685_829

def RemovedBody685_831 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 2
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 24#64))

def RemovedBody685_832 : StackLang.HolProg 64 :=
.seq RemovedBody685_830 RemovedBody685_831

def RemovedBody685_833 : StackLang.HolProg 64 :=
.seq RemovedBody685_827 RemovedBody685_832

def RemovedBody685_834 : StackLang.HolProg 64 :=
.seq RemovedBody685_826 RemovedBody685_833

def RemovedBody685_835 : StackLang.HolProg 64 :=
.seq RemovedBody685_825 RemovedBody685_834

def RemovedBody685_836 : StackLang.HolProg 64 :=
.seq RemovedBody685_824 RemovedBody685_835

def RemovedBody685_837 : StackLang.HolProg 64 :=
.seq RemovedBody685_823 RemovedBody685_836

def RemovedBody685_838 : StackLang.HolProg 64 :=
.seq RemovedBody685_822 RemovedBody685_837

def RemovedBody685_839 : StackLang.HolProg 64 :=
.seq RemovedBody685_821 RemovedBody685_838

def RemovedBody685_840 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 4
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 136#64))

def RemovedBody685_841 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 88#64))

def RemovedBody685_842 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 3
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 40#64))

def RemovedBody685_843 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 32#64))

def RemovedBody685_844 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 40#64))

def RemovedBody685_845 : StackLang.HolProg 64 :=
.seq RemovedBody685_843 RemovedBody685_844

def RemovedBody685_846 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 2
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 24#64))

def RemovedBody685_847 : StackLang.HolProg 64 :=
.seq RemovedBody685_845 RemovedBody685_846

def RemovedBody685_848 : StackLang.HolProg 64 :=
.seq RemovedBody685_842 RemovedBody685_847

def RemovedBody685_849 : StackLang.HolProg 64 :=
.seq RemovedBody685_841 RemovedBody685_848

def RemovedBody685_850 : StackLang.HolProg 64 :=
.seq RemovedBody685_840 RemovedBody685_849

def RemovedBody685_851 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def RemovedBody685_852 : StackLang.HolProg 64 :=
.seq RemovedBody685_850 RemovedBody685_851

def RemovedBody685_853 : StackLang.HolProg 64 :=
.call (some (RemovedBody685_839, 0, 685, 20)) (Sum.inl 673) (some (RemovedBody685_852, 685, 21))

def RemovedBody685_854 : StackLang.HolProg 64 :=
.seq RemovedBody685_820 RemovedBody685_853

def RemovedBody685_855 : StackLang.HolProg 64 :=
.seq RemovedBody685_819 RemovedBody685_854

def RemovedBody685_856 : StackLang.HolProg 64 :=
.seq RemovedBody685_818 RemovedBody685_855

def RemovedBody685_857 : StackLang.HolProg 64 :=
.seq RemovedBody685_789 RemovedBody685_856

def RemovedBody685_858 : StackLang.HolProg 64 :=
.seq RemovedBody685_786 RemovedBody685_857

def RemovedBody685_859 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody685_860 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 1 0
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 0)))

def RemovedBody685_861 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 4
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 136#64))

def RemovedBody685_862 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 88#64))

def RemovedBody685_863 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 2
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 32#64))

def RemovedBody685_864 : StackLang.HolProg 64 :=
.seq RemovedBody685_862 RemovedBody685_863

def RemovedBody685_865 : StackLang.HolProg 64 :=
.seq RemovedBody685_861 RemovedBody685_864

def RemovedBody685_866 : StackLang.HolProg 64 :=
.seq RemovedBody685_860 RemovedBody685_865

def RemovedBody685_867 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody685_868 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 2897#64)

def RemovedBody685_869 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody685_870 : StackLang.HolProg 64 :=
.seq RemovedBody685_868 RemovedBody685_869

def RemovedBody685_871 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody685_872 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 2#64)

def RemovedBody685_873 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 1

def RemovedBody685_874 : StackLang.HolProg 64 :=
.seq RemovedBody685_872 RemovedBody685_873

def RemovedBody685_875 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody685_876 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) RemovedBody685_874 RemovedBody685_875

def RemovedBody685_877 : StackLang.HolProg 64 :=
.seq RemovedBody685_871 RemovedBody685_876

def RemovedBody685_878 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def RemovedBody685_879 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody685_880 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 685 23

def RemovedBody685_881 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody685_882 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody685_883 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody685_884 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody685_885 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def RemovedBody685_886 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def RemovedBody685_887 : StackLang.HolProg 64 :=
.seq RemovedBody685_885 RemovedBody685_886

def RemovedBody685_888 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def RemovedBody685_889 : StackLang.HolProg 64 :=
.seq RemovedBody685_887 RemovedBody685_888

def RemovedBody685_890 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody685_891 : StackLang.HolProg 64 :=
.seq RemovedBody685_889 RemovedBody685_890

def RemovedBody685_892 : StackLang.HolProg 64 :=
.seq RemovedBody685_884 RemovedBody685_891

def RemovedBody685_893 : StackLang.HolProg 64 :=
.seq RemovedBody685_883 RemovedBody685_892

def RemovedBody685_894 : StackLang.HolProg 64 :=
.seq RemovedBody685_882 RemovedBody685_893

def RemovedBody685_895 : StackLang.HolProg 64 :=
.seq RemovedBody685_881 RemovedBody685_894

def RemovedBody685_896 : StackLang.HolProg 64 :=
.seq RemovedBody685_880 RemovedBody685_895

def RemovedBody685_897 : StackLang.HolProg 64 :=
.seq RemovedBody685_879 RemovedBody685_896

def RemovedBody685_898 : StackLang.HolProg 64 :=
.seq RemovedBody685_878 RemovedBody685_897

def RemovedBody685_899 : StackLang.HolProg 64 :=
.seq RemovedBody685_877 RemovedBody685_898

def RemovedBody685_900 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody685_901 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody685_902 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody685_903 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody685_904 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody685_905 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody685_906 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 2
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 104#64))

def RemovedBody685_907 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 88#64))

def RemovedBody685_908 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 4
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 80#64))

def RemovedBody685_909 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 72#64))

def RemovedBody685_910 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 80#64))

def RemovedBody685_911 : StackLang.HolProg 64 :=
.seq RemovedBody685_909 RemovedBody685_910

def RemovedBody685_912 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 64#64))

def RemovedBody685_913 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 72#64))

def RemovedBody685_914 : StackLang.HolProg 64 :=
.seq RemovedBody685_912 RemovedBody685_913

def RemovedBody685_915 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 56#64))

def RemovedBody685_916 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 64#64))

def RemovedBody685_917 : StackLang.HolProg 64 :=
.seq RemovedBody685_915 RemovedBody685_916

def RemovedBody685_918 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 3
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 48#64))

def RemovedBody685_919 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 40#64))

def RemovedBody685_920 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 48#64))

def RemovedBody685_921 : StackLang.HolProg 64 :=
.seq RemovedBody685_919 RemovedBody685_920

def RemovedBody685_922 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 32#64))

def RemovedBody685_923 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 40#64))

def RemovedBody685_924 : StackLang.HolProg 64 :=
.seq RemovedBody685_922 RemovedBody685_923

def RemovedBody685_925 : StackLang.HolProg 64 :=
.seq RemovedBody685_921 RemovedBody685_924

def RemovedBody685_926 : StackLang.HolProg 64 :=
.seq RemovedBody685_918 RemovedBody685_925

def RemovedBody685_927 : StackLang.HolProg 64 :=
.seq RemovedBody685_917 RemovedBody685_926

def RemovedBody685_928 : StackLang.HolProg 64 :=
.seq RemovedBody685_914 RemovedBody685_927

def RemovedBody685_929 : StackLang.HolProg 64 :=
.seq RemovedBody685_911 RemovedBody685_928

def RemovedBody685_930 : StackLang.HolProg 64 :=
.seq RemovedBody685_908 RemovedBody685_929

def RemovedBody685_931 : StackLang.HolProg 64 :=
.seq RemovedBody685_907 RemovedBody685_930

def RemovedBody685_932 : StackLang.HolProg 64 :=
.seq RemovedBody685_906 RemovedBody685_931

def RemovedBody685_933 : StackLang.HolProg 64 :=
.seq RemovedBody685_905 RemovedBody685_932

def RemovedBody685_934 : StackLang.HolProg 64 :=
.seq RemovedBody685_904 RemovedBody685_933

def RemovedBody685_935 : StackLang.HolProg 64 :=
.seq RemovedBody685_903 RemovedBody685_934

def RemovedBody685_936 : StackLang.HolProg 64 :=
.seq RemovedBody685_902 RemovedBody685_935

def RemovedBody685_937 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 2
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 104#64))

def RemovedBody685_938 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 88#64))

def RemovedBody685_939 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 4
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 80#64))

def RemovedBody685_940 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 72#64))

def RemovedBody685_941 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 80#64))

def RemovedBody685_942 : StackLang.HolProg 64 :=
.seq RemovedBody685_940 RemovedBody685_941

def RemovedBody685_943 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 64#64))

def RemovedBody685_944 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 72#64))

def RemovedBody685_945 : StackLang.HolProg 64 :=
.seq RemovedBody685_943 RemovedBody685_944

def RemovedBody685_946 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 56#64))

def RemovedBody685_947 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 64#64))

def RemovedBody685_948 : StackLang.HolProg 64 :=
.seq RemovedBody685_946 RemovedBody685_947

def RemovedBody685_949 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 3
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 48#64))

def RemovedBody685_950 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 40#64))

def RemovedBody685_951 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 48#64))

def RemovedBody685_952 : StackLang.HolProg 64 :=
.seq RemovedBody685_950 RemovedBody685_951

def RemovedBody685_953 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 32#64))

def RemovedBody685_954 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 40#64))

def RemovedBody685_955 : StackLang.HolProg 64 :=
.seq RemovedBody685_953 RemovedBody685_954

def RemovedBody685_956 : StackLang.HolProg 64 :=
.seq RemovedBody685_952 RemovedBody685_955

def RemovedBody685_957 : StackLang.HolProg 64 :=
.seq RemovedBody685_949 RemovedBody685_956

def RemovedBody685_958 : StackLang.HolProg 64 :=
.seq RemovedBody685_948 RemovedBody685_957

def RemovedBody685_959 : StackLang.HolProg 64 :=
.seq RemovedBody685_945 RemovedBody685_958

def RemovedBody685_960 : StackLang.HolProg 64 :=
.seq RemovedBody685_942 RemovedBody685_959

def RemovedBody685_961 : StackLang.HolProg 64 :=
.seq RemovedBody685_939 RemovedBody685_960

def RemovedBody685_962 : StackLang.HolProg 64 :=
.seq RemovedBody685_938 RemovedBody685_961

def RemovedBody685_963 : StackLang.HolProg 64 :=
.seq RemovedBody685_937 RemovedBody685_962

def RemovedBody685_964 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def RemovedBody685_965 : StackLang.HolProg 64 :=
.seq RemovedBody685_963 RemovedBody685_964

def RemovedBody685_966 : StackLang.HolProg 64 :=
.call (some (RemovedBody685_936, 0, 685, 22)) (Sum.inl 670) (some (RemovedBody685_965, 685, 23))

def RemovedBody685_967 : StackLang.HolProg 64 :=
.seq RemovedBody685_901 RemovedBody685_966

def RemovedBody685_968 : StackLang.HolProg 64 :=
.seq RemovedBody685_900 RemovedBody685_967

def RemovedBody685_969 : StackLang.HolProg 64 :=
.seq RemovedBody685_899 RemovedBody685_968

def RemovedBody685_970 : StackLang.HolProg 64 :=
.seq RemovedBody685_870 RemovedBody685_969

def RemovedBody685_971 : StackLang.HolProg 64 :=
.seq RemovedBody685_867 RemovedBody685_970

def RemovedBody685_972 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody685_973 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 1 0
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 0)))

def RemovedBody685_974 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 2
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 104#64))

def RemovedBody685_975 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 88#64))

def RemovedBody685_976 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 3
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 56#64))

def RemovedBody685_977 : StackLang.HolProg 64 :=
.seq RemovedBody685_975 RemovedBody685_976

def RemovedBody685_978 : StackLang.HolProg 64 :=
.seq RemovedBody685_974 RemovedBody685_977

def RemovedBody685_979 : StackLang.HolProg 64 :=
.seq RemovedBody685_973 RemovedBody685_978

def RemovedBody685_980 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody685_981 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 2898#64)

def RemovedBody685_982 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody685_983 : StackLang.HolProg 64 :=
.seq RemovedBody685_981 RemovedBody685_982

def RemovedBody685_984 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody685_985 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 2#64)

def RemovedBody685_986 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 1

def RemovedBody685_987 : StackLang.HolProg 64 :=
.seq RemovedBody685_985 RemovedBody685_986

def RemovedBody685_988 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody685_989 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) RemovedBody685_987 RemovedBody685_988

def RemovedBody685_990 : StackLang.HolProg 64 :=
.seq RemovedBody685_984 RemovedBody685_989

def RemovedBody685_991 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def RemovedBody685_992 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody685_993 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 685 25

def RemovedBody685_994 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody685_995 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody685_996 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody685_997 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody685_998 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def RemovedBody685_999 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def RemovedBody685_1000 : StackLang.HolProg 64 :=
.seq RemovedBody685_998 RemovedBody685_999

def RemovedBody685_1001 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def RemovedBody685_1002 : StackLang.HolProg 64 :=
.seq RemovedBody685_1000 RemovedBody685_1001

def RemovedBody685_1003 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody685_1004 : StackLang.HolProg 64 :=
.seq RemovedBody685_1002 RemovedBody685_1003

def RemovedBody685_1005 : StackLang.HolProg 64 :=
.seq RemovedBody685_997 RemovedBody685_1004

def RemovedBody685_1006 : StackLang.HolProg 64 :=
.seq RemovedBody685_996 RemovedBody685_1005

def RemovedBody685_1007 : StackLang.HolProg 64 :=
.seq RemovedBody685_995 RemovedBody685_1006

def RemovedBody685_1008 : StackLang.HolProg 64 :=
.seq RemovedBody685_994 RemovedBody685_1007

def RemovedBody685_1009 : StackLang.HolProg 64 :=
.seq RemovedBody685_993 RemovedBody685_1008

def RemovedBody685_1010 : StackLang.HolProg 64 :=
.seq RemovedBody685_992 RemovedBody685_1009

def RemovedBody685_1011 : StackLang.HolProg 64 :=
.seq RemovedBody685_991 RemovedBody685_1010

def RemovedBody685_1012 : StackLang.HolProg 64 :=
.seq RemovedBody685_990 RemovedBody685_1011

def RemovedBody685_1013 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody685_1014 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody685_1015 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody685_1016 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody685_1017 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody685_1018 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody685_1019 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 4
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 104#64))

def RemovedBody685_1020 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 88#64))

def RemovedBody685_1021 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 3
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 40#64))

def RemovedBody685_1022 : StackLang.HolProg 64 :=
.seq RemovedBody685_1020 RemovedBody685_1021

def RemovedBody685_1023 : StackLang.HolProg 64 :=
.seq RemovedBody685_1019 RemovedBody685_1022

def RemovedBody685_1024 : StackLang.HolProg 64 :=
.seq RemovedBody685_1018 RemovedBody685_1023

def RemovedBody685_1025 : StackLang.HolProg 64 :=
.seq RemovedBody685_1017 RemovedBody685_1024

def RemovedBody685_1026 : StackLang.HolProg 64 :=
.seq RemovedBody685_1016 RemovedBody685_1025

def RemovedBody685_1027 : StackLang.HolProg 64 :=
.seq RemovedBody685_1015 RemovedBody685_1026

def RemovedBody685_1028 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 4
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 104#64))

def RemovedBody685_1029 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 88#64))

def RemovedBody685_1030 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 3
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 40#64))

def RemovedBody685_1031 : StackLang.HolProg 64 :=
.seq RemovedBody685_1029 RemovedBody685_1030

def RemovedBody685_1032 : StackLang.HolProg 64 :=
.seq RemovedBody685_1028 RemovedBody685_1031

def RemovedBody685_1033 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def RemovedBody685_1034 : StackLang.HolProg 64 :=
.seq RemovedBody685_1032 RemovedBody685_1033

def RemovedBody685_1035 : StackLang.HolProg 64 :=
.call (some (RemovedBody685_1027, 0, 685, 24)) (Sum.inl 670) (some (RemovedBody685_1034, 685, 25))

def RemovedBody685_1036 : StackLang.HolProg 64 :=
.seq RemovedBody685_1014 RemovedBody685_1035

def RemovedBody685_1037 : StackLang.HolProg 64 :=
.seq RemovedBody685_1013 RemovedBody685_1036

def RemovedBody685_1038 : StackLang.HolProg 64 :=
.seq RemovedBody685_1012 RemovedBody685_1037

def RemovedBody685_1039 : StackLang.HolProg 64 :=
.seq RemovedBody685_983 RemovedBody685_1038

def RemovedBody685_1040 : StackLang.HolProg 64 :=
.seq RemovedBody685_980 RemovedBody685_1039

def RemovedBody685_1041 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody685_1042 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 1 0
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 0)))

def RemovedBody685_1043 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 2 3
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 3)))

def RemovedBody685_1044 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 4
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 104#64))

def RemovedBody685_1045 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 88#64))

def RemovedBody685_1046 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 3
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 40#64))

def RemovedBody685_1047 : StackLang.HolProg 64 :=
.seq RemovedBody685_1045 RemovedBody685_1046

def RemovedBody685_1048 : StackLang.HolProg 64 :=
.seq RemovedBody685_1044 RemovedBody685_1047

def RemovedBody685_1049 : StackLang.HolProg 64 :=
.seq RemovedBody685_1043 RemovedBody685_1048

def RemovedBody685_1050 : StackLang.HolProg 64 :=
.seq RemovedBody685_1042 RemovedBody685_1049

def RemovedBody685_1051 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody685_1052 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 2899#64)

def RemovedBody685_1053 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody685_1054 : StackLang.HolProg 64 :=
.seq RemovedBody685_1052 RemovedBody685_1053

def RemovedBody685_1055 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody685_1056 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 2#64)

def RemovedBody685_1057 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 1

def RemovedBody685_1058 : StackLang.HolProg 64 :=
.seq RemovedBody685_1056 RemovedBody685_1057

def RemovedBody685_1059 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody685_1060 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) RemovedBody685_1058 RemovedBody685_1059

def RemovedBody685_1061 : StackLang.HolProg 64 :=
.seq RemovedBody685_1055 RemovedBody685_1060

def RemovedBody685_1062 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def RemovedBody685_1063 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody685_1064 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 685 27

def RemovedBody685_1065 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody685_1066 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody685_1067 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody685_1068 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody685_1069 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def RemovedBody685_1070 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def RemovedBody685_1071 : StackLang.HolProg 64 :=
.seq RemovedBody685_1069 RemovedBody685_1070

def RemovedBody685_1072 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def RemovedBody685_1073 : StackLang.HolProg 64 :=
.seq RemovedBody685_1071 RemovedBody685_1072

def RemovedBody685_1074 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody685_1075 : StackLang.HolProg 64 :=
.seq RemovedBody685_1073 RemovedBody685_1074

def RemovedBody685_1076 : StackLang.HolProg 64 :=
.seq RemovedBody685_1068 RemovedBody685_1075

def RemovedBody685_1077 : StackLang.HolProg 64 :=
.seq RemovedBody685_1067 RemovedBody685_1076

def RemovedBody685_1078 : StackLang.HolProg 64 :=
.seq RemovedBody685_1066 RemovedBody685_1077

def RemovedBody685_1079 : StackLang.HolProg 64 :=
.seq RemovedBody685_1065 RemovedBody685_1078

def RemovedBody685_1080 : StackLang.HolProg 64 :=
.seq RemovedBody685_1064 RemovedBody685_1079

def RemovedBody685_1081 : StackLang.HolProg 64 :=
.seq RemovedBody685_1063 RemovedBody685_1080

def RemovedBody685_1082 : StackLang.HolProg 64 :=
.seq RemovedBody685_1062 RemovedBody685_1081

def RemovedBody685_1083 : StackLang.HolProg 64 :=
.seq RemovedBody685_1061 RemovedBody685_1082

def RemovedBody685_1084 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody685_1085 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody685_1086 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody685_1087 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody685_1088 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody685_1089 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody685_1090 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 88#64))

def RemovedBody685_1091 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 2
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 40#64))

def RemovedBody685_1092 : StackLang.HolProg 64 :=
.seq RemovedBody685_1090 RemovedBody685_1091

def RemovedBody685_1093 : StackLang.HolProg 64 :=
.seq RemovedBody685_1089 RemovedBody685_1092

def RemovedBody685_1094 : StackLang.HolProg 64 :=
.seq RemovedBody685_1088 RemovedBody685_1093

def RemovedBody685_1095 : StackLang.HolProg 64 :=
.seq RemovedBody685_1087 RemovedBody685_1094

def RemovedBody685_1096 : StackLang.HolProg 64 :=
.seq RemovedBody685_1086 RemovedBody685_1095

def RemovedBody685_1097 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 88#64))

def RemovedBody685_1098 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 2
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 40#64))

def RemovedBody685_1099 : StackLang.HolProg 64 :=
.seq RemovedBody685_1097 RemovedBody685_1098

def RemovedBody685_1100 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def RemovedBody685_1101 : StackLang.HolProg 64 :=
.seq RemovedBody685_1099 RemovedBody685_1100

def RemovedBody685_1102 : StackLang.HolProg 64 :=
.call (some (RemovedBody685_1096, 0, 685, 26)) (Sum.inl 673) (some (RemovedBody685_1101, 685, 27))

def RemovedBody685_1103 : StackLang.HolProg 64 :=
.seq RemovedBody685_1085 RemovedBody685_1102

def RemovedBody685_1104 : StackLang.HolProg 64 :=
.seq RemovedBody685_1084 RemovedBody685_1103

def RemovedBody685_1105 : StackLang.HolProg 64 :=
.seq RemovedBody685_1083 RemovedBody685_1104

def RemovedBody685_1106 : StackLang.HolProg 64 :=
.seq RemovedBody685_1054 RemovedBody685_1105

def RemovedBody685_1107 : StackLang.HolProg 64 :=
.seq RemovedBody685_1051 RemovedBody685_1106

def RemovedBody685_1108 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody685_1109 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody685_1110 : StackLang.HolProg 64 :=
.seq RemovedBody685_1108 RemovedBody685_1109

def RemovedBody685_1111 : StackLang.HolProg 64 :=
.seq RemovedBody685_1107 RemovedBody685_1110

def RemovedBody685_1112 : StackLang.HolProg 64 :=
.seq RemovedBody685_1050 RemovedBody685_1111

def RemovedBody685_1113 : StackLang.HolProg 64 :=
.seq RemovedBody685_1041 RemovedBody685_1112

def RemovedBody685_1114 : StackLang.HolProg 64 :=
.seq RemovedBody685_1040 RemovedBody685_1113

def RemovedBody685_1115 : StackLang.HolProg 64 :=
.seq RemovedBody685_979 RemovedBody685_1114

def RemovedBody685_1116 : StackLang.HolProg 64 :=
.seq RemovedBody685_972 RemovedBody685_1115

def RemovedBody685_1117 : StackLang.HolProg 64 :=
.seq RemovedBody685_971 RemovedBody685_1116

def RemovedBody685_1118 : StackLang.HolProg 64 :=
.seq RemovedBody685_866 RemovedBody685_1117

def RemovedBody685_1119 : StackLang.HolProg 64 :=
.seq RemovedBody685_859 RemovedBody685_1118

def RemovedBody685_1120 : StackLang.HolProg 64 :=
.seq RemovedBody685_858 RemovedBody685_1119

def RemovedBody685_1121 : StackLang.HolProg 64 :=
.seq RemovedBody685_785 RemovedBody685_1120

def RemovedBody685_1122 : StackLang.HolProg 64 :=
.seq RemovedBody685_776 RemovedBody685_1121

def RemovedBody685_1123 : StackLang.HolProg 64 :=
.seq RemovedBody685_775 RemovedBody685_1122

def RemovedBody685_1124 : StackLang.HolProg 64 :=
.seq RemovedBody685_714 RemovedBody685_1123

def RemovedBody685_1125 : StackLang.HolProg 64 :=
.seq RemovedBody685_705 RemovedBody685_1124

def RemovedBody685_1126 : StackLang.HolProg 64 :=
.seq RemovedBody685_704 RemovedBody685_1125

def RemovedBody685_1127 : StackLang.HolProg 64 :=
.seq RemovedBody685_639 RemovedBody685_1126

def RemovedBody685_1128 : StackLang.HolProg 64 :=
.seq RemovedBody685_610 RemovedBody685_1127

def RemovedBody685_1129 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.equal) 0 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 4) RemovedBody685_609 RemovedBody685_1128

def RemovedBody685_1130 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody685_1131 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 1 0
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 0)))

def RemovedBody685_1132 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 88#64))

def RemovedBody685_1133 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 2
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 40#64))

def RemovedBody685_1134 : StackLang.HolProg 64 :=
.seq RemovedBody685_1132 RemovedBody685_1133

def RemovedBody685_1135 : StackLang.HolProg 64 :=
.seq RemovedBody685_1131 RemovedBody685_1134

def RemovedBody685_1136 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody685_1137 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 2900#64)

def RemovedBody685_1138 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody685_1139 : StackLang.HolProg 64 :=
.seq RemovedBody685_1137 RemovedBody685_1138

def RemovedBody685_1140 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody685_1141 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 2#64)

def RemovedBody685_1142 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 1

def RemovedBody685_1143 : StackLang.HolProg 64 :=
.seq RemovedBody685_1141 RemovedBody685_1142

def RemovedBody685_1144 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody685_1145 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) RemovedBody685_1143 RemovedBody685_1144

def RemovedBody685_1146 : StackLang.HolProg 64 :=
.seq RemovedBody685_1140 RemovedBody685_1145

def RemovedBody685_1147 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def RemovedBody685_1148 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody685_1149 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 685 29

def RemovedBody685_1150 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody685_1151 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody685_1152 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody685_1153 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody685_1154 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def RemovedBody685_1155 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def RemovedBody685_1156 : StackLang.HolProg 64 :=
.seq RemovedBody685_1154 RemovedBody685_1155

def RemovedBody685_1157 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def RemovedBody685_1158 : StackLang.HolProg 64 :=
.seq RemovedBody685_1156 RemovedBody685_1157

def RemovedBody685_1159 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody685_1160 : StackLang.HolProg 64 :=
.seq RemovedBody685_1158 RemovedBody685_1159

def RemovedBody685_1161 : StackLang.HolProg 64 :=
.seq RemovedBody685_1153 RemovedBody685_1160

def RemovedBody685_1162 : StackLang.HolProg 64 :=
.seq RemovedBody685_1152 RemovedBody685_1161

def RemovedBody685_1163 : StackLang.HolProg 64 :=
.seq RemovedBody685_1151 RemovedBody685_1162

def RemovedBody685_1164 : StackLang.HolProg 64 :=
.seq RemovedBody685_1150 RemovedBody685_1163

def RemovedBody685_1165 : StackLang.HolProg 64 :=
.seq RemovedBody685_1149 RemovedBody685_1164

def RemovedBody685_1166 : StackLang.HolProg 64 :=
.seq RemovedBody685_1148 RemovedBody685_1165

def RemovedBody685_1167 : StackLang.HolProg 64 :=
.seq RemovedBody685_1147 RemovedBody685_1166

def RemovedBody685_1168 : StackLang.HolProg 64 :=
.seq RemovedBody685_1146 RemovedBody685_1167

def RemovedBody685_1169 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody685_1170 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody685_1171 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody685_1172 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody685_1173 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody685_1174 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody685_1175 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 2 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def RemovedBody685_1176 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 88#64))

def RemovedBody685_1177 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 80#64))

def RemovedBody685_1178 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 88#64))

def RemovedBody685_1179 : StackLang.HolProg 64 :=
.seq RemovedBody685_1177 RemovedBody685_1178

def RemovedBody685_1180 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 72#64))

def RemovedBody685_1181 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 80#64))

def RemovedBody685_1182 : StackLang.HolProg 64 :=
.seq RemovedBody685_1180 RemovedBody685_1181

def RemovedBody685_1183 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 64#64))

def RemovedBody685_1184 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 72#64))

def RemovedBody685_1185 : StackLang.HolProg 64 :=
.seq RemovedBody685_1183 RemovedBody685_1184

def RemovedBody685_1186 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 56#64))

def RemovedBody685_1187 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 64#64))

def RemovedBody685_1188 : StackLang.HolProg 64 :=
.seq RemovedBody685_1186 RemovedBody685_1187

def RemovedBody685_1189 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 48#64))

def RemovedBody685_1190 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 56#64))

def RemovedBody685_1191 : StackLang.HolProg 64 :=
.seq RemovedBody685_1189 RemovedBody685_1190

def RemovedBody685_1192 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 40#64))

def RemovedBody685_1193 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 48#64))

def RemovedBody685_1194 : StackLang.HolProg 64 :=
.seq RemovedBody685_1192 RemovedBody685_1193

def RemovedBody685_1195 : StackLang.HolProg 64 :=
.seq RemovedBody685_1191 RemovedBody685_1194

def RemovedBody685_1196 : StackLang.HolProg 64 :=
.seq RemovedBody685_1188 RemovedBody685_1195

def RemovedBody685_1197 : StackLang.HolProg 64 :=
.seq RemovedBody685_1185 RemovedBody685_1196

def RemovedBody685_1198 : StackLang.HolProg 64 :=
.seq RemovedBody685_1182 RemovedBody685_1197

def RemovedBody685_1199 : StackLang.HolProg 64 :=
.seq RemovedBody685_1179 RemovedBody685_1198

def RemovedBody685_1200 : StackLang.HolProg 64 :=
.seq RemovedBody685_1176 RemovedBody685_1199

def RemovedBody685_1201 : StackLang.HolProg 64 :=
.seq RemovedBody685_1175 RemovedBody685_1200

def RemovedBody685_1202 : StackLang.HolProg 64 :=
.seq RemovedBody685_1174 RemovedBody685_1201

def RemovedBody685_1203 : StackLang.HolProg 64 :=
.seq RemovedBody685_1173 RemovedBody685_1202

def RemovedBody685_1204 : StackLang.HolProg 64 :=
.seq RemovedBody685_1172 RemovedBody685_1203

def RemovedBody685_1205 : StackLang.HolProg 64 :=
.seq RemovedBody685_1171 RemovedBody685_1204

def RemovedBody685_1206 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 88#64))

def RemovedBody685_1207 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 80#64))

def RemovedBody685_1208 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 88#64))

def RemovedBody685_1209 : StackLang.HolProg 64 :=
.seq RemovedBody685_1207 RemovedBody685_1208

def RemovedBody685_1210 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 72#64))

def RemovedBody685_1211 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 80#64))

def RemovedBody685_1212 : StackLang.HolProg 64 :=
.seq RemovedBody685_1210 RemovedBody685_1211

def RemovedBody685_1213 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 64#64))

def RemovedBody685_1214 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 72#64))

def RemovedBody685_1215 : StackLang.HolProg 64 :=
.seq RemovedBody685_1213 RemovedBody685_1214

def RemovedBody685_1216 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 56#64))

def RemovedBody685_1217 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 64#64))

def RemovedBody685_1218 : StackLang.HolProg 64 :=
.seq RemovedBody685_1216 RemovedBody685_1217

def RemovedBody685_1219 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 48#64))

def RemovedBody685_1220 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 56#64))

def RemovedBody685_1221 : StackLang.HolProg 64 :=
.seq RemovedBody685_1219 RemovedBody685_1220

def RemovedBody685_1222 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 40#64))

def RemovedBody685_1223 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 48#64))

def RemovedBody685_1224 : StackLang.HolProg 64 :=
.seq RemovedBody685_1222 RemovedBody685_1223

def RemovedBody685_1225 : StackLang.HolProg 64 :=
.seq RemovedBody685_1221 RemovedBody685_1224

def RemovedBody685_1226 : StackLang.HolProg 64 :=
.seq RemovedBody685_1218 RemovedBody685_1225

def RemovedBody685_1227 : StackLang.HolProg 64 :=
.seq RemovedBody685_1215 RemovedBody685_1226

def RemovedBody685_1228 : StackLang.HolProg 64 :=
.seq RemovedBody685_1212 RemovedBody685_1227

def RemovedBody685_1229 : StackLang.HolProg 64 :=
.seq RemovedBody685_1209 RemovedBody685_1228

def RemovedBody685_1230 : StackLang.HolProg 64 :=
.seq RemovedBody685_1206 RemovedBody685_1229

def RemovedBody685_1231 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def RemovedBody685_1232 : StackLang.HolProg 64 :=
.seq RemovedBody685_1230 RemovedBody685_1231

def RemovedBody685_1233 : StackLang.HolProg 64 :=
.call (some (RemovedBody685_1205, 0, 685, 28)) (Sum.inl 676) (some (RemovedBody685_1232, 685, 29))

def RemovedBody685_1234 : StackLang.HolProg 64 :=
.seq RemovedBody685_1170 RemovedBody685_1233

def RemovedBody685_1235 : StackLang.HolProg 64 :=
.seq RemovedBody685_1169 RemovedBody685_1234

def RemovedBody685_1236 : StackLang.HolProg 64 :=
.seq RemovedBody685_1168 RemovedBody685_1235

def RemovedBody685_1237 : StackLang.HolProg 64 :=
.seq RemovedBody685_1139 RemovedBody685_1236

def RemovedBody685_1238 : StackLang.HolProg 64 :=
.seq RemovedBody685_1136 RemovedBody685_1237

def RemovedBody685_1239 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody685_1240 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody685_1241 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 1#64)

def RemovedBody685_1242 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody685_1243 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 1 0
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 0)))

def RemovedBody685_1244 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 2
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 80#64))

def RemovedBody685_1245 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 48#64))

def RemovedBody685_1246 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 40#64))

def RemovedBody685_1247 : StackLang.HolProg 64 :=
.seq RemovedBody685_1245 RemovedBody685_1246

def RemovedBody685_1248 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 56#64))

def RemovedBody685_1249 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 48#64))

def RemovedBody685_1250 : StackLang.HolProg 64 :=
.seq RemovedBody685_1248 RemovedBody685_1249

def RemovedBody685_1251 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 64#64))

def RemovedBody685_1252 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 56#64))

def RemovedBody685_1253 : StackLang.HolProg 64 :=
.seq RemovedBody685_1251 RemovedBody685_1252

def RemovedBody685_1254 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 72#64))

def RemovedBody685_1255 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 64#64))

def RemovedBody685_1256 : StackLang.HolProg 64 :=
.seq RemovedBody685_1254 RemovedBody685_1255

def RemovedBody685_1257 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 80#64))

def RemovedBody685_1258 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 72#64))

def RemovedBody685_1259 : StackLang.HolProg 64 :=
.seq RemovedBody685_1257 RemovedBody685_1258

def RemovedBody685_1260 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 88#64))

def RemovedBody685_1261 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 80#64))

def RemovedBody685_1262 : StackLang.HolProg 64 :=
.seq RemovedBody685_1260 RemovedBody685_1261

def RemovedBody685_1263 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 152#64))

def RemovedBody685_1264 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 88#64))

def RemovedBody685_1265 : StackLang.HolProg 64 :=
.seq RemovedBody685_1263 RemovedBody685_1264

def RemovedBody685_1266 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 104#64))

def RemovedBody685_1267 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 152#64))

def RemovedBody685_1268 : StackLang.HolProg 64 :=
.seq RemovedBody685_1266 RemovedBody685_1267

def RemovedBody685_1269 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 104#64))

def RemovedBody685_1270 : StackLang.HolProg 64 :=
.seq RemovedBody685_1268 RemovedBody685_1269

def RemovedBody685_1271 : StackLang.HolProg 64 :=
.seq RemovedBody685_1265 RemovedBody685_1270

def RemovedBody685_1272 : StackLang.HolProg 64 :=
.seq RemovedBody685_1262 RemovedBody685_1271

def RemovedBody685_1273 : StackLang.HolProg 64 :=
.seq RemovedBody685_1259 RemovedBody685_1272

def RemovedBody685_1274 : StackLang.HolProg 64 :=
.seq RemovedBody685_1256 RemovedBody685_1273

def RemovedBody685_1275 : StackLang.HolProg 64 :=
.seq RemovedBody685_1253 RemovedBody685_1274

def RemovedBody685_1276 : StackLang.HolProg 64 :=
.seq RemovedBody685_1250 RemovedBody685_1275

def RemovedBody685_1277 : StackLang.HolProg 64 :=
.seq RemovedBody685_1247 RemovedBody685_1276

def RemovedBody685_1278 : StackLang.HolProg 64 :=
.seq RemovedBody685_1244 RemovedBody685_1277

def RemovedBody685_1279 : StackLang.HolProg 64 :=
.seq RemovedBody685_1243 RemovedBody685_1278

def RemovedBody685_1280 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody685_1281 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 2901#64)

def RemovedBody685_1282 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody685_1283 : StackLang.HolProg 64 :=
.seq RemovedBody685_1281 RemovedBody685_1282

def RemovedBody685_1284 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody685_1285 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 2#64)

def RemovedBody685_1286 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 1

def RemovedBody685_1287 : StackLang.HolProg 64 :=
.seq RemovedBody685_1285 RemovedBody685_1286

def RemovedBody685_1288 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody685_1289 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) RemovedBody685_1287 RemovedBody685_1288

def RemovedBody685_1290 : StackLang.HolProg 64 :=
.seq RemovedBody685_1284 RemovedBody685_1289

def RemovedBody685_1291 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def RemovedBody685_1292 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody685_1293 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 685 31

def RemovedBody685_1294 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody685_1295 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody685_1296 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody685_1297 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody685_1298 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def RemovedBody685_1299 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def RemovedBody685_1300 : StackLang.HolProg 64 :=
.seq RemovedBody685_1298 RemovedBody685_1299

def RemovedBody685_1301 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def RemovedBody685_1302 : StackLang.HolProg 64 :=
.seq RemovedBody685_1300 RemovedBody685_1301

def RemovedBody685_1303 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody685_1304 : StackLang.HolProg 64 :=
.seq RemovedBody685_1302 RemovedBody685_1303

def RemovedBody685_1305 : StackLang.HolProg 64 :=
.seq RemovedBody685_1297 RemovedBody685_1304

def RemovedBody685_1306 : StackLang.HolProg 64 :=
.seq RemovedBody685_1296 RemovedBody685_1305

def RemovedBody685_1307 : StackLang.HolProg 64 :=
.seq RemovedBody685_1295 RemovedBody685_1306

def RemovedBody685_1308 : StackLang.HolProg 64 :=
.seq RemovedBody685_1294 RemovedBody685_1307

def RemovedBody685_1309 : StackLang.HolProg 64 :=
.seq RemovedBody685_1293 RemovedBody685_1308

def RemovedBody685_1310 : StackLang.HolProg 64 :=
.seq RemovedBody685_1292 RemovedBody685_1309

def RemovedBody685_1311 : StackLang.HolProg 64 :=
.seq RemovedBody685_1291 RemovedBody685_1310

def RemovedBody685_1312 : StackLang.HolProg 64 :=
.seq RemovedBody685_1290 RemovedBody685_1311

def RemovedBody685_1313 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody685_1314 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody685_1315 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody685_1316 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody685_1317 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody685_1318 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody685_1319 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 2 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def RemovedBody685_1320 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 104#64))

def RemovedBody685_1321 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 56#64))

def RemovedBody685_1322 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 104#64))

def RemovedBody685_1323 : StackLang.HolProg 64 :=
.seq RemovedBody685_1321 RemovedBody685_1322

def RemovedBody685_1324 : StackLang.HolProg 64 :=
.seq RemovedBody685_1320 RemovedBody685_1323

def RemovedBody685_1325 : StackLang.HolProg 64 :=
.seq RemovedBody685_1319 RemovedBody685_1324

def RemovedBody685_1326 : StackLang.HolProg 64 :=
.seq RemovedBody685_1318 RemovedBody685_1325

def RemovedBody685_1327 : StackLang.HolProg 64 :=
.seq RemovedBody685_1317 RemovedBody685_1326

def RemovedBody685_1328 : StackLang.HolProg 64 :=
.seq RemovedBody685_1316 RemovedBody685_1327

def RemovedBody685_1329 : StackLang.HolProg 64 :=
.seq RemovedBody685_1315 RemovedBody685_1328

def RemovedBody685_1330 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 104#64))

def RemovedBody685_1331 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 56#64))

def RemovedBody685_1332 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 104#64))

def RemovedBody685_1333 : StackLang.HolProg 64 :=
.seq RemovedBody685_1331 RemovedBody685_1332

def RemovedBody685_1334 : StackLang.HolProg 64 :=
.seq RemovedBody685_1330 RemovedBody685_1333

def RemovedBody685_1335 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def RemovedBody685_1336 : StackLang.HolProg 64 :=
.seq RemovedBody685_1334 RemovedBody685_1335

def RemovedBody685_1337 : StackLang.HolProg 64 :=
.call (some (RemovedBody685_1329, 0, 685, 30)) (Sum.inl 676) (some (RemovedBody685_1336, 685, 31))

def RemovedBody685_1338 : StackLang.HolProg 64 :=
.seq RemovedBody685_1314 RemovedBody685_1337

def RemovedBody685_1339 : StackLang.HolProg 64 :=
.seq RemovedBody685_1313 RemovedBody685_1338

def RemovedBody685_1340 : StackLang.HolProg 64 :=
.seq RemovedBody685_1312 RemovedBody685_1339

def RemovedBody685_1341 : StackLang.HolProg 64 :=
.seq RemovedBody685_1283 RemovedBody685_1340

def RemovedBody685_1342 : StackLang.HolProg 64 :=
.seq RemovedBody685_1280 RemovedBody685_1341

def RemovedBody685_1343 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody685_1344 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody685_1345 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 1#64)

def RemovedBody685_1346 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 2
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 152#64))

def RemovedBody685_1347 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 3
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 104#64))

def RemovedBody685_1348 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 88#64))

def RemovedBody685_1349 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 152#64))

def RemovedBody685_1350 : StackLang.HolProg 64 :=
.seq RemovedBody685_1348 RemovedBody685_1349

def RemovedBody685_1351 : StackLang.HolProg 64 :=
.seq RemovedBody685_1347 RemovedBody685_1350

def RemovedBody685_1352 : StackLang.HolProg 64 :=
.seq RemovedBody685_1346 RemovedBody685_1351

def RemovedBody685_1353 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody685_1354 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 1 0
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 0)))

def RemovedBody685_1355 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 2
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 120#64))

def RemovedBody685_1356 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 3
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 128#64))

def RemovedBody685_1357 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 4
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 136#64))

def RemovedBody685_1358 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 23
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 88#64))

def RemovedBody685_1359 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 104#64))

def RemovedBody685_1360 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 88#64))

def RemovedBody685_1361 : StackLang.HolProg 64 :=
.seq RemovedBody685_1359 RemovedBody685_1360

def RemovedBody685_1362 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 23
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 104#64))

def RemovedBody685_1363 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 152#64))

def RemovedBody685_1364 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 128#64))

def RemovedBody685_1365 : StackLang.HolProg 64 :=
.seq RemovedBody685_1363 RemovedBody685_1364

def RemovedBody685_1366 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 144#64))

def RemovedBody685_1367 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 152#64))

def RemovedBody685_1368 : StackLang.HolProg 64 :=
.seq RemovedBody685_1366 RemovedBody685_1367

def RemovedBody685_1369 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 136#64))

def RemovedBody685_1370 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 144#64))

def RemovedBody685_1371 : StackLang.HolProg 64 :=
.seq RemovedBody685_1369 RemovedBody685_1370

def RemovedBody685_1372 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 120#64))

def RemovedBody685_1373 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 136#64))

def RemovedBody685_1374 : StackLang.HolProg 64 :=
.seq RemovedBody685_1372 RemovedBody685_1373

def RemovedBody685_1375 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 120#64))

def RemovedBody685_1376 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 64#64))

def RemovedBody685_1377 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 96#64))

def RemovedBody685_1378 : StackLang.HolProg 64 :=
.seq RemovedBody685_1376 RemovedBody685_1377

def RemovedBody685_1379 : StackLang.HolProg 64 :=
.seq RemovedBody685_1375 RemovedBody685_1378

def RemovedBody685_1380 : StackLang.HolProg 64 :=
.seq RemovedBody685_1374 RemovedBody685_1379

def RemovedBody685_1381 : StackLang.HolProg 64 :=
.seq RemovedBody685_1371 RemovedBody685_1380

def RemovedBody685_1382 : StackLang.HolProg 64 :=
.seq RemovedBody685_1368 RemovedBody685_1381

def RemovedBody685_1383 : StackLang.HolProg 64 :=
.seq RemovedBody685_1365 RemovedBody685_1382

def RemovedBody685_1384 : StackLang.HolProg 64 :=
.seq RemovedBody685_1362 RemovedBody685_1383

def RemovedBody685_1385 : StackLang.HolProg 64 :=
.seq RemovedBody685_1361 RemovedBody685_1384

def RemovedBody685_1386 : StackLang.HolProg 64 :=
.seq RemovedBody685_1358 RemovedBody685_1385

def RemovedBody685_1387 : StackLang.HolProg 64 :=
.seq RemovedBody685_1357 RemovedBody685_1386

def RemovedBody685_1388 : StackLang.HolProg 64 :=
.seq RemovedBody685_1356 RemovedBody685_1387

def RemovedBody685_1389 : StackLang.HolProg 64 :=
.seq RemovedBody685_1355 RemovedBody685_1388

def RemovedBody685_1390 : StackLang.HolProg 64 :=
.seq RemovedBody685_1354 RemovedBody685_1389

def RemovedBody685_1391 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody685_1392 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 2902#64)

def RemovedBody685_1393 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody685_1394 : StackLang.HolProg 64 :=
.seq RemovedBody685_1392 RemovedBody685_1393

def RemovedBody685_1395 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody685_1396 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 2#64)

def RemovedBody685_1397 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 1

def RemovedBody685_1398 : StackLang.HolProg 64 :=
.seq RemovedBody685_1396 RemovedBody685_1397

def RemovedBody685_1399 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody685_1400 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) RemovedBody685_1398 RemovedBody685_1399

def RemovedBody685_1401 : StackLang.HolProg 64 :=
.seq RemovedBody685_1395 RemovedBody685_1400

def RemovedBody685_1402 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def RemovedBody685_1403 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody685_1404 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 685 41

def RemovedBody685_1405 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody685_1406 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody685_1407 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody685_1408 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody685_1409 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def RemovedBody685_1410 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def RemovedBody685_1411 : StackLang.HolProg 64 :=
.seq RemovedBody685_1409 RemovedBody685_1410

def RemovedBody685_1412 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def RemovedBody685_1413 : StackLang.HolProg 64 :=
.seq RemovedBody685_1411 RemovedBody685_1412

def RemovedBody685_1414 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody685_1415 : StackLang.HolProg 64 :=
.seq RemovedBody685_1413 RemovedBody685_1414

def RemovedBody685_1416 : StackLang.HolProg 64 :=
.seq RemovedBody685_1408 RemovedBody685_1415

def RemovedBody685_1417 : StackLang.HolProg 64 :=
.seq RemovedBody685_1407 RemovedBody685_1416

def RemovedBody685_1418 : StackLang.HolProg 64 :=
.seq RemovedBody685_1406 RemovedBody685_1417

def RemovedBody685_1419 : StackLang.HolProg 64 :=
.seq RemovedBody685_1405 RemovedBody685_1418

def RemovedBody685_1420 : StackLang.HolProg 64 :=
.seq RemovedBody685_1404 RemovedBody685_1419

def RemovedBody685_1421 : StackLang.HolProg 64 :=
.seq RemovedBody685_1403 RemovedBody685_1420

def RemovedBody685_1422 : StackLang.HolProg 64 :=
.seq RemovedBody685_1402 RemovedBody685_1421

def RemovedBody685_1423 : StackLang.HolProg 64 :=
.seq RemovedBody685_1401 RemovedBody685_1422

def RemovedBody685_1424 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody685_1425 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody685_1426 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody685_1427 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody685_1428 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody685_1429 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody685_1430 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 4
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 112#64))

def RemovedBody685_1431 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 2
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 128#64))

def RemovedBody685_1432 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 120#64))

def RemovedBody685_1433 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 3
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 88#64))

def RemovedBody685_1434 : StackLang.HolProg 64 :=
.seq RemovedBody685_1432 RemovedBody685_1433

def RemovedBody685_1435 : StackLang.HolProg 64 :=
.seq RemovedBody685_1431 RemovedBody685_1434

def RemovedBody685_1436 : StackLang.HolProg 64 :=
.seq RemovedBody685_1430 RemovedBody685_1435

def RemovedBody685_1437 : StackLang.HolProg 64 :=
.seq RemovedBody685_1429 RemovedBody685_1436

def RemovedBody685_1438 : StackLang.HolProg 64 :=
.seq RemovedBody685_1428 RemovedBody685_1437

def RemovedBody685_1439 : StackLang.HolProg 64 :=
.seq RemovedBody685_1427 RemovedBody685_1438

def RemovedBody685_1440 : StackLang.HolProg 64 :=
.seq RemovedBody685_1426 RemovedBody685_1439

def RemovedBody685_1441 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 4
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 112#64))

def RemovedBody685_1442 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 2
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 128#64))

def RemovedBody685_1443 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 120#64))

def RemovedBody685_1444 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 3
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 88#64))

def RemovedBody685_1445 : StackLang.HolProg 64 :=
.seq RemovedBody685_1443 RemovedBody685_1444

def RemovedBody685_1446 : StackLang.HolProg 64 :=
.seq RemovedBody685_1442 RemovedBody685_1445

def RemovedBody685_1447 : StackLang.HolProg 64 :=
.seq RemovedBody685_1441 RemovedBody685_1446

def RemovedBody685_1448 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def RemovedBody685_1449 : StackLang.HolProg 64 :=
.seq RemovedBody685_1447 RemovedBody685_1448

def RemovedBody685_1450 : StackLang.HolProg 64 :=
.call (some (RemovedBody685_1440, 0, 685, 40)) (Sum.inl 670) (some (RemovedBody685_1449, 685, 41))

def RemovedBody685_1451 : StackLang.HolProg 64 :=
.seq RemovedBody685_1425 RemovedBody685_1450

def RemovedBody685_1452 : StackLang.HolProg 64 :=
.seq RemovedBody685_1424 RemovedBody685_1451

def RemovedBody685_1453 : StackLang.HolProg 64 :=
.seq RemovedBody685_1423 RemovedBody685_1452

def RemovedBody685_1454 : StackLang.HolProg 64 :=
.seq RemovedBody685_1394 RemovedBody685_1453

def RemovedBody685_1455 : StackLang.HolProg 64 :=
.seq RemovedBody685_1391 RemovedBody685_1454

def RemovedBody685_1456 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody685_1457 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 1 0
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 0)))

def RemovedBody685_1458 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 4
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 128#64))

def RemovedBody685_1459 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 2
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 120#64))

def RemovedBody685_1460 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 112#64))

def RemovedBody685_1461 : StackLang.HolProg 64 :=
.seq RemovedBody685_1459 RemovedBody685_1460

def RemovedBody685_1462 : StackLang.HolProg 64 :=
.seq RemovedBody685_1458 RemovedBody685_1461

def RemovedBody685_1463 : StackLang.HolProg 64 :=
.seq RemovedBody685_1457 RemovedBody685_1462

def RemovedBody685_1464 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody685_1465 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 2903#64)

def RemovedBody685_1466 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody685_1467 : StackLang.HolProg 64 :=
.seq RemovedBody685_1465 RemovedBody685_1466

def RemovedBody685_1468 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody685_1469 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 2#64)

def RemovedBody685_1470 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 1

def RemovedBody685_1471 : StackLang.HolProg 64 :=
.seq RemovedBody685_1469 RemovedBody685_1470

def RemovedBody685_1472 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody685_1473 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) RemovedBody685_1471 RemovedBody685_1472

def RemovedBody685_1474 : StackLang.HolProg 64 :=
.seq RemovedBody685_1468 RemovedBody685_1473

def RemovedBody685_1475 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def RemovedBody685_1476 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody685_1477 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 685 43

def RemovedBody685_1478 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody685_1479 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody685_1480 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody685_1481 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody685_1482 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def RemovedBody685_1483 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def RemovedBody685_1484 : StackLang.HolProg 64 :=
.seq RemovedBody685_1482 RemovedBody685_1483

def RemovedBody685_1485 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def RemovedBody685_1486 : StackLang.HolProg 64 :=
.seq RemovedBody685_1484 RemovedBody685_1485

def RemovedBody685_1487 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody685_1488 : StackLang.HolProg 64 :=
.seq RemovedBody685_1486 RemovedBody685_1487

def RemovedBody685_1489 : StackLang.HolProg 64 :=
.seq RemovedBody685_1481 RemovedBody685_1488

def RemovedBody685_1490 : StackLang.HolProg 64 :=
.seq RemovedBody685_1480 RemovedBody685_1489

def RemovedBody685_1491 : StackLang.HolProg 64 :=
.seq RemovedBody685_1479 RemovedBody685_1490

def RemovedBody685_1492 : StackLang.HolProg 64 :=
.seq RemovedBody685_1478 RemovedBody685_1491

def RemovedBody685_1493 : StackLang.HolProg 64 :=
.seq RemovedBody685_1477 RemovedBody685_1492

def RemovedBody685_1494 : StackLang.HolProg 64 :=
.seq RemovedBody685_1476 RemovedBody685_1493

def RemovedBody685_1495 : StackLang.HolProg 64 :=
.seq RemovedBody685_1475 RemovedBody685_1494

def RemovedBody685_1496 : StackLang.HolProg 64 :=
.seq RemovedBody685_1474 RemovedBody685_1495

def RemovedBody685_1497 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody685_1498 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody685_1499 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody685_1500 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody685_1501 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody685_1502 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody685_1503 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 3
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 136#64))

def RemovedBody685_1504 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 128#64))

def RemovedBody685_1505 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 136#64))

def RemovedBody685_1506 : StackLang.HolProg 64 :=
.seq RemovedBody685_1504 RemovedBody685_1505

def RemovedBody685_1507 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 4
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 120#64))

def RemovedBody685_1508 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 112#64))

def RemovedBody685_1509 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 96#64))

def RemovedBody685_1510 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 120#64))

def RemovedBody685_1511 : StackLang.HolProg 64 :=
.seq RemovedBody685_1509 RemovedBody685_1510

def RemovedBody685_1512 : StackLang.HolProg 64 :=
.seq RemovedBody685_1508 RemovedBody685_1511

def RemovedBody685_1513 : StackLang.HolProg 64 :=
.seq RemovedBody685_1507 RemovedBody685_1512

def RemovedBody685_1514 : StackLang.HolProg 64 :=
.seq RemovedBody685_1506 RemovedBody685_1513

def RemovedBody685_1515 : StackLang.HolProg 64 :=
.seq RemovedBody685_1503 RemovedBody685_1514

def RemovedBody685_1516 : StackLang.HolProg 64 :=
.seq RemovedBody685_1502 RemovedBody685_1515

def RemovedBody685_1517 : StackLang.HolProg 64 :=
.seq RemovedBody685_1501 RemovedBody685_1516

def RemovedBody685_1518 : StackLang.HolProg 64 :=
.seq RemovedBody685_1500 RemovedBody685_1517

def RemovedBody685_1519 : StackLang.HolProg 64 :=
.seq RemovedBody685_1499 RemovedBody685_1518

def RemovedBody685_1520 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 3
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 136#64))

def RemovedBody685_1521 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 128#64))

def RemovedBody685_1522 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 136#64))

def RemovedBody685_1523 : StackLang.HolProg 64 :=
.seq RemovedBody685_1521 RemovedBody685_1522

def RemovedBody685_1524 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 4
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 120#64))

def RemovedBody685_1525 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 112#64))

def RemovedBody685_1526 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 96#64))

def RemovedBody685_1527 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 120#64))

def RemovedBody685_1528 : StackLang.HolProg 64 :=
.seq RemovedBody685_1526 RemovedBody685_1527

def RemovedBody685_1529 : StackLang.HolProg 64 :=
.seq RemovedBody685_1525 RemovedBody685_1528

def RemovedBody685_1530 : StackLang.HolProg 64 :=
.seq RemovedBody685_1524 RemovedBody685_1529

def RemovedBody685_1531 : StackLang.HolProg 64 :=
.seq RemovedBody685_1523 RemovedBody685_1530

def RemovedBody685_1532 : StackLang.HolProg 64 :=
.seq RemovedBody685_1520 RemovedBody685_1531

def RemovedBody685_1533 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def RemovedBody685_1534 : StackLang.HolProg 64 :=
.seq RemovedBody685_1532 RemovedBody685_1533

def RemovedBody685_1535 : StackLang.HolProg 64 :=
.call (some (RemovedBody685_1519, 0, 685, 42)) (Sum.inl 670) (some (RemovedBody685_1534, 685, 43))

def RemovedBody685_1536 : StackLang.HolProg 64 :=
.seq RemovedBody685_1498 RemovedBody685_1535

def RemovedBody685_1537 : StackLang.HolProg 64 :=
.seq RemovedBody685_1497 RemovedBody685_1536

def RemovedBody685_1538 : StackLang.HolProg 64 :=
.seq RemovedBody685_1496 RemovedBody685_1537

def RemovedBody685_1539 : StackLang.HolProg 64 :=
.seq RemovedBody685_1467 RemovedBody685_1538

def RemovedBody685_1540 : StackLang.HolProg 64 :=
.seq RemovedBody685_1464 RemovedBody685_1539

def RemovedBody685_1541 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody685_1542 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 1 0
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 0)))

def RemovedBody685_1543 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 2 3
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 3)))

def RemovedBody685_1544 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 128#64))

def RemovedBody685_1545 : StackLang.HolProg 64 :=
.seq RemovedBody685_1543 RemovedBody685_1544

def RemovedBody685_1546 : StackLang.HolProg 64 :=
.seq RemovedBody685_1542 RemovedBody685_1545

def RemovedBody685_1547 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody685_1548 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 2904#64)

def RemovedBody685_1549 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody685_1550 : StackLang.HolProg 64 :=
.seq RemovedBody685_1548 RemovedBody685_1549

def RemovedBody685_1551 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody685_1552 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 2#64)

def RemovedBody685_1553 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 1

def RemovedBody685_1554 : StackLang.HolProg 64 :=
.seq RemovedBody685_1552 RemovedBody685_1553

def RemovedBody685_1555 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody685_1556 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) RemovedBody685_1554 RemovedBody685_1555

def RemovedBody685_1557 : StackLang.HolProg 64 :=
.seq RemovedBody685_1551 RemovedBody685_1556

def RemovedBody685_1558 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def RemovedBody685_1559 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody685_1560 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 685 45

def RemovedBody685_1561 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody685_1562 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody685_1563 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody685_1564 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody685_1565 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def RemovedBody685_1566 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def RemovedBody685_1567 : StackLang.HolProg 64 :=
.seq RemovedBody685_1565 RemovedBody685_1566

def RemovedBody685_1568 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def RemovedBody685_1569 : StackLang.HolProg 64 :=
.seq RemovedBody685_1567 RemovedBody685_1568

def RemovedBody685_1570 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody685_1571 : StackLang.HolProg 64 :=
.seq RemovedBody685_1569 RemovedBody685_1570

def RemovedBody685_1572 : StackLang.HolProg 64 :=
.seq RemovedBody685_1564 RemovedBody685_1571

def RemovedBody685_1573 : StackLang.HolProg 64 :=
.seq RemovedBody685_1563 RemovedBody685_1572

def RemovedBody685_1574 : StackLang.HolProg 64 :=
.seq RemovedBody685_1562 RemovedBody685_1573

def RemovedBody685_1575 : StackLang.HolProg 64 :=
.seq RemovedBody685_1561 RemovedBody685_1574

def RemovedBody685_1576 : StackLang.HolProg 64 :=
.seq RemovedBody685_1560 RemovedBody685_1575

def RemovedBody685_1577 : StackLang.HolProg 64 :=
.seq RemovedBody685_1559 RemovedBody685_1576

def RemovedBody685_1578 : StackLang.HolProg 64 :=
.seq RemovedBody685_1558 RemovedBody685_1577

def RemovedBody685_1579 : StackLang.HolProg 64 :=
.seq RemovedBody685_1557 RemovedBody685_1578

def RemovedBody685_1580 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody685_1581 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody685_1582 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody685_1583 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody685_1584 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody685_1585 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody685_1586 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 3
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 144#64))

def RemovedBody685_1587 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 4
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 136#64))

def RemovedBody685_1588 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 128#64))

def RemovedBody685_1589 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 2
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 120#64))

def RemovedBody685_1590 : StackLang.HolProg 64 :=
.seq RemovedBody685_1588 RemovedBody685_1589

def RemovedBody685_1591 : StackLang.HolProg 64 :=
.seq RemovedBody685_1587 RemovedBody685_1590

def RemovedBody685_1592 : StackLang.HolProg 64 :=
.seq RemovedBody685_1586 RemovedBody685_1591

def RemovedBody685_1593 : StackLang.HolProg 64 :=
.seq RemovedBody685_1585 RemovedBody685_1592

def RemovedBody685_1594 : StackLang.HolProg 64 :=
.seq RemovedBody685_1584 RemovedBody685_1593

def RemovedBody685_1595 : StackLang.HolProg 64 :=
.seq RemovedBody685_1583 RemovedBody685_1594

def RemovedBody685_1596 : StackLang.HolProg 64 :=
.seq RemovedBody685_1582 RemovedBody685_1595

def RemovedBody685_1597 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 3
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 144#64))

def RemovedBody685_1598 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 4
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 136#64))

def RemovedBody685_1599 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 128#64))

def RemovedBody685_1600 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 2
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 120#64))

def RemovedBody685_1601 : StackLang.HolProg 64 :=
.seq RemovedBody685_1599 RemovedBody685_1600

def RemovedBody685_1602 : StackLang.HolProg 64 :=
.seq RemovedBody685_1598 RemovedBody685_1601

def RemovedBody685_1603 : StackLang.HolProg 64 :=
.seq RemovedBody685_1597 RemovedBody685_1602

def RemovedBody685_1604 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def RemovedBody685_1605 : StackLang.HolProg 64 :=
.seq RemovedBody685_1603 RemovedBody685_1604

def RemovedBody685_1606 : StackLang.HolProg 64 :=
.call (some (RemovedBody685_1596, 0, 685, 44)) (Sum.inl 673) (some (RemovedBody685_1605, 685, 45))

def RemovedBody685_1607 : StackLang.HolProg 64 :=
.seq RemovedBody685_1581 RemovedBody685_1606

def RemovedBody685_1608 : StackLang.HolProg 64 :=
.seq RemovedBody685_1580 RemovedBody685_1607

def RemovedBody685_1609 : StackLang.HolProg 64 :=
.seq RemovedBody685_1579 RemovedBody685_1608

def RemovedBody685_1610 : StackLang.HolProg 64 :=
.seq RemovedBody685_1550 RemovedBody685_1609

def RemovedBody685_1611 : StackLang.HolProg 64 :=
.seq RemovedBody685_1547 RemovedBody685_1610

def RemovedBody685_1612 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody685_1613 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 1 0
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 0)))

def RemovedBody685_1614 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody685_1615 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 2905#64)

def RemovedBody685_1616 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody685_1617 : StackLang.HolProg 64 :=
.seq RemovedBody685_1615 RemovedBody685_1616

def RemovedBody685_1618 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody685_1619 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 2#64)

def RemovedBody685_1620 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 1

def RemovedBody685_1621 : StackLang.HolProg 64 :=
.seq RemovedBody685_1619 RemovedBody685_1620

def RemovedBody685_1622 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody685_1623 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) RemovedBody685_1621 RemovedBody685_1622

def RemovedBody685_1624 : StackLang.HolProg 64 :=
.seq RemovedBody685_1618 RemovedBody685_1623

def RemovedBody685_1625 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def RemovedBody685_1626 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody685_1627 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 685 47

def RemovedBody685_1628 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody685_1629 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody685_1630 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody685_1631 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody685_1632 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def RemovedBody685_1633 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def RemovedBody685_1634 : StackLang.HolProg 64 :=
.seq RemovedBody685_1632 RemovedBody685_1633

def RemovedBody685_1635 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def RemovedBody685_1636 : StackLang.HolProg 64 :=
.seq RemovedBody685_1634 RemovedBody685_1635

def RemovedBody685_1637 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody685_1638 : StackLang.HolProg 64 :=
.seq RemovedBody685_1636 RemovedBody685_1637

def RemovedBody685_1639 : StackLang.HolProg 64 :=
.seq RemovedBody685_1631 RemovedBody685_1638

def RemovedBody685_1640 : StackLang.HolProg 64 :=
.seq RemovedBody685_1630 RemovedBody685_1639

def RemovedBody685_1641 : StackLang.HolProg 64 :=
.seq RemovedBody685_1629 RemovedBody685_1640

def RemovedBody685_1642 : StackLang.HolProg 64 :=
.seq RemovedBody685_1628 RemovedBody685_1641

def RemovedBody685_1643 : StackLang.HolProg 64 :=
.seq RemovedBody685_1627 RemovedBody685_1642

def RemovedBody685_1644 : StackLang.HolProg 64 :=
.seq RemovedBody685_1626 RemovedBody685_1643

def RemovedBody685_1645 : StackLang.HolProg 64 :=
.seq RemovedBody685_1625 RemovedBody685_1644

def RemovedBody685_1646 : StackLang.HolProg 64 :=
.seq RemovedBody685_1624 RemovedBody685_1645

def RemovedBody685_1647 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody685_1648 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody685_1649 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody685_1650 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody685_1651 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody685_1652 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody685_1653 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 152#64))

def RemovedBody685_1654 : StackLang.HolProg 64 :=
.seq RemovedBody685_1652 RemovedBody685_1653

def RemovedBody685_1655 : StackLang.HolProg 64 :=
.seq RemovedBody685_1651 RemovedBody685_1654

def RemovedBody685_1656 : StackLang.HolProg 64 :=
.seq RemovedBody685_1650 RemovedBody685_1655

def RemovedBody685_1657 : StackLang.HolProg 64 :=
.seq RemovedBody685_1649 RemovedBody685_1656

def RemovedBody685_1658 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 152#64))

def RemovedBody685_1659 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def RemovedBody685_1660 : StackLang.HolProg 64 :=
.seq RemovedBody685_1658 RemovedBody685_1659

def RemovedBody685_1661 : StackLang.HolProg 64 :=
.call (some (RemovedBody685_1657, 0, 685, 46)) (Sum.inl 670) (some (RemovedBody685_1660, 685, 47))

def RemovedBody685_1662 : StackLang.HolProg 64 :=
.seq RemovedBody685_1648 RemovedBody685_1661

def RemovedBody685_1663 : StackLang.HolProg 64 :=
.seq RemovedBody685_1647 RemovedBody685_1662

def RemovedBody685_1664 : StackLang.HolProg 64 :=
.seq RemovedBody685_1646 RemovedBody685_1663

def RemovedBody685_1665 : StackLang.HolProg 64 :=
.seq RemovedBody685_1617 RemovedBody685_1664

def RemovedBody685_1666 : StackLang.HolProg 64 :=
.seq RemovedBody685_1614 RemovedBody685_1665

def RemovedBody685_1667 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody685_1668 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 1 0
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 0)))

def RemovedBody685_1669 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody685_1670 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 2906#64)

def RemovedBody685_1671 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody685_1672 : StackLang.HolProg 64 :=
.seq RemovedBody685_1670 RemovedBody685_1671

def RemovedBody685_1673 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody685_1674 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 2#64)

def RemovedBody685_1675 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 1

def RemovedBody685_1676 : StackLang.HolProg 64 :=
.seq RemovedBody685_1674 RemovedBody685_1675

def RemovedBody685_1677 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody685_1678 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) RemovedBody685_1676 RemovedBody685_1677

def RemovedBody685_1679 : StackLang.HolProg 64 :=
.seq RemovedBody685_1673 RemovedBody685_1678

def RemovedBody685_1680 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def RemovedBody685_1681 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody685_1682 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 685 49

def RemovedBody685_1683 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody685_1684 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody685_1685 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody685_1686 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody685_1687 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def RemovedBody685_1688 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def RemovedBody685_1689 : StackLang.HolProg 64 :=
.seq RemovedBody685_1687 RemovedBody685_1688

def RemovedBody685_1690 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def RemovedBody685_1691 : StackLang.HolProg 64 :=
.seq RemovedBody685_1689 RemovedBody685_1690

def RemovedBody685_1692 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody685_1693 : StackLang.HolProg 64 :=
.seq RemovedBody685_1691 RemovedBody685_1692

def RemovedBody685_1694 : StackLang.HolProg 64 :=
.seq RemovedBody685_1686 RemovedBody685_1693

def RemovedBody685_1695 : StackLang.HolProg 64 :=
.seq RemovedBody685_1685 RemovedBody685_1694

def RemovedBody685_1696 : StackLang.HolProg 64 :=
.seq RemovedBody685_1684 RemovedBody685_1695

def RemovedBody685_1697 : StackLang.HolProg 64 :=
.seq RemovedBody685_1683 RemovedBody685_1696

def RemovedBody685_1698 : StackLang.HolProg 64 :=
.seq RemovedBody685_1682 RemovedBody685_1697

def RemovedBody685_1699 : StackLang.HolProg 64 :=
.seq RemovedBody685_1681 RemovedBody685_1698

def RemovedBody685_1700 : StackLang.HolProg 64 :=
.seq RemovedBody685_1680 RemovedBody685_1699

def RemovedBody685_1701 : StackLang.HolProg 64 :=
.seq RemovedBody685_1679 RemovedBody685_1700

def RemovedBody685_1702 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody685_1703 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody685_1704 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody685_1705 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody685_1706 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody685_1707 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody685_1708 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 4
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 104#64))

def RemovedBody685_1709 : StackLang.HolProg 64 :=
.seq RemovedBody685_1707 RemovedBody685_1708

def RemovedBody685_1710 : StackLang.HolProg 64 :=
.seq RemovedBody685_1706 RemovedBody685_1709

def RemovedBody685_1711 : StackLang.HolProg 64 :=
.seq RemovedBody685_1705 RemovedBody685_1710

def RemovedBody685_1712 : StackLang.HolProg 64 :=
.seq RemovedBody685_1704 RemovedBody685_1711

def RemovedBody685_1713 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 4
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 104#64))

def RemovedBody685_1714 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def RemovedBody685_1715 : StackLang.HolProg 64 :=
.seq RemovedBody685_1713 RemovedBody685_1714

def RemovedBody685_1716 : StackLang.HolProg 64 :=
.call (some (RemovedBody685_1712, 0, 685, 48)) (Sum.inl 70) (some (RemovedBody685_1715, 685, 49))

def RemovedBody685_1717 : StackLang.HolProg 64 :=
.seq RemovedBody685_1703 RemovedBody685_1716

def RemovedBody685_1718 : StackLang.HolProg 64 :=
.seq RemovedBody685_1702 RemovedBody685_1717

def RemovedBody685_1719 : StackLang.HolProg 64 :=
.seq RemovedBody685_1701 RemovedBody685_1718

def RemovedBody685_1720 : StackLang.HolProg 64 :=
.seq RemovedBody685_1672 RemovedBody685_1719

def RemovedBody685_1721 : StackLang.HolProg 64 :=
.seq RemovedBody685_1669 RemovedBody685_1720

def RemovedBody685_1722 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody685_1723 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 0#64)

def RemovedBody685_1724 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody685_1725 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 160#64)))

def RemovedBody685_1726 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 4

def RemovedBody685_1727 : StackLang.HolProg 64 :=
.seq RemovedBody685_1725 RemovedBody685_1726

def RemovedBody685_1728 : StackLang.HolProg 64 :=
.seq RemovedBody685_1724 RemovedBody685_1727

def RemovedBody685_1729 : StackLang.HolProg 64 :=
.seq RemovedBody685_1723 RemovedBody685_1728

def RemovedBody685_1730 : StackLang.HolProg 64 :=
.seq RemovedBody685_1722 RemovedBody685_1729

def RemovedBody685_1731 : StackLang.HolProg 64 :=
.seq RemovedBody685_1721 RemovedBody685_1730

def RemovedBody685_1732 : StackLang.HolProg 64 :=
.seq RemovedBody685_1668 RemovedBody685_1731

def RemovedBody685_1733 : StackLang.HolProg 64 :=
.seq RemovedBody685_1667 RemovedBody685_1732

def RemovedBody685_1734 : StackLang.HolProg 64 :=
.seq RemovedBody685_1666 RemovedBody685_1733

def RemovedBody685_1735 : StackLang.HolProg 64 :=
.seq RemovedBody685_1613 RemovedBody685_1734

def RemovedBody685_1736 : StackLang.HolProg 64 :=
.seq RemovedBody685_1612 RemovedBody685_1735

def RemovedBody685_1737 : StackLang.HolProg 64 :=
.seq RemovedBody685_1611 RemovedBody685_1736

def RemovedBody685_1738 : StackLang.HolProg 64 :=
.seq RemovedBody685_1546 RemovedBody685_1737

def RemovedBody685_1739 : StackLang.HolProg 64 :=
.seq RemovedBody685_1541 RemovedBody685_1738

def RemovedBody685_1740 : StackLang.HolProg 64 :=
.seq RemovedBody685_1540 RemovedBody685_1739

def RemovedBody685_1741 : StackLang.HolProg 64 :=
.seq RemovedBody685_1463 RemovedBody685_1740

def RemovedBody685_1742 : StackLang.HolProg 64 :=
.seq RemovedBody685_1456 RemovedBody685_1741

def RemovedBody685_1743 : StackLang.HolProg 64 :=
.seq RemovedBody685_1455 RemovedBody685_1742

def RemovedBody685_1744 : StackLang.HolProg 64 :=
.seq RemovedBody685_1390 RemovedBody685_1743

def RemovedBody685_1745 : StackLang.HolProg 64 :=
.seq RemovedBody685_1353 RemovedBody685_1744

def RemovedBody685_1746 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.equal) 2 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1) RemovedBody685_1352 RemovedBody685_1745

def RemovedBody685_1747 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody685_1748 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 1 0
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 0)))

def RemovedBody685_1749 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 2
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 104#64))

def RemovedBody685_1750 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 88#64))

def RemovedBody685_1751 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 3
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 56#64))

def RemovedBody685_1752 : StackLang.HolProg 64 :=
.seq RemovedBody685_1750 RemovedBody685_1751

def RemovedBody685_1753 : StackLang.HolProg 64 :=
.seq RemovedBody685_1749 RemovedBody685_1752

def RemovedBody685_1754 : StackLang.HolProg 64 :=
.seq RemovedBody685_1748 RemovedBody685_1753

def RemovedBody685_1755 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody685_1756 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 2907#64)

def RemovedBody685_1757 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody685_1758 : StackLang.HolProg 64 :=
.seq RemovedBody685_1756 RemovedBody685_1757

def RemovedBody685_1759 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody685_1760 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 2#64)

def RemovedBody685_1761 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 1

def RemovedBody685_1762 : StackLang.HolProg 64 :=
.seq RemovedBody685_1760 RemovedBody685_1761

def RemovedBody685_1763 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody685_1764 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) RemovedBody685_1762 RemovedBody685_1763

def RemovedBody685_1765 : StackLang.HolProg 64 :=
.seq RemovedBody685_1759 RemovedBody685_1764

def RemovedBody685_1766 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def RemovedBody685_1767 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody685_1768 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 685 33

def RemovedBody685_1769 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody685_1770 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody685_1771 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody685_1772 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody685_1773 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def RemovedBody685_1774 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def RemovedBody685_1775 : StackLang.HolProg 64 :=
.seq RemovedBody685_1773 RemovedBody685_1774

def RemovedBody685_1776 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def RemovedBody685_1777 : StackLang.HolProg 64 :=
.seq RemovedBody685_1775 RemovedBody685_1776

def RemovedBody685_1778 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody685_1779 : StackLang.HolProg 64 :=
.seq RemovedBody685_1777 RemovedBody685_1778

def RemovedBody685_1780 : StackLang.HolProg 64 :=
.seq RemovedBody685_1772 RemovedBody685_1779

def RemovedBody685_1781 : StackLang.HolProg 64 :=
.seq RemovedBody685_1771 RemovedBody685_1780

def RemovedBody685_1782 : StackLang.HolProg 64 :=
.seq RemovedBody685_1770 RemovedBody685_1781

def RemovedBody685_1783 : StackLang.HolProg 64 :=
.seq RemovedBody685_1769 RemovedBody685_1782

def RemovedBody685_1784 : StackLang.HolProg 64 :=
.seq RemovedBody685_1768 RemovedBody685_1783

def RemovedBody685_1785 : StackLang.HolProg 64 :=
.seq RemovedBody685_1767 RemovedBody685_1784

def RemovedBody685_1786 : StackLang.HolProg 64 :=
.seq RemovedBody685_1766 RemovedBody685_1785

def RemovedBody685_1787 : StackLang.HolProg 64 :=
.seq RemovedBody685_1765 RemovedBody685_1786

def RemovedBody685_1788 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody685_1789 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody685_1790 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody685_1791 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody685_1792 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody685_1793 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody685_1794 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 3
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 104#64))

def RemovedBody685_1795 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 88#64))

def RemovedBody685_1796 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 2
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 72#64))

def RemovedBody685_1797 : StackLang.HolProg 64 :=
.seq RemovedBody685_1795 RemovedBody685_1796

def RemovedBody685_1798 : StackLang.HolProg 64 :=
.seq RemovedBody685_1794 RemovedBody685_1797

def RemovedBody685_1799 : StackLang.HolProg 64 :=
.seq RemovedBody685_1793 RemovedBody685_1798

def RemovedBody685_1800 : StackLang.HolProg 64 :=
.seq RemovedBody685_1792 RemovedBody685_1799

def RemovedBody685_1801 : StackLang.HolProg 64 :=
.seq RemovedBody685_1791 RemovedBody685_1800

def RemovedBody685_1802 : StackLang.HolProg 64 :=
.seq RemovedBody685_1790 RemovedBody685_1801

def RemovedBody685_1803 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 3
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 104#64))

def RemovedBody685_1804 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 88#64))

def RemovedBody685_1805 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 2
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 72#64))

def RemovedBody685_1806 : StackLang.HolProg 64 :=
.seq RemovedBody685_1804 RemovedBody685_1805

def RemovedBody685_1807 : StackLang.HolProg 64 :=
.seq RemovedBody685_1803 RemovedBody685_1806

def RemovedBody685_1808 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def RemovedBody685_1809 : StackLang.HolProg 64 :=
.seq RemovedBody685_1807 RemovedBody685_1808

def RemovedBody685_1810 : StackLang.HolProg 64 :=
.call (some (RemovedBody685_1802, 0, 685, 32)) (Sum.inl 671) (some (RemovedBody685_1809, 685, 33))

def RemovedBody685_1811 : StackLang.HolProg 64 :=
.seq RemovedBody685_1789 RemovedBody685_1810

def RemovedBody685_1812 : StackLang.HolProg 64 :=
.seq RemovedBody685_1788 RemovedBody685_1811

def RemovedBody685_1813 : StackLang.HolProg 64 :=
.seq RemovedBody685_1787 RemovedBody685_1812

def RemovedBody685_1814 : StackLang.HolProg 64 :=
.seq RemovedBody685_1758 RemovedBody685_1813

def RemovedBody685_1815 : StackLang.HolProg 64 :=
.seq RemovedBody685_1755 RemovedBody685_1814

def RemovedBody685_1816 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody685_1817 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 1 0
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 0)))

def RemovedBody685_1818 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 4 3#64)

def RemovedBody685_1819 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 3
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 104#64))

def RemovedBody685_1820 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 88#64))

def RemovedBody685_1821 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 2
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 72#64))

def RemovedBody685_1822 : StackLang.HolProg 64 :=
.seq RemovedBody685_1820 RemovedBody685_1821

def RemovedBody685_1823 : StackLang.HolProg 64 :=
.seq RemovedBody685_1819 RemovedBody685_1822

def RemovedBody685_1824 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody685_1825 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 2908#64)

def RemovedBody685_1826 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody685_1827 : StackLang.HolProg 64 :=
.seq RemovedBody685_1825 RemovedBody685_1826

def RemovedBody685_1828 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody685_1829 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 2#64)

def RemovedBody685_1830 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 1

def RemovedBody685_1831 : StackLang.HolProg 64 :=
.seq RemovedBody685_1829 RemovedBody685_1830

def RemovedBody685_1832 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody685_1833 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) RemovedBody685_1831 RemovedBody685_1832

def RemovedBody685_1834 : StackLang.HolProg 64 :=
.seq RemovedBody685_1828 RemovedBody685_1833

def RemovedBody685_1835 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def RemovedBody685_1836 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody685_1837 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 685 35

def RemovedBody685_1838 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody685_1839 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody685_1840 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody685_1841 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody685_1842 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def RemovedBody685_1843 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def RemovedBody685_1844 : StackLang.HolProg 64 :=
.seq RemovedBody685_1842 RemovedBody685_1843

def RemovedBody685_1845 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def RemovedBody685_1846 : StackLang.HolProg 64 :=
.seq RemovedBody685_1844 RemovedBody685_1845

def RemovedBody685_1847 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody685_1848 : StackLang.HolProg 64 :=
.seq RemovedBody685_1846 RemovedBody685_1847

def RemovedBody685_1849 : StackLang.HolProg 64 :=
.seq RemovedBody685_1841 RemovedBody685_1848

def RemovedBody685_1850 : StackLang.HolProg 64 :=
.seq RemovedBody685_1840 RemovedBody685_1849

def RemovedBody685_1851 : StackLang.HolProg 64 :=
.seq RemovedBody685_1839 RemovedBody685_1850

def RemovedBody685_1852 : StackLang.HolProg 64 :=
.seq RemovedBody685_1838 RemovedBody685_1851

def RemovedBody685_1853 : StackLang.HolProg 64 :=
.seq RemovedBody685_1837 RemovedBody685_1852

def RemovedBody685_1854 : StackLang.HolProg 64 :=
.seq RemovedBody685_1836 RemovedBody685_1853

def RemovedBody685_1855 : StackLang.HolProg 64 :=
.seq RemovedBody685_1835 RemovedBody685_1854

def RemovedBody685_1856 : StackLang.HolProg 64 :=
.seq RemovedBody685_1834 RemovedBody685_1855

def RemovedBody685_1857 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody685_1858 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody685_1859 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody685_1860 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody685_1861 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody685_1862 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody685_1863 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 4
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 136#64))

def RemovedBody685_1864 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 3
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 96#64))

def RemovedBody685_1865 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 88#64))

def RemovedBody685_1866 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 2
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 40#64))

def RemovedBody685_1867 : StackLang.HolProg 64 :=
.seq RemovedBody685_1865 RemovedBody685_1866

def RemovedBody685_1868 : StackLang.HolProg 64 :=
.seq RemovedBody685_1864 RemovedBody685_1867

def RemovedBody685_1869 : StackLang.HolProg 64 :=
.seq RemovedBody685_1863 RemovedBody685_1868

def RemovedBody685_1870 : StackLang.HolProg 64 :=
.seq RemovedBody685_1862 RemovedBody685_1869

def RemovedBody685_1871 : StackLang.HolProg 64 :=
.seq RemovedBody685_1861 RemovedBody685_1870

def RemovedBody685_1872 : StackLang.HolProg 64 :=
.seq RemovedBody685_1860 RemovedBody685_1871

def RemovedBody685_1873 : StackLang.HolProg 64 :=
.seq RemovedBody685_1859 RemovedBody685_1872

def RemovedBody685_1874 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 4
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 136#64))

def RemovedBody685_1875 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 3
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 96#64))

def RemovedBody685_1876 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 88#64))

def RemovedBody685_1877 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 2
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 40#64))

def RemovedBody685_1878 : StackLang.HolProg 64 :=
.seq RemovedBody685_1876 RemovedBody685_1877

def RemovedBody685_1879 : StackLang.HolProg 64 :=
.seq RemovedBody685_1875 RemovedBody685_1878

def RemovedBody685_1880 : StackLang.HolProg 64 :=
.seq RemovedBody685_1874 RemovedBody685_1879

def RemovedBody685_1881 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def RemovedBody685_1882 : StackLang.HolProg 64 :=
.seq RemovedBody685_1880 RemovedBody685_1881

def RemovedBody685_1883 : StackLang.HolProg 64 :=
.call (some (RemovedBody685_1873, 0, 685, 34)) (Sum.inl 675) (some (RemovedBody685_1882, 685, 35))

def RemovedBody685_1884 : StackLang.HolProg 64 :=
.seq RemovedBody685_1858 RemovedBody685_1883

def RemovedBody685_1885 : StackLang.HolProg 64 :=
.seq RemovedBody685_1857 RemovedBody685_1884

def RemovedBody685_1886 : StackLang.HolProg 64 :=
.seq RemovedBody685_1856 RemovedBody685_1885

def RemovedBody685_1887 : StackLang.HolProg 64 :=
.seq RemovedBody685_1827 RemovedBody685_1886

def RemovedBody685_1888 : StackLang.HolProg 64 :=
.seq RemovedBody685_1824 RemovedBody685_1887

def RemovedBody685_1889 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody685_1890 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 1 0
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 0)))

def RemovedBody685_1891 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 4
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 136#64))

def RemovedBody685_1892 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 3
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 96#64))

def RemovedBody685_1893 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 88#64))

def RemovedBody685_1894 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 2
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 40#64))

def RemovedBody685_1895 : StackLang.HolProg 64 :=
.seq RemovedBody685_1893 RemovedBody685_1894

def RemovedBody685_1896 : StackLang.HolProg 64 :=
.seq RemovedBody685_1892 RemovedBody685_1895

def RemovedBody685_1897 : StackLang.HolProg 64 :=
.seq RemovedBody685_1891 RemovedBody685_1896

def RemovedBody685_1898 : StackLang.HolProg 64 :=
.seq RemovedBody685_1890 RemovedBody685_1897

def RemovedBody685_1899 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody685_1900 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 2909#64)

def RemovedBody685_1901 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody685_1902 : StackLang.HolProg 64 :=
.seq RemovedBody685_1900 RemovedBody685_1901

def RemovedBody685_1903 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody685_1904 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 2#64)

def RemovedBody685_1905 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 1

def RemovedBody685_1906 : StackLang.HolProg 64 :=
.seq RemovedBody685_1904 RemovedBody685_1905

def RemovedBody685_1907 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody685_1908 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) RemovedBody685_1906 RemovedBody685_1907

def RemovedBody685_1909 : StackLang.HolProg 64 :=
.seq RemovedBody685_1903 RemovedBody685_1908

def RemovedBody685_1910 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def RemovedBody685_1911 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody685_1912 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 685 37

def RemovedBody685_1913 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody685_1914 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody685_1915 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody685_1916 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody685_1917 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def RemovedBody685_1918 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def RemovedBody685_1919 : StackLang.HolProg 64 :=
.seq RemovedBody685_1917 RemovedBody685_1918

def RemovedBody685_1920 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def RemovedBody685_1921 : StackLang.HolProg 64 :=
.seq RemovedBody685_1919 RemovedBody685_1920

def RemovedBody685_1922 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody685_1923 : StackLang.HolProg 64 :=
.seq RemovedBody685_1921 RemovedBody685_1922

def RemovedBody685_1924 : StackLang.HolProg 64 :=
.seq RemovedBody685_1916 RemovedBody685_1923

def RemovedBody685_1925 : StackLang.HolProg 64 :=
.seq RemovedBody685_1915 RemovedBody685_1924

def RemovedBody685_1926 : StackLang.HolProg 64 :=
.seq RemovedBody685_1914 RemovedBody685_1925

def RemovedBody685_1927 : StackLang.HolProg 64 :=
.seq RemovedBody685_1913 RemovedBody685_1926

def RemovedBody685_1928 : StackLang.HolProg 64 :=
.seq RemovedBody685_1912 RemovedBody685_1927

def RemovedBody685_1929 : StackLang.HolProg 64 :=
.seq RemovedBody685_1911 RemovedBody685_1928

def RemovedBody685_1930 : StackLang.HolProg 64 :=
.seq RemovedBody685_1910 RemovedBody685_1929

def RemovedBody685_1931 : StackLang.HolProg 64 :=
.seq RemovedBody685_1909 RemovedBody685_1930

def RemovedBody685_1932 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody685_1933 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody685_1934 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody685_1935 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody685_1936 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody685_1937 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody685_1938 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 88#64))

def RemovedBody685_1939 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 3
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 40#64))

def RemovedBody685_1940 : StackLang.HolProg 64 :=
.seq RemovedBody685_1938 RemovedBody685_1939

def RemovedBody685_1941 : StackLang.HolProg 64 :=
.seq RemovedBody685_1937 RemovedBody685_1940

def RemovedBody685_1942 : StackLang.HolProg 64 :=
.seq RemovedBody685_1936 RemovedBody685_1941

def RemovedBody685_1943 : StackLang.HolProg 64 :=
.seq RemovedBody685_1935 RemovedBody685_1942

def RemovedBody685_1944 : StackLang.HolProg 64 :=
.seq RemovedBody685_1934 RemovedBody685_1943

def RemovedBody685_1945 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 88#64))

def RemovedBody685_1946 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 3
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 40#64))

def RemovedBody685_1947 : StackLang.HolProg 64 :=
.seq RemovedBody685_1945 RemovedBody685_1946

def RemovedBody685_1948 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def RemovedBody685_1949 : StackLang.HolProg 64 :=
.seq RemovedBody685_1947 RemovedBody685_1948

def RemovedBody685_1950 : StackLang.HolProg 64 :=
.call (some (RemovedBody685_1944, 0, 685, 36)) (Sum.inl 670) (some (RemovedBody685_1949, 685, 37))

def RemovedBody685_1951 : StackLang.HolProg 64 :=
.seq RemovedBody685_1933 RemovedBody685_1950

def RemovedBody685_1952 : StackLang.HolProg 64 :=
.seq RemovedBody685_1932 RemovedBody685_1951

def RemovedBody685_1953 : StackLang.HolProg 64 :=
.seq RemovedBody685_1931 RemovedBody685_1952

def RemovedBody685_1954 : StackLang.HolProg 64 :=
.seq RemovedBody685_1902 RemovedBody685_1953

def RemovedBody685_1955 : StackLang.HolProg 64 :=
.seq RemovedBody685_1899 RemovedBody685_1954

def RemovedBody685_1956 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody685_1957 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 1 0
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 0)))

def RemovedBody685_1958 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 4 2#64)

def RemovedBody685_1959 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 2 3
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 3)))

def RemovedBody685_1960 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 88#64))

def RemovedBody685_1961 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 3
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 40#64))

def RemovedBody685_1962 : StackLang.HolProg 64 :=
.seq RemovedBody685_1960 RemovedBody685_1961

def RemovedBody685_1963 : StackLang.HolProg 64 :=
.seq RemovedBody685_1959 RemovedBody685_1962

def RemovedBody685_1964 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody685_1965 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 2910#64)

def RemovedBody685_1966 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody685_1967 : StackLang.HolProg 64 :=
.seq RemovedBody685_1965 RemovedBody685_1966

def RemovedBody685_1968 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody685_1969 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 2#64)

def RemovedBody685_1970 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 1

def RemovedBody685_1971 : StackLang.HolProg 64 :=
.seq RemovedBody685_1969 RemovedBody685_1970

def RemovedBody685_1972 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody685_1973 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) RemovedBody685_1971 RemovedBody685_1972

def RemovedBody685_1974 : StackLang.HolProg 64 :=
.seq RemovedBody685_1968 RemovedBody685_1973

def RemovedBody685_1975 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def RemovedBody685_1976 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody685_1977 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 685 39

def RemovedBody685_1978 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody685_1979 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody685_1980 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody685_1981 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody685_1982 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def RemovedBody685_1983 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def RemovedBody685_1984 : StackLang.HolProg 64 :=
.seq RemovedBody685_1982 RemovedBody685_1983

def RemovedBody685_1985 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def RemovedBody685_1986 : StackLang.HolProg 64 :=
.seq RemovedBody685_1984 RemovedBody685_1985

def RemovedBody685_1987 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody685_1988 : StackLang.HolProg 64 :=
.seq RemovedBody685_1986 RemovedBody685_1987

def RemovedBody685_1989 : StackLang.HolProg 64 :=
.seq RemovedBody685_1981 RemovedBody685_1988

def RemovedBody685_1990 : StackLang.HolProg 64 :=
.seq RemovedBody685_1980 RemovedBody685_1989

def RemovedBody685_1991 : StackLang.HolProg 64 :=
.seq RemovedBody685_1979 RemovedBody685_1990

def RemovedBody685_1992 : StackLang.HolProg 64 :=
.seq RemovedBody685_1978 RemovedBody685_1991

def RemovedBody685_1993 : StackLang.HolProg 64 :=
.seq RemovedBody685_1977 RemovedBody685_1992

def RemovedBody685_1994 : StackLang.HolProg 64 :=
.seq RemovedBody685_1976 RemovedBody685_1993

def RemovedBody685_1995 : StackLang.HolProg 64 :=
.seq RemovedBody685_1975 RemovedBody685_1994

def RemovedBody685_1996 : StackLang.HolProg 64 :=
.seq RemovedBody685_1974 RemovedBody685_1995

def RemovedBody685_1997 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody685_1998 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody685_1999 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody685_2000 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody685_2001 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody685_2002 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody685_2003 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 4
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 136#64))

def RemovedBody685_2004 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 3
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 128#64))

def RemovedBody685_2005 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 120#64))

def RemovedBody685_2006 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 128#64))

def RemovedBody685_2007 : StackLang.HolProg 64 :=
.seq RemovedBody685_2005 RemovedBody685_2006

def RemovedBody685_2008 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 112#64))

def RemovedBody685_2009 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 120#64))

def RemovedBody685_2010 : StackLang.HolProg 64 :=
.seq RemovedBody685_2008 RemovedBody685_2009

def RemovedBody685_2011 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 2
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 104#64))

def RemovedBody685_2012 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 96#64))

def RemovedBody685_2013 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 104#64))

def RemovedBody685_2014 : StackLang.HolProg 64 :=
.seq RemovedBody685_2012 RemovedBody685_2013

def RemovedBody685_2015 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 88#64))

def RemovedBody685_2016 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 80#64))

def RemovedBody685_2017 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 88#64))

def RemovedBody685_2018 : StackLang.HolProg 64 :=
.seq RemovedBody685_2016 RemovedBody685_2017

def RemovedBody685_2019 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 72#64))

def RemovedBody685_2020 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 80#64))

def RemovedBody685_2021 : StackLang.HolProg 64 :=
.seq RemovedBody685_2019 RemovedBody685_2020

def RemovedBody685_2022 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 64#64))

def RemovedBody685_2023 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 72#64))

def RemovedBody685_2024 : StackLang.HolProg 64 :=
.seq RemovedBody685_2022 RemovedBody685_2023

def RemovedBody685_2025 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 56#64))

def RemovedBody685_2026 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 64#64))

def RemovedBody685_2027 : StackLang.HolProg 64 :=
.seq RemovedBody685_2025 RemovedBody685_2026

def RemovedBody685_2028 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 48#64))

def RemovedBody685_2029 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 56#64))

def RemovedBody685_2030 : StackLang.HolProg 64 :=
.seq RemovedBody685_2028 RemovedBody685_2029

def RemovedBody685_2031 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 40#64))

def RemovedBody685_2032 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 48#64))

def RemovedBody685_2033 : StackLang.HolProg 64 :=
.seq RemovedBody685_2031 RemovedBody685_2032

def RemovedBody685_2034 : StackLang.HolProg 64 :=
.seq RemovedBody685_2030 RemovedBody685_2033

def RemovedBody685_2035 : StackLang.HolProg 64 :=
.seq RemovedBody685_2027 RemovedBody685_2034

def RemovedBody685_2036 : StackLang.HolProg 64 :=
.seq RemovedBody685_2024 RemovedBody685_2035

def RemovedBody685_2037 : StackLang.HolProg 64 :=
.seq RemovedBody685_2021 RemovedBody685_2036

def RemovedBody685_2038 : StackLang.HolProg 64 :=
.seq RemovedBody685_2018 RemovedBody685_2037

def RemovedBody685_2039 : StackLang.HolProg 64 :=
.seq RemovedBody685_2015 RemovedBody685_2038

def RemovedBody685_2040 : StackLang.HolProg 64 :=
.seq RemovedBody685_2014 RemovedBody685_2039

def RemovedBody685_2041 : StackLang.HolProg 64 :=
.seq RemovedBody685_2011 RemovedBody685_2040

def RemovedBody685_2042 : StackLang.HolProg 64 :=
.seq RemovedBody685_2010 RemovedBody685_2041

def RemovedBody685_2043 : StackLang.HolProg 64 :=
.seq RemovedBody685_2007 RemovedBody685_2042

def RemovedBody685_2044 : StackLang.HolProg 64 :=
.seq RemovedBody685_2004 RemovedBody685_2043

def RemovedBody685_2045 : StackLang.HolProg 64 :=
.seq RemovedBody685_2003 RemovedBody685_2044

def RemovedBody685_2046 : StackLang.HolProg 64 :=
.seq RemovedBody685_2002 RemovedBody685_2045

def RemovedBody685_2047 : StackLang.HolProg 64 :=
.seq RemovedBody685_2001 RemovedBody685_2046

def RemovedBody685_2048 : StackLang.HolProg 64 :=
.seq RemovedBody685_2000 RemovedBody685_2047

def RemovedBody685_2049 : StackLang.HolProg 64 :=
.seq RemovedBody685_1999 RemovedBody685_2048

def RemovedBody685_2050 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 4
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 136#64))

def RemovedBody685_2051 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 3
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 128#64))

def RemovedBody685_2052 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 120#64))

def RemovedBody685_2053 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 128#64))

def RemovedBody685_2054 : StackLang.HolProg 64 :=
.seq RemovedBody685_2052 RemovedBody685_2053

def RemovedBody685_2055 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 112#64))

def RemovedBody685_2056 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 120#64))

def RemovedBody685_2057 : StackLang.HolProg 64 :=
.seq RemovedBody685_2055 RemovedBody685_2056

def RemovedBody685_2058 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 2
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 104#64))

def RemovedBody685_2059 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 96#64))

def RemovedBody685_2060 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 104#64))

def RemovedBody685_2061 : StackLang.HolProg 64 :=
.seq RemovedBody685_2059 RemovedBody685_2060

def RemovedBody685_2062 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 88#64))

def RemovedBody685_2063 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 80#64))

def RemovedBody685_2064 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 88#64))

def RemovedBody685_2065 : StackLang.HolProg 64 :=
.seq RemovedBody685_2063 RemovedBody685_2064

def RemovedBody685_2066 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 72#64))

def RemovedBody685_2067 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 80#64))

def RemovedBody685_2068 : StackLang.HolProg 64 :=
.seq RemovedBody685_2066 RemovedBody685_2067

def RemovedBody685_2069 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 64#64))

def RemovedBody685_2070 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 72#64))

def RemovedBody685_2071 : StackLang.HolProg 64 :=
.seq RemovedBody685_2069 RemovedBody685_2070

def RemovedBody685_2072 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 56#64))

def RemovedBody685_2073 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 64#64))

def RemovedBody685_2074 : StackLang.HolProg 64 :=
.seq RemovedBody685_2072 RemovedBody685_2073

def RemovedBody685_2075 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 48#64))

def RemovedBody685_2076 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 56#64))

def RemovedBody685_2077 : StackLang.HolProg 64 :=
.seq RemovedBody685_2075 RemovedBody685_2076

def RemovedBody685_2078 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 40#64))

def RemovedBody685_2079 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 48#64))

def RemovedBody685_2080 : StackLang.HolProg 64 :=
.seq RemovedBody685_2078 RemovedBody685_2079

def RemovedBody685_2081 : StackLang.HolProg 64 :=
.seq RemovedBody685_2077 RemovedBody685_2080

def RemovedBody685_2082 : StackLang.HolProg 64 :=
.seq RemovedBody685_2074 RemovedBody685_2081

def RemovedBody685_2083 : StackLang.HolProg 64 :=
.seq RemovedBody685_2071 RemovedBody685_2082

def RemovedBody685_2084 : StackLang.HolProg 64 :=
.seq RemovedBody685_2068 RemovedBody685_2083

def RemovedBody685_2085 : StackLang.HolProg 64 :=
.seq RemovedBody685_2065 RemovedBody685_2084

def RemovedBody685_2086 : StackLang.HolProg 64 :=
.seq RemovedBody685_2062 RemovedBody685_2085

def RemovedBody685_2087 : StackLang.HolProg 64 :=
.seq RemovedBody685_2061 RemovedBody685_2086

def RemovedBody685_2088 : StackLang.HolProg 64 :=
.seq RemovedBody685_2058 RemovedBody685_2087

def RemovedBody685_2089 : StackLang.HolProg 64 :=
.seq RemovedBody685_2057 RemovedBody685_2088

def RemovedBody685_2090 : StackLang.HolProg 64 :=
.seq RemovedBody685_2054 RemovedBody685_2089

def RemovedBody685_2091 : StackLang.HolProg 64 :=
.seq RemovedBody685_2051 RemovedBody685_2090

def RemovedBody685_2092 : StackLang.HolProg 64 :=
.seq RemovedBody685_2050 RemovedBody685_2091

def RemovedBody685_2093 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def RemovedBody685_2094 : StackLang.HolProg 64 :=
.seq RemovedBody685_2092 RemovedBody685_2093

def RemovedBody685_2095 : StackLang.HolProg 64 :=
.call (some (RemovedBody685_2049, 0, 685, 38)) (Sum.inl 675) (some (RemovedBody685_2094, 685, 39))

def RemovedBody685_2096 : StackLang.HolProg 64 :=
.seq RemovedBody685_1998 RemovedBody685_2095

def RemovedBody685_2097 : StackLang.HolProg 64 :=
.seq RemovedBody685_1997 RemovedBody685_2096

def RemovedBody685_2098 : StackLang.HolProg 64 :=
.seq RemovedBody685_1996 RemovedBody685_2097

def RemovedBody685_2099 : StackLang.HolProg 64 :=
.seq RemovedBody685_1967 RemovedBody685_2098

def RemovedBody685_2100 : StackLang.HolProg 64 :=
.seq RemovedBody685_1964 RemovedBody685_2099

def RemovedBody685_2101 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody685_2102 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody685_2103 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody685_2104 : StackLang.HolProg 64 :=
.seq RemovedBody685_2102 RemovedBody685_2103

def RemovedBody685_2105 : StackLang.HolProg 64 :=
.seq RemovedBody685_2101 RemovedBody685_2104

def RemovedBody685_2106 : StackLang.HolProg 64 :=
.seq RemovedBody685_2100 RemovedBody685_2105

def RemovedBody685_2107 : StackLang.HolProg 64 :=
.seq RemovedBody685_1963 RemovedBody685_2106

def RemovedBody685_2108 : StackLang.HolProg 64 :=
.seq RemovedBody685_1958 RemovedBody685_2107

def RemovedBody685_2109 : StackLang.HolProg 64 :=
.seq RemovedBody685_1957 RemovedBody685_2108

def RemovedBody685_2110 : StackLang.HolProg 64 :=
.seq RemovedBody685_1956 RemovedBody685_2109

def RemovedBody685_2111 : StackLang.HolProg 64 :=
.seq RemovedBody685_1955 RemovedBody685_2110

def RemovedBody685_2112 : StackLang.HolProg 64 :=
.seq RemovedBody685_1898 RemovedBody685_2111

def RemovedBody685_2113 : StackLang.HolProg 64 :=
.seq RemovedBody685_1889 RemovedBody685_2112

def RemovedBody685_2114 : StackLang.HolProg 64 :=
.seq RemovedBody685_1888 RemovedBody685_2113

def RemovedBody685_2115 : StackLang.HolProg 64 :=
.seq RemovedBody685_1823 RemovedBody685_2114

def RemovedBody685_2116 : StackLang.HolProg 64 :=
.seq RemovedBody685_1818 RemovedBody685_2115

def RemovedBody685_2117 : StackLang.HolProg 64 :=
.seq RemovedBody685_1817 RemovedBody685_2116

def RemovedBody685_2118 : StackLang.HolProg 64 :=
.seq RemovedBody685_1816 RemovedBody685_2117

def RemovedBody685_2119 : StackLang.HolProg 64 :=
.seq RemovedBody685_1815 RemovedBody685_2118

def RemovedBody685_2120 : StackLang.HolProg 64 :=
.seq RemovedBody685_1754 RemovedBody685_2119

def RemovedBody685_2121 : StackLang.HolProg 64 :=
.seq RemovedBody685_1747 RemovedBody685_2120

def RemovedBody685_2122 : StackLang.HolProg 64 :=
.seq RemovedBody685_1746 RemovedBody685_2121

def RemovedBody685_2123 : StackLang.HolProg 64 :=
.seq RemovedBody685_1345 RemovedBody685_2122

def RemovedBody685_2124 : StackLang.HolProg 64 :=
.seq RemovedBody685_1344 RemovedBody685_2123

def RemovedBody685_2125 : StackLang.HolProg 64 :=
.seq RemovedBody685_1343 RemovedBody685_2124

def RemovedBody685_2126 : StackLang.HolProg 64 :=
.seq RemovedBody685_1342 RemovedBody685_2125

def RemovedBody685_2127 : StackLang.HolProg 64 :=
.seq RemovedBody685_1279 RemovedBody685_2126

def RemovedBody685_2128 : StackLang.HolProg 64 :=
.seq RemovedBody685_1242 RemovedBody685_2127

def RemovedBody685_2129 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody685_2130 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 4
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 136#64))

def RemovedBody685_2131 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 3
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 128#64))

def RemovedBody685_2132 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 120#64))

def RemovedBody685_2133 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 128#64))

def RemovedBody685_2134 : StackLang.HolProg 64 :=
.seq RemovedBody685_2132 RemovedBody685_2133

def RemovedBody685_2135 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 112#64))

def RemovedBody685_2136 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 120#64))

def RemovedBody685_2137 : StackLang.HolProg 64 :=
.seq RemovedBody685_2135 RemovedBody685_2136

def RemovedBody685_2138 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 2
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 104#64))

def RemovedBody685_2139 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 96#64))

def RemovedBody685_2140 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 104#64))

def RemovedBody685_2141 : StackLang.HolProg 64 :=
.seq RemovedBody685_2139 RemovedBody685_2140

def RemovedBody685_2142 : StackLang.HolProg 64 :=
.seq RemovedBody685_2138 RemovedBody685_2141

def RemovedBody685_2143 : StackLang.HolProg 64 :=
.seq RemovedBody685_2137 RemovedBody685_2142

def RemovedBody685_2144 : StackLang.HolProg 64 :=
.seq RemovedBody685_2134 RemovedBody685_2143

def RemovedBody685_2145 : StackLang.HolProg 64 :=
.seq RemovedBody685_2131 RemovedBody685_2144

def RemovedBody685_2146 : StackLang.HolProg 64 :=
.seq RemovedBody685_2130 RemovedBody685_2145

def RemovedBody685_2147 : StackLang.HolProg 64 :=
.seq RemovedBody685_2129 RemovedBody685_2146

def RemovedBody685_2148 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.equal) 2 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1) RemovedBody685_2128 RemovedBody685_2147

def RemovedBody685_2149 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody685_2150 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 1 0
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 0)))

def RemovedBody685_2151 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 4
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 136#64))

def RemovedBody685_2152 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 2
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 112#64))

def RemovedBody685_2153 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 96#64))

def RemovedBody685_2154 : StackLang.HolProg 64 :=
.seq RemovedBody685_2152 RemovedBody685_2153

def RemovedBody685_2155 : StackLang.HolProg 64 :=
.seq RemovedBody685_2151 RemovedBody685_2154

def RemovedBody685_2156 : StackLang.HolProg 64 :=
.seq RemovedBody685_2150 RemovedBody685_2155

def RemovedBody685_2157 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody685_2158 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 2911#64)

def RemovedBody685_2159 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody685_2160 : StackLang.HolProg 64 :=
.seq RemovedBody685_2158 RemovedBody685_2159

def RemovedBody685_2161 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody685_2162 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 2#64)

def RemovedBody685_2163 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 1

def RemovedBody685_2164 : StackLang.HolProg 64 :=
.seq RemovedBody685_2162 RemovedBody685_2163

def RemovedBody685_2165 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody685_2166 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) RemovedBody685_2164 RemovedBody685_2165

def RemovedBody685_2167 : StackLang.HolProg 64 :=
.seq RemovedBody685_2161 RemovedBody685_2166

def RemovedBody685_2168 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def RemovedBody685_2169 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody685_2170 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 685 51

def RemovedBody685_2171 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody685_2172 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody685_2173 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody685_2174 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody685_2175 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def RemovedBody685_2176 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def RemovedBody685_2177 : StackLang.HolProg 64 :=
.seq RemovedBody685_2175 RemovedBody685_2176

def RemovedBody685_2178 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def RemovedBody685_2179 : StackLang.HolProg 64 :=
.seq RemovedBody685_2177 RemovedBody685_2178

def RemovedBody685_2180 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody685_2181 : StackLang.HolProg 64 :=
.seq RemovedBody685_2179 RemovedBody685_2180

def RemovedBody685_2182 : StackLang.HolProg 64 :=
.seq RemovedBody685_2174 RemovedBody685_2181

def RemovedBody685_2183 : StackLang.HolProg 64 :=
.seq RemovedBody685_2173 RemovedBody685_2182

def RemovedBody685_2184 : StackLang.HolProg 64 :=
.seq RemovedBody685_2172 RemovedBody685_2183

def RemovedBody685_2185 : StackLang.HolProg 64 :=
.seq RemovedBody685_2171 RemovedBody685_2184

def RemovedBody685_2186 : StackLang.HolProg 64 :=
.seq RemovedBody685_2170 RemovedBody685_2185

def RemovedBody685_2187 : StackLang.HolProg 64 :=
.seq RemovedBody685_2169 RemovedBody685_2186

def RemovedBody685_2188 : StackLang.HolProg 64 :=
.seq RemovedBody685_2168 RemovedBody685_2187

def RemovedBody685_2189 : StackLang.HolProg 64 :=
.seq RemovedBody685_2167 RemovedBody685_2188

def RemovedBody685_2190 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody685_2191 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody685_2192 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody685_2193 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody685_2194 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody685_2195 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody685_2196 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 4
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 120#64))

def RemovedBody685_2197 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 96#64))

def RemovedBody685_2198 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 2
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 88#64))

def RemovedBody685_2199 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 3
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 64#64))

def RemovedBody685_2200 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 56#64))

def RemovedBody685_2201 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 64#64))

def RemovedBody685_2202 : StackLang.HolProg 64 :=
.seq RemovedBody685_2200 RemovedBody685_2201

def RemovedBody685_2203 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 48#64))

def RemovedBody685_2204 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 56#64))

def RemovedBody685_2205 : StackLang.HolProg 64 :=
.seq RemovedBody685_2203 RemovedBody685_2204

def RemovedBody685_2206 : StackLang.HolProg 64 :=
.seq RemovedBody685_2202 RemovedBody685_2205

def RemovedBody685_2207 : StackLang.HolProg 64 :=
.seq RemovedBody685_2199 RemovedBody685_2206

def RemovedBody685_2208 : StackLang.HolProg 64 :=
.seq RemovedBody685_2198 RemovedBody685_2207

def RemovedBody685_2209 : StackLang.HolProg 64 :=
.seq RemovedBody685_2197 RemovedBody685_2208

def RemovedBody685_2210 : StackLang.HolProg 64 :=
.seq RemovedBody685_2196 RemovedBody685_2209

def RemovedBody685_2211 : StackLang.HolProg 64 :=
.seq RemovedBody685_2195 RemovedBody685_2210

def RemovedBody685_2212 : StackLang.HolProg 64 :=
.seq RemovedBody685_2194 RemovedBody685_2211

def RemovedBody685_2213 : StackLang.HolProg 64 :=
.seq RemovedBody685_2193 RemovedBody685_2212

def RemovedBody685_2214 : StackLang.HolProg 64 :=
.seq RemovedBody685_2192 RemovedBody685_2213

def RemovedBody685_2215 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 4
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 120#64))

def RemovedBody685_2216 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 96#64))

def RemovedBody685_2217 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 2
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 88#64))

def RemovedBody685_2218 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 3
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 64#64))

def RemovedBody685_2219 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 56#64))

def RemovedBody685_2220 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 64#64))

def RemovedBody685_2221 : StackLang.HolProg 64 :=
.seq RemovedBody685_2219 RemovedBody685_2220

def RemovedBody685_2222 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 48#64))

def RemovedBody685_2223 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 56#64))

def RemovedBody685_2224 : StackLang.HolProg 64 :=
.seq RemovedBody685_2222 RemovedBody685_2223

def RemovedBody685_2225 : StackLang.HolProg 64 :=
.seq RemovedBody685_2221 RemovedBody685_2224

def RemovedBody685_2226 : StackLang.HolProg 64 :=
.seq RemovedBody685_2218 RemovedBody685_2225

def RemovedBody685_2227 : StackLang.HolProg 64 :=
.seq RemovedBody685_2217 RemovedBody685_2226

def RemovedBody685_2228 : StackLang.HolProg 64 :=
.seq RemovedBody685_2216 RemovedBody685_2227

def RemovedBody685_2229 : StackLang.HolProg 64 :=
.seq RemovedBody685_2215 RemovedBody685_2228

def RemovedBody685_2230 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def RemovedBody685_2231 : StackLang.HolProg 64 :=
.seq RemovedBody685_2229 RemovedBody685_2230

def RemovedBody685_2232 : StackLang.HolProg 64 :=
.call (some (RemovedBody685_2214, 0, 685, 50)) (Sum.inl 670) (some (RemovedBody685_2231, 685, 51))

def RemovedBody685_2233 : StackLang.HolProg 64 :=
.seq RemovedBody685_2191 RemovedBody685_2232

def RemovedBody685_2234 : StackLang.HolProg 64 :=
.seq RemovedBody685_2190 RemovedBody685_2233

def RemovedBody685_2235 : StackLang.HolProg 64 :=
.seq RemovedBody685_2189 RemovedBody685_2234

def RemovedBody685_2236 : StackLang.HolProg 64 :=
.seq RemovedBody685_2160 RemovedBody685_2235

def RemovedBody685_2237 : StackLang.HolProg 64 :=
.seq RemovedBody685_2157 RemovedBody685_2236

def RemovedBody685_2238 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody685_2239 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 1 0
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 0)))

def RemovedBody685_2240 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 4
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 120#64))

def RemovedBody685_2241 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 96#64))

def RemovedBody685_2242 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 2
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 88#64))

def RemovedBody685_2243 : StackLang.HolProg 64 :=
.seq RemovedBody685_2241 RemovedBody685_2242

def RemovedBody685_2244 : StackLang.HolProg 64 :=
.seq RemovedBody685_2240 RemovedBody685_2243

def RemovedBody685_2245 : StackLang.HolProg 64 :=
.seq RemovedBody685_2239 RemovedBody685_2244

def RemovedBody685_2246 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody685_2247 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 2912#64)

def RemovedBody685_2248 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody685_2249 : StackLang.HolProg 64 :=
.seq RemovedBody685_2247 RemovedBody685_2248

def RemovedBody685_2250 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody685_2251 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 2#64)

def RemovedBody685_2252 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 1

def RemovedBody685_2253 : StackLang.HolProg 64 :=
.seq RemovedBody685_2251 RemovedBody685_2252

def RemovedBody685_2254 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody685_2255 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) RemovedBody685_2253 RemovedBody685_2254

def RemovedBody685_2256 : StackLang.HolProg 64 :=
.seq RemovedBody685_2250 RemovedBody685_2255

def RemovedBody685_2257 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def RemovedBody685_2258 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody685_2259 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 685 53

def RemovedBody685_2260 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody685_2261 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody685_2262 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody685_2263 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody685_2264 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def RemovedBody685_2265 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def RemovedBody685_2266 : StackLang.HolProg 64 :=
.seq RemovedBody685_2264 RemovedBody685_2265

def RemovedBody685_2267 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def RemovedBody685_2268 : StackLang.HolProg 64 :=
.seq RemovedBody685_2266 RemovedBody685_2267

def RemovedBody685_2269 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody685_2270 : StackLang.HolProg 64 :=
.seq RemovedBody685_2268 RemovedBody685_2269

def RemovedBody685_2271 : StackLang.HolProg 64 :=
.seq RemovedBody685_2263 RemovedBody685_2270

def RemovedBody685_2272 : StackLang.HolProg 64 :=
.seq RemovedBody685_2262 RemovedBody685_2271

def RemovedBody685_2273 : StackLang.HolProg 64 :=
.seq RemovedBody685_2261 RemovedBody685_2272

def RemovedBody685_2274 : StackLang.HolProg 64 :=
.seq RemovedBody685_2260 RemovedBody685_2273

def RemovedBody685_2275 : StackLang.HolProg 64 :=
.seq RemovedBody685_2259 RemovedBody685_2274

def RemovedBody685_2276 : StackLang.HolProg 64 :=
.seq RemovedBody685_2258 RemovedBody685_2275

def RemovedBody685_2277 : StackLang.HolProg 64 :=
.seq RemovedBody685_2257 RemovedBody685_2276

def RemovedBody685_2278 : StackLang.HolProg 64 :=
.seq RemovedBody685_2256 RemovedBody685_2277

def RemovedBody685_2279 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody685_2280 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody685_2281 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody685_2282 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody685_2283 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody685_2284 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody685_2285 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 3
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 112#64))

def RemovedBody685_2286 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 96#64))

def RemovedBody685_2287 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 4
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 88#64))

def RemovedBody685_2288 : StackLang.HolProg 64 :=
.seq RemovedBody685_2286 RemovedBody685_2287

def RemovedBody685_2289 : StackLang.HolProg 64 :=
.seq RemovedBody685_2285 RemovedBody685_2288

def RemovedBody685_2290 : StackLang.HolProg 64 :=
.seq RemovedBody685_2284 RemovedBody685_2289

def RemovedBody685_2291 : StackLang.HolProg 64 :=
.seq RemovedBody685_2283 RemovedBody685_2290

def RemovedBody685_2292 : StackLang.HolProg 64 :=
.seq RemovedBody685_2282 RemovedBody685_2291

def RemovedBody685_2293 : StackLang.HolProg 64 :=
.seq RemovedBody685_2281 RemovedBody685_2292

def RemovedBody685_2294 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 3
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 112#64))

def RemovedBody685_2295 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 96#64))

def RemovedBody685_2296 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 4
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 88#64))

def RemovedBody685_2297 : StackLang.HolProg 64 :=
.seq RemovedBody685_2295 RemovedBody685_2296

def RemovedBody685_2298 : StackLang.HolProg 64 :=
.seq RemovedBody685_2294 RemovedBody685_2297

def RemovedBody685_2299 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def RemovedBody685_2300 : StackLang.HolProg 64 :=
.seq RemovedBody685_2298 RemovedBody685_2299

def RemovedBody685_2301 : StackLang.HolProg 64 :=
.call (some (RemovedBody685_2293, 0, 685, 52)) (Sum.inl 670) (some (RemovedBody685_2300, 685, 53))

def RemovedBody685_2302 : StackLang.HolProg 64 :=
.seq RemovedBody685_2280 RemovedBody685_2301

def RemovedBody685_2303 : StackLang.HolProg 64 :=
.seq RemovedBody685_2279 RemovedBody685_2302

def RemovedBody685_2304 : StackLang.HolProg 64 :=
.seq RemovedBody685_2278 RemovedBody685_2303

def RemovedBody685_2305 : StackLang.HolProg 64 :=
.seq RemovedBody685_2249 RemovedBody685_2304

def RemovedBody685_2306 : StackLang.HolProg 64 :=
.seq RemovedBody685_2246 RemovedBody685_2305

def RemovedBody685_2307 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody685_2308 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 1 0
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 0)))

def RemovedBody685_2309 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 2 3
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 3)))

def RemovedBody685_2310 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 3
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 112#64))

def RemovedBody685_2311 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 96#64))

def RemovedBody685_2312 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 4
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 88#64))

def RemovedBody685_2313 : StackLang.HolProg 64 :=
.seq RemovedBody685_2311 RemovedBody685_2312

def RemovedBody685_2314 : StackLang.HolProg 64 :=
.seq RemovedBody685_2310 RemovedBody685_2313

def RemovedBody685_2315 : StackLang.HolProg 64 :=
.seq RemovedBody685_2309 RemovedBody685_2314

def RemovedBody685_2316 : StackLang.HolProg 64 :=
.seq RemovedBody685_2308 RemovedBody685_2315

def RemovedBody685_2317 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody685_2318 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 2913#64)

def RemovedBody685_2319 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody685_2320 : StackLang.HolProg 64 :=
.seq RemovedBody685_2318 RemovedBody685_2319

def RemovedBody685_2321 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody685_2322 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 2#64)

def RemovedBody685_2323 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 1

def RemovedBody685_2324 : StackLang.HolProg 64 :=
.seq RemovedBody685_2322 RemovedBody685_2323

def RemovedBody685_2325 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody685_2326 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) RemovedBody685_2324 RemovedBody685_2325

def RemovedBody685_2327 : StackLang.HolProg 64 :=
.seq RemovedBody685_2321 RemovedBody685_2326

def RemovedBody685_2328 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def RemovedBody685_2329 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody685_2330 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 685 55

def RemovedBody685_2331 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody685_2332 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody685_2333 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody685_2334 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody685_2335 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def RemovedBody685_2336 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def RemovedBody685_2337 : StackLang.HolProg 64 :=
.seq RemovedBody685_2335 RemovedBody685_2336

def RemovedBody685_2338 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def RemovedBody685_2339 : StackLang.HolProg 64 :=
.seq RemovedBody685_2337 RemovedBody685_2338

def RemovedBody685_2340 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody685_2341 : StackLang.HolProg 64 :=
.seq RemovedBody685_2339 RemovedBody685_2340

def RemovedBody685_2342 : StackLang.HolProg 64 :=
.seq RemovedBody685_2334 RemovedBody685_2341

def RemovedBody685_2343 : StackLang.HolProg 64 :=
.seq RemovedBody685_2333 RemovedBody685_2342

def RemovedBody685_2344 : StackLang.HolProg 64 :=
.seq RemovedBody685_2332 RemovedBody685_2343

def RemovedBody685_2345 : StackLang.HolProg 64 :=
.seq RemovedBody685_2331 RemovedBody685_2344

def RemovedBody685_2346 : StackLang.HolProg 64 :=
.seq RemovedBody685_2330 RemovedBody685_2345

def RemovedBody685_2347 : StackLang.HolProg 64 :=
.seq RemovedBody685_2329 RemovedBody685_2346

def RemovedBody685_2348 : StackLang.HolProg 64 :=
.seq RemovedBody685_2328 RemovedBody685_2347

def RemovedBody685_2349 : StackLang.HolProg 64 :=
.seq RemovedBody685_2327 RemovedBody685_2348

def RemovedBody685_2350 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody685_2351 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody685_2352 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody685_2353 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody685_2354 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody685_2355 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody685_2356 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 4
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 112#64))

def RemovedBody685_2357 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 96#64))

def RemovedBody685_2358 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 3
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 80#64))

def RemovedBody685_2359 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 72#64))

def RemovedBody685_2360 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 80#64))

def RemovedBody685_2361 : StackLang.HolProg 64 :=
.seq RemovedBody685_2359 RemovedBody685_2360

def RemovedBody685_2362 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 64#64))

def RemovedBody685_2363 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 72#64))

def RemovedBody685_2364 : StackLang.HolProg 64 :=
.seq RemovedBody685_2362 RemovedBody685_2363

def RemovedBody685_2365 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 56#64))

def RemovedBody685_2366 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 64#64))

def RemovedBody685_2367 : StackLang.HolProg 64 :=
.seq RemovedBody685_2365 RemovedBody685_2366

def RemovedBody685_2368 : StackLang.HolProg 64 :=
.seq RemovedBody685_2364 RemovedBody685_2367

def RemovedBody685_2369 : StackLang.HolProg 64 :=
.seq RemovedBody685_2361 RemovedBody685_2368

def RemovedBody685_2370 : StackLang.HolProg 64 :=
.seq RemovedBody685_2358 RemovedBody685_2369

def RemovedBody685_2371 : StackLang.HolProg 64 :=
.seq RemovedBody685_2357 RemovedBody685_2370

def RemovedBody685_2372 : StackLang.HolProg 64 :=
.seq RemovedBody685_2356 RemovedBody685_2371

def RemovedBody685_2373 : StackLang.HolProg 64 :=
.seq RemovedBody685_2355 RemovedBody685_2372

def RemovedBody685_2374 : StackLang.HolProg 64 :=
.seq RemovedBody685_2354 RemovedBody685_2373

def RemovedBody685_2375 : StackLang.HolProg 64 :=
.seq RemovedBody685_2353 RemovedBody685_2374

def RemovedBody685_2376 : StackLang.HolProg 64 :=
.seq RemovedBody685_2352 RemovedBody685_2375

def RemovedBody685_2377 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 4
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 112#64))

def RemovedBody685_2378 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 96#64))

def RemovedBody685_2379 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 3
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 80#64))

def RemovedBody685_2380 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 72#64))

def RemovedBody685_2381 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 80#64))

def RemovedBody685_2382 : StackLang.HolProg 64 :=
.seq RemovedBody685_2380 RemovedBody685_2381

def RemovedBody685_2383 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 64#64))

def RemovedBody685_2384 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 72#64))

def RemovedBody685_2385 : StackLang.HolProg 64 :=
.seq RemovedBody685_2383 RemovedBody685_2384

def RemovedBody685_2386 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 56#64))

def RemovedBody685_2387 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 64#64))

def RemovedBody685_2388 : StackLang.HolProg 64 :=
.seq RemovedBody685_2386 RemovedBody685_2387

def RemovedBody685_2389 : StackLang.HolProg 64 :=
.seq RemovedBody685_2385 RemovedBody685_2388

def RemovedBody685_2390 : StackLang.HolProg 64 :=
.seq RemovedBody685_2382 RemovedBody685_2389

def RemovedBody685_2391 : StackLang.HolProg 64 :=
.seq RemovedBody685_2379 RemovedBody685_2390

def RemovedBody685_2392 : StackLang.HolProg 64 :=
.seq RemovedBody685_2378 RemovedBody685_2391

def RemovedBody685_2393 : StackLang.HolProg 64 :=
.seq RemovedBody685_2377 RemovedBody685_2392

def RemovedBody685_2394 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def RemovedBody685_2395 : StackLang.HolProg 64 :=
.seq RemovedBody685_2393 RemovedBody685_2394

def RemovedBody685_2396 : StackLang.HolProg 64 :=
.call (some (RemovedBody685_2376, 0, 685, 54)) (Sum.inl 673) (some (RemovedBody685_2395, 685, 55))

def RemovedBody685_2397 : StackLang.HolProg 64 :=
.seq RemovedBody685_2351 RemovedBody685_2396

def RemovedBody685_2398 : StackLang.HolProg 64 :=
.seq RemovedBody685_2350 RemovedBody685_2397

def RemovedBody685_2399 : StackLang.HolProg 64 :=
.seq RemovedBody685_2349 RemovedBody685_2398

def RemovedBody685_2400 : StackLang.HolProg 64 :=
.seq RemovedBody685_2320 RemovedBody685_2399

def RemovedBody685_2401 : StackLang.HolProg 64 :=
.seq RemovedBody685_2317 RemovedBody685_2400

def RemovedBody685_2402 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody685_2403 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 1 0
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 0)))

def RemovedBody685_2404 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 2 4
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 4)))

def RemovedBody685_2405 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 4
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 112#64))

def RemovedBody685_2406 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 96#64))

def RemovedBody685_2407 : StackLang.HolProg 64 :=
.seq RemovedBody685_2405 RemovedBody685_2406

def RemovedBody685_2408 : StackLang.HolProg 64 :=
.seq RemovedBody685_2404 RemovedBody685_2407

def RemovedBody685_2409 : StackLang.HolProg 64 :=
.seq RemovedBody685_2403 RemovedBody685_2408

def RemovedBody685_2410 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody685_2411 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 2914#64)

def RemovedBody685_2412 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody685_2413 : StackLang.HolProg 64 :=
.seq RemovedBody685_2411 RemovedBody685_2412

def RemovedBody685_2414 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody685_2415 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 2#64)

def RemovedBody685_2416 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 1

def RemovedBody685_2417 : StackLang.HolProg 64 :=
.seq RemovedBody685_2415 RemovedBody685_2416

def RemovedBody685_2418 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody685_2419 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) RemovedBody685_2417 RemovedBody685_2418

def RemovedBody685_2420 : StackLang.HolProg 64 :=
.seq RemovedBody685_2414 RemovedBody685_2419

def RemovedBody685_2421 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def RemovedBody685_2422 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody685_2423 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 685 57

def RemovedBody685_2424 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody685_2425 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody685_2426 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody685_2427 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody685_2428 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def RemovedBody685_2429 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def RemovedBody685_2430 : StackLang.HolProg 64 :=
.seq RemovedBody685_2428 RemovedBody685_2429

def RemovedBody685_2431 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def RemovedBody685_2432 : StackLang.HolProg 64 :=
.seq RemovedBody685_2430 RemovedBody685_2431

def RemovedBody685_2433 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody685_2434 : StackLang.HolProg 64 :=
.seq RemovedBody685_2432 RemovedBody685_2433

def RemovedBody685_2435 : StackLang.HolProg 64 :=
.seq RemovedBody685_2427 RemovedBody685_2434

def RemovedBody685_2436 : StackLang.HolProg 64 :=
.seq RemovedBody685_2426 RemovedBody685_2435

def RemovedBody685_2437 : StackLang.HolProg 64 :=
.seq RemovedBody685_2425 RemovedBody685_2436

def RemovedBody685_2438 : StackLang.HolProg 64 :=
.seq RemovedBody685_2424 RemovedBody685_2437

def RemovedBody685_2439 : StackLang.HolProg 64 :=
.seq RemovedBody685_2423 RemovedBody685_2438

def RemovedBody685_2440 : StackLang.HolProg 64 :=
.seq RemovedBody685_2422 RemovedBody685_2439

def RemovedBody685_2441 : StackLang.HolProg 64 :=
.seq RemovedBody685_2421 RemovedBody685_2440

def RemovedBody685_2442 : StackLang.HolProg 64 :=
.seq RemovedBody685_2420 RemovedBody685_2441

def RemovedBody685_2443 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody685_2444 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody685_2445 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody685_2446 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody685_2447 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody685_2448 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody685_2449 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 4
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 136#64))

def RemovedBody685_2450 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 96#64))

def RemovedBody685_2451 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 2
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 88#64))

def RemovedBody685_2452 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 3
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 72#64))

def RemovedBody685_2453 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 64#64))

def RemovedBody685_2454 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 72#64))

def RemovedBody685_2455 : StackLang.HolProg 64 :=
.seq RemovedBody685_2453 RemovedBody685_2454

def RemovedBody685_2456 : StackLang.HolProg 64 :=
.seq RemovedBody685_2452 RemovedBody685_2455

def RemovedBody685_2457 : StackLang.HolProg 64 :=
.seq RemovedBody685_2451 RemovedBody685_2456

def RemovedBody685_2458 : StackLang.HolProg 64 :=
.seq RemovedBody685_2450 RemovedBody685_2457

def RemovedBody685_2459 : StackLang.HolProg 64 :=
.seq RemovedBody685_2449 RemovedBody685_2458

def RemovedBody685_2460 : StackLang.HolProg 64 :=
.seq RemovedBody685_2448 RemovedBody685_2459

def RemovedBody685_2461 : StackLang.HolProg 64 :=
.seq RemovedBody685_2447 RemovedBody685_2460

def RemovedBody685_2462 : StackLang.HolProg 64 :=
.seq RemovedBody685_2446 RemovedBody685_2461

def RemovedBody685_2463 : StackLang.HolProg 64 :=
.seq RemovedBody685_2445 RemovedBody685_2462

def RemovedBody685_2464 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 4
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 136#64))

def RemovedBody685_2465 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 96#64))

def RemovedBody685_2466 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 2
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 88#64))

def RemovedBody685_2467 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 3
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 72#64))

def RemovedBody685_2468 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 64#64))

def RemovedBody685_2469 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 72#64))

def RemovedBody685_2470 : StackLang.HolProg 64 :=
.seq RemovedBody685_2468 RemovedBody685_2469

def RemovedBody685_2471 : StackLang.HolProg 64 :=
.seq RemovedBody685_2467 RemovedBody685_2470

def RemovedBody685_2472 : StackLang.HolProg 64 :=
.seq RemovedBody685_2466 RemovedBody685_2471

def RemovedBody685_2473 : StackLang.HolProg 64 :=
.seq RemovedBody685_2465 RemovedBody685_2472

def RemovedBody685_2474 : StackLang.HolProg 64 :=
.seq RemovedBody685_2464 RemovedBody685_2473

def RemovedBody685_2475 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def RemovedBody685_2476 : StackLang.HolProg 64 :=
.seq RemovedBody685_2474 RemovedBody685_2475

def RemovedBody685_2477 : StackLang.HolProg 64 :=
.call (some (RemovedBody685_2463, 0, 685, 56)) (Sum.inl 670) (some (RemovedBody685_2476, 685, 57))

def RemovedBody685_2478 : StackLang.HolProg 64 :=
.seq RemovedBody685_2444 RemovedBody685_2477

def RemovedBody685_2479 : StackLang.HolProg 64 :=
.seq RemovedBody685_2443 RemovedBody685_2478

def RemovedBody685_2480 : StackLang.HolProg 64 :=
.seq RemovedBody685_2442 RemovedBody685_2479

def RemovedBody685_2481 : StackLang.HolProg 64 :=
.seq RemovedBody685_2413 RemovedBody685_2480

def RemovedBody685_2482 : StackLang.HolProg 64 :=
.seq RemovedBody685_2410 RemovedBody685_2481

def RemovedBody685_2483 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody685_2484 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 1 0
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 0)))

def RemovedBody685_2485 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 4
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 136#64))

def RemovedBody685_2486 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 96#64))

def RemovedBody685_2487 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 2
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 88#64))

def RemovedBody685_2488 : StackLang.HolProg 64 :=
.seq RemovedBody685_2486 RemovedBody685_2487

def RemovedBody685_2489 : StackLang.HolProg 64 :=
.seq RemovedBody685_2485 RemovedBody685_2488

def RemovedBody685_2490 : StackLang.HolProg 64 :=
.seq RemovedBody685_2484 RemovedBody685_2489

def RemovedBody685_2491 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody685_2492 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 2915#64)

def RemovedBody685_2493 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody685_2494 : StackLang.HolProg 64 :=
.seq RemovedBody685_2492 RemovedBody685_2493

def RemovedBody685_2495 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody685_2496 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 2#64)

def RemovedBody685_2497 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 1

def RemovedBody685_2498 : StackLang.HolProg 64 :=
.seq RemovedBody685_2496 RemovedBody685_2497

def RemovedBody685_2499 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody685_2500 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) RemovedBody685_2498 RemovedBody685_2499

def RemovedBody685_2501 : StackLang.HolProg 64 :=
.seq RemovedBody685_2495 RemovedBody685_2500

def RemovedBody685_2502 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def RemovedBody685_2503 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody685_2504 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 685 59

def RemovedBody685_2505 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody685_2506 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody685_2507 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody685_2508 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody685_2509 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def RemovedBody685_2510 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def RemovedBody685_2511 : StackLang.HolProg 64 :=
.seq RemovedBody685_2509 RemovedBody685_2510

def RemovedBody685_2512 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def RemovedBody685_2513 : StackLang.HolProg 64 :=
.seq RemovedBody685_2511 RemovedBody685_2512

def RemovedBody685_2514 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody685_2515 : StackLang.HolProg 64 :=
.seq RemovedBody685_2513 RemovedBody685_2514

def RemovedBody685_2516 : StackLang.HolProg 64 :=
.seq RemovedBody685_2508 RemovedBody685_2515

def RemovedBody685_2517 : StackLang.HolProg 64 :=
.seq RemovedBody685_2507 RemovedBody685_2516

def RemovedBody685_2518 : StackLang.HolProg 64 :=
.seq RemovedBody685_2506 RemovedBody685_2517

def RemovedBody685_2519 : StackLang.HolProg 64 :=
.seq RemovedBody685_2505 RemovedBody685_2518

def RemovedBody685_2520 : StackLang.HolProg 64 :=
.seq RemovedBody685_2504 RemovedBody685_2519

def RemovedBody685_2521 : StackLang.HolProg 64 :=
.seq RemovedBody685_2503 RemovedBody685_2520

def RemovedBody685_2522 : StackLang.HolProg 64 :=
.seq RemovedBody685_2502 RemovedBody685_2521

def RemovedBody685_2523 : StackLang.HolProg 64 :=
.seq RemovedBody685_2501 RemovedBody685_2522

def RemovedBody685_2524 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody685_2525 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody685_2526 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody685_2527 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody685_2528 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody685_2529 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody685_2530 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 2
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 128#64))

def RemovedBody685_2531 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 4
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 120#64))

def RemovedBody685_2532 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 3
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 104#64))

def RemovedBody685_2533 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 96#64))

def RemovedBody685_2534 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 88#64))

def RemovedBody685_2535 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 96#64))

def RemovedBody685_2536 : StackLang.HolProg 64 :=
.seq RemovedBody685_2534 RemovedBody685_2535

def RemovedBody685_2537 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 80#64))

def RemovedBody685_2538 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 88#64))

def RemovedBody685_2539 : StackLang.HolProg 64 :=
.seq RemovedBody685_2537 RemovedBody685_2538

def RemovedBody685_2540 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 72#64))

def RemovedBody685_2541 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 80#64))

def RemovedBody685_2542 : StackLang.HolProg 64 :=
.seq RemovedBody685_2540 RemovedBody685_2541

def RemovedBody685_2543 : StackLang.HolProg 64 :=
.seq RemovedBody685_2539 RemovedBody685_2542

def RemovedBody685_2544 : StackLang.HolProg 64 :=
.seq RemovedBody685_2536 RemovedBody685_2543

def RemovedBody685_2545 : StackLang.HolProg 64 :=
.seq RemovedBody685_2533 RemovedBody685_2544

def RemovedBody685_2546 : StackLang.HolProg 64 :=
.seq RemovedBody685_2532 RemovedBody685_2545

def RemovedBody685_2547 : StackLang.HolProg 64 :=
.seq RemovedBody685_2531 RemovedBody685_2546

def RemovedBody685_2548 : StackLang.HolProg 64 :=
.seq RemovedBody685_2530 RemovedBody685_2547

def RemovedBody685_2549 : StackLang.HolProg 64 :=
.seq RemovedBody685_2529 RemovedBody685_2548

def RemovedBody685_2550 : StackLang.HolProg 64 :=
.seq RemovedBody685_2528 RemovedBody685_2549

def RemovedBody685_2551 : StackLang.HolProg 64 :=
.seq RemovedBody685_2527 RemovedBody685_2550

def RemovedBody685_2552 : StackLang.HolProg 64 :=
.seq RemovedBody685_2526 RemovedBody685_2551

def RemovedBody685_2553 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 2
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 128#64))

def RemovedBody685_2554 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 4
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 120#64))

def RemovedBody685_2555 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 3
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 104#64))

def RemovedBody685_2556 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 96#64))

def RemovedBody685_2557 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 88#64))

def RemovedBody685_2558 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 96#64))

def RemovedBody685_2559 : StackLang.HolProg 64 :=
.seq RemovedBody685_2557 RemovedBody685_2558

def RemovedBody685_2560 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 80#64))

def RemovedBody685_2561 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 88#64))

def RemovedBody685_2562 : StackLang.HolProg 64 :=
.seq RemovedBody685_2560 RemovedBody685_2561

def RemovedBody685_2563 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 72#64))

def RemovedBody685_2564 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 80#64))

def RemovedBody685_2565 : StackLang.HolProg 64 :=
.seq RemovedBody685_2563 RemovedBody685_2564

def RemovedBody685_2566 : StackLang.HolProg 64 :=
.seq RemovedBody685_2562 RemovedBody685_2565

def RemovedBody685_2567 : StackLang.HolProg 64 :=
.seq RemovedBody685_2559 RemovedBody685_2566

def RemovedBody685_2568 : StackLang.HolProg 64 :=
.seq RemovedBody685_2556 RemovedBody685_2567

def RemovedBody685_2569 : StackLang.HolProg 64 :=
.seq RemovedBody685_2555 RemovedBody685_2568

def RemovedBody685_2570 : StackLang.HolProg 64 :=
.seq RemovedBody685_2554 RemovedBody685_2569

def RemovedBody685_2571 : StackLang.HolProg 64 :=
.seq RemovedBody685_2553 RemovedBody685_2570

def RemovedBody685_2572 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def RemovedBody685_2573 : StackLang.HolProg 64 :=
.seq RemovedBody685_2571 RemovedBody685_2572

def RemovedBody685_2574 : StackLang.HolProg 64 :=
.call (some (RemovedBody685_2552, 0, 685, 58)) (Sum.inl 670) (some (RemovedBody685_2573, 685, 59))

def RemovedBody685_2575 : StackLang.HolProg 64 :=
.seq RemovedBody685_2525 RemovedBody685_2574

def RemovedBody685_2576 : StackLang.HolProg 64 :=
.seq RemovedBody685_2524 RemovedBody685_2575

def RemovedBody685_2577 : StackLang.HolProg 64 :=
.seq RemovedBody685_2523 RemovedBody685_2576

def RemovedBody685_2578 : StackLang.HolProg 64 :=
.seq RemovedBody685_2494 RemovedBody685_2577

def RemovedBody685_2579 : StackLang.HolProg 64 :=
.seq RemovedBody685_2491 RemovedBody685_2578

def RemovedBody685_2580 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody685_2581 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 1 0
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 0)))

def RemovedBody685_2582 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 2
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 128#64))

def RemovedBody685_2583 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 4
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 120#64))

def RemovedBody685_2584 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 104#64))

def RemovedBody685_2585 : StackLang.HolProg 64 :=
.seq RemovedBody685_2583 RemovedBody685_2584

def RemovedBody685_2586 : StackLang.HolProg 64 :=
.seq RemovedBody685_2582 RemovedBody685_2585

def RemovedBody685_2587 : StackLang.HolProg 64 :=
.seq RemovedBody685_2581 RemovedBody685_2586

def RemovedBody685_2588 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody685_2589 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 2916#64)

def RemovedBody685_2590 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody685_2591 : StackLang.HolProg 64 :=
.seq RemovedBody685_2589 RemovedBody685_2590

def RemovedBody685_2592 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody685_2593 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 2#64)

def RemovedBody685_2594 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 1

def RemovedBody685_2595 : StackLang.HolProg 64 :=
.seq RemovedBody685_2593 RemovedBody685_2594

def RemovedBody685_2596 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody685_2597 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) RemovedBody685_2595 RemovedBody685_2596

def RemovedBody685_2598 : StackLang.HolProg 64 :=
.seq RemovedBody685_2592 RemovedBody685_2597

def RemovedBody685_2599 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def RemovedBody685_2600 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody685_2601 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 685 61

def RemovedBody685_2602 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody685_2603 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody685_2604 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody685_2605 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody685_2606 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def RemovedBody685_2607 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def RemovedBody685_2608 : StackLang.HolProg 64 :=
.seq RemovedBody685_2606 RemovedBody685_2607

def RemovedBody685_2609 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def RemovedBody685_2610 : StackLang.HolProg 64 :=
.seq RemovedBody685_2608 RemovedBody685_2609

def RemovedBody685_2611 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody685_2612 : StackLang.HolProg 64 :=
.seq RemovedBody685_2610 RemovedBody685_2611

def RemovedBody685_2613 : StackLang.HolProg 64 :=
.seq RemovedBody685_2605 RemovedBody685_2612

def RemovedBody685_2614 : StackLang.HolProg 64 :=
.seq RemovedBody685_2604 RemovedBody685_2613

def RemovedBody685_2615 : StackLang.HolProg 64 :=
.seq RemovedBody685_2603 RemovedBody685_2614

def RemovedBody685_2616 : StackLang.HolProg 64 :=
.seq RemovedBody685_2602 RemovedBody685_2615

def RemovedBody685_2617 : StackLang.HolProg 64 :=
.seq RemovedBody685_2601 RemovedBody685_2616

def RemovedBody685_2618 : StackLang.HolProg 64 :=
.seq RemovedBody685_2600 RemovedBody685_2617

def RemovedBody685_2619 : StackLang.HolProg 64 :=
.seq RemovedBody685_2599 RemovedBody685_2618

def RemovedBody685_2620 : StackLang.HolProg 64 :=
.seq RemovedBody685_2598 RemovedBody685_2619

def RemovedBody685_2621 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody685_2622 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody685_2623 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody685_2624 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody685_2625 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody685_2626 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody685_2627 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 4
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 128#64))

def RemovedBody685_2628 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 104#64))

def RemovedBody685_2629 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 3
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 96#64))

def RemovedBody685_2630 : StackLang.HolProg 64 :=
.seq RemovedBody685_2628 RemovedBody685_2629

def RemovedBody685_2631 : StackLang.HolProg 64 :=
.seq RemovedBody685_2627 RemovedBody685_2630

def RemovedBody685_2632 : StackLang.HolProg 64 :=
.seq RemovedBody685_2626 RemovedBody685_2631

def RemovedBody685_2633 : StackLang.HolProg 64 :=
.seq RemovedBody685_2625 RemovedBody685_2632

def RemovedBody685_2634 : StackLang.HolProg 64 :=
.seq RemovedBody685_2624 RemovedBody685_2633

def RemovedBody685_2635 : StackLang.HolProg 64 :=
.seq RemovedBody685_2623 RemovedBody685_2634

def RemovedBody685_2636 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 4
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 128#64))

def RemovedBody685_2637 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 104#64))

def RemovedBody685_2638 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 3
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 96#64))

def RemovedBody685_2639 : StackLang.HolProg 64 :=
.seq RemovedBody685_2637 RemovedBody685_2638

def RemovedBody685_2640 : StackLang.HolProg 64 :=
.seq RemovedBody685_2636 RemovedBody685_2639

def RemovedBody685_2641 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def RemovedBody685_2642 : StackLang.HolProg 64 :=
.seq RemovedBody685_2640 RemovedBody685_2641

def RemovedBody685_2643 : StackLang.HolProg 64 :=
.call (some (RemovedBody685_2635, 0, 685, 60)) (Sum.inl 670) (some (RemovedBody685_2642, 685, 61))

def RemovedBody685_2644 : StackLang.HolProg 64 :=
.seq RemovedBody685_2622 RemovedBody685_2643

def RemovedBody685_2645 : StackLang.HolProg 64 :=
.seq RemovedBody685_2621 RemovedBody685_2644

def RemovedBody685_2646 : StackLang.HolProg 64 :=
.seq RemovedBody685_2620 RemovedBody685_2645

def RemovedBody685_2647 : StackLang.HolProg 64 :=
.seq RemovedBody685_2591 RemovedBody685_2646

def RemovedBody685_2648 : StackLang.HolProg 64 :=
.seq RemovedBody685_2588 RemovedBody685_2647

def RemovedBody685_2649 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody685_2650 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 1 0
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 0)))

def RemovedBody685_2651 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 2 3
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 3)))

def RemovedBody685_2652 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 4
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 128#64))

def RemovedBody685_2653 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 104#64))

def RemovedBody685_2654 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 3
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 96#64))

def RemovedBody685_2655 : StackLang.HolProg 64 :=
.seq RemovedBody685_2653 RemovedBody685_2654

def RemovedBody685_2656 : StackLang.HolProg 64 :=
.seq RemovedBody685_2652 RemovedBody685_2655

def RemovedBody685_2657 : StackLang.HolProg 64 :=
.seq RemovedBody685_2651 RemovedBody685_2656

def RemovedBody685_2658 : StackLang.HolProg 64 :=
.seq RemovedBody685_2650 RemovedBody685_2657

def RemovedBody685_2659 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody685_2660 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 2917#64)

def RemovedBody685_2661 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody685_2662 : StackLang.HolProg 64 :=
.seq RemovedBody685_2660 RemovedBody685_2661

def RemovedBody685_2663 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody685_2664 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 2#64)

def RemovedBody685_2665 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 1

def RemovedBody685_2666 : StackLang.HolProg 64 :=
.seq RemovedBody685_2664 RemovedBody685_2665

def RemovedBody685_2667 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody685_2668 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) RemovedBody685_2666 RemovedBody685_2667

def RemovedBody685_2669 : StackLang.HolProg 64 :=
.seq RemovedBody685_2663 RemovedBody685_2668

def RemovedBody685_2670 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def RemovedBody685_2671 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody685_2672 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 685 63

def RemovedBody685_2673 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody685_2674 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody685_2675 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody685_2676 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody685_2677 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def RemovedBody685_2678 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def RemovedBody685_2679 : StackLang.HolProg 64 :=
.seq RemovedBody685_2677 RemovedBody685_2678

def RemovedBody685_2680 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def RemovedBody685_2681 : StackLang.HolProg 64 :=
.seq RemovedBody685_2679 RemovedBody685_2680

def RemovedBody685_2682 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody685_2683 : StackLang.HolProg 64 :=
.seq RemovedBody685_2681 RemovedBody685_2682

def RemovedBody685_2684 : StackLang.HolProg 64 :=
.seq RemovedBody685_2676 RemovedBody685_2683

def RemovedBody685_2685 : StackLang.HolProg 64 :=
.seq RemovedBody685_2675 RemovedBody685_2684

def RemovedBody685_2686 : StackLang.HolProg 64 :=
.seq RemovedBody685_2674 RemovedBody685_2685

def RemovedBody685_2687 : StackLang.HolProg 64 :=
.seq RemovedBody685_2673 RemovedBody685_2686

def RemovedBody685_2688 : StackLang.HolProg 64 :=
.seq RemovedBody685_2672 RemovedBody685_2687

def RemovedBody685_2689 : StackLang.HolProg 64 :=
.seq RemovedBody685_2671 RemovedBody685_2688

def RemovedBody685_2690 : StackLang.HolProg 64 :=
.seq RemovedBody685_2670 RemovedBody685_2689

def RemovedBody685_2691 : StackLang.HolProg 64 :=
.seq RemovedBody685_2669 RemovedBody685_2690

def RemovedBody685_2692 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody685_2693 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody685_2694 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody685_2695 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody685_2696 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody685_2697 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody685_2698 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 104#64))

def RemovedBody685_2699 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 4
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 96#64))

def RemovedBody685_2700 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 3
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 80#64))

def RemovedBody685_2701 : StackLang.HolProg 64 :=
.seq RemovedBody685_2699 RemovedBody685_2700

def RemovedBody685_2702 : StackLang.HolProg 64 :=
.seq RemovedBody685_2698 RemovedBody685_2701

def RemovedBody685_2703 : StackLang.HolProg 64 :=
.seq RemovedBody685_2697 RemovedBody685_2702

def RemovedBody685_2704 : StackLang.HolProg 64 :=
.seq RemovedBody685_2696 RemovedBody685_2703

def RemovedBody685_2705 : StackLang.HolProg 64 :=
.seq RemovedBody685_2695 RemovedBody685_2704

def RemovedBody685_2706 : StackLang.HolProg 64 :=
.seq RemovedBody685_2694 RemovedBody685_2705

def RemovedBody685_2707 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 104#64))

def RemovedBody685_2708 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 4
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 96#64))

def RemovedBody685_2709 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 3
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 80#64))

def RemovedBody685_2710 : StackLang.HolProg 64 :=
.seq RemovedBody685_2708 RemovedBody685_2709

def RemovedBody685_2711 : StackLang.HolProg 64 :=
.seq RemovedBody685_2707 RemovedBody685_2710

def RemovedBody685_2712 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def RemovedBody685_2713 : StackLang.HolProg 64 :=
.seq RemovedBody685_2711 RemovedBody685_2712

def RemovedBody685_2714 : StackLang.HolProg 64 :=
.call (some (RemovedBody685_2706, 0, 685, 62)) (Sum.inl 673) (some (RemovedBody685_2713, 685, 63))

def RemovedBody685_2715 : StackLang.HolProg 64 :=
.seq RemovedBody685_2693 RemovedBody685_2714

def RemovedBody685_2716 : StackLang.HolProg 64 :=
.seq RemovedBody685_2692 RemovedBody685_2715

def RemovedBody685_2717 : StackLang.HolProg 64 :=
.seq RemovedBody685_2691 RemovedBody685_2716

def RemovedBody685_2718 : StackLang.HolProg 64 :=
.seq RemovedBody685_2662 RemovedBody685_2717

def RemovedBody685_2719 : StackLang.HolProg 64 :=
.seq RemovedBody685_2659 RemovedBody685_2718

def RemovedBody685_2720 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody685_2721 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 1 0
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 0)))

def RemovedBody685_2722 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 2 4
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 4)))

def RemovedBody685_2723 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 104#64))

def RemovedBody685_2724 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 4
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 96#64))

def RemovedBody685_2725 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 3
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 80#64))

def RemovedBody685_2726 : StackLang.HolProg 64 :=
.seq RemovedBody685_2724 RemovedBody685_2725

def RemovedBody685_2727 : StackLang.HolProg 64 :=
.seq RemovedBody685_2723 RemovedBody685_2726

def RemovedBody685_2728 : StackLang.HolProg 64 :=
.seq RemovedBody685_2722 RemovedBody685_2727

def RemovedBody685_2729 : StackLang.HolProg 64 :=
.seq RemovedBody685_2721 RemovedBody685_2728

def RemovedBody685_2730 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody685_2731 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 2918#64)

def RemovedBody685_2732 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody685_2733 : StackLang.HolProg 64 :=
.seq RemovedBody685_2731 RemovedBody685_2732

def RemovedBody685_2734 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody685_2735 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 2#64)

def RemovedBody685_2736 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 1

def RemovedBody685_2737 : StackLang.HolProg 64 :=
.seq RemovedBody685_2735 RemovedBody685_2736

def RemovedBody685_2738 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody685_2739 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) RemovedBody685_2737 RemovedBody685_2738

def RemovedBody685_2740 : StackLang.HolProg 64 :=
.seq RemovedBody685_2734 RemovedBody685_2739

def RemovedBody685_2741 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def RemovedBody685_2742 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody685_2743 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 685 65

def RemovedBody685_2744 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody685_2745 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody685_2746 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody685_2747 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody685_2748 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def RemovedBody685_2749 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def RemovedBody685_2750 : StackLang.HolProg 64 :=
.seq RemovedBody685_2748 RemovedBody685_2749

def RemovedBody685_2751 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def RemovedBody685_2752 : StackLang.HolProg 64 :=
.seq RemovedBody685_2750 RemovedBody685_2751

def RemovedBody685_2753 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody685_2754 : StackLang.HolProg 64 :=
.seq RemovedBody685_2752 RemovedBody685_2753

def RemovedBody685_2755 : StackLang.HolProg 64 :=
.seq RemovedBody685_2747 RemovedBody685_2754

def RemovedBody685_2756 : StackLang.HolProg 64 :=
.seq RemovedBody685_2746 RemovedBody685_2755

def RemovedBody685_2757 : StackLang.HolProg 64 :=
.seq RemovedBody685_2745 RemovedBody685_2756

def RemovedBody685_2758 : StackLang.HolProg 64 :=
.seq RemovedBody685_2744 RemovedBody685_2757

def RemovedBody685_2759 : StackLang.HolProg 64 :=
.seq RemovedBody685_2743 RemovedBody685_2758

def RemovedBody685_2760 : StackLang.HolProg 64 :=
.seq RemovedBody685_2742 RemovedBody685_2759

def RemovedBody685_2761 : StackLang.HolProg 64 :=
.seq RemovedBody685_2741 RemovedBody685_2760

def RemovedBody685_2762 : StackLang.HolProg 64 :=
.seq RemovedBody685_2740 RemovedBody685_2761

def RemovedBody685_2763 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody685_2764 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody685_2765 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody685_2766 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody685_2767 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody685_2768 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody685_2769 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 2
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 128#64))

def RemovedBody685_2770 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 120#64))

def RemovedBody685_2771 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 128#64))

def RemovedBody685_2772 : StackLang.HolProg 64 :=
.seq RemovedBody685_2770 RemovedBody685_2771

def RemovedBody685_2773 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 3
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 112#64))

def RemovedBody685_2774 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 104#64))

def RemovedBody685_2775 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 4
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 96#64))

def RemovedBody685_2776 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 88#64))

def RemovedBody685_2777 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 112#64))

def RemovedBody685_2778 : StackLang.HolProg 64 :=
.seq RemovedBody685_2776 RemovedBody685_2777

def RemovedBody685_2779 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 80#64))

def RemovedBody685_2780 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 104#64))

def RemovedBody685_2781 : StackLang.HolProg 64 :=
.seq RemovedBody685_2779 RemovedBody685_2780

def RemovedBody685_2782 : StackLang.HolProg 64 :=
.seq RemovedBody685_2778 RemovedBody685_2781

def RemovedBody685_2783 : StackLang.HolProg 64 :=
.seq RemovedBody685_2775 RemovedBody685_2782

def RemovedBody685_2784 : StackLang.HolProg 64 :=
.seq RemovedBody685_2774 RemovedBody685_2783

def RemovedBody685_2785 : StackLang.HolProg 64 :=
.seq RemovedBody685_2773 RemovedBody685_2784

def RemovedBody685_2786 : StackLang.HolProg 64 :=
.seq RemovedBody685_2772 RemovedBody685_2785

def RemovedBody685_2787 : StackLang.HolProg 64 :=
.seq RemovedBody685_2769 RemovedBody685_2786

def RemovedBody685_2788 : StackLang.HolProg 64 :=
.seq RemovedBody685_2768 RemovedBody685_2787

def RemovedBody685_2789 : StackLang.HolProg 64 :=
.seq RemovedBody685_2767 RemovedBody685_2788

def RemovedBody685_2790 : StackLang.HolProg 64 :=
.seq RemovedBody685_2766 RemovedBody685_2789

def RemovedBody685_2791 : StackLang.HolProg 64 :=
.seq RemovedBody685_2765 RemovedBody685_2790

def RemovedBody685_2792 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 2
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 128#64))

def RemovedBody685_2793 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 120#64))

def RemovedBody685_2794 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 128#64))

def RemovedBody685_2795 : StackLang.HolProg 64 :=
.seq RemovedBody685_2793 RemovedBody685_2794

def RemovedBody685_2796 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 3
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 112#64))

def RemovedBody685_2797 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 104#64))

def RemovedBody685_2798 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 4
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 96#64))

def RemovedBody685_2799 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 88#64))

def RemovedBody685_2800 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 112#64))

def RemovedBody685_2801 : StackLang.HolProg 64 :=
.seq RemovedBody685_2799 RemovedBody685_2800

def RemovedBody685_2802 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 80#64))

def RemovedBody685_2803 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 104#64))

def RemovedBody685_2804 : StackLang.HolProg 64 :=
.seq RemovedBody685_2802 RemovedBody685_2803

def RemovedBody685_2805 : StackLang.HolProg 64 :=
.seq RemovedBody685_2801 RemovedBody685_2804

def RemovedBody685_2806 : StackLang.HolProg 64 :=
.seq RemovedBody685_2798 RemovedBody685_2805

def RemovedBody685_2807 : StackLang.HolProg 64 :=
.seq RemovedBody685_2797 RemovedBody685_2806

def RemovedBody685_2808 : StackLang.HolProg 64 :=
.seq RemovedBody685_2796 RemovedBody685_2807

def RemovedBody685_2809 : StackLang.HolProg 64 :=
.seq RemovedBody685_2795 RemovedBody685_2808

def RemovedBody685_2810 : StackLang.HolProg 64 :=
.seq RemovedBody685_2792 RemovedBody685_2809

def RemovedBody685_2811 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def RemovedBody685_2812 : StackLang.HolProg 64 :=
.seq RemovedBody685_2810 RemovedBody685_2811

def RemovedBody685_2813 : StackLang.HolProg 64 :=
.call (some (RemovedBody685_2791, 0, 685, 64)) (Sum.inl 670) (some (RemovedBody685_2812, 685, 65))

def RemovedBody685_2814 : StackLang.HolProg 64 :=
.seq RemovedBody685_2764 RemovedBody685_2813

def RemovedBody685_2815 : StackLang.HolProg 64 :=
.seq RemovedBody685_2763 RemovedBody685_2814

def RemovedBody685_2816 : StackLang.HolProg 64 :=
.seq RemovedBody685_2762 RemovedBody685_2815

def RemovedBody685_2817 : StackLang.HolProg 64 :=
.seq RemovedBody685_2733 RemovedBody685_2816

def RemovedBody685_2818 : StackLang.HolProg 64 :=
.seq RemovedBody685_2730 RemovedBody685_2817

def RemovedBody685_2819 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody685_2820 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 1 0
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 0)))

def RemovedBody685_2821 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 120#64))

def RemovedBody685_2822 : StackLang.HolProg 64 :=
.seq RemovedBody685_2820 RemovedBody685_2821

def RemovedBody685_2823 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody685_2824 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 2919#64)

def RemovedBody685_2825 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody685_2826 : StackLang.HolProg 64 :=
.seq RemovedBody685_2824 RemovedBody685_2825

def RemovedBody685_2827 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody685_2828 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 2#64)

def RemovedBody685_2829 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 1

def RemovedBody685_2830 : StackLang.HolProg 64 :=
.seq RemovedBody685_2828 RemovedBody685_2829

def RemovedBody685_2831 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody685_2832 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) RemovedBody685_2830 RemovedBody685_2831

def RemovedBody685_2833 : StackLang.HolProg 64 :=
.seq RemovedBody685_2827 RemovedBody685_2832

def RemovedBody685_2834 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def RemovedBody685_2835 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody685_2836 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 685 67

def RemovedBody685_2837 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody685_2838 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody685_2839 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody685_2840 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody685_2841 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def RemovedBody685_2842 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def RemovedBody685_2843 : StackLang.HolProg 64 :=
.seq RemovedBody685_2841 RemovedBody685_2842

def RemovedBody685_2844 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def RemovedBody685_2845 : StackLang.HolProg 64 :=
.seq RemovedBody685_2843 RemovedBody685_2844

def RemovedBody685_2846 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody685_2847 : StackLang.HolProg 64 :=
.seq RemovedBody685_2845 RemovedBody685_2846

def RemovedBody685_2848 : StackLang.HolProg 64 :=
.seq RemovedBody685_2840 RemovedBody685_2847

def RemovedBody685_2849 : StackLang.HolProg 64 :=
.seq RemovedBody685_2839 RemovedBody685_2848

def RemovedBody685_2850 : StackLang.HolProg 64 :=
.seq RemovedBody685_2838 RemovedBody685_2849

def RemovedBody685_2851 : StackLang.HolProg 64 :=
.seq RemovedBody685_2837 RemovedBody685_2850

def RemovedBody685_2852 : StackLang.HolProg 64 :=
.seq RemovedBody685_2836 RemovedBody685_2851

def RemovedBody685_2853 : StackLang.HolProg 64 :=
.seq RemovedBody685_2835 RemovedBody685_2852

def RemovedBody685_2854 : StackLang.HolProg 64 :=
.seq RemovedBody685_2834 RemovedBody685_2853

def RemovedBody685_2855 : StackLang.HolProg 64 :=
.seq RemovedBody685_2833 RemovedBody685_2854

def RemovedBody685_2856 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody685_2857 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody685_2858 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody685_2859 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody685_2860 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody685_2861 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody685_2862 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 4
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 128#64))

def RemovedBody685_2863 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 120#64))

def RemovedBody685_2864 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 2
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 112#64))

def RemovedBody685_2865 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 3
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 104#64))

def RemovedBody685_2866 : StackLang.HolProg 64 :=
.seq RemovedBody685_2864 RemovedBody685_2865

def RemovedBody685_2867 : StackLang.HolProg 64 :=
.seq RemovedBody685_2863 RemovedBody685_2866

def RemovedBody685_2868 : StackLang.HolProg 64 :=
.seq RemovedBody685_2862 RemovedBody685_2867

def RemovedBody685_2869 : StackLang.HolProg 64 :=
.seq RemovedBody685_2861 RemovedBody685_2868

def RemovedBody685_2870 : StackLang.HolProg 64 :=
.seq RemovedBody685_2860 RemovedBody685_2869

def RemovedBody685_2871 : StackLang.HolProg 64 :=
.seq RemovedBody685_2859 RemovedBody685_2870

def RemovedBody685_2872 : StackLang.HolProg 64 :=
.seq RemovedBody685_2858 RemovedBody685_2871

def RemovedBody685_2873 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 4
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 128#64))

def RemovedBody685_2874 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 120#64))

def RemovedBody685_2875 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 2
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 112#64))

def RemovedBody685_2876 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 3
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 104#64))

def RemovedBody685_2877 : StackLang.HolProg 64 :=
.seq RemovedBody685_2875 RemovedBody685_2876

def RemovedBody685_2878 : StackLang.HolProg 64 :=
.seq RemovedBody685_2874 RemovedBody685_2877

def RemovedBody685_2879 : StackLang.HolProg 64 :=
.seq RemovedBody685_2873 RemovedBody685_2878

def RemovedBody685_2880 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def RemovedBody685_2881 : StackLang.HolProg 64 :=
.seq RemovedBody685_2879 RemovedBody685_2880

def RemovedBody685_2882 : StackLang.HolProg 64 :=
.call (some (RemovedBody685_2872, 0, 685, 66)) (Sum.inl 673) (some (RemovedBody685_2881, 685, 67))

def RemovedBody685_2883 : StackLang.HolProg 64 :=
.seq RemovedBody685_2857 RemovedBody685_2882

def RemovedBody685_2884 : StackLang.HolProg 64 :=
.seq RemovedBody685_2856 RemovedBody685_2883

def RemovedBody685_2885 : StackLang.HolProg 64 :=
.seq RemovedBody685_2855 RemovedBody685_2884

def RemovedBody685_2886 : StackLang.HolProg 64 :=
.seq RemovedBody685_2826 RemovedBody685_2885

def RemovedBody685_2887 : StackLang.HolProg 64 :=
.seq RemovedBody685_2823 RemovedBody685_2886

def RemovedBody685_2888 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody685_2889 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 1 0
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 0)))

def RemovedBody685_2890 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 128#64))

def RemovedBody685_2891 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 2
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 120#64))

def RemovedBody685_2892 : StackLang.HolProg 64 :=
.seq RemovedBody685_2890 RemovedBody685_2891

def RemovedBody685_2893 : StackLang.HolProg 64 :=
.seq RemovedBody685_2889 RemovedBody685_2892

def RemovedBody685_2894 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody685_2895 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 2920#64)

def RemovedBody685_2896 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody685_2897 : StackLang.HolProg 64 :=
.seq RemovedBody685_2895 RemovedBody685_2896

def RemovedBody685_2898 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody685_2899 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 2#64)

def RemovedBody685_2900 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 1

def RemovedBody685_2901 : StackLang.HolProg 64 :=
.seq RemovedBody685_2899 RemovedBody685_2900

def RemovedBody685_2902 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody685_2903 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) RemovedBody685_2901 RemovedBody685_2902

def RemovedBody685_2904 : StackLang.HolProg 64 :=
.seq RemovedBody685_2898 RemovedBody685_2903

def RemovedBody685_2905 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def RemovedBody685_2906 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody685_2907 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 685 69

def RemovedBody685_2908 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody685_2909 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody685_2910 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody685_2911 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody685_2912 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def RemovedBody685_2913 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def RemovedBody685_2914 : StackLang.HolProg 64 :=
.seq RemovedBody685_2912 RemovedBody685_2913

def RemovedBody685_2915 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def RemovedBody685_2916 : StackLang.HolProg 64 :=
.seq RemovedBody685_2914 RemovedBody685_2915

def RemovedBody685_2917 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody685_2918 : StackLang.HolProg 64 :=
.seq RemovedBody685_2916 RemovedBody685_2917

def RemovedBody685_2919 : StackLang.HolProg 64 :=
.seq RemovedBody685_2911 RemovedBody685_2918

def RemovedBody685_2920 : StackLang.HolProg 64 :=
.seq RemovedBody685_2910 RemovedBody685_2919

def RemovedBody685_2921 : StackLang.HolProg 64 :=
.seq RemovedBody685_2909 RemovedBody685_2920

def RemovedBody685_2922 : StackLang.HolProg 64 :=
.seq RemovedBody685_2908 RemovedBody685_2921

def RemovedBody685_2923 : StackLang.HolProg 64 :=
.seq RemovedBody685_2907 RemovedBody685_2922

def RemovedBody685_2924 : StackLang.HolProg 64 :=
.seq RemovedBody685_2906 RemovedBody685_2923

def RemovedBody685_2925 : StackLang.HolProg 64 :=
.seq RemovedBody685_2905 RemovedBody685_2924

def RemovedBody685_2926 : StackLang.HolProg 64 :=
.seq RemovedBody685_2904 RemovedBody685_2925

def RemovedBody685_2927 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody685_2928 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody685_2929 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody685_2930 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody685_2931 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody685_2932 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody685_2933 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 4
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 136#64))

def RemovedBody685_2934 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 128#64))

def RemovedBody685_2935 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 3
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 120#64))

def RemovedBody685_2936 : StackLang.HolProg 64 :=
.seq RemovedBody685_2934 RemovedBody685_2935

def RemovedBody685_2937 : StackLang.HolProg 64 :=
.seq RemovedBody685_2933 RemovedBody685_2936

def RemovedBody685_2938 : StackLang.HolProg 64 :=
.seq RemovedBody685_2932 RemovedBody685_2937

def RemovedBody685_2939 : StackLang.HolProg 64 :=
.seq RemovedBody685_2931 RemovedBody685_2938

def RemovedBody685_2940 : StackLang.HolProg 64 :=
.seq RemovedBody685_2930 RemovedBody685_2939

def RemovedBody685_2941 : StackLang.HolProg 64 :=
.seq RemovedBody685_2929 RemovedBody685_2940

def RemovedBody685_2942 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 4
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 136#64))

def RemovedBody685_2943 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 128#64))

def RemovedBody685_2944 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 3
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 120#64))

def RemovedBody685_2945 : StackLang.HolProg 64 :=
.seq RemovedBody685_2943 RemovedBody685_2944

def RemovedBody685_2946 : StackLang.HolProg 64 :=
.seq RemovedBody685_2942 RemovedBody685_2945

def RemovedBody685_2947 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def RemovedBody685_2948 : StackLang.HolProg 64 :=
.seq RemovedBody685_2946 RemovedBody685_2947

def RemovedBody685_2949 : StackLang.HolProg 64 :=
.call (some (RemovedBody685_2941, 0, 685, 68)) (Sum.inl 670) (some (RemovedBody685_2948, 685, 69))

def RemovedBody685_2950 : StackLang.HolProg 64 :=
.seq RemovedBody685_2928 RemovedBody685_2949

def RemovedBody685_2951 : StackLang.HolProg 64 :=
.seq RemovedBody685_2927 RemovedBody685_2950

def RemovedBody685_2952 : StackLang.HolProg 64 :=
.seq RemovedBody685_2926 RemovedBody685_2951

def RemovedBody685_2953 : StackLang.HolProg 64 :=
.seq RemovedBody685_2897 RemovedBody685_2952

def RemovedBody685_2954 : StackLang.HolProg 64 :=
.seq RemovedBody685_2894 RemovedBody685_2953

def RemovedBody685_2955 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody685_2956 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 1 0
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 0)))

def RemovedBody685_2957 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 2 3
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 3)))

def RemovedBody685_2958 : StackLang.HolProg 64 :=
.seq RemovedBody685_2956 RemovedBody685_2957

def RemovedBody685_2959 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody685_2960 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 2921#64)

def RemovedBody685_2961 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody685_2962 : StackLang.HolProg 64 :=
.seq RemovedBody685_2960 RemovedBody685_2961

def RemovedBody685_2963 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody685_2964 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 2#64)

def RemovedBody685_2965 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 1

def RemovedBody685_2966 : StackLang.HolProg 64 :=
.seq RemovedBody685_2964 RemovedBody685_2965

def RemovedBody685_2967 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody685_2968 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) RemovedBody685_2966 RemovedBody685_2967

def RemovedBody685_2969 : StackLang.HolProg 64 :=
.seq RemovedBody685_2963 RemovedBody685_2968

def RemovedBody685_2970 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def RemovedBody685_2971 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody685_2972 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 685 71

def RemovedBody685_2973 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody685_2974 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody685_2975 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody685_2976 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody685_2977 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def RemovedBody685_2978 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def RemovedBody685_2979 : StackLang.HolProg 64 :=
.seq RemovedBody685_2977 RemovedBody685_2978

def RemovedBody685_2980 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def RemovedBody685_2981 : StackLang.HolProg 64 :=
.seq RemovedBody685_2979 RemovedBody685_2980

def RemovedBody685_2982 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody685_2983 : StackLang.HolProg 64 :=
.seq RemovedBody685_2981 RemovedBody685_2982

def RemovedBody685_2984 : StackLang.HolProg 64 :=
.seq RemovedBody685_2976 RemovedBody685_2983

def RemovedBody685_2985 : StackLang.HolProg 64 :=
.seq RemovedBody685_2975 RemovedBody685_2984

def RemovedBody685_2986 : StackLang.HolProg 64 :=
.seq RemovedBody685_2974 RemovedBody685_2985

def RemovedBody685_2987 : StackLang.HolProg 64 :=
.seq RemovedBody685_2973 RemovedBody685_2986

def RemovedBody685_2988 : StackLang.HolProg 64 :=
.seq RemovedBody685_2972 RemovedBody685_2987

def RemovedBody685_2989 : StackLang.HolProg 64 :=
.seq RemovedBody685_2971 RemovedBody685_2988

def RemovedBody685_2990 : StackLang.HolProg 64 :=
.seq RemovedBody685_2970 RemovedBody685_2989

def RemovedBody685_2991 : StackLang.HolProg 64 :=
.seq RemovedBody685_2969 RemovedBody685_2990

def RemovedBody685_2992 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody685_2993 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody685_2994 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody685_2995 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody685_2996 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody685_2997 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody685_2998 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 144#64))

def RemovedBody685_2999 : StackLang.HolProg 64 :=
.seq RemovedBody685_2997 RemovedBody685_2998

def RemovedBody685_3000 : StackLang.HolProg 64 :=
.seq RemovedBody685_2996 RemovedBody685_2999

def RemovedBody685_3001 : StackLang.HolProg 64 :=
.seq RemovedBody685_2995 RemovedBody685_3000

def RemovedBody685_3002 : StackLang.HolProg 64 :=
.seq RemovedBody685_2994 RemovedBody685_3001

def RemovedBody685_3003 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 144#64))

def RemovedBody685_3004 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def RemovedBody685_3005 : StackLang.HolProg 64 :=
.seq RemovedBody685_3003 RemovedBody685_3004

def RemovedBody685_3006 : StackLang.HolProg 64 :=
.call (some (RemovedBody685_3002, 0, 685, 70)) (Sum.inl 670) (some (RemovedBody685_3005, 685, 71))

def RemovedBody685_3007 : StackLang.HolProg 64 :=
.seq RemovedBody685_2993 RemovedBody685_3006

def RemovedBody685_3008 : StackLang.HolProg 64 :=
.seq RemovedBody685_2992 RemovedBody685_3007

def RemovedBody685_3009 : StackLang.HolProg 64 :=
.seq RemovedBody685_2991 RemovedBody685_3008

def RemovedBody685_3010 : StackLang.HolProg 64 :=
.seq RemovedBody685_2962 RemovedBody685_3009

def RemovedBody685_3011 : StackLang.HolProg 64 :=
.seq RemovedBody685_2959 RemovedBody685_3010

def RemovedBody685_3012 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody685_3013 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 1 0
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 0)))

def RemovedBody685_3014 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody685_3015 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 2922#64)

def RemovedBody685_3016 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody685_3017 : StackLang.HolProg 64 :=
.seq RemovedBody685_3015 RemovedBody685_3016

def RemovedBody685_3018 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody685_3019 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 2#64)

def RemovedBody685_3020 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 1

def RemovedBody685_3021 : StackLang.HolProg 64 :=
.seq RemovedBody685_3019 RemovedBody685_3020

def RemovedBody685_3022 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody685_3023 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) RemovedBody685_3021 RemovedBody685_3022

def RemovedBody685_3024 : StackLang.HolProg 64 :=
.seq RemovedBody685_3018 RemovedBody685_3023

def RemovedBody685_3025 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def RemovedBody685_3026 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody685_3027 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 685 73

def RemovedBody685_3028 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody685_3029 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody685_3030 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody685_3031 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody685_3032 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def RemovedBody685_3033 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def RemovedBody685_3034 : StackLang.HolProg 64 :=
.seq RemovedBody685_3032 RemovedBody685_3033

def RemovedBody685_3035 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def RemovedBody685_3036 : StackLang.HolProg 64 :=
.seq RemovedBody685_3034 RemovedBody685_3035

def RemovedBody685_3037 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody685_3038 : StackLang.HolProg 64 :=
.seq RemovedBody685_3036 RemovedBody685_3037

def RemovedBody685_3039 : StackLang.HolProg 64 :=
.seq RemovedBody685_3031 RemovedBody685_3038

def RemovedBody685_3040 : StackLang.HolProg 64 :=
.seq RemovedBody685_3030 RemovedBody685_3039

def RemovedBody685_3041 : StackLang.HolProg 64 :=
.seq RemovedBody685_3029 RemovedBody685_3040

def RemovedBody685_3042 : StackLang.HolProg 64 :=
.seq RemovedBody685_3028 RemovedBody685_3041

def RemovedBody685_3043 : StackLang.HolProg 64 :=
.seq RemovedBody685_3027 RemovedBody685_3042

def RemovedBody685_3044 : StackLang.HolProg 64 :=
.seq RemovedBody685_3026 RemovedBody685_3043

def RemovedBody685_3045 : StackLang.HolProg 64 :=
.seq RemovedBody685_3025 RemovedBody685_3044

def RemovedBody685_3046 : StackLang.HolProg 64 :=
.seq RemovedBody685_3024 RemovedBody685_3045

def RemovedBody685_3047 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody685_3048 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody685_3049 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody685_3050 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody685_3051 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody685_3052 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody685_3053 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 152#64))

def RemovedBody685_3054 : StackLang.HolProg 64 :=
.seq RemovedBody685_3052 RemovedBody685_3053

def RemovedBody685_3055 : StackLang.HolProg 64 :=
.seq RemovedBody685_3051 RemovedBody685_3054

def RemovedBody685_3056 : StackLang.HolProg 64 :=
.seq RemovedBody685_3050 RemovedBody685_3055

def RemovedBody685_3057 : StackLang.HolProg 64 :=
.seq RemovedBody685_3049 RemovedBody685_3056

def RemovedBody685_3058 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 152#64))

def RemovedBody685_3059 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def RemovedBody685_3060 : StackLang.HolProg 64 :=
.seq RemovedBody685_3058 RemovedBody685_3059

def RemovedBody685_3061 : StackLang.HolProg 64 :=
.call (some (RemovedBody685_3057, 0, 685, 72)) (Sum.inl 70) (some (RemovedBody685_3060, 685, 73))

def RemovedBody685_3062 : StackLang.HolProg 64 :=
.seq RemovedBody685_3048 RemovedBody685_3061

def RemovedBody685_3063 : StackLang.HolProg 64 :=
.seq RemovedBody685_3047 RemovedBody685_3062

def RemovedBody685_3064 : StackLang.HolProg 64 :=
.seq RemovedBody685_3046 RemovedBody685_3063

def RemovedBody685_3065 : StackLang.HolProg 64 :=
.seq RemovedBody685_3017 RemovedBody685_3064

def RemovedBody685_3066 : StackLang.HolProg 64 :=
.seq RemovedBody685_3014 RemovedBody685_3065

def RemovedBody685_3067 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody685_3068 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 0#64)

def RemovedBody685_3069 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody685_3070 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 160#64)))

def RemovedBody685_3071 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 0

def RemovedBody685_3072 : StackLang.HolProg 64 :=
.seq RemovedBody685_3070 RemovedBody685_3071

def RemovedBody685_3073 : StackLang.HolProg 64 :=
.seq RemovedBody685_3069 RemovedBody685_3072

def RemovedBody685_3074 : StackLang.HolProg 64 :=
.seq RemovedBody685_3068 RemovedBody685_3073

def RemovedBody685_3075 : StackLang.HolProg 64 :=
.seq RemovedBody685_3067 RemovedBody685_3074

def RemovedBody685_3076 : StackLang.HolProg 64 :=
.seq RemovedBody685_3066 RemovedBody685_3075

def RemovedBody685_3077 : StackLang.HolProg 64 :=
.seq RemovedBody685_3013 RemovedBody685_3076

def RemovedBody685_3078 : StackLang.HolProg 64 :=
.seq RemovedBody685_3012 RemovedBody685_3077

def RemovedBody685_3079 : StackLang.HolProg 64 :=
.seq RemovedBody685_3011 RemovedBody685_3078

def RemovedBody685_3080 : StackLang.HolProg 64 :=
.seq RemovedBody685_2958 RemovedBody685_3079

def RemovedBody685_3081 : StackLang.HolProg 64 :=
.seq RemovedBody685_2955 RemovedBody685_3080

def RemovedBody685_3082 : StackLang.HolProg 64 :=
.seq RemovedBody685_2954 RemovedBody685_3081

def RemovedBody685_3083 : StackLang.HolProg 64 :=
.seq RemovedBody685_2893 RemovedBody685_3082

def RemovedBody685_3084 : StackLang.HolProg 64 :=
.seq RemovedBody685_2888 RemovedBody685_3083

def RemovedBody685_3085 : StackLang.HolProg 64 :=
.seq RemovedBody685_2887 RemovedBody685_3084

def RemovedBody685_3086 : StackLang.HolProg 64 :=
.seq RemovedBody685_2822 RemovedBody685_3085

def RemovedBody685_3087 : StackLang.HolProg 64 :=
.seq RemovedBody685_2819 RemovedBody685_3086

def RemovedBody685_3088 : StackLang.HolProg 64 :=
.seq RemovedBody685_2818 RemovedBody685_3087

def RemovedBody685_3089 : StackLang.HolProg 64 :=
.seq RemovedBody685_2729 RemovedBody685_3088

def RemovedBody685_3090 : StackLang.HolProg 64 :=
.seq RemovedBody685_2720 RemovedBody685_3089

def RemovedBody685_3091 : StackLang.HolProg 64 :=
.seq RemovedBody685_2719 RemovedBody685_3090

def RemovedBody685_3092 : StackLang.HolProg 64 :=
.seq RemovedBody685_2658 RemovedBody685_3091

def RemovedBody685_3093 : StackLang.HolProg 64 :=
.seq RemovedBody685_2649 RemovedBody685_3092

def RemovedBody685_3094 : StackLang.HolProg 64 :=
.seq RemovedBody685_2648 RemovedBody685_3093

def RemovedBody685_3095 : StackLang.HolProg 64 :=
.seq RemovedBody685_2587 RemovedBody685_3094

def RemovedBody685_3096 : StackLang.HolProg 64 :=
.seq RemovedBody685_2580 RemovedBody685_3095

def RemovedBody685_3097 : StackLang.HolProg 64 :=
.seq RemovedBody685_2579 RemovedBody685_3096

def RemovedBody685_3098 : StackLang.HolProg 64 :=
.seq RemovedBody685_2490 RemovedBody685_3097

def RemovedBody685_3099 : StackLang.HolProg 64 :=
.seq RemovedBody685_2483 RemovedBody685_3098

def RemovedBody685_3100 : StackLang.HolProg 64 :=
.seq RemovedBody685_2482 RemovedBody685_3099

def RemovedBody685_3101 : StackLang.HolProg 64 :=
.seq RemovedBody685_2409 RemovedBody685_3100

def RemovedBody685_3102 : StackLang.HolProg 64 :=
.seq RemovedBody685_2402 RemovedBody685_3101

def RemovedBody685_3103 : StackLang.HolProg 64 :=
.seq RemovedBody685_2401 RemovedBody685_3102

def RemovedBody685_3104 : StackLang.HolProg 64 :=
.seq RemovedBody685_2316 RemovedBody685_3103

def RemovedBody685_3105 : StackLang.HolProg 64 :=
.seq RemovedBody685_2307 RemovedBody685_3104

def RemovedBody685_3106 : StackLang.HolProg 64 :=
.seq RemovedBody685_2306 RemovedBody685_3105

def RemovedBody685_3107 : StackLang.HolProg 64 :=
.seq RemovedBody685_2245 RemovedBody685_3106

def RemovedBody685_3108 : StackLang.HolProg 64 :=
.seq RemovedBody685_2238 RemovedBody685_3107

def RemovedBody685_3109 : StackLang.HolProg 64 :=
.seq RemovedBody685_2237 RemovedBody685_3108

def RemovedBody685_3110 : StackLang.HolProg 64 :=
.seq RemovedBody685_2156 RemovedBody685_3109

def RemovedBody685_3111 : StackLang.HolProg 64 :=
.seq RemovedBody685_2149 RemovedBody685_3110

def RemovedBody685_3112 : StackLang.HolProg 64 :=
.seq RemovedBody685_2148 RemovedBody685_3111

def RemovedBody685_3113 : StackLang.HolProg 64 :=
.seq RemovedBody685_1241 RemovedBody685_3112

def RemovedBody685_3114 : StackLang.HolProg 64 :=
.seq RemovedBody685_1240 RemovedBody685_3113

def RemovedBody685_3115 : StackLang.HolProg 64 :=
.seq RemovedBody685_1239 RemovedBody685_3114

def RemovedBody685_3116 : StackLang.HolProg 64 :=
.seq RemovedBody685_1238 RemovedBody685_3115

def RemovedBody685_3117 : StackLang.HolProg 64 :=
.seq RemovedBody685_1135 RemovedBody685_3116

def RemovedBody685_3118 : StackLang.HolProg 64 :=
.seq RemovedBody685_1130 RemovedBody685_3117

def RemovedBody685_3119 : StackLang.HolProg 64 :=
.seq RemovedBody685_1129 RemovedBody685_3118

def RemovedBody685_3120 : StackLang.HolProg 64 :=
.seq RemovedBody685_472 RemovedBody685_3119

def RemovedBody685_3121 : StackLang.HolProg 64 :=
.seq RemovedBody685_471 RemovedBody685_3120

def RemovedBody685_3122 : StackLang.HolProg 64 :=
.seq RemovedBody685_470 RemovedBody685_3121

def RemovedBody685_3123 : StackLang.HolProg 64 :=
.seq RemovedBody685_311 RemovedBody685_3122

def RemovedBody685_3124 : StackLang.HolProg 64 :=
.seq RemovedBody685_308 RemovedBody685_3123

def RemovedBody685_3125 : StackLang.HolProg 64 :=
.seq RemovedBody685_307 RemovedBody685_3124

def RemovedBody685_3126 : StackLang.HolProg 64 :=
.seq RemovedBody685_252 RemovedBody685_3125

def RemovedBody685_3127 : StackLang.HolProg 64 :=
.seq RemovedBody685_247 RemovedBody685_3126

def RemovedBody685_3128 : StackLang.HolProg 64 :=
.seq RemovedBody685_246 RemovedBody685_3127

def RemovedBody685_3129 : StackLang.HolProg 64 :=
.seq RemovedBody685_191 RemovedBody685_3128

def RemovedBody685_3130 : StackLang.HolProg 64 :=
.seq RemovedBody685_186 RemovedBody685_3129

def RemovedBody685_3131 : StackLang.HolProg 64 :=
.seq RemovedBody685_185 RemovedBody685_3130

def RemovedBody685_3132 : StackLang.HolProg 64 :=
.seq RemovedBody685_130 RemovedBody685_3131

def RemovedBody685_3133 : StackLang.HolProg 64 :=
.seq RemovedBody685_105 RemovedBody685_3132

def RemovedBody685_3134 : StackLang.HolProg 64 :=
.seq RemovedBody685_104 RemovedBody685_3133

def RemovedBody685_3135 : StackLang.HolProg 64 :=
.seq RemovedBody685_103 RemovedBody685_3134

def RemovedBody685_3136 : StackLang.HolProg 64 :=
.seq RemovedBody685_102 RemovedBody685_3135

def RemovedBody685_3137 : StackLang.HolProg 64 :=
.seq RemovedBody685_101 RemovedBody685_3136

def RemovedBody685_3138 : StackLang.HolProg 64 :=
.seq RemovedBody685_100 RemovedBody685_3137

def RemovedBody685_3139 : StackLang.HolProg 64 :=
.seq RemovedBody685_99 RemovedBody685_3138

def RemovedBody685_3140 : StackLang.HolProg 64 :=
.seq RemovedBody685_98 RemovedBody685_3139

def RemovedBody685_3141 : StackLang.HolProg 64 :=
.seq RemovedBody685_97 RemovedBody685_3140

def RemovedBody685_3142 : StackLang.HolProg 64 :=
.seq RemovedBody685_96 RemovedBody685_3141

def RemovedBody685_3143 : StackLang.HolProg 64 :=
.seq RemovedBody685_95 RemovedBody685_3142

def RemovedBody685_3144 : StackLang.HolProg 64 :=
.seq RemovedBody685_94 RemovedBody685_3143

def RemovedBody685_3145 : StackLang.HolProg 64 :=
.seq RemovedBody685_93 RemovedBody685_3144

def RemovedBody685_3146 : StackLang.HolProg 64 :=
.seq RemovedBody685_92 RemovedBody685_3145

def RemovedBody685_3147 : StackLang.HolProg 64 :=
.seq RemovedBody685_91 RemovedBody685_3146

def RemovedBody685_3148 : StackLang.HolProg 64 :=
.seq RemovedBody685_90 RemovedBody685_3147

def RemovedBody685_3149 : StackLang.HolProg 64 :=
.seq RemovedBody685_23 RemovedBody685_3148

def RemovedBody685_3150 : StackLang.HolProg 64 :=
.seq RemovedBody685_8 RemovedBody685_3149

def RemovedBody685_3151 : StackLang.HolProg 64 :=
.seq RemovedBody685_7 RemovedBody685_3150

def RemovedBody685_3152 : StackLang.HolProg 64 :=
.seq RemovedBody685_6 RemovedBody685_3151

def Removed685 : Nat × StackLang.HolProg 64 := (685, RemovedBody685_3152)
theorem Removed685_eq : StackRemove.progComp false riscvConfig.addrOffset (riscvConfig.regCount - (riscvConfig.avoidRegs.length + 3)) Alloc685 = Removed685 := by
  kernel_rfl
#print axioms Removed685_eq
end InitECandidate.Proofs.BackendStages
