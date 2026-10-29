import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.BackendStages.Alloc643
import Flapjack.Compiler.Backend.Backend
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
namespace InitECandidate.Proofs.BackendStages
def RemovedBody643_0 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 80#64)))

def RemovedBody643_1 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 2#64)

def RemovedBody643_2 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 1

def RemovedBody643_3 : StackLang.HolProg 64 :=
.seq RemovedBody643_1 RemovedBody643_2

def RemovedBody643_4 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody643_5 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) RemovedBody643_3 RemovedBody643_4

def RemovedBody643_6 : StackLang.HolProg 64 :=
.seq RemovedBody643_0 RemovedBody643_5

def RemovedBody643_7 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 72#64))

def RemovedBody643_8 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 8
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 64#64))

def RemovedBody643_9 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 4
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 56#64))

def RemovedBody643_10 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 2
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 48#64))

def RemovedBody643_11 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 6
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 40#64))

def RemovedBody643_12 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 32#64))

def RemovedBody643_13 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 5
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 24#64))

def RemovedBody643_14 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 3
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody643_15 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 7
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody643_16 : StackLang.HolProg 64 :=
.seq RemovedBody643_14 RemovedBody643_15

def RemovedBody643_17 : StackLang.HolProg 64 :=
.seq RemovedBody643_13 RemovedBody643_16

def RemovedBody643_18 : StackLang.HolProg 64 :=
.seq RemovedBody643_12 RemovedBody643_17

def RemovedBody643_19 : StackLang.HolProg 64 :=
.seq RemovedBody643_11 RemovedBody643_18

def RemovedBody643_20 : StackLang.HolProg 64 :=
.seq RemovedBody643_10 RemovedBody643_19

def RemovedBody643_21 : StackLang.HolProg 64 :=
.seq RemovedBody643_9 RemovedBody643_20

def RemovedBody643_22 : StackLang.HolProg 64 :=
.seq RemovedBody643_8 RemovedBody643_21

def RemovedBody643_23 : StackLang.HolProg 64 :=
.seq RemovedBody643_7 RemovedBody643_22

def RemovedBody643_24 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody643_25 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 2621#64)

def RemovedBody643_26 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody643_27 : StackLang.HolProg 64 :=
.seq RemovedBody643_25 RemovedBody643_26

def RemovedBody643_28 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody643_29 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 2#64)

def RemovedBody643_30 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 1

def RemovedBody643_31 : StackLang.HolProg 64 :=
.seq RemovedBody643_29 RemovedBody643_30

def RemovedBody643_32 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody643_33 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) RemovedBody643_31 RemovedBody643_32

def RemovedBody643_34 : StackLang.HolProg 64 :=
.seq RemovedBody643_28 RemovedBody643_33

def RemovedBody643_35 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def RemovedBody643_36 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody643_37 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 643 3

def RemovedBody643_38 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody643_39 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody643_40 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody643_41 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody643_42 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def RemovedBody643_43 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def RemovedBody643_44 : StackLang.HolProg 64 :=
.seq RemovedBody643_42 RemovedBody643_43

def RemovedBody643_45 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def RemovedBody643_46 : StackLang.HolProg 64 :=
.seq RemovedBody643_44 RemovedBody643_45

def RemovedBody643_47 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody643_48 : StackLang.HolProg 64 :=
.seq RemovedBody643_46 RemovedBody643_47

def RemovedBody643_49 : StackLang.HolProg 64 :=
.seq RemovedBody643_41 RemovedBody643_48

def RemovedBody643_50 : StackLang.HolProg 64 :=
.seq RemovedBody643_40 RemovedBody643_49

def RemovedBody643_51 : StackLang.HolProg 64 :=
.seq RemovedBody643_39 RemovedBody643_50

def RemovedBody643_52 : StackLang.HolProg 64 :=
.seq RemovedBody643_38 RemovedBody643_51

def RemovedBody643_53 : StackLang.HolProg 64 :=
.seq RemovedBody643_37 RemovedBody643_52

def RemovedBody643_54 : StackLang.HolProg 64 :=
.seq RemovedBody643_36 RemovedBody643_53

def RemovedBody643_55 : StackLang.HolProg 64 :=
.seq RemovedBody643_35 RemovedBody643_54

