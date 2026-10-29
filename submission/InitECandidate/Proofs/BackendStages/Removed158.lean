import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.BackendStages.Alloc158
import Flapjack.Compiler.Backend.Backend
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
namespace InitECandidate.Proofs.BackendStages
def RemovedBody158_0 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 56#64)))

def RemovedBody158_1 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 2#64)

def RemovedBody158_2 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 1

def RemovedBody158_3 : StackLang.HolProg 64 :=
.seq RemovedBody158_1 RemovedBody158_2

def RemovedBody158_4 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody158_5 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) RemovedBody158_3 RemovedBody158_4

def RemovedBody158_6 : StackLang.HolProg 64 :=
.seq RemovedBody158_0 RemovedBody158_5

def RemovedBody158_7 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 5 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def RemovedBody158_8 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 4 2
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 2)))

def RemovedBody158_9 : StackLang.HolProg 64 :=
.seq RemovedBody158_7 RemovedBody158_8

def RemovedBody158_10 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551592#64))

def RemovedBody158_11 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsl 1 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 1#64)))

def RemovedBody158_12 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 1 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 26)))

def RemovedBody158_13 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 1 18446744073709551544#64))

def RemovedBody158_14 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody158_15 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 2 200#64)

def RemovedBody158_16 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 48#64))

def RemovedBody158_17 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 4
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 40#64))

def RemovedBody158_18 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 5
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 32#64))

def RemovedBody158_19 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 24#64))

def RemovedBody158_20 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 3
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody158_21 : StackLang.HolProg 64 :=
.seq RemovedBody158_19 RemovedBody158_20

def RemovedBody158_22 : StackLang.HolProg 64 :=
.seq RemovedBody158_18 RemovedBody158_21

def RemovedBody158_23 : StackLang.HolProg 64 :=
.seq RemovedBody158_17 RemovedBody158_22

def RemovedBody158_24 : StackLang.HolProg 64 :=
.seq RemovedBody158_16 RemovedBody158_23

def RemovedBody158_25 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody158_26 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 141#64)

def RemovedBody158_27 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody158_28 : StackLang.HolProg 64 :=
.seq RemovedBody158_26 RemovedBody158_27

def RemovedBody158_29 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody158_30 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 2#64)

def RemovedBody158_31 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 1

def RemovedBody158_32 : StackLang.HolProg 64 :=
.seq RemovedBody158_30 RemovedBody158_31

def RemovedBody158_33 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody158_34 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) RemovedBody158_32 RemovedBody158_33

def RemovedBody158_35 : StackLang.HolProg 64 :=
.seq RemovedBody158_29 RemovedBody158_34

def RemovedBody158_36 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def RemovedBody158_37 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody158_38 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 158 3

def RemovedBody158_39 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody158_40 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody158_41 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody158_42 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody158_43 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def RemovedBody158_44 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def RemovedBody158_45 : StackLang.HolProg 64 :=
.seq RemovedBody158_43 RemovedBody158_44

def RemovedBody158_46 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def RemovedBody158_47 : StackLang.HolProg 64 :=
.seq RemovedBody158_45 RemovedBody158_46

def RemovedBody158_48 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody158_49 : StackLang.HolProg 64 :=
.seq RemovedBody158_47 RemovedBody158_48

def RemovedBody158_50 : StackLang.HolProg 64 :=
.seq RemovedBody158_42 RemovedBody158_49

def RemovedBody158_51 : StackLang.HolProg 64 :=
.seq RemovedBody158_41 RemovedBody158_50

def RemovedBody158_52 : StackLang.HolProg 64 :=
.seq RemovedBody158_40 RemovedBody158_51

def RemovedBody158_53 : StackLang.HolProg 64 :=
.seq RemovedBody158_39 RemovedBody158_52

def RemovedBody158_54 : StackLang.HolProg 64 :=
.seq RemovedBody158_38 RemovedBody158_53

def RemovedBody158_55 : StackLang.HolProg 64 :=
.seq RemovedBody158_37 RemovedBody158_54

def RemovedBody158_56 : StackLang.HolProg 64 :=
.seq RemovedBody158_36 RemovedBody158_55

def RemovedBody158_57 : StackLang.HolProg 64 :=
.seq RemovedBody158_35 RemovedBody158_56

def RemovedBody158_58 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody158_59 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody158_60 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody158_61 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody158_62 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody158_63 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody158_64 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 3
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 40#64))

def RemovedBody158_65 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 2
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 32#64))

def RemovedBody158_66 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 4
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 24#64))

def RemovedBody158_67 : StackLang.HolProg 64 :=
.seq RemovedBody158_65 RemovedBody158_66

def RemovedBody158_68 : StackLang.HolProg 64 :=
.seq RemovedBody158_64 RemovedBody158_67

def RemovedBody158_69 : StackLang.HolProg 64 :=
.seq RemovedBody158_63 RemovedBody158_68

def RemovedBody158_70 : StackLang.HolProg 64 :=
.seq RemovedBody158_62 RemovedBody158_69

def RemovedBody158_71 : StackLang.HolProg 64 :=
.seq RemovedBody158_61 RemovedBody158_70

def RemovedBody158_72 : StackLang.HolProg 64 :=
.seq RemovedBody158_60 RemovedBody158_71

def RemovedBody158_73 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 3
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 40#64))

def RemovedBody158_74 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 2
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 32#64))

def RemovedBody158_75 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 4
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 24#64))

def RemovedBody158_76 : StackLang.HolProg 64 :=
.seq RemovedBody158_74 RemovedBody158_75

def RemovedBody158_77 : StackLang.HolProg 64 :=
.seq RemovedBody158_73 RemovedBody158_76

def RemovedBody158_78 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def RemovedBody158_79 : StackLang.HolProg 64 :=
.seq RemovedBody158_77 RemovedBody158_78

def RemovedBody158_80 : StackLang.HolProg 64 :=
.call (some (RemovedBody158_72, 0, 158, 2)) (Sum.inl 78) (some (RemovedBody158_79, 158, 3))

def RemovedBody158_81 : StackLang.HolProg 64 :=
.seq RemovedBody158_59 RemovedBody158_80

def RemovedBody158_82 : StackLang.HolProg 64 :=
.seq RemovedBody158_58 RemovedBody158_81

def RemovedBody158_83 : StackLang.HolProg 64 :=
.seq RemovedBody158_57 RemovedBody158_82

