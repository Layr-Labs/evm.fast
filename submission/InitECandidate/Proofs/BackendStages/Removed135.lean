import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.BackendStages.Alloc135
import Flapjack.Compiler.Backend.Backend
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
namespace InitECandidate.Proofs.BackendStages
def RemovedBody135_0 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 56#64)))

def RemovedBody135_1 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 2#64)

def RemovedBody135_2 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 1

def RemovedBody135_3 : StackLang.HolProg 64 :=
.seq RemovedBody135_1 RemovedBody135_2

def RemovedBody135_4 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody135_5 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) RemovedBody135_3 RemovedBody135_4

def RemovedBody135_6 : StackLang.HolProg 64 :=
.seq RemovedBody135_0 RemovedBody135_5

def RemovedBody135_7 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 16 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def RemovedBody135_8 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 15 2
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 2)))

def RemovedBody135_9 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 14 3
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 3)))

def RemovedBody135_10 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 13 4
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 4)))

def RemovedBody135_11 : StackLang.HolProg 64 :=
.seq RemovedBody135_9 RemovedBody135_10

def RemovedBody135_12 : StackLang.HolProg 64 :=
.seq RemovedBody135_8 RemovedBody135_11

def RemovedBody135_13 : StackLang.HolProg 64 :=
.seq RemovedBody135_7 RemovedBody135_12

def RemovedBody135_14 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 1 12
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 11)))

def RemovedBody135_15 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody135_16 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 1 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 10)))

def RemovedBody135_17 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody135_18 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 1 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 9)))

def RemovedBody135_19 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 2 0#64)

def RemovedBody135_20 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody135_21 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 0#64)

def RemovedBody135_22 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 2 0#64)

def RemovedBody135_23 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 3 0#64)

def RemovedBody135_24 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 4 0#64)

def RemovedBody135_25 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody135_26 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 56#64)))

def RemovedBody135_27 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 0

def RemovedBody135_28 : StackLang.HolProg 64 :=
.seq RemovedBody135_26 RemovedBody135_27

def RemovedBody135_29 : StackLang.HolProg 64 :=
.seq RemovedBody135_25 RemovedBody135_28

def RemovedBody135_30 : StackLang.HolProg 64 :=
.seq RemovedBody135_24 RemovedBody135_29

def RemovedBody135_31 : StackLang.HolProg 64 :=
.seq RemovedBody135_23 RemovedBody135_30

def RemovedBody135_32 : StackLang.HolProg 64 :=
.seq RemovedBody135_22 RemovedBody135_31

def RemovedBody135_33 : StackLang.HolProg 64 :=
.seq RemovedBody135_21 RemovedBody135_32

def RemovedBody135_34 : StackLang.HolProg 64 :=
.seq RemovedBody135_20 RemovedBody135_33

def RemovedBody135_35 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody135_36 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.equal) 1 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 2) RemovedBody135_34 RemovedBody135_35

def RemovedBody135_37 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody135_38 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody135_39 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 1 16
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 16)))

def RemovedBody135_40 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 2 15
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 15)))

def RemovedBody135_41 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 3 14
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 14)))

def RemovedBody135_42 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 4 13
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 13)))

def RemovedBody135_43 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 48#64))

def RemovedBody135_44 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 12
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 40#64))

def RemovedBody135_45 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 10
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 32#64))

def RemovedBody135_46 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 9
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 24#64))

def RemovedBody135_47 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 11
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody135_48 : StackLang.HolProg 64 :=
.seq RemovedBody135_46 RemovedBody135_47

def RemovedBody135_49 : StackLang.HolProg 64 :=
.seq RemovedBody135_45 RemovedBody135_48

def RemovedBody135_50 : StackLang.HolProg 64 :=
.seq RemovedBody135_44 RemovedBody135_49

def RemovedBody135_51 : StackLang.HolProg 64 :=
.seq RemovedBody135_43 RemovedBody135_50

def RemovedBody135_52 : StackLang.HolProg 64 :=
.seq RemovedBody135_42 RemovedBody135_51