def RemovedBody643_56 : StackLang.HolProg 64 :=
.seq RemovedBody643_34 RemovedBody643_55

def RemovedBody643_57 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody643_58 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody643_59 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody643_60 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody643_61 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody643_62 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody643_63 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 9 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def RemovedBody643_64 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 8
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 64#64))

def RemovedBody643_65 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 4
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 56#64))

def RemovedBody643_66 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 2
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 48#64))

def RemovedBody643_67 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 6
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 40#64))

def RemovedBody643_68 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 32#64))

def RemovedBody643_69 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 5
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 24#64))

def RemovedBody643_70 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 3
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody643_71 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 7
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody643_72 : StackLang.HolProg 64 :=
.seq RemovedBody643_70 RemovedBody643_71

def RemovedBody643_73 : StackLang.HolProg 64 :=
.seq RemovedBody643_69 RemovedBody643_72

def RemovedBody643_74 : StackLang.HolProg 64 :=
.seq RemovedBody643_68 RemovedBody643_73

def RemovedBody643_75 : StackLang.HolProg 64 :=
.seq RemovedBody643_67 RemovedBody643_74

def RemovedBody643_76 : StackLang.HolProg 64 :=
.seq RemovedBody643_66 RemovedBody643_75

def RemovedBody643_77 : StackLang.HolProg 64 :=
.seq RemovedBody643_65 RemovedBody643_76

def RemovedBody643_78 : StackLang.HolProg 64 :=
.seq RemovedBody643_64 RemovedBody643_77

def RemovedBody643_79 : StackLang.HolProg 64 :=
.seq RemovedBody643_63 RemovedBody643_78

def RemovedBody643_80 : StackLang.HolProg 64 :=
.seq RemovedBody643_62 RemovedBody643_79

def RemovedBody643_81 : StackLang.HolProg 64 :=
.seq RemovedBody643_61 RemovedBody643_80

def RemovedBody643_82 : StackLang.HolProg 64 :=
.seq RemovedBody643_60 RemovedBody643_81

def RemovedBody643_83 : StackLang.HolProg 64 :=
.seq RemovedBody643_59 RemovedBody643_82

def RemovedBody643_84 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 8
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 64#64))

def RemovedBody643_85 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 4
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 56#64))

def RemovedBody643_86 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 2
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 48#64))

def RemovedBody643_87 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 6
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 40#64))

def RemovedBody643_88 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 32#64))

def RemovedBody643_89 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 5
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 24#64))

def RemovedBody643_90 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 3
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody643_91 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 7
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody643_92 : StackLang.HolProg 64 :=
.seq RemovedBody643_90 RemovedBody643_91

def RemovedBody643_93 : StackLang.HolProg 64 :=
.seq RemovedBody643_89 RemovedBody643_92

def RemovedBody643_94 : StackLang.HolProg 64 :=
.seq RemovedBody643_88 RemovedBody643_93

def RemovedBody643_95 : StackLang.HolProg 64 :=
.seq RemovedBody643_87 RemovedBody643_94

def RemovedBody643_96 : StackLang.HolProg 64 :=
.seq RemovedBody643_86 RemovedBody643_95

def RemovedBody643_97 : StackLang.HolProg 64 :=
.seq RemovedBody643_85 RemovedBody643_96

def RemovedBody643_98 : StackLang.HolProg 64 :=
.seq RemovedBody643_84 RemovedBody643_97

def RemovedBody643_99 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def RemovedBody643_100 : StackLang.HolProg 64 :=
.seq RemovedBody643_98 RemovedBody643_99

def RemovedBody643_101 : StackLang.HolProg 64 :=
.call (some (RemovedBody643_83, 0, 643, 2)) (Sum.inl 106) (some (RemovedBody643_100, 643, 3))

def RemovedBody643_102 : StackLang.HolProg 64 :=
.seq RemovedBody643_58 RemovedBody643_101

def RemovedBody643_103 : StackLang.HolProg 64 :=
.seq RemovedBody643_57 RemovedBody643_102

def RemovedBody643_104 : StackLang.HolProg 64 :=
.seq RemovedBody643_56 RemovedBody643_103

def RemovedBody643_105 : StackLang.HolProg 64 :=
.seq RemovedBody643_27 RemovedBody643_104