def RemovedBody158_84 : StackLang.HolProg 64 :=
.seq RemovedBody158_28 RemovedBody158_83

def RemovedBody158_85 : StackLang.HolProg 64 :=
.seq RemovedBody158_25 RemovedBody158_84

def RemovedBody158_86 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody158_87 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 0 0#64)

def RemovedBody158_88 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody158_89 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 2
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 40#64))

def RemovedBody158_90 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 4
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 24#64))

def RemovedBody158_91 : StackLang.HolProg 64 :=
.seq RemovedBody158_89 RemovedBody158_90

def RemovedBody158_92 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody158_93 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 1 0
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 136#64)))

def RemovedBody158_94 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody158_95 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 4
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 40#64))

def RemovedBody158_96 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 24#64))

def RemovedBody158_97 : StackLang.HolProg 64 :=
.seq RemovedBody158_95 RemovedBody158_96

def RemovedBody158_98 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 2 0
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 4)))

def RemovedBody158_99 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 3
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 40#64))

def RemovedBody158_100 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 4
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 32#64))

def RemovedBody158_101 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 24#64))

def RemovedBody158_102 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody158_103 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody158_104 : StackLang.HolProg 64 :=
.seq RemovedBody158_102 RemovedBody158_103

def RemovedBody158_105 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody158_106 : StackLang.HolProg 64 :=
.seq RemovedBody158_104 RemovedBody158_105

def RemovedBody158_107 : StackLang.HolProg 64 :=
.seq RemovedBody158_101 RemovedBody158_106

def RemovedBody158_108 : StackLang.HolProg 64 :=
.seq RemovedBody158_100 RemovedBody158_107

def RemovedBody158_109 : StackLang.HolProg 64 :=
.seq RemovedBody158_99 RemovedBody158_108

def RemovedBody158_110 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody158_111 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 142#64)

def RemovedBody158_112 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody158_113 : StackLang.HolProg 64 :=
.seq RemovedBody158_111 RemovedBody158_112

def RemovedBody158_114 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody158_115 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 2#64)

def RemovedBody158_116 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 1

def RemovedBody158_117 : StackLang.HolProg 64 :=
.seq RemovedBody158_115 RemovedBody158_116

def RemovedBody158_118 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody158_119 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) RemovedBody158_117 RemovedBody158_118

def RemovedBody158_120 : StackLang.HolProg 64 :=
.seq RemovedBody158_114 RemovedBody158_119

def RemovedBody158_121 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def RemovedBody158_122 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody158_123 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 158 5

def RemovedBody158_124 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody158_125 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody158_126 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody158_127 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody158_128 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def RemovedBody158_129 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def RemovedBody158_130 : StackLang.HolProg 64 :=
.seq RemovedBody158_128 RemovedBody158_129

def RemovedBody158_131 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def RemovedBody158_132 : StackLang.HolProg 64 :=
.seq RemovedBody158_130 RemovedBody158_131

def RemovedBody158_133 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody158_134 : StackLang.HolProg 64 :=
.seq RemovedBody158_132 RemovedBody158_133

def RemovedBody158_135 : StackLang.HolProg 64 :=
.seq RemovedBody158_127 RemovedBody158_134

def RemovedBody158_136 : StackLang.HolProg 64 :=
.seq RemovedBody158_126 RemovedBody158_135

def RemovedBody158_137 : StackLang.HolProg 64 :=
.seq RemovedBody158_125 RemovedBody158_136

def RemovedBody158_138 : StackLang.HolProg 64 :=
.seq RemovedBody158_124 RemovedBody158_137

def RemovedBody158_139 : StackLang.HolProg 64 :=
.seq RemovedBody158_123 RemovedBody158_138

def RemovedBody158_140 : StackLang.HolProg 64 :=
.seq RemovedBody158_122 RemovedBody158_139

def RemovedBody158_141 : StackLang.HolProg 64 :=
.seq RemovedBody158_121 RemovedBody158_140

def RemovedBody158_142 : StackLang.HolProg 64 :=
.seq RemovedBody158_120 RemovedBody158_141

def RemovedBody158_143 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody158_144 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody158_145 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody158_146 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody158_147 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody158_148 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody158_149 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 3
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 40#64))

def RemovedBody158_150 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 32#64))

def RemovedBody158_151 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 40#64))

def RemovedBody158_152 : StackLang.HolProg 64 :=
.seq RemovedBody158_150 RemovedBody158_151

def RemovedBody158_153 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 24#64))

def RemovedBody158_154 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody158_155 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 24#64))

def RemovedBody158_156 : StackLang.HolProg 64 :=
.seq RemovedBody158_154 RemovedBody158_155

def RemovedBody158_157 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody158_158 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody158_159 : StackLang.HolProg 64 :=
.seq RemovedBody158_157 RemovedBody158_158

def RemovedBody158_160 : StackLang.HolProg 64 :=
.seq RemovedBody158_156 RemovedBody158_159

def RemovedBody158_161 : StackLang.HolProg 64 :=
.seq RemovedBody158_153 RemovedBody158_160

def RemovedBody158_162 : StackLang.HolProg 64 :=
.seq RemovedBody158_152 RemovedBody158_161

def RemovedBody158_163 : StackLang.HolProg 64 :=
.seq RemovedBody158_149 RemovedBody158_162

def RemovedBody158_164 : StackLang.HolProg 64 :=
.seq RemovedBody158_148 RemovedBody158_163

def RemovedBody158_165 : StackLang.HolProg 64 :=
.seq RemovedBody158_147 RemovedBody158_164

def RemovedBody158_166 : StackLang.HolProg 64 :=
.seq RemovedBody158_146 RemovedBody158_165

def RemovedBody158_167 : StackLang.HolProg 64 :=
.seq RemovedBody158_145 RemovedBody158_166

def RemovedBody158_168 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 3
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 40#64))

def RemovedBody158_169 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 32#64))

def RemovedBody158_170 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 40#64))

def RemovedBody158_171 : StackLang.HolProg 64 :=
.seq RemovedBody158_169 RemovedBody158_170

def RemovedBody158_172 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 24#64))

def RemovedBody158_173 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody158_174 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 24#64))

def RemovedBody158_175 : StackLang.HolProg 64 :=
.seq RemovedBody158_173 RemovedBody158_174

