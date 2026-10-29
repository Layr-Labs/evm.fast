import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.BackendStages.Alloc312
import Flapjack.Compiler.Backend.Backend
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
namespace InitECandidate.Proofs.BackendStages
def RemovedBody312_0 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 80#64)))

def RemovedBody312_1 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 2#64)

def RemovedBody312_2 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 1

def RemovedBody312_3 : StackLang.HolProg 64 :=
.seq RemovedBody312_1 RemovedBody312_2

def RemovedBody312_4 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody312_5 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) RemovedBody312_3 RemovedBody312_4

def RemovedBody312_6 : StackLang.HolProg 64 :=
.seq RemovedBody312_0 RemovedBody312_5

def RemovedBody312_7 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 72#64))

def RemovedBody312_8 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 8
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 64#64))

def RemovedBody312_9 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 4
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 56#64))

def RemovedBody312_10 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 2
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 48#64))

def RemovedBody312_11 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 6
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 40#64))

def RemovedBody312_12 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 32#64))

def RemovedBody312_13 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 5
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 24#64))

def RemovedBody312_14 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 3
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody312_15 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 7
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody312_16 : StackLang.HolProg 64 :=
.seq RemovedBody312_14 RemovedBody312_15

def RemovedBody312_17 : StackLang.HolProg 64 :=
.seq RemovedBody312_13 RemovedBody312_16

def RemovedBody312_18 : StackLang.HolProg 64 :=
.seq RemovedBody312_12 RemovedBody312_17

def RemovedBody312_19 : StackLang.HolProg 64 :=
.seq RemovedBody312_11 RemovedBody312_18

def RemovedBody312_20 : StackLang.HolProg 64 :=
.seq RemovedBody312_10 RemovedBody312_19

def RemovedBody312_21 : StackLang.HolProg 64 :=
.seq RemovedBody312_9 RemovedBody312_20

def RemovedBody312_22 : StackLang.HolProg 64 :=
.seq RemovedBody312_8 RemovedBody312_21

def RemovedBody312_23 : StackLang.HolProg 64 :=
.seq RemovedBody312_7 RemovedBody312_22

def RemovedBody312_24 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody312_25 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 860#64)

def RemovedBody312_26 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody312_27 : StackLang.HolProg 64 :=
.seq RemovedBody312_25 RemovedBody312_26

def RemovedBody312_28 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody312_29 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 2#64)

def RemovedBody312_30 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 1

def RemovedBody312_31 : StackLang.HolProg 64 :=
.seq RemovedBody312_29 RemovedBody312_30

def RemovedBody312_32 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody312_33 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) RemovedBody312_31 RemovedBody312_32

def RemovedBody312_34 : StackLang.HolProg 64 :=
.seq RemovedBody312_28 RemovedBody312_33

def RemovedBody312_35 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def RemovedBody312_36 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody312_37 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 312 3

def RemovedBody312_38 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody312_39 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody312_40 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody312_41 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody312_42 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def RemovedBody312_43 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def RemovedBody312_44 : StackLang.HolProg 64 :=
.seq RemovedBody312_42 RemovedBody312_43

def RemovedBody312_45 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def RemovedBody312_46 : StackLang.HolProg 64 :=
.seq RemovedBody312_44 RemovedBody312_45

def RemovedBody312_47 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody312_48 : StackLang.HolProg 64 :=
.seq RemovedBody312_46 RemovedBody312_47

def RemovedBody312_49 : StackLang.HolProg 64 :=
.seq RemovedBody312_41 RemovedBody312_48

def RemovedBody312_50 : StackLang.HolProg 64 :=
.seq RemovedBody312_40 RemovedBody312_49

def RemovedBody312_51 : StackLang.HolProg 64 :=
.seq RemovedBody312_39 RemovedBody312_50

def RemovedBody312_52 : StackLang.HolProg 64 :=
.seq RemovedBody312_38 RemovedBody312_51

def RemovedBody312_53 : StackLang.HolProg 64 :=
.seq RemovedBody312_37 RemovedBody312_52

def RemovedBody312_54 : StackLang.HolProg 64 :=
.seq RemovedBody312_36 RemovedBody312_53