def RemovedBody643_106 : StackLang.HolProg 64 :=
.seq RemovedBody643_24 RemovedBody643_105

def RemovedBody643_107 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody643_108 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 1 0
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 0)))

def RemovedBody643_109 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 9
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 64#64))

def RemovedBody643_110 : StackLang.HolProg 64 :=
.seq RemovedBody643_108 RemovedBody643_109

def RemovedBody643_111 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody643_112 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 2622#64)

def RemovedBody643_113 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody643_114 : StackLang.HolProg 64 :=
.seq RemovedBody643_112 RemovedBody643_113

def RemovedBody643_115 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody643_116 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 2#64)

def RemovedBody643_117 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 1

def RemovedBody643_118 : StackLang.HolProg 64 :=
.seq RemovedBody643_116 RemovedBody643_117

def RemovedBody643_119 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody643_120 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) RemovedBody643_118 RemovedBody643_119

def RemovedBody643_121 : StackLang.HolProg 64 :=
.seq RemovedBody643_115 RemovedBody643_120

def RemovedBody643_122 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def RemovedBody643_123 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody643_124 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 643 5

def RemovedBody643_125 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody643_126 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody643_127 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody643_128 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody643_129 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def RemovedBody643_130 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def RemovedBody643_131 : StackLang.HolProg 64 :=
.seq RemovedBody643_129 RemovedBody643_130

def RemovedBody643_132 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def RemovedBody643_133 : StackLang.HolProg 64 :=
.seq RemovedBody643_131 RemovedBody643_132

def RemovedBody643_134 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody643_135 : StackLang.HolProg 64 :=
.seq RemovedBody643_133 RemovedBody643_134

def RemovedBody643_136 : StackLang.HolProg 64 :=
.seq RemovedBody643_128 RemovedBody643_135

def RemovedBody643_137 : StackLang.HolProg 64 :=
.seq RemovedBody643_127 RemovedBody643_136

def RemovedBody643_138 : StackLang.HolProg 64 :=
.seq RemovedBody643_126 RemovedBody643_137

def RemovedBody643_139 : StackLang.HolProg 64 :=
.seq RemovedBody643_125 RemovedBody643_138

def RemovedBody643_140 : StackLang.HolProg 64 :=
.seq RemovedBody643_124 RemovedBody643_139

def RemovedBody643_141 : StackLang.HolProg 64 :=
.seq RemovedBody643_123 RemovedBody643_140

def RemovedBody643_142 : StackLang.HolProg 64 :=
.seq RemovedBody643_122 RemovedBody643_141

def RemovedBody643_143 : StackLang.HolProg 64 :=
.seq RemovedBody643_121 RemovedBody643_142

def RemovedBody643_144 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody643_145 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody643_146 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody643_147 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody643_148 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody643_149 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody643_150 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 5 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def RemovedBody643_151 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 64#64))

def RemovedBody643_152 : StackLang.HolProg 64 :=
.seq RemovedBody643_150 RemovedBody643_151

def RemovedBody643_153 : StackLang.HolProg 64 :=
.seq RemovedBody643_149 RemovedBody643_152

def RemovedBody643_154 : StackLang.HolProg 64 :=
.seq RemovedBody643_148 RemovedBody643_153

def RemovedBody643_155 : StackLang.HolProg 64 :=
.seq RemovedBody643_147 RemovedBody643_154

def RemovedBody643_156 : StackLang.HolProg 64 :=
.seq RemovedBody643_146 RemovedBody643_155

def RemovedBody643_157 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 64#64))

def RemovedBody643_158 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def RemovedBody643_159 : StackLang.HolProg 64 :=
.seq RemovedBody643_157 RemovedBody643_158

def RemovedBody643_160 : StackLang.HolProg 64 :=
.call (some (RemovedBody643_156, 0, 643, 4)) (Sum.inl 117) (some (RemovedBody643_159, 643, 5))

def RemovedBody643_161 : StackLang.HolProg 64 :=
.seq RemovedBody643_145 RemovedBody643_160

def RemovedBody643_162 : StackLang.HolProg 64 :=
.seq RemovedBody643_144 RemovedBody643_161

def RemovedBody643_163 : StackLang.HolProg 64 :=
.seq RemovedBody643_143 RemovedBody643_162