def RemovedBody158_176 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody158_177 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody158_178 : StackLang.HolProg 64 :=
.seq RemovedBody158_176 RemovedBody158_177

def RemovedBody158_179 : StackLang.HolProg 64 :=
.seq RemovedBody158_175 RemovedBody158_178

def RemovedBody158_180 : StackLang.HolProg 64 :=
.seq RemovedBody158_172 RemovedBody158_179

def RemovedBody158_181 : StackLang.HolProg 64 :=
.seq RemovedBody158_171 RemovedBody158_180

def RemovedBody158_182 : StackLang.HolProg 64 :=
.seq RemovedBody158_168 RemovedBody158_181

def RemovedBody158_183 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def RemovedBody158_184 : StackLang.HolProg 64 :=
.seq RemovedBody158_182 RemovedBody158_183

def RemovedBody158_185 : StackLang.HolProg 64 :=
.call (some (RemovedBody158_167, 0, 158, 4)) (Sum.inl 157) (some (RemovedBody158_184, 158, 5))

def RemovedBody158_186 : StackLang.HolProg 64 :=
.seq RemovedBody158_144 RemovedBody158_185

def RemovedBody158_187 : StackLang.HolProg 64 :=
.seq RemovedBody158_143 RemovedBody158_186

def RemovedBody158_188 : StackLang.HolProg 64 :=
.seq RemovedBody158_142 RemovedBody158_187

def RemovedBody158_189 : StackLang.HolProg 64 :=
.seq RemovedBody158_113 RemovedBody158_188

def RemovedBody158_190 : StackLang.HolProg 64 :=
.seq RemovedBody158_110 RemovedBody158_189

def RemovedBody158_191 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody158_192 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody158_193 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 0 0
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 136#64)))

def RemovedBody158_194 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody158_195 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.continue 0

def RemovedBody158_196 : StackLang.HolProg 64 :=
.seq RemovedBody158_194 RemovedBody158_195

def RemovedBody158_197 : StackLang.HolProg 64 :=
.seq RemovedBody158_193 RemovedBody158_196

def RemovedBody158_198 : StackLang.HolProg 64 :=
.seq RemovedBody158_192 RemovedBody158_197

def RemovedBody158_199 : StackLang.HolProg 64 :=
.seq RemovedBody158_191 RemovedBody158_198

def RemovedBody158_200 : StackLang.HolProg 64 :=
.seq RemovedBody158_190 RemovedBody158_199

def RemovedBody158_201 : StackLang.HolProg 64 :=
.seq RemovedBody158_109 RemovedBody158_200

def RemovedBody158_202 : StackLang.HolProg 64 :=
.seq RemovedBody158_98 RemovedBody158_201

def RemovedBody158_203 : StackLang.HolProg 64 :=
.seq RemovedBody158_97 RemovedBody158_202

def RemovedBody158_204 : StackLang.HolProg 64 :=
.seq RemovedBody158_94 RemovedBody158_203

def RemovedBody158_205 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody158_206 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody158_207 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.break 0

def RemovedBody158_208 : StackLang.HolProg 64 :=
.seq RemovedBody158_206 RemovedBody158_207

def RemovedBody158_209 : StackLang.HolProg 64 :=
.seq RemovedBody158_205 RemovedBody158_208

def RemovedBody158_210 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.notLower) 3 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1) RemovedBody158_204 RemovedBody158_209

def RemovedBody158_211 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody158_212 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 48#64))

def RemovedBody158_213 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 2
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 40#64))

def RemovedBody158_214 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 4
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 24#64))

def RemovedBody158_215 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 5
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody158_216 : StackLang.HolProg 64 :=
.seq RemovedBody158_214 RemovedBody158_215

def RemovedBody158_217 : StackLang.HolProg 64 :=
.seq RemovedBody158_213 RemovedBody158_216

def RemovedBody158_218 : StackLang.HolProg 64 :=
.seq RemovedBody158_212 RemovedBody158_217

def RemovedBody158_219 : StackLang.HolProg 64 :=
.seq RemovedBody158_211 RemovedBody158_218

def RemovedBody158_220 : StackLang.HolProg 64 :=
.seq RemovedBody158_210 RemovedBody158_219

def RemovedBody158_221 : StackLang.HolProg 64 :=
.seq RemovedBody158_93 RemovedBody158_220

def RemovedBody158_222 : StackLang.HolProg 64 :=
.seq RemovedBody158_92 RemovedBody158_221

def RemovedBody158_223 : StackLang.HolProg 64 :=
.loop RemovedBody158_222

def RemovedBody158_224 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody158_225 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody158_226 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 3 3
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 0)))

def RemovedBody158_227 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551592#64))

def RemovedBody158_228 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsl 1 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 1#64)))

def RemovedBody158_229 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 1 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 26)))

def RemovedBody158_230 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 1 18446744073709551536#64))

def RemovedBody158_231 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 2 136#64)

def RemovedBody158_232 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 32#64))

def RemovedBody158_233 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 3
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody158_234 : StackLang.HolProg 64 :=
.seq RemovedBody158_232 RemovedBody158_233

def RemovedBody158_235 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody158_236 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 143#64)

def RemovedBody158_237 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody158_238 : StackLang.HolProg 64 :=
.seq RemovedBody158_236 RemovedBody158_237

def RemovedBody158_239 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody158_240 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 2#64)

def RemovedBody158_241 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 1

def RemovedBody158_242 : StackLang.HolProg 64 :=
.seq RemovedBody158_240 RemovedBody158_241

def RemovedBody158_243 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody158_244 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) RemovedBody158_242 RemovedBody158_243

def RemovedBody158_245 : StackLang.HolProg 64 :=
.seq RemovedBody158_239 RemovedBody158_244

def RemovedBody158_246 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def RemovedBody158_247 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody158_248 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 158 7

def RemovedBody158_249 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody158_250 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody158_251 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody158_252 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody158_253 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def RemovedBody158_254 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def RemovedBody158_255 : StackLang.HolProg 64 :=
.seq RemovedBody158_253 RemovedBody158_254

def RemovedBody158_256 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def RemovedBody158_257 : StackLang.HolProg 64 :=
.seq RemovedBody158_255 RemovedBody158_256

def RemovedBody158_258 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody158_259 : StackLang.HolProg 64 :=
.seq RemovedBody158_257 RemovedBody158_258

