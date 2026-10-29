import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.BackendStages.Alloc212
import Flapjack.Compiler.Backend.Backend
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
namespace InitECandidate.Proofs.BackendStages
def RemovedBody212_0 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 112#64)))

def RemovedBody212_1 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 2#64)

def RemovedBody212_2 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 1

def RemovedBody212_3 : StackLang.HolProg 64 :=
.seq RemovedBody212_1 RemovedBody212_2

def RemovedBody212_4 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody212_5 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) RemovedBody212_3 RemovedBody212_4

def RemovedBody212_6 : StackLang.HolProg 64 :=
.seq RemovedBody212_0 RemovedBody212_5

def RemovedBody212_7 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 104#64))

def RemovedBody212_8 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 8
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 96#64))

def RemovedBody212_9 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 4
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 88#64))

def RemovedBody212_10 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 12
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 80#64))

def RemovedBody212_11 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 2
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 72#64))

def RemovedBody212_12 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 10
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 64#64))

def RemovedBody212_13 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 6
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 56#64))

def RemovedBody212_14 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 48#64))

def RemovedBody212_15 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 9
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 40#64))

def RemovedBody212_16 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 5
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 32#64))

def RemovedBody212_17 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 3
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 24#64))

def RemovedBody212_18 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 11
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody212_19 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 7
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody212_20 : StackLang.HolProg 64 :=
.seq RemovedBody212_18 RemovedBody212_19

def RemovedBody212_21 : StackLang.HolProg 64 :=
.seq RemovedBody212_17 RemovedBody212_20

def RemovedBody212_22 : StackLang.HolProg 64 :=
.seq RemovedBody212_16 RemovedBody212_21

def RemovedBody212_23 : StackLang.HolProg 64 :=
.seq RemovedBody212_15 RemovedBody212_22

def RemovedBody212_24 : StackLang.HolProg 64 :=
.seq RemovedBody212_14 RemovedBody212_23

def RemovedBody212_25 : StackLang.HolProg 64 :=
.seq RemovedBody212_13 RemovedBody212_24

def RemovedBody212_26 : StackLang.HolProg 64 :=
.seq RemovedBody212_12 RemovedBody212_25

def RemovedBody212_27 : StackLang.HolProg 64 :=
.seq RemovedBody212_11 RemovedBody212_26

def RemovedBody212_28 : StackLang.HolProg 64 :=
.seq RemovedBody212_10 RemovedBody212_27

def RemovedBody212_29 : StackLang.HolProg 64 :=
.seq RemovedBody212_9 RemovedBody212_28

def RemovedBody212_30 : StackLang.HolProg 64 :=
.seq RemovedBody212_8 RemovedBody212_29

def RemovedBody212_31 : StackLang.HolProg 64 :=
.seq RemovedBody212_7 RemovedBody212_30

def RemovedBody212_32 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody212_33 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 271#64)

def RemovedBody212_34 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody212_35 : StackLang.HolProg 64 :=
.seq RemovedBody212_33 RemovedBody212_34

def RemovedBody212_36 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody212_37 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 2#64)

def RemovedBody212_38 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 1

def RemovedBody212_39 : StackLang.HolProg 64 :=
.seq RemovedBody212_37 RemovedBody212_38

def RemovedBody212_40 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody212_41 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) RemovedBody212_39 RemovedBody212_40

def RemovedBody212_42 : StackLang.HolProg 64 :=
.seq RemovedBody212_36 RemovedBody212_41

def RemovedBody212_43 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def RemovedBody212_44 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody212_45 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 212 3

def RemovedBody212_46 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody212_47 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody212_48 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody212_49 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody212_50 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def RemovedBody212_51 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def RemovedBody212_52 : StackLang.HolProg 64 :=
.seq RemovedBody212_50 RemovedBody212_51

def RemovedBody212_53 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def RemovedBody212_54 : StackLang.HolProg 64 :=
.seq RemovedBody212_52 RemovedBody212_53

def RemovedBody212_55 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody212_56 : StackLang.HolProg 64 :=
.seq RemovedBody212_54 RemovedBody212_55

def RemovedBody212_57 : StackLang.HolProg 64 :=
.seq RemovedBody212_49 RemovedBody212_56