def RemovedBody643_164 : StackLang.HolProg 64 :=
.seq RemovedBody643_114 RemovedBody643_163

def RemovedBody643_165 : StackLang.HolProg 64 :=
.seq RemovedBody643_111 RemovedBody643_164

def RemovedBody643_166 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody643_167 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody643_168 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 1#64)

def RemovedBody643_169 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody643_170 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 1 5
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 5)))

def RemovedBody643_171 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 8 18446744069414584321#64)

def RemovedBody643_172 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 7 0#64)

def RemovedBody643_173 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 6 4294967295#64)

def RemovedBody643_174 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 5 18446744073709551615#64)

def RemovedBody643_175 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody643_176 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody643_177 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 2623#64)

def RemovedBody643_178 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody643_179 : StackLang.HolProg 64 :=
.seq RemovedBody643_177 RemovedBody643_178

def RemovedBody643_180 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody643_181 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 2#64)

def RemovedBody643_182 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 1

def RemovedBody643_183 : StackLang.HolProg 64 :=
.seq RemovedBody643_181 RemovedBody643_182

def RemovedBody643_184 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody643_185 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) RemovedBody643_183 RemovedBody643_184

def RemovedBody643_186 : StackLang.HolProg 64 :=
.seq RemovedBody643_180 RemovedBody643_185

def RemovedBody643_187 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def RemovedBody643_188 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody643_189 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 643 7

def RemovedBody643_190 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody643_191 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody643_192 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody643_193 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody643_194 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def RemovedBody643_195 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def RemovedBody643_196 : StackLang.HolProg 64 :=
.seq RemovedBody643_194 RemovedBody643_195

def RemovedBody643_197 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def RemovedBody643_198 : StackLang.HolProg 64 :=
.seq RemovedBody643_196 RemovedBody643_197

def RemovedBody643_199 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody643_200 : StackLang.HolProg 64 :=
.seq RemovedBody643_198 RemovedBody643_199

def RemovedBody643_201 : StackLang.HolProg 64 :=
.seq RemovedBody643_193 RemovedBody643_200

def RemovedBody643_202 : StackLang.HolProg 64 :=
.seq RemovedBody643_192 RemovedBody643_201

def RemovedBody643_203 : StackLang.HolProg 64 :=
.seq RemovedBody643_191 RemovedBody643_202

def RemovedBody643_204 : StackLang.HolProg 64 :=
.seq RemovedBody643_190 RemovedBody643_203

def RemovedBody643_205 : StackLang.HolProg 64 :=
.seq RemovedBody643_189 RemovedBody643_204

def RemovedBody643_206 : StackLang.HolProg 64 :=
.seq RemovedBody643_188 RemovedBody643_205

def RemovedBody643_207 : StackLang.HolProg 64 :=
.seq RemovedBody643_187 RemovedBody643_206

def RemovedBody643_208 : StackLang.HolProg 64 :=
.seq RemovedBody643_186 RemovedBody643_207

def RemovedBody643_209 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody643_210 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody643_211 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody643_212 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody643_213 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody643_214 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody643_215 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 5 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def RemovedBody643_216 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 72#64))

def RemovedBody643_217 : StackLang.HolProg 64 :=
.seq RemovedBody643_215 RemovedBody643_216

def RemovedBody643_218 : StackLang.HolProg 64 :=
.seq RemovedBody643_214 RemovedBody643_217

def RemovedBody643_219 : StackLang.HolProg 64 :=
.seq RemovedBody643_213 RemovedBody643_218

def RemovedBody643_220 : StackLang.HolProg 64 :=
.seq RemovedBody643_212 RemovedBody643_219

def RemovedBody643_221 : StackLang.HolProg 64 :=
.seq RemovedBody643_211 RemovedBody643_220

def RemovedBody643_222 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 72#64))

def RemovedBody643_223 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def RemovedBody643_224 : StackLang.HolProg 64 :=
.seq RemovedBody643_222 RemovedBody643_223

def RemovedBody643_225 : StackLang.HolProg 64 :=
.call (some (RemovedBody643_221, 0, 643, 6)) (Sum.inl 116) (some (RemovedBody643_224, 643, 7))