def RemovedBody312_55 : StackLang.HolProg 64 :=
.seq RemovedBody312_35 RemovedBody312_54

def RemovedBody312_56 : StackLang.HolProg 64 :=
.seq RemovedBody312_34 RemovedBody312_55

def RemovedBody312_57 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody312_58 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody312_59 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody312_60 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody312_61 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody312_62 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody312_63 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 0 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def RemovedBody312_64 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 4
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 56#64))

def RemovedBody312_65 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 2
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 48#64))

def RemovedBody312_66 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 40#64))

def RemovedBody312_67 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 56#64))

def RemovedBody312_68 : StackLang.HolProg 64 :=
.seq RemovedBody312_66 RemovedBody312_67

def RemovedBody312_69 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 5
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 32#64))

def RemovedBody312_70 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 24#64))

def RemovedBody312_71 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 48#64))

def RemovedBody312_72 : StackLang.HolProg 64 :=
.seq RemovedBody312_70 RemovedBody312_71

def RemovedBody312_73 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 3
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody312_74 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody312_75 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 40#64))

def RemovedBody312_76 : StackLang.HolProg 64 :=
.seq RemovedBody312_74 RemovedBody312_75

def RemovedBody312_77 : StackLang.HolProg 64 :=
.seq RemovedBody312_73 RemovedBody312_76

def RemovedBody312_78 : StackLang.HolProg 64 :=
.seq RemovedBody312_72 RemovedBody312_77

def RemovedBody312_79 : StackLang.HolProg 64 :=
.seq RemovedBody312_69 RemovedBody312_78

def RemovedBody312_80 : StackLang.HolProg 64 :=
.seq RemovedBody312_68 RemovedBody312_79

def RemovedBody312_81 : StackLang.HolProg 64 :=
.seq RemovedBody312_65 RemovedBody312_80

def RemovedBody312_82 : StackLang.HolProg 64 :=
.seq RemovedBody312_64 RemovedBody312_81

def RemovedBody312_83 : StackLang.HolProg 64 :=
.seq RemovedBody312_63 RemovedBody312_82

def RemovedBody312_84 : StackLang.HolProg 64 :=
.seq RemovedBody312_62 RemovedBody312_83

def RemovedBody312_85 : StackLang.HolProg 64 :=
.seq RemovedBody312_61 RemovedBody312_84

def RemovedBody312_86 : StackLang.HolProg 64 :=
.seq RemovedBody312_60 RemovedBody312_85

def RemovedBody312_87 : StackLang.HolProg 64 :=
.seq RemovedBody312_59 RemovedBody312_86

def RemovedBody312_88 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 4
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 56#64))

def RemovedBody312_89 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 2
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 48#64))

def RemovedBody312_90 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 40#64))

def RemovedBody312_91 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 56#64))

def RemovedBody312_92 : StackLang.HolProg 64 :=
.seq RemovedBody312_90 RemovedBody312_91

def RemovedBody312_93 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 5
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 32#64))

def RemovedBody312_94 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 24#64))

def RemovedBody312_95 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 48#64))

def RemovedBody312_96 : StackLang.HolProg 64 :=
.seq RemovedBody312_94 RemovedBody312_95

def RemovedBody312_97 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 3
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody312_98 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody312_99 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 40#64))

def RemovedBody312_100 : StackLang.HolProg 64 :=
.seq RemovedBody312_98 RemovedBody312_99

def RemovedBody312_101 : StackLang.HolProg 64 :=
.seq RemovedBody312_97 RemovedBody312_100

def RemovedBody312_102 : StackLang.HolProg 64 :=
.seq RemovedBody312_96 RemovedBody312_101

def RemovedBody312_103 : StackLang.HolProg 64 :=
.seq RemovedBody312_93 RemovedBody312_102

def RemovedBody312_104 : StackLang.HolProg 64 :=
.seq RemovedBody312_92 RemovedBody312_103

def RemovedBody312_105 : StackLang.HolProg 64 :=
.seq RemovedBody312_89 RemovedBody312_104

def RemovedBody312_106 : StackLang.HolProg 64 :=
.seq RemovedBody312_88 RemovedBody312_105