def RemovedBody135_53 : StackLang.HolProg 64 :=
.seq RemovedBody135_41 RemovedBody135_52

def RemovedBody135_54 : StackLang.HolProg 64 :=
.seq RemovedBody135_40 RemovedBody135_53

def RemovedBody135_55 : StackLang.HolProg 64 :=
.seq RemovedBody135_39 RemovedBody135_54

def RemovedBody135_56 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody135_57 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 90#64)

def RemovedBody135_58 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody135_59 : StackLang.HolProg 64 :=
.seq RemovedBody135_57 RemovedBody135_58

def RemovedBody135_60 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody135_61 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 2#64)

def RemovedBody135_62 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 1

def RemovedBody135_63 : StackLang.HolProg 64 :=
.seq RemovedBody135_61 RemovedBody135_62

def RemovedBody135_64 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody135_65 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) RemovedBody135_63 RemovedBody135_64

def RemovedBody135_66 : StackLang.HolProg 64 :=
.seq RemovedBody135_60 RemovedBody135_65

def RemovedBody135_67 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def RemovedBody135_68 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody135_69 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 135 3

def RemovedBody135_70 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody135_71 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody135_72 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody135_73 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody135_74 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def RemovedBody135_75 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def RemovedBody135_76 : StackLang.HolProg 64 :=
.seq RemovedBody135_74 RemovedBody135_75

def RemovedBody135_77 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def RemovedBody135_78 : StackLang.HolProg 64 :=
.seq RemovedBody135_76 RemovedBody135_77

def RemovedBody135_79 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody135_80 : StackLang.HolProg 64 :=
.seq RemovedBody135_78 RemovedBody135_79

def RemovedBody135_81 : StackLang.HolProg 64 :=
.seq RemovedBody135_73 RemovedBody135_80

def RemovedBody135_82 : StackLang.HolProg 64 :=
.seq RemovedBody135_72 RemovedBody135_81

def RemovedBody135_83 : StackLang.HolProg 64 :=
.seq RemovedBody135_71 RemovedBody135_82

def RemovedBody135_84 : StackLang.HolProg 64 :=
.seq RemovedBody135_70 RemovedBody135_83

def RemovedBody135_85 : StackLang.HolProg 64 :=
.seq RemovedBody135_69 RemovedBody135_84

def RemovedBody135_86 : StackLang.HolProg 64 :=
.seq RemovedBody135_68 RemovedBody135_85

def RemovedBody135_87 : StackLang.HolProg 64 :=
.seq RemovedBody135_67 RemovedBody135_86

def RemovedBody135_88 : StackLang.HolProg 64 :=
.seq RemovedBody135_66 RemovedBody135_87

def RemovedBody135_89 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody135_90 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody135_91 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody135_92 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody135_93 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody135_94 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody135_95 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 6 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def RemovedBody135_96 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 48#64))

def RemovedBody135_97 : StackLang.HolProg 64 :=
.seq RemovedBody135_95 RemovedBody135_96

def RemovedBody135_98 : StackLang.HolProg 64 :=
.seq RemovedBody135_94 RemovedBody135_97

def RemovedBody135_99 : StackLang.HolProg 64 :=
.seq RemovedBody135_93 RemovedBody135_98

def RemovedBody135_100 : StackLang.HolProg 64 :=
.seq RemovedBody135_92 RemovedBody135_99

def RemovedBody135_101 : StackLang.HolProg 64 :=
.seq RemovedBody135_91 RemovedBody135_100

def RemovedBody135_102 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 48#64))

def RemovedBody135_103 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def RemovedBody135_104 : StackLang.HolProg 64 :=
.seq RemovedBody135_102 RemovedBody135_103

def RemovedBody135_105 : StackLang.HolProg 64 :=
.call (some (RemovedBody135_101, 0, 135, 2)) (Sum.inl 115) (some (RemovedBody135_104, 135, 3))

def RemovedBody135_106 : StackLang.HolProg 64 :=
.seq RemovedBody135_90 RemovedBody135_105

def RemovedBody135_107 : StackLang.HolProg 64 :=
.seq RemovedBody135_89 RemovedBody135_106