def RemovedBody158_260 : StackLang.HolProg 64 :=
.seq RemovedBody158_252 RemovedBody158_259

def RemovedBody158_261 : StackLang.HolProg 64 :=
.seq RemovedBody158_251 RemovedBody158_260

def RemovedBody158_262 : StackLang.HolProg 64 :=
.seq RemovedBody158_250 RemovedBody158_261

def RemovedBody158_263 : StackLang.HolProg 64 :=
.seq RemovedBody158_249 RemovedBody158_262

def RemovedBody158_264 : StackLang.HolProg 64 :=
.seq RemovedBody158_248 RemovedBody158_263

def RemovedBody158_265 : StackLang.HolProg 64 :=
.seq RemovedBody158_247 RemovedBody158_264

def RemovedBody158_266 : StackLang.HolProg 64 :=
.seq RemovedBody158_246 RemovedBody158_265

def RemovedBody158_267 : StackLang.HolProg 64 :=
.seq RemovedBody158_245 RemovedBody158_266

def RemovedBody158_268 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody158_269 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody158_270 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody158_271 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody158_272 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody158_273 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody158_274 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 2
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 40#64))

def RemovedBody158_275 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 32#64))

def RemovedBody158_276 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 24#64))

def RemovedBody158_277 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 40#64))

def RemovedBody158_278 : StackLang.HolProg 64 :=
.seq RemovedBody158_276 RemovedBody158_277

def RemovedBody158_279 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody158_280 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 32#64))

def RemovedBody158_281 : StackLang.HolProg 64 :=
.seq RemovedBody158_279 RemovedBody158_280

def RemovedBody158_282 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 3
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody158_283 : StackLang.HolProg 64 :=
.seq RemovedBody158_281 RemovedBody158_282

def RemovedBody158_284 : StackLang.HolProg 64 :=
.seq RemovedBody158_278 RemovedBody158_283

def RemovedBody158_285 : StackLang.HolProg 64 :=
.seq RemovedBody158_275 RemovedBody158_284

def RemovedBody158_286 : StackLang.HolProg 64 :=
.seq RemovedBody158_274 RemovedBody158_285

def RemovedBody158_287 : StackLang.HolProg 64 :=
.seq RemovedBody158_273 RemovedBody158_286

def RemovedBody158_288 : StackLang.HolProg 64 :=
.seq RemovedBody158_272 RemovedBody158_287

def RemovedBody158_289 : StackLang.HolProg 64 :=
.seq RemovedBody158_271 RemovedBody158_288

def RemovedBody158_290 : StackLang.HolProg 64 :=
.seq RemovedBody158_270 RemovedBody158_289

def RemovedBody158_291 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 2
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 40#64))

def RemovedBody158_292 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 32#64))

def RemovedBody158_293 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 24#64))

def RemovedBody158_294 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 40#64))

def RemovedBody158_295 : StackLang.HolProg 64 :=
.seq RemovedBody158_293 RemovedBody158_294

def RemovedBody158_296 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody158_297 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 32#64))

def RemovedBody158_298 : StackLang.HolProg 64 :=
.seq RemovedBody158_296 RemovedBody158_297

def RemovedBody158_299 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 3
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody158_300 : StackLang.HolProg 64 :=
.seq RemovedBody158_298 RemovedBody158_299

def RemovedBody158_301 : StackLang.HolProg 64 :=
.seq RemovedBody158_295 RemovedBody158_300

def RemovedBody158_302 : StackLang.HolProg 64 :=
.seq RemovedBody158_292 RemovedBody158_301

def RemovedBody158_303 : StackLang.HolProg 64 :=
.seq RemovedBody158_291 RemovedBody158_302

def RemovedBody158_304 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def RemovedBody158_305 : StackLang.HolProg 64 :=
.seq RemovedBody158_303 RemovedBody158_304

def RemovedBody158_306 : StackLang.HolProg 64 :=
.call (some (RemovedBody158_290, 0, 158, 6)) (Sum.inl 78) (some (RemovedBody158_305, 158, 7))

def RemovedBody158_307 : StackLang.HolProg 64 :=
.seq RemovedBody158_269 RemovedBody158_306

def RemovedBody158_308 : StackLang.HolProg 64 :=
.seq RemovedBody158_268 RemovedBody158_307

def RemovedBody158_309 : StackLang.HolProg 64 :=
.seq RemovedBody158_267 RemovedBody158_308

def RemovedBody158_310 : StackLang.HolProg 64 :=
.seq RemovedBody158_238 RemovedBody158_309

def RemovedBody158_311 : StackLang.HolProg 64 :=
.seq RemovedBody158_235 RemovedBody158_310

def RemovedBody158_312 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody158_313 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551592#64))

def RemovedBody158_314 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsl 1 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 1#64)))

def RemovedBody158_315 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 1 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 26)))

def RemovedBody158_316 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 1 18446744073709551536#64))

def RemovedBody158_317 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody158_318 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 2 0
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 2)))

def RemovedBody158_319 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 3
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 24#64))

def RemovedBody158_320 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody158_321 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 144#64)

def RemovedBody158_322 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody158_323 : StackLang.HolProg 64 :=
.seq RemovedBody158_321 RemovedBody158_322

def RemovedBody158_324 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody158_325 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 2#64)

def RemovedBody158_326 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 1

def RemovedBody158_327 : StackLang.HolProg 64 :=
.seq RemovedBody158_325 RemovedBody158_326

def RemovedBody158_328 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody158_329 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) RemovedBody158_327 RemovedBody158_328

def RemovedBody158_330 : StackLang.HolProg 64 :=
.seq RemovedBody158_324 RemovedBody158_329

def RemovedBody158_331 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def RemovedBody158_332 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody158_333 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 158 9

def RemovedBody158_334 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody158_335 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody158_336 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody158_337 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody158_338 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def RemovedBody158_339 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def RemovedBody158_340 : StackLang.HolProg 64 :=
.seq RemovedBody158_338 RemovedBody158_339

def RemovedBody158_341 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def RemovedBody158_342 : StackLang.HolProg 64 :=
.seq RemovedBody158_340 RemovedBody158_341

def RemovedBody158_343 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody158_344 : StackLang.HolProg 64 :=
.seq RemovedBody158_342 RemovedBody158_343

def RemovedBody158_345 : StackLang.HolProg 64 :=
.seq RemovedBody158_337 RemovedBody158_344