def RemovedBody312_107 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def RemovedBody312_108 : StackLang.HolProg 64 :=
.seq RemovedBody312_106 RemovedBody312_107

def RemovedBody312_109 : StackLang.HolProg 64 :=
.call (some (RemovedBody312_87, 0, 312, 2)) (Sum.inl 298) (some (RemovedBody312_108, 312, 3))

def RemovedBody312_110 : StackLang.HolProg 64 :=
.seq RemovedBody312_58 RemovedBody312_109

def RemovedBody312_111 : StackLang.HolProg 64 :=
.seq RemovedBody312_57 RemovedBody312_110

def RemovedBody312_112 : StackLang.HolProg 64 :=
.seq RemovedBody312_56 RemovedBody312_111

def RemovedBody312_113 : StackLang.HolProg 64 :=
.seq RemovedBody312_27 RemovedBody312_112

def RemovedBody312_114 : StackLang.HolProg 64 :=
.seq RemovedBody312_24 RemovedBody312_113

def RemovedBody312_115 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody312_116 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody312_117 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 0#64)

def RemovedBody312_118 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody312_119 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody312_120 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 1 0
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 160#64)))

def RemovedBody312_121 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody312_122 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 3
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 1 0#64))

def RemovedBody312_123 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody312_124 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 1 0
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 168#64)))

def RemovedBody312_125 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody312_126 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 4
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 1 0#64))

def RemovedBody312_127 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 4
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 64#64))

def RemovedBody312_128 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 64#64))

def RemovedBody312_129 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 56#64))

def RemovedBody312_130 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 7
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 48#64))

def RemovedBody312_131 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 3
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 40#64))

def RemovedBody312_132 : StackLang.HolProg 64 :=
.seq RemovedBody312_130 RemovedBody312_131

def RemovedBody312_133 : StackLang.HolProg 64 :=
.seq RemovedBody312_129 RemovedBody312_132

def RemovedBody312_134 : StackLang.HolProg 64 :=
.seq RemovedBody312_128 RemovedBody312_133

def RemovedBody312_135 : StackLang.HolProg 64 :=
.seq RemovedBody312_127 RemovedBody312_134

def RemovedBody312_136 : StackLang.HolProg 64 :=
.seq RemovedBody312_126 RemovedBody312_135

def RemovedBody312_137 : StackLang.HolProg 64 :=
.seq RemovedBody312_125 RemovedBody312_136

def RemovedBody312_138 : StackLang.HolProg 64 :=
.seq RemovedBody312_124 RemovedBody312_137

def RemovedBody312_139 : StackLang.HolProg 64 :=
.seq RemovedBody312_123 RemovedBody312_138

def RemovedBody312_140 : StackLang.HolProg 64 :=
.seq RemovedBody312_122 RemovedBody312_139

def RemovedBody312_141 : StackLang.HolProg 64 :=
.seq RemovedBody312_121 RemovedBody312_140

def RemovedBody312_142 : StackLang.HolProg 64 :=
.seq RemovedBody312_120 RemovedBody312_141

def RemovedBody312_143 : StackLang.HolProg 64 :=
.seq RemovedBody312_119 RemovedBody312_142

def RemovedBody312_144 : StackLang.HolProg 64 :=
.seq RemovedBody312_118 RemovedBody312_143

def RemovedBody312_145 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody312_146 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody312_147 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 1 5
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 1#64)))

def RemovedBody312_148 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody312_149 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 2 2
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 18446744073709551615#64)))

def RemovedBody312_150 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 48#64))

def RemovedBody312_151 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 32#64))

def RemovedBody312_152 : StackLang.HolProg 64 :=
.seq RemovedBody312_150 RemovedBody312_151

def RemovedBody312_153 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 56#64))

def RemovedBody312_154 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 48#64))

def RemovedBody312_155 : StackLang.HolProg 64 :=
.seq RemovedBody312_153 RemovedBody312_154

def RemovedBody312_156 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 56#64))

def RemovedBody312_157 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 40#64))

def RemovedBody312_158 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 24#64))

def RemovedBody312_159 : StackLang.HolProg 64 :=
.seq RemovedBody312_157 RemovedBody312_158