def RemovedBody212_58 : StackLang.HolProg 64 :=
.seq RemovedBody212_48 RemovedBody212_57

def RemovedBody212_59 : StackLang.HolProg 64 :=
.seq RemovedBody212_47 RemovedBody212_58

def RemovedBody212_60 : StackLang.HolProg 64 :=
.seq RemovedBody212_46 RemovedBody212_59

def RemovedBody212_61 : StackLang.HolProg 64 :=
.seq RemovedBody212_45 RemovedBody212_60

def RemovedBody212_62 : StackLang.HolProg 64 :=
.seq RemovedBody212_44 RemovedBody212_61

def RemovedBody212_63 : StackLang.HolProg 64 :=
.seq RemovedBody212_43 RemovedBody212_62

def RemovedBody212_64 : StackLang.HolProg 64 :=
.seq RemovedBody212_42 RemovedBody212_63

def RemovedBody212_65 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody212_66 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody212_67 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody212_68 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody212_69 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody212_70 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody212_71 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 9 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def RemovedBody212_72 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 8
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 96#64))

def RemovedBody212_73 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 4
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 88#64))

def RemovedBody212_74 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 80#64))

def RemovedBody212_75 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 96#64))

def RemovedBody212_76 : StackLang.HolProg 64 :=
.seq RemovedBody212_74 RemovedBody212_75

def RemovedBody212_77 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 2
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 72#64))

def RemovedBody212_78 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 64#64))

def RemovedBody212_79 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 88#64))

def RemovedBody212_80 : StackLang.HolProg 64 :=
.seq RemovedBody212_78 RemovedBody212_79

def RemovedBody212_81 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 6
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 56#64))

def RemovedBody212_82 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 48#64))

def RemovedBody212_83 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 40#64))

def RemovedBody212_84 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 72#64))

def RemovedBody212_85 : StackLang.HolProg 64 :=
.seq RemovedBody212_83 RemovedBody212_84

def RemovedBody212_86 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 5
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 32#64))

def RemovedBody212_87 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 3
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 24#64))

def RemovedBody212_88 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody212_89 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 64#64))

def RemovedBody212_90 : StackLang.HolProg 64 :=
.seq RemovedBody212_88 RemovedBody212_89

def RemovedBody212_91 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 7
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody212_92 : StackLang.HolProg 64 :=
.seq RemovedBody212_90 RemovedBody212_91

def RemovedBody212_93 : StackLang.HolProg 64 :=
.seq RemovedBody212_87 RemovedBody212_92

def RemovedBody212_94 : StackLang.HolProg 64 :=
.seq RemovedBody212_86 RemovedBody212_93

def RemovedBody212_95 : StackLang.HolProg 64 :=
.seq RemovedBody212_85 RemovedBody212_94

def RemovedBody212_96 : StackLang.HolProg 64 :=
.seq RemovedBody212_82 RemovedBody212_95

def RemovedBody212_97 : StackLang.HolProg 64 :=
.seq RemovedBody212_81 RemovedBody212_96

def RemovedBody212_98 : StackLang.HolProg 64 :=
.seq RemovedBody212_80 RemovedBody212_97

def RemovedBody212_99 : StackLang.HolProg 64 :=
.seq RemovedBody212_77 RemovedBody212_98

def RemovedBody212_100 : StackLang.HolProg 64 :=
.seq RemovedBody212_76 RemovedBody212_99

def RemovedBody212_101 : StackLang.HolProg 64 :=
.seq RemovedBody212_73 RemovedBody212_100

def RemovedBody212_102 : StackLang.HolProg 64 :=
.seq RemovedBody212_72 RemovedBody212_101

def RemovedBody212_103 : StackLang.HolProg 64 :=
.seq RemovedBody212_71 RemovedBody212_102

def RemovedBody212_104 : StackLang.HolProg 64 :=
.seq RemovedBody212_70 RemovedBody212_103

def RemovedBody212_105 : StackLang.HolProg 64 :=
.seq RemovedBody212_69 RemovedBody212_104

def RemovedBody212_106 : StackLang.HolProg 64 :=
.seq RemovedBody212_68 RemovedBody212_105