def RemovedBody158_346 : StackLang.HolProg 64 :=
.seq RemovedBody158_336 RemovedBody158_345

def RemovedBody158_347 : StackLang.HolProg 64 :=
.seq RemovedBody158_335 RemovedBody158_346

def RemovedBody158_348 : StackLang.HolProg 64 :=
.seq RemovedBody158_334 RemovedBody158_347

def RemovedBody158_349 : StackLang.HolProg 64 :=
.seq RemovedBody158_333 RemovedBody158_348

def RemovedBody158_350 : StackLang.HolProg 64 :=
.seq RemovedBody158_332 RemovedBody158_349

def RemovedBody158_351 : StackLang.HolProg 64 :=
.seq RemovedBody158_331 RemovedBody158_350

def RemovedBody158_352 : StackLang.HolProg 64 :=
.seq RemovedBody158_330 RemovedBody158_351

def RemovedBody158_353 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody158_354 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody158_355 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody158_356 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody158_357 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody158_358 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody158_359 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 40#64))

def RemovedBody158_360 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 2
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 24#64))

def RemovedBody158_361 : StackLang.HolProg 64 :=
.seq RemovedBody158_359 RemovedBody158_360

def RemovedBody158_362 : StackLang.HolProg 64 :=
.seq RemovedBody158_358 RemovedBody158_361

def RemovedBody158_363 : StackLang.HolProg 64 :=
.seq RemovedBody158_357 RemovedBody158_362

def RemovedBody158_364 : StackLang.HolProg 64 :=
.seq RemovedBody158_356 RemovedBody158_363

def RemovedBody158_365 : StackLang.HolProg 64 :=
.seq RemovedBody158_355 RemovedBody158_364

def RemovedBody158_366 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 40#64))

def RemovedBody158_367 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 2
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 24#64))

def RemovedBody158_368 : StackLang.HolProg 64 :=
.seq RemovedBody158_366 RemovedBody158_367

def RemovedBody158_369 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def RemovedBody158_370 : StackLang.HolProg 64 :=
.seq RemovedBody158_368 RemovedBody158_369

def RemovedBody158_371 : StackLang.HolProg 64 :=
.call (some (RemovedBody158_365, 0, 158, 8)) (Sum.inl 77) (some (RemovedBody158_370, 158, 9))

def RemovedBody158_372 : StackLang.HolProg 64 :=
.seq RemovedBody158_354 RemovedBody158_371

def RemovedBody158_373 : StackLang.HolProg 64 :=
.seq RemovedBody158_353 RemovedBody158_372

def RemovedBody158_374 : StackLang.HolProg 64 :=
.seq RemovedBody158_352 RemovedBody158_373

def RemovedBody158_375 : StackLang.HolProg 64 :=
.seq RemovedBody158_323 RemovedBody158_374

def RemovedBody158_376 : StackLang.HolProg 64 :=
.seq RemovedBody158_320 RemovedBody158_375

def RemovedBody158_377 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody158_378 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody158_379 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551592#64))

def RemovedBody158_380 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsl 1 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 1#64)))

def RemovedBody158_381 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 1 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 26)))

def RemovedBody158_382 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 3
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 1 18446744073709551536#64))

def RemovedBody158_383 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 3 2
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 3)))

def RemovedBody158_384 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 2 1#64)

def RemovedBody158_385 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store8 2
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 3 0#64))

def RemovedBody158_386 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody158_387 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 2
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 1 18446744073709551536#64))

def RemovedBody158_388 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 2 2
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 135#64)))

def RemovedBody158_389 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load8 3
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 2 0#64))

def RemovedBody158_390 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody158_391 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 3 3
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 128#64)))

def RemovedBody158_392 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store8 3
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 2 0#64))

def RemovedBody158_393 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody158_394 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 2
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 1 18446744073709551536#64))

def RemovedBody158_395 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 1 0
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 0)))

def RemovedBody158_396 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 40#64))

def RemovedBody158_397 : StackLang.HolProg 64 :=
.seq RemovedBody158_395 RemovedBody158_396

def RemovedBody158_398 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody158_399 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 145#64)

def RemovedBody158_400 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody158_401 : StackLang.HolProg 64 :=
.seq RemovedBody158_399 RemovedBody158_400

def RemovedBody158_402 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody158_403 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 2#64)

def RemovedBody158_404 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 1

def RemovedBody158_405 : StackLang.HolProg 64 :=
.seq RemovedBody158_403 RemovedBody158_404

def RemovedBody158_406 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody158_407 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) RemovedBody158_405 RemovedBody158_406

def RemovedBody158_408 : StackLang.HolProg 64 :=
.seq RemovedBody158_402 RemovedBody158_407

def RemovedBody158_409 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def RemovedBody158_410 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody158_411 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 158 11

def RemovedBody158_412 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody158_413 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody158_414 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody158_415 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody158_416 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def RemovedBody158_417 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def RemovedBody158_418 : StackLang.HolProg 64 :=
.seq RemovedBody158_416 RemovedBody158_417

def RemovedBody158_419 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def RemovedBody158_420 : StackLang.HolProg 64 :=
.seq RemovedBody158_418 RemovedBody158_419

def RemovedBody158_421 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody158_422 : StackLang.HolProg 64 :=
.seq RemovedBody158_420 RemovedBody158_421

def RemovedBody158_423 : StackLang.HolProg 64 :=
.seq RemovedBody158_415 RemovedBody158_422

def RemovedBody158_424 : StackLang.HolProg 64 :=
.seq RemovedBody158_414 RemovedBody158_423

def RemovedBody158_425 : StackLang.HolProg 64 :=
.seq RemovedBody158_413 RemovedBody158_424

def RemovedBody158_426 : StackLang.HolProg 64 :=
.seq RemovedBody158_412 RemovedBody158_425

def RemovedBody158_427 : StackLang.HolProg 64 :=
.seq RemovedBody158_411 RemovedBody158_426

def RemovedBody158_428 : StackLang.HolProg 64 :=
.seq RemovedBody158_410 RemovedBody158_427

def RemovedBody158_429 : StackLang.HolProg 64 :=
.seq RemovedBody158_409 RemovedBody158_428

def RemovedBody158_430 : StackLang.HolProg 64 :=
.seq RemovedBody158_408 RemovedBody158_429