def RemovedBody312_160 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 5
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 40#64))

def RemovedBody312_161 : StackLang.HolProg 64 :=
.seq RemovedBody312_159 RemovedBody312_160

def RemovedBody312_162 : StackLang.HolProg 64 :=
.seq RemovedBody312_156 RemovedBody312_161

def RemovedBody312_163 : StackLang.HolProg 64 :=
.seq RemovedBody312_155 RemovedBody312_162

def RemovedBody312_164 : StackLang.HolProg 64 :=
.seq RemovedBody312_152 RemovedBody312_163

def RemovedBody312_165 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody312_166 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 861#64)

def RemovedBody312_167 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody312_168 : StackLang.HolProg 64 :=
.seq RemovedBody312_166 RemovedBody312_167

def RemovedBody312_169 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody312_170 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 2#64)

def RemovedBody312_171 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 1

def RemovedBody312_172 : StackLang.HolProg 64 :=
.seq RemovedBody312_170 RemovedBody312_171

def RemovedBody312_173 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody312_174 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) RemovedBody312_172 RemovedBody312_173

def RemovedBody312_175 : StackLang.HolProg 64 :=
.seq RemovedBody312_169 RemovedBody312_174

def RemovedBody312_176 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def RemovedBody312_177 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody312_178 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 312 5

def RemovedBody312_179 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody312_180 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody312_181 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody312_182 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody312_183 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def RemovedBody312_184 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def RemovedBody312_185 : StackLang.HolProg 64 :=
.seq RemovedBody312_183 RemovedBody312_184

def RemovedBody312_186 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def RemovedBody312_187 : StackLang.HolProg 64 :=
.seq RemovedBody312_185 RemovedBody312_186

def RemovedBody312_188 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody312_189 : StackLang.HolProg 64 :=
.seq RemovedBody312_187 RemovedBody312_188

def RemovedBody312_190 : StackLang.HolProg 64 :=
.seq RemovedBody312_182 RemovedBody312_189

def RemovedBody312_191 : StackLang.HolProg 64 :=
.seq RemovedBody312_181 RemovedBody312_190

def RemovedBody312_192 : StackLang.HolProg 64 :=
.seq RemovedBody312_180 RemovedBody312_191

def RemovedBody312_193 : StackLang.HolProg 64 :=
.seq RemovedBody312_179 RemovedBody312_192

def RemovedBody312_194 : StackLang.HolProg 64 :=
.seq RemovedBody312_178 RemovedBody312_193

def RemovedBody312_195 : StackLang.HolProg 64 :=
.seq RemovedBody312_177 RemovedBody312_194

def RemovedBody312_196 : StackLang.HolProg 64 :=
.seq RemovedBody312_176 RemovedBody312_195

def RemovedBody312_197 : StackLang.HolProg 64 :=
.seq RemovedBody312_175 RemovedBody312_196

def RemovedBody312_198 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody312_199 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody312_200 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody312_201 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody312_202 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody312_203 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody312_204 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 5 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def RemovedBody312_205 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 4
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 64#64))

def RemovedBody312_206 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 2
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 56#64))

def RemovedBody312_207 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 48#64))

def RemovedBody312_208 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 6
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 40#64))

def RemovedBody312_209 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 7
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 32#64))

def RemovedBody312_210 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 3
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 24#64))

def RemovedBody312_211 : StackLang.HolProg 64 :=
.seq RemovedBody312_209 RemovedBody312_210

def RemovedBody312_212 : StackLang.HolProg 64 :=
.seq RemovedBody312_208 RemovedBody312_211

def RemovedBody312_213 : StackLang.HolProg 64 :=
.seq RemovedBody312_207 RemovedBody312_212

def RemovedBody312_214 : StackLang.HolProg 64 :=
.seq RemovedBody312_206 RemovedBody312_213

def RemovedBody312_215 : StackLang.HolProg 64 :=
.seq RemovedBody312_205 RemovedBody312_214

def RemovedBody312_216 : StackLang.HolProg 64 :=
.seq RemovedBody312_204 RemovedBody312_215

def RemovedBody312_217 : StackLang.HolProg 64 :=
.seq RemovedBody312_203 RemovedBody312_216