def RemovedBody135_108 : StackLang.HolProg 64 :=
.seq RemovedBody135_88 RemovedBody135_107

def RemovedBody135_109 : StackLang.HolProg 64 :=
.seq RemovedBody135_59 RemovedBody135_108

def RemovedBody135_110 : StackLang.HolProg 64 :=
.seq RemovedBody135_56 RemovedBody135_109

def RemovedBody135_111 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody135_112 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 1 5
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 5)))

def RemovedBody135_113 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 5 4
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 4)))

def RemovedBody135_114 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 4 3
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 3)))

def RemovedBody135_115 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 3 2
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 2)))

def RemovedBody135_116 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 2 6
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 6)))

def RemovedBody135_117 : StackLang.HolProg 64 :=
.seq RemovedBody135_115 RemovedBody135_116

def RemovedBody135_118 : StackLang.HolProg 64 :=
.seq RemovedBody135_114 RemovedBody135_117

def RemovedBody135_119 : StackLang.HolProg 64 :=
.seq RemovedBody135_113 RemovedBody135_118

def RemovedBody135_120 : StackLang.HolProg 64 :=
.seq RemovedBody135_112 RemovedBody135_119

def RemovedBody135_121 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 6 0#64)

def RemovedBody135_122 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody135_123 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 1 2
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 2)))

def RemovedBody135_124 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 2 3
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 3)))

def RemovedBody135_125 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 3 4
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 4)))

def RemovedBody135_126 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 4 5
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 5)))

def RemovedBody135_127 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 5
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 24#64))

def RemovedBody135_128 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 6
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 32#64))

def RemovedBody135_129 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 7
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody135_130 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 8
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 40#64))

def RemovedBody135_131 : StackLang.HolProg 64 :=
.seq RemovedBody135_129 RemovedBody135_130

def RemovedBody135_132 : StackLang.HolProg 64 :=
.seq RemovedBody135_128 RemovedBody135_131

def RemovedBody135_133 : StackLang.HolProg 64 :=
.seq RemovedBody135_127 RemovedBody135_132

def RemovedBody135_134 : StackLang.HolProg 64 :=
.seq RemovedBody135_126 RemovedBody135_133

def RemovedBody135_135 : StackLang.HolProg 64 :=
.seq RemovedBody135_125 RemovedBody135_134

def RemovedBody135_136 : StackLang.HolProg 64 :=
.seq RemovedBody135_124 RemovedBody135_135

def RemovedBody135_137 : StackLang.HolProg 64 :=
.seq RemovedBody135_123 RemovedBody135_136

def RemovedBody135_138 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody135_139 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 40#64)))

def RemovedBody135_140 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.rawCall 131

def RemovedBody135_141 : StackLang.HolProg 64 :=
.seq RemovedBody135_139 RemovedBody135_140

def RemovedBody135_142 : StackLang.HolProg 64 :=
.seq RemovedBody135_138 RemovedBody135_141

def RemovedBody135_143 : StackLang.HolProg 64 :=
.seq RemovedBody135_137 RemovedBody135_142

def RemovedBody135_144 : StackLang.HolProg 64 :=
.seq RemovedBody135_122 RemovedBody135_143

def RemovedBody135_145 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody135_146 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.equal) 1 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 6) RemovedBody135_144 RemovedBody135_145

def RemovedBody135_147 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody135_148 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody135_149 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551592#64))

def RemovedBody135_150 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsl 1 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 1#64)))

def RemovedBody135_151 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 1 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 26)))

def RemovedBody135_152 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 1 18446744073709551576#64))

def RemovedBody135_153 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 1 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 424#64)))

def RemovedBody135_154 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 48#64))

def RemovedBody135_155 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody135_156 : StackLang.HolProg 64 :=
.seq RemovedBody135_154 RemovedBody135_155

def RemovedBody135_157 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody135_158 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 91#64)

def RemovedBody135_159 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody135_160 : StackLang.HolProg 64 :=
.seq RemovedBody135_158 RemovedBody135_159

def RemovedBody135_161 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody135_162 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 2#64)

def RemovedBody135_163 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 1