def RemovedBody212_107 : StackLang.HolProg 64 :=
.seq RemovedBody212_67 RemovedBody212_106

def RemovedBody212_108 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 8
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 96#64))

def RemovedBody212_109 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 4
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 88#64))

def RemovedBody212_110 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 80#64))

def RemovedBody212_111 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 96#64))

def RemovedBody212_112 : StackLang.HolProg 64 :=
.seq RemovedBody212_110 RemovedBody212_111

def RemovedBody212_113 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 2
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 72#64))

def RemovedBody212_114 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 64#64))

def RemovedBody212_115 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 88#64))

def RemovedBody212_116 : StackLang.HolProg 64 :=
.seq RemovedBody212_114 RemovedBody212_115

def RemovedBody212_117 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 6
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 56#64))

def RemovedBody212_118 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 48#64))

def RemovedBody212_119 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 40#64))

def RemovedBody212_120 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 72#64))

def RemovedBody212_121 : StackLang.HolProg 64 :=
.seq RemovedBody212_119 RemovedBody212_120

def RemovedBody212_122 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 5
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 32#64))

def RemovedBody212_123 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 3
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 24#64))

def RemovedBody212_124 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody212_125 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 64#64))

def RemovedBody212_126 : StackLang.HolProg 64 :=
.seq RemovedBody212_124 RemovedBody212_125

def RemovedBody212_127 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 7
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody212_128 : StackLang.HolProg 64 :=
.seq RemovedBody212_126 RemovedBody212_127

def RemovedBody212_129 : StackLang.HolProg 64 :=
.seq RemovedBody212_123 RemovedBody212_128

def RemovedBody212_130 : StackLang.HolProg 64 :=
.seq RemovedBody212_122 RemovedBody212_129

def RemovedBody212_131 : StackLang.HolProg 64 :=
.seq RemovedBody212_121 RemovedBody212_130

def RemovedBody212_132 : StackLang.HolProg 64 :=
.seq RemovedBody212_118 RemovedBody212_131

def RemovedBody212_133 : StackLang.HolProg 64 :=
.seq RemovedBody212_117 RemovedBody212_132

def RemovedBody212_134 : StackLang.HolProg 64 :=
.seq RemovedBody212_116 RemovedBody212_133

def RemovedBody212_135 : StackLang.HolProg 64 :=
.seq RemovedBody212_113 RemovedBody212_134

def RemovedBody212_136 : StackLang.HolProg 64 :=
.seq RemovedBody212_112 RemovedBody212_135

def RemovedBody212_137 : StackLang.HolProg 64 :=
.seq RemovedBody212_109 RemovedBody212_136

def RemovedBody212_138 : StackLang.HolProg 64 :=
.seq RemovedBody212_108 RemovedBody212_137

def RemovedBody212_139 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def RemovedBody212_140 : StackLang.HolProg 64 :=
.seq RemovedBody212_138 RemovedBody212_139

def RemovedBody212_141 : StackLang.HolProg 64 :=
.call (some (RemovedBody212_107, 0, 212, 2)) (Sum.inl 106) (some (RemovedBody212_140, 212, 3))

def RemovedBody212_142 : StackLang.HolProg 64 :=
.seq RemovedBody212_66 RemovedBody212_141

def RemovedBody212_143 : StackLang.HolProg 64 :=
.seq RemovedBody212_65 RemovedBody212_142

def RemovedBody212_144 : StackLang.HolProg 64 :=
.seq RemovedBody212_64 RemovedBody212_143

def RemovedBody212_145 : StackLang.HolProg 64 :=
.seq RemovedBody212_35 RemovedBody212_144

def RemovedBody212_146 : StackLang.HolProg 64 :=
.seq RemovedBody212_32 RemovedBody212_145

def RemovedBody212_147 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody212_148 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 1 0
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 0)))

def RemovedBody212_149 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 9
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 80#64))

def RemovedBody212_150 : StackLang.HolProg 64 :=
.seq RemovedBody212_148 RemovedBody212_149

def RemovedBody212_151 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody212_152 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 272#64)

def RemovedBody212_153 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody212_154 : StackLang.HolProg 64 :=
.seq RemovedBody212_152 RemovedBody212_153

def RemovedBody212_155 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody212_156 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 2#64)

def RemovedBody212_157 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 1