def RemovedBody312_218 : StackLang.HolProg 64 :=
.seq RemovedBody312_202 RemovedBody312_217

def RemovedBody312_219 : StackLang.HolProg 64 :=
.seq RemovedBody312_201 RemovedBody312_218

def RemovedBody312_220 : StackLang.HolProg 64 :=
.seq RemovedBody312_200 RemovedBody312_219

def RemovedBody312_221 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 4
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 64#64))

def RemovedBody312_222 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 2
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 56#64))

def RemovedBody312_223 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 48#64))

def RemovedBody312_224 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 6
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 40#64))

def RemovedBody312_225 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 7
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 32#64))

def RemovedBody312_226 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 3
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 24#64))

def RemovedBody312_227 : StackLang.HolProg 64 :=
.seq RemovedBody312_225 RemovedBody312_226

def RemovedBody312_228 : StackLang.HolProg 64 :=
.seq RemovedBody312_224 RemovedBody312_227

def RemovedBody312_229 : StackLang.HolProg 64 :=
.seq RemovedBody312_223 RemovedBody312_228

def RemovedBody312_230 : StackLang.HolProg 64 :=
.seq RemovedBody312_222 RemovedBody312_229

def RemovedBody312_231 : StackLang.HolProg 64 :=
.seq RemovedBody312_221 RemovedBody312_230

def RemovedBody312_232 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def RemovedBody312_233 : StackLang.HolProg 64 :=
.seq RemovedBody312_231 RemovedBody312_232

def RemovedBody312_234 : StackLang.HolProg 64 :=
.call (some (RemovedBody312_220, 0, 312, 4)) (Sum.inl 296) (some (RemovedBody312_233, 312, 5))

def RemovedBody312_235 : StackLang.HolProg 64 :=
.seq RemovedBody312_199 RemovedBody312_234

def RemovedBody312_236 : StackLang.HolProg 64 :=
.seq RemovedBody312_198 RemovedBody312_235

def RemovedBody312_237 : StackLang.HolProg 64 :=
.seq RemovedBody312_197 RemovedBody312_236

def RemovedBody312_238 : StackLang.HolProg 64 :=
.seq RemovedBody312_168 RemovedBody312_237

def RemovedBody312_239 : StackLang.HolProg 64 :=
.seq RemovedBody312_165 RemovedBody312_238

def RemovedBody312_240 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody312_241 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody312_242 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load8 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 6 0#64))

def RemovedBody312_243 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody312_244 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsl 1 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def RemovedBody312_245 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody312_246 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 1 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 2)))

def RemovedBody312_247 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 1 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 32#64)))

def RemovedBody312_248 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody312_249 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 5
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 1 0#64))

def RemovedBody312_250 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 2
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 64#64))

def RemovedBody312_251 : StackLang.HolProg 64 :=
.seq RemovedBody312_249 RemovedBody312_250

def RemovedBody312_252 : StackLang.HolProg 64 :=
.seq RemovedBody312_248 RemovedBody312_251

def RemovedBody312_253 : StackLang.HolProg 64 :=
.seq RemovedBody312_247 RemovedBody312_252

def RemovedBody312_254 : StackLang.HolProg 64 :=
.seq RemovedBody312_246 RemovedBody312_253

def RemovedBody312_255 : StackLang.HolProg 64 :=
.seq RemovedBody312_245 RemovedBody312_254

def RemovedBody312_256 : StackLang.HolProg 64 :=
.seq RemovedBody312_244 RemovedBody312_255

def RemovedBody312_257 : StackLang.HolProg 64 :=
.seq RemovedBody312_243 RemovedBody312_256

def RemovedBody312_258 : StackLang.HolProg 64 :=
.seq RemovedBody312_242 RemovedBody312_257

def RemovedBody312_259 : StackLang.HolProg 64 :=
.seq RemovedBody312_241 RemovedBody312_258

def RemovedBody312_260 : StackLang.HolProg 64 :=
.seq RemovedBody312_240 RemovedBody312_259

def RemovedBody312_261 : StackLang.HolProg 64 :=
.seq RemovedBody312_239 RemovedBody312_260