def RemovedBody135_164 : StackLang.HolProg 64 :=
.seq RemovedBody135_162 RemovedBody135_163

def RemovedBody135_165 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody135_166 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) RemovedBody135_164 RemovedBody135_165

def RemovedBody135_167 : StackLang.HolProg 64 :=
.seq RemovedBody135_161 RemovedBody135_166

def RemovedBody135_168 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def RemovedBody135_169 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody135_170 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 135 5

def RemovedBody135_171 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody135_172 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody135_173 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody135_174 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody135_175 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def RemovedBody135_176 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def RemovedBody135_177 : StackLang.HolProg 64 :=
.seq RemovedBody135_175 RemovedBody135_176

def RemovedBody135_178 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def RemovedBody135_179 : StackLang.HolProg 64 :=
.seq RemovedBody135_177 RemovedBody135_178

def RemovedBody135_180 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody135_181 : StackLang.HolProg 64 :=
.seq RemovedBody135_179 RemovedBody135_180

def RemovedBody135_182 : StackLang.HolProg 64 :=
.seq RemovedBody135_174 RemovedBody135_181

def RemovedBody135_183 : StackLang.HolProg 64 :=
.seq RemovedBody135_173 RemovedBody135_182

def RemovedBody135_184 : StackLang.HolProg 64 :=
.seq RemovedBody135_172 RemovedBody135_183

def RemovedBody135_185 : StackLang.HolProg 64 :=
.seq RemovedBody135_171 RemovedBody135_184

def RemovedBody135_186 : StackLang.HolProg 64 :=
.seq RemovedBody135_170 RemovedBody135_185

def RemovedBody135_187 : StackLang.HolProg 64 :=
.seq RemovedBody135_169 RemovedBody135_186

def RemovedBody135_188 : StackLang.HolProg 64 :=
.seq RemovedBody135_168 RemovedBody135_187

def RemovedBody135_189 : StackLang.HolProg 64 :=
.seq RemovedBody135_167 RemovedBody135_188

def RemovedBody135_190 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody135_191 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody135_192 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody135_193 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody135_194 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody135_195 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody135_196 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 48#64))

def RemovedBody135_197 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 6
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 40#64))

def RemovedBody135_198 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 4
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 32#64))

def RemovedBody135_199 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 3
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 24#64))

def RemovedBody135_200 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 2
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody135_201 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 5
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody135_202 : StackLang.HolProg 64 :=
.seq RemovedBody135_200 RemovedBody135_201

def RemovedBody135_203 : StackLang.HolProg 64 :=
.seq RemovedBody135_199 RemovedBody135_202

def RemovedBody135_204 : StackLang.HolProg 64 :=
.seq RemovedBody135_198 RemovedBody135_203

def RemovedBody135_205 : StackLang.HolProg 64 :=
.seq RemovedBody135_197 RemovedBody135_204

def RemovedBody135_206 : StackLang.HolProg 64 :=
.seq RemovedBody135_196 RemovedBody135_205

def RemovedBody135_207 : StackLang.HolProg 64 :=
.seq RemovedBody135_195 RemovedBody135_206

def RemovedBody135_208 : StackLang.HolProg 64 :=
.seq RemovedBody135_194 RemovedBody135_207

def RemovedBody135_209 : StackLang.HolProg 64 :=
.seq RemovedBody135_193 RemovedBody135_208

def RemovedBody135_210 : StackLang.HolProg 64 :=
.seq RemovedBody135_192 RemovedBody135_209

def RemovedBody135_211 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 48#64))

def RemovedBody135_212 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 6
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 40#64))

def RemovedBody135_213 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 4
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 32#64))

def RemovedBody135_214 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 3
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 24#64))

def RemovedBody135_215 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 2
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody135_216 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 5
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody135_217 : StackLang.HolProg 64 :=
.seq RemovedBody135_215 RemovedBody135_216

def RemovedBody135_218 : StackLang.HolProg 64 :=
.seq RemovedBody135_214 RemovedBody135_217

def RemovedBody135_219 : StackLang.HolProg 64 :=
.seq RemovedBody135_213 RemovedBody135_218