def RemovedBody643_226 : StackLang.HolProg 64 :=
.seq RemovedBody643_210 RemovedBody643_225

def RemovedBody643_227 : StackLang.HolProg 64 :=
.seq RemovedBody643_209 RemovedBody643_226

def RemovedBody643_228 : StackLang.HolProg 64 :=
.seq RemovedBody643_208 RemovedBody643_227

def RemovedBody643_229 : StackLang.HolProg 64 :=
.seq RemovedBody643_179 RemovedBody643_228

def RemovedBody643_230 : StackLang.HolProg 64 :=
.seq RemovedBody643_176 RemovedBody643_229

def RemovedBody643_231 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody643_232 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody643_233 : StackLang.HolProg 64 :=
.seq RemovedBody643_231 RemovedBody643_232

def RemovedBody643_234 : StackLang.HolProg 64 :=
.seq RemovedBody643_230 RemovedBody643_233

def RemovedBody643_235 : StackLang.HolProg 64 :=
.seq RemovedBody643_175 RemovedBody643_234

def RemovedBody643_236 : StackLang.HolProg 64 :=
.seq RemovedBody643_174 RemovedBody643_235

def RemovedBody643_237 : StackLang.HolProg 64 :=
.seq RemovedBody643_173 RemovedBody643_236

def RemovedBody643_238 : StackLang.HolProg 64 :=
.seq RemovedBody643_172 RemovedBody643_237

def RemovedBody643_239 : StackLang.HolProg 64 :=
.seq RemovedBody643_171 RemovedBody643_238

def RemovedBody643_240 : StackLang.HolProg 64 :=
.seq RemovedBody643_170 RemovedBody643_239

def RemovedBody643_241 : StackLang.HolProg 64 :=
.seq RemovedBody643_169 RemovedBody643_240

def RemovedBody643_242 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody643_243 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 72#64))

def RemovedBody643_244 : StackLang.HolProg 64 :=
.seq RemovedBody643_242 RemovedBody643_243

def RemovedBody643_245 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.equal) 0 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1) RemovedBody643_241 RemovedBody643_244

def RemovedBody643_246 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody643_247 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 1 5
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 5)))

def RemovedBody643_248 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 80#64)))

def RemovedBody643_249 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 0

def RemovedBody643_250 : StackLang.HolProg 64 :=
.seq RemovedBody643_248 RemovedBody643_249

def RemovedBody643_251 : StackLang.HolProg 64 :=
.seq RemovedBody643_247 RemovedBody643_250

def RemovedBody643_252 : StackLang.HolProg 64 :=
.seq RemovedBody643_246 RemovedBody643_251

def RemovedBody643_253 : StackLang.HolProg 64 :=
.seq RemovedBody643_245 RemovedBody643_252

def RemovedBody643_254 : StackLang.HolProg 64 :=
.seq RemovedBody643_168 RemovedBody643_253

def RemovedBody643_255 : StackLang.HolProg 64 :=
.seq RemovedBody643_167 RemovedBody643_254

def RemovedBody643_256 : StackLang.HolProg 64 :=
.seq RemovedBody643_166 RemovedBody643_255

def RemovedBody643_257 : StackLang.HolProg 64 :=
.seq RemovedBody643_165 RemovedBody643_256

def RemovedBody643_258 : StackLang.HolProg 64 :=
.seq RemovedBody643_110 RemovedBody643_257

def RemovedBody643_259 : StackLang.HolProg 64 :=
.seq RemovedBody643_107 RemovedBody643_258

def RemovedBody643_260 : StackLang.HolProg 64 :=
.seq RemovedBody643_106 RemovedBody643_259

def RemovedBody643_261 : StackLang.HolProg 64 :=
.seq RemovedBody643_23 RemovedBody643_260

def RemovedBody643_262 : StackLang.HolProg 64 :=
.seq RemovedBody643_6 RemovedBody643_261

def Removed643 : Nat × StackLang.HolProg 64 := (643, RemovedBody643_262)
theorem Removed643_eq : StackRemove.progComp false riscvConfig.addrOffset (riscvConfig.regCount - (riscvConfig.avoidRegs.length + 3)) Alloc643 = Removed643 := by
  kernel_rfl
#print axioms Removed643_eq
end InitECandidate.Proofs.BackendStages