def RemovedBody312_262 : StackLang.HolProg 64 :=
.seq RemovedBody312_164 RemovedBody312_261

def RemovedBody312_263 : StackLang.HolProg 64 :=
.seq RemovedBody312_149 RemovedBody312_262

def RemovedBody312_264 : StackLang.HolProg 64 :=
.seq RemovedBody312_148 RemovedBody312_263

def RemovedBody312_265 : StackLang.HolProg 64 :=
.seq RemovedBody312_147 RemovedBody312_264

def RemovedBody312_266 : StackLang.HolProg 64 :=
.seq RemovedBody312_146 RemovedBody312_265

def RemovedBody312_267 : StackLang.HolProg 64 :=
.seq RemovedBody312_145 RemovedBody312_266

def RemovedBody312_268 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.equal) 2 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1) RemovedBody312_144 RemovedBody312_267

def RemovedBody312_269 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody312_270 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody312_271 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 0#64)

def RemovedBody312_272 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody312_273 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 2
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 64#64))

def RemovedBody312_274 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 0 2
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 160#64)))

def RemovedBody312_275 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody312_276 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 3
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 0 0#64))

def RemovedBody312_277 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody312_278 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 0 2
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 168#64)))

def RemovedBody312_279 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody312_280 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 4
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 0 0#64))

def RemovedBody312_281 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 72#64))

def RemovedBody312_282 : StackLang.HolProg 64 :=
.seq RemovedBody312_280 RemovedBody312_281

def RemovedBody312_283 : StackLang.HolProg 64 :=
.seq RemovedBody312_279 RemovedBody312_282

def RemovedBody312_284 : StackLang.HolProg 64 :=
.seq RemovedBody312_278 RemovedBody312_283

def RemovedBody312_285 : StackLang.HolProg 64 :=
.seq RemovedBody312_277 RemovedBody312_284

def RemovedBody312_286 : StackLang.HolProg 64 :=
.seq RemovedBody312_276 RemovedBody312_285

def RemovedBody312_287 : StackLang.HolProg 64 :=
.seq RemovedBody312_275 RemovedBody312_286

def RemovedBody312_288 : StackLang.HolProg 64 :=
.seq RemovedBody312_274 RemovedBody312_287

def RemovedBody312_289 : StackLang.HolProg 64 :=
.seq RemovedBody312_273 RemovedBody312_288

def RemovedBody312_290 : StackLang.HolProg 64 :=
.seq RemovedBody312_272 RemovedBody312_289

def RemovedBody312_291 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody312_292 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody312_293 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 1 7
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 1#64)))

def RemovedBody312_294 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody312_295 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 2 0
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 18446744073709551615#64)))

def RemovedBody312_296 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 7
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 56#64))

def RemovedBody312_297 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody312_298 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 862#64)

def RemovedBody312_299 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody312_300 : StackLang.HolProg 64 :=
.seq RemovedBody312_298 RemovedBody312_299

def RemovedBody312_301 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody312_302 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 2#64)

def RemovedBody312_303 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 1

def RemovedBody312_304 : StackLang.HolProg 64 :=
.seq RemovedBody312_302 RemovedBody312_303

def RemovedBody312_305 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody312_306 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) RemovedBody312_304 RemovedBody312_305

def RemovedBody312_307 : StackLang.HolProg 64 :=
.seq RemovedBody312_301 RemovedBody312_306

def RemovedBody312_308 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def RemovedBody312_309 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody312_310 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 312 7

def RemovedBody312_311 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody312_312 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody312_313 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody312_314 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody312_315 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def RemovedBody312_316 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def RemovedBody312_317 : StackLang.HolProg 64 :=
.seq RemovedBody312_315 RemovedBody312_316

def RemovedBody312_318 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def RemovedBody312_319 : StackLang.HolProg 64 :=
.seq RemovedBody312_317 RemovedBody312_318

def RemovedBody312_320 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody312_321 : StackLang.HolProg 64 :=
.seq RemovedBody312_319 RemovedBody312_320

def RemovedBody312_322 : StackLang.HolProg 64 :=
.seq RemovedBody312_314 RemovedBody312_321