def RemovedBody212_158 : StackLang.HolProg 64 :=
.seq RemovedBody212_156 RemovedBody212_157

def RemovedBody212_159 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody212_160 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) RemovedBody212_158 RemovedBody212_159

def RemovedBody212_161 : StackLang.HolProg 64 :=
.seq RemovedBody212_155 RemovedBody212_160

def RemovedBody212_162 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def RemovedBody212_163 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody212_164 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 212 5

def RemovedBody212_165 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody212_166 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody212_167 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody212_168 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody212_169 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def RemovedBody212_170 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def RemovedBody212_171 : StackLang.HolProg 64 :=
.seq RemovedBody212_169 RemovedBody212_170

def RemovedBody212_172 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def RemovedBody212_173 : StackLang.HolProg 64 :=
.seq RemovedBody212_171 RemovedBody212_172

def RemovedBody212_174 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody212_175 : StackLang.HolProg 64 :=
.seq RemovedBody212_173 RemovedBody212_174

def RemovedBody212_176 : StackLang.HolProg 64 :=
.seq RemovedBody212_168 RemovedBody212_175

def RemovedBody212_177 : StackLang.HolProg 64 :=
.seq RemovedBody212_167 RemovedBody212_176

def RemovedBody212_178 : StackLang.HolProg 64 :=
.seq RemovedBody212_166 RemovedBody212_177

def RemovedBody212_179 : StackLang.HolProg 64 :=
.seq RemovedBody212_165 RemovedBody212_178

def RemovedBody212_180 : StackLang.HolProg 64 :=
.seq RemovedBody212_164 RemovedBody212_179

def RemovedBody212_181 : StackLang.HolProg 64 :=
.seq RemovedBody212_163 RemovedBody212_180

def RemovedBody212_182 : StackLang.HolProg 64 :=
.seq RemovedBody212_162 RemovedBody212_181

def RemovedBody212_183 : StackLang.HolProg 64 :=
.seq RemovedBody212_161 RemovedBody212_182

def RemovedBody212_184 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody212_185 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody212_186 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody212_187 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody212_188 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody212_189 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody212_190 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 9 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def RemovedBody212_191 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 8
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 96#64))

def RemovedBody212_192 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 6
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 88#64))

def RemovedBody212_193 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 80#64))

def RemovedBody212_194 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 5
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 72#64))

def RemovedBody212_195 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 7
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 64#64))

def RemovedBody212_196 : StackLang.HolProg 64 :=
.seq RemovedBody212_194 RemovedBody212_195

def RemovedBody212_197 : StackLang.HolProg 64 :=
.seq RemovedBody212_193 RemovedBody212_196

def RemovedBody212_198 : StackLang.HolProg 64 :=
.seq RemovedBody212_192 RemovedBody212_197

def RemovedBody212_199 : StackLang.HolProg 64 :=
.seq RemovedBody212_191 RemovedBody212_198

def RemovedBody212_200 : StackLang.HolProg 64 :=
.seq RemovedBody212_190 RemovedBody212_199

def RemovedBody212_201 : StackLang.HolProg 64 :=
.seq RemovedBody212_189 RemovedBody212_200

def RemovedBody212_202 : StackLang.HolProg 64 :=
.seq RemovedBody212_188 RemovedBody212_201

def RemovedBody212_203 : StackLang.HolProg 64 :=
.seq RemovedBody212_187 RemovedBody212_202

def RemovedBody212_204 : StackLang.HolProg 64 :=
.seq RemovedBody212_186 RemovedBody212_203

def RemovedBody212_205 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 8
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 96#64))

def RemovedBody212_206 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 6
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 88#64))

def RemovedBody212_207 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 80#64))

def RemovedBody212_208 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 5
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 72#64))

def RemovedBody212_209 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 7
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 64#64))

def RemovedBody212_210 : StackLang.HolProg 64 :=
.seq RemovedBody212_208 RemovedBody212_209

def RemovedBody212_211 : StackLang.HolProg 64 :=
.seq RemovedBody212_207 RemovedBody212_210

def RemovedBody212_212 : StackLang.HolProg 64 :=
.seq RemovedBody212_206 RemovedBody212_211