def RemovedBody135_220 : StackLang.HolProg 64 :=
.seq RemovedBody135_212 RemovedBody135_219

def RemovedBody135_221 : StackLang.HolProg 64 :=
.seq RemovedBody135_211 RemovedBody135_220

def RemovedBody135_222 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def RemovedBody135_223 : StackLang.HolProg 64 :=
.seq RemovedBody135_221 RemovedBody135_222

def RemovedBody135_224 : StackLang.HolProg 64 :=
.call (some (RemovedBody135_210, 0, 135, 4)) (Sum.inl 124) (some (RemovedBody135_223, 135, 5))

def RemovedBody135_225 : StackLang.HolProg 64 :=
.seq RemovedBody135_191 RemovedBody135_224

def RemovedBody135_226 : StackLang.HolProg 64 :=
.seq RemovedBody135_190 RemovedBody135_225

def RemovedBody135_227 : StackLang.HolProg 64 :=
.seq RemovedBody135_189 RemovedBody135_226

def RemovedBody135_228 : StackLang.HolProg 64 :=
.seq RemovedBody135_160 RemovedBody135_227

def RemovedBody135_229 : StackLang.HolProg 64 :=
.seq RemovedBody135_157 RemovedBody135_228

def RemovedBody135_230 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody135_231 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 1 2
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 2)))

def RemovedBody135_232 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 2 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 64#64)))

def RemovedBody135_233 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 7 1#64)

def RemovedBody135_234 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody135_235 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 7
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 2 0#64))

def RemovedBody135_236 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody135_237 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 2 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 72#64)))

def RemovedBody135_238 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 7 0#64)

def RemovedBody135_239 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody135_240 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 7
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 2 0#64))

def RemovedBody135_241 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody135_242 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 2 10#64)

def RemovedBody135_243 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody135_244 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody135_245 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody135_246 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 40#64)))

def RemovedBody135_247 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 2#64)

def RemovedBody135_248 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 1

def RemovedBody135_249 : StackLang.HolProg 64 :=
.seq RemovedBody135_247 RemovedBody135_248

def RemovedBody135_250 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody135_251 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) RemovedBody135_249 RemovedBody135_250

def RemovedBody135_252 : StackLang.HolProg 64 :=
.seq RemovedBody135_246 RemovedBody135_251

def RemovedBody135_253 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.rawCall 128

def RemovedBody135_254 : StackLang.HolProg 64 :=
.seq RemovedBody135_252 RemovedBody135_253

def RemovedBody135_255 : StackLang.HolProg 64 :=
.seq RemovedBody135_245 RemovedBody135_254

def RemovedBody135_256 : StackLang.HolProg 64 :=
.seq RemovedBody135_244 RemovedBody135_255

def RemovedBody135_257 : StackLang.HolProg 64 :=
.seq RemovedBody135_243 RemovedBody135_256

def RemovedBody135_258 : StackLang.HolProg 64 :=
.seq RemovedBody135_242 RemovedBody135_257

def RemovedBody135_259 : StackLang.HolProg 64 :=
.seq RemovedBody135_241 RemovedBody135_258

def RemovedBody135_260 : StackLang.HolProg 64 :=
.seq RemovedBody135_240 RemovedBody135_259

def RemovedBody135_261 : StackLang.HolProg 64 :=
.seq RemovedBody135_239 RemovedBody135_260

def RemovedBody135_262 : StackLang.HolProg 64 :=
.seq RemovedBody135_238 RemovedBody135_261

def RemovedBody135_263 : StackLang.HolProg 64 :=
.seq RemovedBody135_237 RemovedBody135_262

def RemovedBody135_264 : StackLang.HolProg 64 :=
.seq RemovedBody135_236 RemovedBody135_263

def RemovedBody135_265 : StackLang.HolProg 64 :=
.seq RemovedBody135_235 RemovedBody135_264

def RemovedBody135_266 : StackLang.HolProg 64 :=
.seq RemovedBody135_234 RemovedBody135_265

def RemovedBody135_267 : StackLang.HolProg 64 :=
.seq RemovedBody135_233 RemovedBody135_266