def RemovedBody312_323 : StackLang.HolProg 64 :=
.seq RemovedBody312_313 RemovedBody312_322

def RemovedBody312_324 : StackLang.HolProg 64 :=
.seq RemovedBody312_312 RemovedBody312_323

def RemovedBody312_325 : StackLang.HolProg 64 :=
.seq RemovedBody312_311 RemovedBody312_324

def RemovedBody312_326 : StackLang.HolProg 64 :=
.seq RemovedBody312_310 RemovedBody312_325

def RemovedBody312_327 : StackLang.HolProg 64 :=
.seq RemovedBody312_309 RemovedBody312_326

def RemovedBody312_328 : StackLang.HolProg 64 :=
.seq RemovedBody312_308 RemovedBody312_327

def RemovedBody312_329 : StackLang.HolProg 64 :=
.seq RemovedBody312_307 RemovedBody312_328

def RemovedBody312_330 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody312_331 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody312_332 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody312_333 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody312_334 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody312_335 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody312_336 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 3 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def RemovedBody312_337 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 72#64))

def RemovedBody312_338 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 2
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 64#64))

def RemovedBody312_339 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 4
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 56#64))

def RemovedBody312_340 : StackLang.HolProg 64 :=
.seq RemovedBody312_338 RemovedBody312_339

def RemovedBody312_341 : StackLang.HolProg 64 :=
.seq RemovedBody312_337 RemovedBody312_340

def RemovedBody312_342 : StackLang.HolProg 64 :=
.seq RemovedBody312_336 RemovedBody312_341

def RemovedBody312_343 : StackLang.HolProg 64 :=
.seq RemovedBody312_335 RemovedBody312_342

def RemovedBody312_344 : StackLang.HolProg 64 :=
.seq RemovedBody312_334 RemovedBody312_343

def RemovedBody312_345 : StackLang.HolProg 64 :=
.seq RemovedBody312_333 RemovedBody312_344

def RemovedBody312_346 : StackLang.HolProg 64 :=
.seq RemovedBody312_332 RemovedBody312_345

def RemovedBody312_347 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 72#64))

def RemovedBody312_348 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 2
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 64#64))

def RemovedBody312_349 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 4
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 56#64))

def RemovedBody312_350 : StackLang.HolProg 64 :=
.seq RemovedBody312_348 RemovedBody312_349

def RemovedBody312_351 : StackLang.HolProg 64 :=
.seq RemovedBody312_347 RemovedBody312_350

def RemovedBody312_352 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def RemovedBody312_353 : StackLang.HolProg 64 :=
.seq RemovedBody312_351 RemovedBody312_352

def RemovedBody312_354 : StackLang.HolProg 64 :=
.call (some (RemovedBody312_346, 0, 312, 6)) (Sum.inl 296) (some (RemovedBody312_353, 312, 7))

def RemovedBody312_355 : StackLang.HolProg 64 :=
.seq RemovedBody312_331 RemovedBody312_354

def RemovedBody312_356 : StackLang.HolProg 64 :=
.seq RemovedBody312_330 RemovedBody312_355

def RemovedBody312_357 : StackLang.HolProg 64 :=
.seq RemovedBody312_329 RemovedBody312_356

def RemovedBody312_358 : StackLang.HolProg 64 :=
.seq RemovedBody312_300 RemovedBody312_357

def RemovedBody312_359 : StackLang.HolProg 64 :=
.seq RemovedBody312_297 RemovedBody312_358

def RemovedBody312_360 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody312_361 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody312_362 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load8 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 4 0#64))

def RemovedBody312_363 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody312_364 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsl 1 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def RemovedBody312_365 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody312_366 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 1 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 2)))

def RemovedBody312_367 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 1 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 32#64)))

def RemovedBody312_368 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody312_369 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 3
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 1 0#64))

def RemovedBody312_370 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody312_371 : StackLang.HolProg 64 :=
.seq RemovedBody312_369 RemovedBody312_370

def RemovedBody312_372 : StackLang.HolProg 64 :=
.seq RemovedBody312_368 RemovedBody312_371

def RemovedBody312_373 : StackLang.HolProg 64 :=
.seq RemovedBody312_367 RemovedBody312_372