def RemovedBody212_213 : StackLang.HolProg 64 :=
.seq RemovedBody212_205 RemovedBody212_212

def RemovedBody212_214 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def RemovedBody212_215 : StackLang.HolProg 64 :=
.seq RemovedBody212_213 RemovedBody212_214

def RemovedBody212_216 : StackLang.HolProg 64 :=
.call (some (RemovedBody212_204, 0, 212, 4)) (Sum.inl 117) (some (RemovedBody212_215, 212, 5))

def RemovedBody212_217 : StackLang.HolProg 64 :=
.seq RemovedBody212_185 RemovedBody212_216

def RemovedBody212_218 : StackLang.HolProg 64 :=
.seq RemovedBody212_184 RemovedBody212_217

def RemovedBody212_219 : StackLang.HolProg 64 :=
.seq RemovedBody212_183 RemovedBody212_218

def RemovedBody212_220 : StackLang.HolProg 64 :=
.seq RemovedBody212_154 RemovedBody212_219

def RemovedBody212_221 : StackLang.HolProg 64 :=
.seq RemovedBody212_151 RemovedBody212_220

def RemovedBody212_222 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody212_223 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody212_224 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 1#64)

def RemovedBody212_225 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody212_226 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 1 9
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 9)))

def RemovedBody212_227 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody212_228 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 273#64)

def RemovedBody212_229 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody212_230 : StackLang.HolProg 64 :=
.seq RemovedBody212_228 RemovedBody212_229

def RemovedBody212_231 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody212_232 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 2#64)

def RemovedBody212_233 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 1

def RemovedBody212_234 : StackLang.HolProg 64 :=
.seq RemovedBody212_232 RemovedBody212_233

def RemovedBody212_235 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody212_236 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) RemovedBody212_234 RemovedBody212_235

def RemovedBody212_237 : StackLang.HolProg 64 :=
.seq RemovedBody212_231 RemovedBody212_236

def RemovedBody212_238 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def RemovedBody212_239 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody212_240 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 212 7

def RemovedBody212_241 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody212_242 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody212_243 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody212_244 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody212_245 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def RemovedBody212_246 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def RemovedBody212_247 : StackLang.HolProg 64 :=
.seq RemovedBody212_245 RemovedBody212_246

def RemovedBody212_248 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def RemovedBody212_249 : StackLang.HolProg 64 :=
.seq RemovedBody212_247 RemovedBody212_248

def RemovedBody212_250 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody212_251 : StackLang.HolProg 64 :=
.seq RemovedBody212_249 RemovedBody212_250

def RemovedBody212_252 : StackLang.HolProg 64 :=
.seq RemovedBody212_244 RemovedBody212_251

def RemovedBody212_253 : StackLang.HolProg 64 :=
.seq RemovedBody212_243 RemovedBody212_252

def RemovedBody212_254 : StackLang.HolProg 64 :=
.seq RemovedBody212_242 RemovedBody212_253

def RemovedBody212_255 : StackLang.HolProg 64 :=
.seq RemovedBody212_241 RemovedBody212_254

def RemovedBody212_256 : StackLang.HolProg 64 :=
.seq RemovedBody212_240 RemovedBody212_255

def RemovedBody212_257 : StackLang.HolProg 64 :=
.seq RemovedBody212_239 RemovedBody212_256

def RemovedBody212_258 : StackLang.HolProg 64 :=
.seq RemovedBody212_238 RemovedBody212_257

def RemovedBody212_259 : StackLang.HolProg 64 :=
.seq RemovedBody212_237 RemovedBody212_258

def RemovedBody212_260 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody212_261 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody212_262 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody212_263 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody212_264 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody212_265 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody212_266 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 9 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def RemovedBody212_267 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 104#64))

def RemovedBody212_268 : StackLang.HolProg 64 :=
.seq RemovedBody212_266 RemovedBody212_267

def RemovedBody212_269 : StackLang.HolProg 64 :=
.seq RemovedBody212_265 RemovedBody212_268

def RemovedBody212_270 : StackLang.HolProg 64 :=
.seq RemovedBody212_264 RemovedBody212_269

def RemovedBody212_271 : StackLang.HolProg 64 :=
.seq RemovedBody212_263 RemovedBody212_270