def RemovedBody135_268 : StackLang.HolProg 64 :=
.seq RemovedBody135_232 RemovedBody135_267

def RemovedBody135_269 : StackLang.HolProg 64 :=
.seq RemovedBody135_231 RemovedBody135_268

def RemovedBody135_270 : StackLang.HolProg 64 :=
.seq RemovedBody135_230 RemovedBody135_269

def RemovedBody135_271 : StackLang.HolProg 64 :=
.seq RemovedBody135_229 RemovedBody135_270

def RemovedBody135_272 : StackLang.HolProg 64 :=
.seq RemovedBody135_156 RemovedBody135_271

def RemovedBody135_273 : StackLang.HolProg 64 :=
.seq RemovedBody135_153 RemovedBody135_272

def RemovedBody135_274 : StackLang.HolProg 64 :=
.seq RemovedBody135_152 RemovedBody135_273

def RemovedBody135_275 : StackLang.HolProg 64 :=
.seq RemovedBody135_151 RemovedBody135_274

def RemovedBody135_276 : StackLang.HolProg 64 :=
.seq RemovedBody135_150 RemovedBody135_275

def RemovedBody135_277 : StackLang.HolProg 64 :=
.seq RemovedBody135_149 RemovedBody135_276

def RemovedBody135_278 : StackLang.HolProg 64 :=
.seq RemovedBody135_148 RemovedBody135_277

def RemovedBody135_279 : StackLang.HolProg 64 :=
.seq RemovedBody135_147 RemovedBody135_278

def RemovedBody135_280 : StackLang.HolProg 64 :=
.seq RemovedBody135_146 RemovedBody135_279

def RemovedBody135_281 : StackLang.HolProg 64 :=
.seq RemovedBody135_121 RemovedBody135_280

def RemovedBody135_282 : StackLang.HolProg 64 :=
.seq RemovedBody135_120 RemovedBody135_281

def RemovedBody135_283 : StackLang.HolProg 64 :=
.seq RemovedBody135_111 RemovedBody135_282

def RemovedBody135_284 : StackLang.HolProg 64 :=
.seq RemovedBody135_110 RemovedBody135_283

def RemovedBody135_285 : StackLang.HolProg 64 :=
.seq RemovedBody135_55 RemovedBody135_284

def RemovedBody135_286 : StackLang.HolProg 64 :=
.seq RemovedBody135_38 RemovedBody135_285

def RemovedBody135_287 : StackLang.HolProg 64 :=
.seq RemovedBody135_37 RemovedBody135_286

def RemovedBody135_288 : StackLang.HolProg 64 :=
.seq RemovedBody135_36 RemovedBody135_287

def RemovedBody135_289 : StackLang.HolProg 64 :=
.seq RemovedBody135_19 RemovedBody135_288

def RemovedBody135_290 : StackLang.HolProg 64 :=
.seq RemovedBody135_18 RemovedBody135_289

def RemovedBody135_291 : StackLang.HolProg 64 :=
.seq RemovedBody135_17 RemovedBody135_290

def RemovedBody135_292 : StackLang.HolProg 64 :=
.seq RemovedBody135_16 RemovedBody135_291

def RemovedBody135_293 : StackLang.HolProg 64 :=
.seq RemovedBody135_15 RemovedBody135_292

def RemovedBody135_294 : StackLang.HolProg 64 :=
.seq RemovedBody135_14 RemovedBody135_293

def RemovedBody135_295 : StackLang.HolProg 64 :=
.seq RemovedBody135_13 RemovedBody135_294

def RemovedBody135_296 : StackLang.HolProg 64 :=
.seq RemovedBody135_6 RemovedBody135_295

def Removed135 : Nat × StackLang.HolProg 64 := (135, RemovedBody135_296)
theorem Removed135_eq : StackRemove.progComp false riscvConfig.addrOffset (riscvConfig.regCount - (riscvConfig.avoidRegs.length + 3)) Alloc135 = Removed135 := by
  kernel_rfl
#print axioms Removed135_eq
end InitECandidate.Proofs.BackendStages