def RemovedBody312_374 : StackLang.HolProg 64 :=
.seq RemovedBody312_366 RemovedBody312_373

def RemovedBody312_375 : StackLang.HolProg 64 :=
.seq RemovedBody312_365 RemovedBody312_374

def RemovedBody312_376 : StackLang.HolProg 64 :=
.seq RemovedBody312_364 RemovedBody312_375

def RemovedBody312_377 : StackLang.HolProg 64 :=
.seq RemovedBody312_363 RemovedBody312_376

def RemovedBody312_378 : StackLang.HolProg 64 :=
.seq RemovedBody312_362 RemovedBody312_377

def RemovedBody312_379 : StackLang.HolProg 64 :=
.seq RemovedBody312_361 RemovedBody312_378

def RemovedBody312_380 : StackLang.HolProg 64 :=
.seq RemovedBody312_360 RemovedBody312_379

def RemovedBody312_381 : StackLang.HolProg 64 :=
.seq RemovedBody312_359 RemovedBody312_380

def RemovedBody312_382 : StackLang.HolProg 64 :=
.seq RemovedBody312_296 RemovedBody312_381

def RemovedBody312_383 : StackLang.HolProg 64 :=
.seq RemovedBody312_295 RemovedBody312_382

def RemovedBody312_384 : StackLang.HolProg 64 :=
.seq RemovedBody312_294 RemovedBody312_383

def RemovedBody312_385 : StackLang.HolProg 64 :=
.seq RemovedBody312_293 RemovedBody312_384

def RemovedBody312_386 : StackLang.HolProg 64 :=
.seq RemovedBody312_292 RemovedBody312_385

def RemovedBody312_387 : StackLang.HolProg 64 :=
.seq RemovedBody312_291 RemovedBody312_386

def RemovedBody312_388 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.equal) 0 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1) RemovedBody312_290 RemovedBody312_387

def RemovedBody312_389 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody312_390 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 1 2
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 2)))

def RemovedBody312_391 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 80#64)))

def RemovedBody312_392 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 0

def RemovedBody312_393 : StackLang.HolProg 64 :=
.seq RemovedBody312_391 RemovedBody312_392

def RemovedBody312_394 : StackLang.HolProg 64 :=
.seq RemovedBody312_390 RemovedBody312_393

def RemovedBody312_395 : StackLang.HolProg 64 :=
.seq RemovedBody312_389 RemovedBody312_394

def RemovedBody312_396 : StackLang.HolProg 64 :=
.seq RemovedBody312_388 RemovedBody312_395

def RemovedBody312_397 : StackLang.HolProg 64 :=
.seq RemovedBody312_271 RemovedBody312_396

def RemovedBody312_398 : StackLang.HolProg 64 :=
.seq RemovedBody312_270 RemovedBody312_397

def RemovedBody312_399 : StackLang.HolProg 64 :=
.seq RemovedBody312_269 RemovedBody312_398

def RemovedBody312_400 : StackLang.HolProg 64 :=
.seq RemovedBody312_268 RemovedBody312_399

def RemovedBody312_401 : StackLang.HolProg 64 :=
.seq RemovedBody312_117 RemovedBody312_400

def RemovedBody312_402 : StackLang.HolProg 64 :=
.seq RemovedBody312_116 RemovedBody312_401

def RemovedBody312_403 : StackLang.HolProg 64 :=
.seq RemovedBody312_115 RemovedBody312_402

def RemovedBody312_404 : StackLang.HolProg 64 :=
.seq RemovedBody312_114 RemovedBody312_403

def RemovedBody312_405 : StackLang.HolProg 64 :=
.seq RemovedBody312_23 RemovedBody312_404

def RemovedBody312_406 : StackLang.HolProg 64 :=
.seq RemovedBody312_6 RemovedBody312_405

def Removed312 : Nat × StackLang.HolProg 64 := (312, RemovedBody312_406)
theorem Removed312_eq : StackRemove.progComp false riscvConfig.addrOffset (riscvConfig.regCount - (riscvConfig.avoidRegs.length + 3)) Alloc312 = Removed312 := by
  kernel_rfl
#print axioms Removed312_eq
end InitECandidate.Proofs.BackendStages