def RemovedBody212_272 : StackLang.HolProg 64 :=
.seq RemovedBody212_262 RemovedBody212_271

def RemovedBody212_273 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 104#64))

def RemovedBody212_274 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def RemovedBody212_275 : StackLang.HolProg 64 :=
.seq RemovedBody212_273 RemovedBody212_274

def RemovedBody212_276 : StackLang.HolProg 64 :=
.call (some (RemovedBody212_272, 0, 212, 6)) (Sum.inl 116) (some (RemovedBody212_275, 212, 7))

def RemovedBody212_277 : StackLang.HolProg 64 :=
.seq RemovedBody212_261 RemovedBody212_276

def RemovedBody212_278 : StackLang.HolProg 64 :=
.seq RemovedBody212_260 RemovedBody212_277

def RemovedBody212_279 : StackLang.HolProg 64 :=
.seq RemovedBody212_259 RemovedBody212_278

def RemovedBody212_280 : StackLang.HolProg 64 :=
.seq RemovedBody212_230 RemovedBody212_279

def RemovedBody212_281 : StackLang.HolProg 64 :=
.seq RemovedBody212_227 RemovedBody212_280

def RemovedBody212_282 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody212_283 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody212_284 : StackLang.HolProg 64 :=
.seq RemovedBody212_282 RemovedBody212_283

def RemovedBody212_285 : StackLang.HolProg 64 :=
.seq RemovedBody212_281 RemovedBody212_284

def RemovedBody212_286 : StackLang.HolProg 64 :=
.seq RemovedBody212_226 RemovedBody212_285

def RemovedBody212_287 : StackLang.HolProg 64 :=
.seq RemovedBody212_225 RemovedBody212_286

def RemovedBody212_288 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody212_289 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 104#64))

def RemovedBody212_290 : StackLang.HolProg 64 :=
.seq RemovedBody212_288 RemovedBody212_289

def RemovedBody212_291 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.equal) 0 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1) RemovedBody212_287 RemovedBody212_290

def RemovedBody212_292 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody212_293 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 1 9
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 9)))

def RemovedBody212_294 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 112#64)))

def RemovedBody212_295 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 0

def RemovedBody212_296 : StackLang.HolProg 64 :=
.seq RemovedBody212_294 RemovedBody212_295

def RemovedBody212_297 : StackLang.HolProg 64 :=
.seq RemovedBody212_293 RemovedBody212_296

def RemovedBody212_298 : StackLang.HolProg 64 :=
.seq RemovedBody212_292 RemovedBody212_297

def RemovedBody212_299 : StackLang.HolProg 64 :=
.seq RemovedBody212_291 RemovedBody212_298

def RemovedBody212_300 : StackLang.HolProg 64 :=
.seq RemovedBody212_224 RemovedBody212_299

def RemovedBody212_301 : StackLang.HolProg 64 :=
.seq RemovedBody212_223 RemovedBody212_300

def RemovedBody212_302 : StackLang.HolProg 64 :=
.seq RemovedBody212_222 RemovedBody212_301

def RemovedBody212_303 : StackLang.HolProg 64 :=
.seq RemovedBody212_221 RemovedBody212_302

def RemovedBody212_304 : StackLang.HolProg 64 :=
.seq RemovedBody212_150 RemovedBody212_303

def RemovedBody212_305 : StackLang.HolProg 64 :=
.seq RemovedBody212_147 RemovedBody212_304

def RemovedBody212_306 : StackLang.HolProg 64 :=
.seq RemovedBody212_146 RemovedBody212_305

def RemovedBody212_307 : StackLang.HolProg 64 :=
.seq RemovedBody212_31 RemovedBody212_306

def RemovedBody212_308 : StackLang.HolProg 64 :=
.seq RemovedBody212_6 RemovedBody212_307

def Removed212 : Nat × StackLang.HolProg 64 := (212, RemovedBody212_308)
theorem Removed212_eq : StackRemove.progComp false riscvConfig.addrOffset (riscvConfig.regCount - (riscvConfig.avoidRegs.length + 3)) Alloc212 = Removed212 := by
  kernel_rfl
#print axioms Removed212_eq
end InitECandidate.Proofs.BackendStages