def RemovedBody158_431 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody158_432 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody158_433 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody158_434 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody158_435 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody158_436 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody158_437 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 2
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 40#64))

def RemovedBody158_438 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 32#64))

def RemovedBody158_439 : StackLang.HolProg 64 :=
.seq RemovedBody158_437 RemovedBody158_438

def RemovedBody158_440 : StackLang.HolProg 64 :=
.seq RemovedBody158_436 RemovedBody158_439

def RemovedBody158_441 : StackLang.HolProg 64 :=
.seq RemovedBody158_435 RemovedBody158_440

def RemovedBody158_442 : StackLang.HolProg 64 :=
.seq RemovedBody158_434 RemovedBody158_441

def RemovedBody158_443 : StackLang.HolProg 64 :=
.seq RemovedBody158_433 RemovedBody158_442

def RemovedBody158_444 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 2
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 40#64))

def RemovedBody158_445 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 32#64))

def RemovedBody158_446 : StackLang.HolProg 64 :=
.seq RemovedBody158_444 RemovedBody158_445

def RemovedBody158_447 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def RemovedBody158_448 : StackLang.HolProg 64 :=
.seq RemovedBody158_446 RemovedBody158_447

def RemovedBody158_449 : StackLang.HolProg 64 :=
.call (some (RemovedBody158_443, 0, 158, 10)) (Sum.inl 157) (some (RemovedBody158_448, 158, 11))

def RemovedBody158_450 : StackLang.HolProg 64 :=
.seq RemovedBody158_432 RemovedBody158_449

def RemovedBody158_451 : StackLang.HolProg 64 :=
.seq RemovedBody158_431 RemovedBody158_450

def RemovedBody158_452 : StackLang.HolProg 64 :=
.seq RemovedBody158_430 RemovedBody158_451

def RemovedBody158_453 : StackLang.HolProg 64 :=
.seq RemovedBody158_401 RemovedBody158_452

def RemovedBody158_454 : StackLang.HolProg 64 :=
.seq RemovedBody158_398 RemovedBody158_453

def RemovedBody158_455 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody158_456 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 1 0
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 0)))

def RemovedBody158_457 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.and 0 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 7#64)))

def RemovedBody158_458 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 3 0#64)

def RemovedBody158_459 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody158_460 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody158_461 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 2 0#64))

def RemovedBody158_462 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody158_463 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 1 0#64))

def RemovedBody158_464 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody158_465 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 3 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 8#64)))

def RemovedBody158_466 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody158_467 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 2 8#64))

def RemovedBody158_468 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody158_469 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 3 0#64))

def RemovedBody158_470 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody158_471 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 3 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 16#64)))

def RemovedBody158_472 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody158_473 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 2 16#64))

def RemovedBody158_474 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody158_475 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 3 0#64))

def RemovedBody158_476 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody158_477 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 1 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody158_478 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody158_479 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 2 24#64))

def RemovedBody158_480 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody158_481 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 1 0#64))

def RemovedBody158_482 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 48#64))

def RemovedBody158_483 : StackLang.HolProg 64 :=
.seq RemovedBody158_481 RemovedBody158_482

def RemovedBody158_484 : StackLang.HolProg 64 :=
.seq RemovedBody158_480 RemovedBody158_483

def RemovedBody158_485 : StackLang.HolProg 64 :=
.seq RemovedBody158_479 RemovedBody158_484

def RemovedBody158_486 : StackLang.HolProg 64 :=
.seq RemovedBody158_478 RemovedBody158_485

def RemovedBody158_487 : StackLang.HolProg 64 :=
.seq RemovedBody158_477 RemovedBody158_486

def RemovedBody158_488 : StackLang.HolProg 64 :=
.seq RemovedBody158_476 RemovedBody158_487

def RemovedBody158_489 : StackLang.HolProg 64 :=
.seq RemovedBody158_475 RemovedBody158_488

def RemovedBody158_490 : StackLang.HolProg 64 :=
.seq RemovedBody158_474 RemovedBody158_489

def RemovedBody158_491 : StackLang.HolProg 64 :=
.seq RemovedBody158_473 RemovedBody158_490

def RemovedBody158_492 : StackLang.HolProg 64 :=
.seq RemovedBody158_472 RemovedBody158_491

def RemovedBody158_493 : StackLang.HolProg 64 :=
.seq RemovedBody158_471 RemovedBody158_492

def RemovedBody158_494 : StackLang.HolProg 64 :=
.seq RemovedBody158_470 RemovedBody158_493

def RemovedBody158_495 : StackLang.HolProg 64 :=
.seq RemovedBody158_469 RemovedBody158_494

def RemovedBody158_496 : StackLang.HolProg 64 :=
.seq RemovedBody158_468 RemovedBody158_495

def RemovedBody158_497 : StackLang.HolProg 64 :=
.seq RemovedBody158_467 RemovedBody158_496

def RemovedBody158_498 : StackLang.HolProg 64 :=
.seq RemovedBody158_466 RemovedBody158_497

def RemovedBody158_499 : StackLang.HolProg 64 :=
.seq RemovedBody158_465 RemovedBody158_498

def RemovedBody158_500 : StackLang.HolProg 64 :=
.seq RemovedBody158_464 RemovedBody158_499

def RemovedBody158_501 : StackLang.HolProg 64 :=
.seq RemovedBody158_463 RemovedBody158_500

def RemovedBody158_502 : StackLang.HolProg 64 :=
.seq RemovedBody158_462 RemovedBody158_501

def RemovedBody158_503 : StackLang.HolProg 64 :=
.seq RemovedBody158_461 RemovedBody158_502

def RemovedBody158_504 : StackLang.HolProg 64 :=
.seq RemovedBody158_460 RemovedBody158_503

def RemovedBody158_505 : StackLang.HolProg 64 :=
.seq RemovedBody158_459 RemovedBody158_504

def RemovedBody158_506 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody158_507 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody158_508 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 3 32#64)

def RemovedBody158_509 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody158_510 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody158_511 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 146#64)

def RemovedBody158_512 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody158_513 : StackLang.HolProg 64 :=
.seq RemovedBody158_511 RemovedBody158_512

def RemovedBody158_514 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody158_515 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 2#64)

def RemovedBody158_516 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 1

def RemovedBody158_517 : StackLang.HolProg 64 :=
.seq RemovedBody158_515 RemovedBody158_516

def RemovedBody158_518 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody158_519 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) RemovedBody158_517 RemovedBody158_518

def RemovedBody158_520 : StackLang.HolProg 64 :=
.seq RemovedBody158_514 RemovedBody158_519

def RemovedBody158_521 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def RemovedBody158_522 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody158_523 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 158 13

def RemovedBody158_524 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody158_525 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody158_526 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody158_527 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody158_528 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def RemovedBody158_529 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def RemovedBody158_530 : StackLang.HolProg 64 :=
.seq RemovedBody158_528 RemovedBody158_529

def RemovedBody158_531 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def RemovedBody158_532 : StackLang.HolProg 64 :=
.seq RemovedBody158_530 RemovedBody158_531

def RemovedBody158_533 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody158_534 : StackLang.HolProg 64 :=
.seq RemovedBody158_532 RemovedBody158_533

def RemovedBody158_535 : StackLang.HolProg 64 :=
.seq RemovedBody158_527 RemovedBody158_534

def RemovedBody158_536 : StackLang.HolProg 64 :=
.seq RemovedBody158_526 RemovedBody158_535

def RemovedBody158_537 : StackLang.HolProg 64 :=
.seq RemovedBody158_525 RemovedBody158_536

def RemovedBody158_538 : StackLang.HolProg 64 :=
.seq RemovedBody158_524 RemovedBody158_537

def RemovedBody158_539 : StackLang.HolProg 64 :=
.seq RemovedBody158_523 RemovedBody158_538

def RemovedBody158_540 : StackLang.HolProg 64 :=
.seq RemovedBody158_522 RemovedBody158_539

def RemovedBody158_541 : StackLang.HolProg 64 :=
.seq RemovedBody158_521 RemovedBody158_540

def RemovedBody158_542 : StackLang.HolProg 64 :=
.seq RemovedBody158_520 RemovedBody158_541

def RemovedBody158_543 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody158_544 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody158_545 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody158_546 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody158_547 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody158_548 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody158_549 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 48#64))

def RemovedBody158_550 : StackLang.HolProg 64 :=
.seq RemovedBody158_548 RemovedBody158_549

def RemovedBody158_551 : StackLang.HolProg 64 :=
.seq RemovedBody158_547 RemovedBody158_550

def RemovedBody158_552 : StackLang.HolProg 64 :=
.seq RemovedBody158_546 RemovedBody158_551

def RemovedBody158_553 : StackLang.HolProg 64 :=
.seq RemovedBody158_545 RemovedBody158_552

def RemovedBody158_554 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 48#64))

def RemovedBody158_555 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def RemovedBody158_556 : StackLang.HolProg 64 :=
.seq RemovedBody158_554 RemovedBody158_555

def RemovedBody158_557 : StackLang.HolProg 64 :=
.call (some (RemovedBody158_553, 0, 158, 12)) (Sum.inl 77) (some (RemovedBody158_556, 158, 13))

def RemovedBody158_558 : StackLang.HolProg 64 :=
.seq RemovedBody158_544 RemovedBody158_557

def RemovedBody158_559 : StackLang.HolProg 64 :=
.seq RemovedBody158_543 RemovedBody158_558

def RemovedBody158_560 : StackLang.HolProg 64 :=
.seq RemovedBody158_542 RemovedBody158_559

def RemovedBody158_561 : StackLang.HolProg 64 :=
.seq RemovedBody158_513 RemovedBody158_560

def RemovedBody158_562 : StackLang.HolProg 64 :=
.seq RemovedBody158_510 RemovedBody158_561

def RemovedBody158_563 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody158_564 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody158_565 : StackLang.HolProg 64 :=
.seq RemovedBody158_563 RemovedBody158_564

def RemovedBody158_566 : StackLang.HolProg 64 :=
.seq RemovedBody158_562 RemovedBody158_565

def RemovedBody158_567 : StackLang.HolProg 64 :=
.seq RemovedBody158_509 RemovedBody158_566

def RemovedBody158_568 : StackLang.HolProg 64 :=
.seq RemovedBody158_508 RemovedBody158_567

def RemovedBody158_569 : StackLang.HolProg 64 :=
.seq RemovedBody158_507 RemovedBody158_568

def RemovedBody158_570 : StackLang.HolProg 64 :=
.seq RemovedBody158_506 RemovedBody158_569

def RemovedBody158_571 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.equal) 0 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 3) RemovedBody158_505 RemovedBody158_570

def RemovedBody158_572 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody158_573 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 0#64)

def RemovedBody158_574 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody158_575 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 56#64)))

def RemovedBody158_576 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 0

def RemovedBody158_577 : StackLang.HolProg 64 :=
.seq RemovedBody158_575 RemovedBody158_576

def RemovedBody158_578 : StackLang.HolProg 64 :=
.seq RemovedBody158_574 RemovedBody158_577

def RemovedBody158_579 : StackLang.HolProg 64 :=
.seq RemovedBody158_573 RemovedBody158_578

def RemovedBody158_580 : StackLang.HolProg 64 :=
.seq RemovedBody158_572 RemovedBody158_579

def RemovedBody158_581 : StackLang.HolProg 64 :=
.seq RemovedBody158_571 RemovedBody158_580

def RemovedBody158_582 : StackLang.HolProg 64 :=
.seq RemovedBody158_458 RemovedBody158_581

def RemovedBody158_583 : StackLang.HolProg 64 :=
.seq RemovedBody158_457 RemovedBody158_582

def RemovedBody158_584 : StackLang.HolProg 64 :=
.seq RemovedBody158_456 RemovedBody158_583

def RemovedBody158_585 : StackLang.HolProg 64 :=
.seq RemovedBody158_455 RemovedBody158_584

def RemovedBody158_586 : StackLang.HolProg 64 :=
.seq RemovedBody158_454 RemovedBody158_585

def RemovedBody158_587 : StackLang.HolProg 64 :=
.seq RemovedBody158_397 RemovedBody158_586

def RemovedBody158_588 : StackLang.HolProg 64 :=
.seq RemovedBody158_394 RemovedBody158_587

def RemovedBody158_589 : StackLang.HolProg 64 :=
.seq RemovedBody158_393 RemovedBody158_588

def RemovedBody158_590 : StackLang.HolProg 64 :=
.seq RemovedBody158_392 RemovedBody158_589

def RemovedBody158_591 : StackLang.HolProg 64 :=
.seq RemovedBody158_391 RemovedBody158_590

def RemovedBody158_592 : StackLang.HolProg 64 :=
.seq RemovedBody158_390 RemovedBody158_591

def RemovedBody158_593 : StackLang.HolProg 64 :=
.seq RemovedBody158_389 RemovedBody158_592

def RemovedBody158_594 : StackLang.HolProg 64 :=
.seq RemovedBody158_388 RemovedBody158_593

def RemovedBody158_595 : StackLang.HolProg 64 :=
.seq RemovedBody158_387 RemovedBody158_594

def RemovedBody158_596 : StackLang.HolProg 64 :=
.seq RemovedBody158_386 RemovedBody158_595

def RemovedBody158_597 : StackLang.HolProg 64 :=
.seq RemovedBody158_385 RemovedBody158_596

def RemovedBody158_598 : StackLang.HolProg 64 :=
.seq RemovedBody158_384 RemovedBody158_597

def RemovedBody158_599 : StackLang.HolProg 64 :=
.seq RemovedBody158_383 RemovedBody158_598

def RemovedBody158_600 : StackLang.HolProg 64 :=
.seq RemovedBody158_382 RemovedBody158_599

def RemovedBody158_601 : StackLang.HolProg 64 :=
.seq RemovedBody158_381 RemovedBody158_600

def RemovedBody158_602 : StackLang.HolProg 64 :=
.seq RemovedBody158_380 RemovedBody158_601

def RemovedBody158_603 : StackLang.HolProg 64 :=
.seq RemovedBody158_379 RemovedBody158_602

def RemovedBody158_604 : StackLang.HolProg 64 :=
.seq RemovedBody158_378 RemovedBody158_603

def RemovedBody158_605 : StackLang.HolProg 64 :=
.seq RemovedBody158_377 RemovedBody158_604

def RemovedBody158_606 : StackLang.HolProg 64 :=
.seq RemovedBody158_376 RemovedBody158_605

def RemovedBody158_607 : StackLang.HolProg 64 :=
.seq RemovedBody158_319 RemovedBody158_606

def RemovedBody158_608 : StackLang.HolProg 64 :=
.seq RemovedBody158_318 RemovedBody158_607

def RemovedBody158_609 : StackLang.HolProg 64 :=
.seq RemovedBody158_317 RemovedBody158_608

def RemovedBody158_610 : StackLang.HolProg 64 :=
.seq RemovedBody158_316 RemovedBody158_609

def RemovedBody158_611 : StackLang.HolProg 64 :=
.seq RemovedBody158_315 RemovedBody158_610

def RemovedBody158_612 : StackLang.HolProg 64 :=
.seq RemovedBody158_314 RemovedBody158_611

def RemovedBody158_613 : StackLang.HolProg 64 :=
.seq RemovedBody158_313 RemovedBody158_612

def RemovedBody158_614 : StackLang.HolProg 64 :=
.seq RemovedBody158_312 RemovedBody158_613

def RemovedBody158_615 : StackLang.HolProg 64 :=
.seq RemovedBody158_311 RemovedBody158_614

def RemovedBody158_616 : StackLang.HolProg 64 :=
.seq RemovedBody158_234 RemovedBody158_615

def RemovedBody158_617 : StackLang.HolProg 64 :=
.seq RemovedBody158_231 RemovedBody158_616

def RemovedBody158_618 : StackLang.HolProg 64 :=
.seq RemovedBody158_230 RemovedBody158_617

def RemovedBody158_619 : StackLang.HolProg 64 :=
.seq RemovedBody158_229 RemovedBody158_618

def RemovedBody158_620 : StackLang.HolProg 64 :=
.seq RemovedBody158_228 RemovedBody158_619

def RemovedBody158_621 : StackLang.HolProg 64 :=
.seq RemovedBody158_227 RemovedBody158_620

def RemovedBody158_622 : StackLang.HolProg 64 :=
.seq RemovedBody158_226 RemovedBody158_621

def RemovedBody158_623 : StackLang.HolProg 64 :=
.seq RemovedBody158_225 RemovedBody158_622

def RemovedBody158_624 : StackLang.HolProg 64 :=
.seq RemovedBody158_224 RemovedBody158_623

def RemovedBody158_625 : StackLang.HolProg 64 :=
.seq RemovedBody158_223 RemovedBody158_624

def RemovedBody158_626 : StackLang.HolProg 64 :=
.seq RemovedBody158_91 RemovedBody158_625

def RemovedBody158_627 : StackLang.HolProg 64 :=
.seq RemovedBody158_88 RemovedBody158_626

def RemovedBody158_628 : StackLang.HolProg 64 :=
.seq RemovedBody158_87 RemovedBody158_627

def RemovedBody158_629 : StackLang.HolProg 64 :=
.seq RemovedBody158_86 RemovedBody158_628

def RemovedBody158_630 : StackLang.HolProg 64 :=
.seq RemovedBody158_85 RemovedBody158_629

def RemovedBody158_631 : StackLang.HolProg 64 :=
.seq RemovedBody158_24 RemovedBody158_630

def RemovedBody158_632 : StackLang.HolProg 64 :=
.seq RemovedBody158_15 RemovedBody158_631

def RemovedBody158_633 : StackLang.HolProg 64 :=
.seq RemovedBody158_14 RemovedBody158_632

def RemovedBody158_634 : StackLang.HolProg 64 :=
.seq RemovedBody158_13 RemovedBody158_633

def RemovedBody158_635 : StackLang.HolProg 64 :=
.seq RemovedBody158_12 RemovedBody158_634

def RemovedBody158_636 : StackLang.HolProg 64 :=
.seq RemovedBody158_11 RemovedBody158_635

def RemovedBody158_637 : StackLang.HolProg 64 :=
.seq RemovedBody158_10 RemovedBody158_636

def RemovedBody158_638 : StackLang.HolProg 64 :=
.seq RemovedBody158_9 RemovedBody158_637

def RemovedBody158_639 : StackLang.HolProg 64 :=
.seq RemovedBody158_6 RemovedBody158_638

def Removed158 : Nat × StackLang.HolProg 64 := (158, RemovedBody158_639)
theorem Removed158_eq : StackRemove.progComp false riscvConfig.addrOffset (riscvConfig.regCount - (riscvConfig.avoidRegs.length + 3)) Alloc158 = Removed158 := by
  kernel_rfl
#print axioms Removed158_eq
end InitECandidate.Proofs.BackendStages
