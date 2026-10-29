import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.BackendStages.Alloc659
import Flapjack.Compiler.Backend.Backend
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
namespace InitECandidate.Proofs.BackendStages
def RemovedBody659_0 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 80#64)))

def RemovedBody659_1 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 2#64)

def RemovedBody659_2 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 1

def RemovedBody659_3 : StackLang.HolProg 64 :=
.seq RemovedBody659_1 RemovedBody659_2

def RemovedBody659_4 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody659_5 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) RemovedBody659_3 RemovedBody659_4

def RemovedBody659_6 : StackLang.HolProg 64 :=
.seq RemovedBody659_0 RemovedBody659_5

def RemovedBody659_7 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 72#64))

def RemovedBody659_8 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 8
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 64#64))

def RemovedBody659_9 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 4
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 56#64))

def RemovedBody659_10 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 2
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 48#64))

def RemovedBody659_11 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 6
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 40#64))

def RemovedBody659_12 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 32#64))

def RemovedBody659_13 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 5
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 24#64))

def RemovedBody659_14 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 3
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody659_15 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 7
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody659_16 : StackLang.HolProg 64 :=
.seq RemovedBody659_14 RemovedBody659_15

def RemovedBody659_17 : StackLang.HolProg 64 :=
.seq RemovedBody659_13 RemovedBody659_16

def RemovedBody659_18 : StackLang.HolProg 64 :=
.seq RemovedBody659_12 RemovedBody659_17

def RemovedBody659_19 : StackLang.HolProg 64 :=
.seq RemovedBody659_11 RemovedBody659_18

def RemovedBody659_20 : StackLang.HolProg 64 :=
.seq RemovedBody659_10 RemovedBody659_19

def RemovedBody659_21 : StackLang.HolProg 64 :=
.seq RemovedBody659_9 RemovedBody659_20

def RemovedBody659_22 : StackLang.HolProg 64 :=
.seq RemovedBody659_8 RemovedBody659_21

def RemovedBody659_23 : StackLang.HolProg 64 :=
.seq RemovedBody659_7 RemovedBody659_22

def RemovedBody659_24 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody659_25 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 2747#64)

def RemovedBody659_26 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody659_27 : StackLang.HolProg 64 :=
.seq RemovedBody659_25 RemovedBody659_26

def RemovedBody659_28 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody659_29 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 2#64)

def RemovedBody659_30 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 1

def RemovedBody659_31 : StackLang.HolProg 64 :=
.seq RemovedBody659_29 RemovedBody659_30

def RemovedBody659_32 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody659_33 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) RemovedBody659_31 RemovedBody659_32

def RemovedBody659_34 : StackLang.HolProg 64 :=
.seq RemovedBody659_28 RemovedBody659_33

def RemovedBody659_35 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def RemovedBody659_36 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody659_37 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 659 3

def RemovedBody659_38 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody659_39 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody659_40 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody659_41 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody659_42 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def RemovedBody659_43 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def RemovedBody659_44 : StackLang.HolProg 64 :=
.seq RemovedBody659_42 RemovedBody659_43

def RemovedBody659_45 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def RemovedBody659_46 : StackLang.HolProg 64 :=
.seq RemovedBody659_44 RemovedBody659_45

def RemovedBody659_47 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody659_48 : StackLang.HolProg 64 :=
.seq RemovedBody659_46 RemovedBody659_47

def RemovedBody659_49 : StackLang.HolProg 64 :=
.seq RemovedBody659_41 RemovedBody659_48

def RemovedBody659_50 : StackLang.HolProg 64 :=
.seq RemovedBody659_40 RemovedBody659_49

def RemovedBody659_51 : StackLang.HolProg 64 :=
.seq RemovedBody659_39 RemovedBody659_50

def RemovedBody659_52 : StackLang.HolProg 64 :=
.seq RemovedBody659_38 RemovedBody659_51

def RemovedBody659_53 : StackLang.HolProg 64 :=
.seq RemovedBody659_37 RemovedBody659_52

def RemovedBody659_54 : StackLang.HolProg 64 :=
.seq RemovedBody659_36 RemovedBody659_53

def RemovedBody659_55 : StackLang.HolProg 64 :=
.seq RemovedBody659_35 RemovedBody659_54

def RemovedBody659_56 : StackLang.HolProg 64 :=
.seq RemovedBody659_34 RemovedBody659_55

def RemovedBody659_57 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody659_58 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody659_59 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody659_60 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody659_61 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody659_62 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody659_63 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 9 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def RemovedBody659_64 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 8
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 64#64))

def RemovedBody659_65 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 4
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 56#64))

def RemovedBody659_66 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 2
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 48#64))

def RemovedBody659_67 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 6
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 40#64))

def RemovedBody659_68 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 32#64))

def RemovedBody659_69 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 5
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 24#64))

def RemovedBody659_70 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 3
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody659_71 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 7
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody659_72 : StackLang.HolProg 64 :=
.seq RemovedBody659_70 RemovedBody659_71

def RemovedBody659_73 : StackLang.HolProg 64 :=
.seq RemovedBody659_69 RemovedBody659_72

def RemovedBody659_74 : StackLang.HolProg 64 :=
.seq RemovedBody659_68 RemovedBody659_73

def RemovedBody659_75 : StackLang.HolProg 64 :=
.seq RemovedBody659_67 RemovedBody659_74

def RemovedBody659_76 : StackLang.HolProg 64 :=
.seq RemovedBody659_66 RemovedBody659_75

def RemovedBody659_77 : StackLang.HolProg 64 :=
.seq RemovedBody659_65 RemovedBody659_76

def RemovedBody659_78 : StackLang.HolProg 64 :=
.seq RemovedBody659_64 RemovedBody659_77

def RemovedBody659_79 : StackLang.HolProg 64 :=
.seq RemovedBody659_63 RemovedBody659_78

def RemovedBody659_80 : StackLang.HolProg 64 :=
.seq RemovedBody659_62 RemovedBody659_79

def RemovedBody659_81 : StackLang.HolProg 64 :=
.seq RemovedBody659_61 RemovedBody659_80

def RemovedBody659_82 : StackLang.HolProg 64 :=
.seq RemovedBody659_60 RemovedBody659_81

def RemovedBody659_83 : StackLang.HolProg 64 :=
.seq RemovedBody659_59 RemovedBody659_82

def RemovedBody659_84 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 8
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 64#64))

def RemovedBody659_85 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 4
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 56#64))

def RemovedBody659_86 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 2
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 48#64))

def RemovedBody659_87 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 6
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 40#64))

def RemovedBody659_88 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 32#64))

def RemovedBody659_89 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 5
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 24#64))

def RemovedBody659_90 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 3
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody659_91 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 7
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody659_92 : StackLang.HolProg 64 :=
.seq RemovedBody659_90 RemovedBody659_91

def RemovedBody659_93 : StackLang.HolProg 64 :=
.seq RemovedBody659_89 RemovedBody659_92

def RemovedBody659_94 : StackLang.HolProg 64 :=
.seq RemovedBody659_88 RemovedBody659_93

def RemovedBody659_95 : StackLang.HolProg 64 :=
.seq RemovedBody659_87 RemovedBody659_94

def RemovedBody659_96 : StackLang.HolProg 64 :=
.seq RemovedBody659_86 RemovedBody659_95

def RemovedBody659_97 : StackLang.HolProg 64 :=
.seq RemovedBody659_85 RemovedBody659_96

def RemovedBody659_98 : StackLang.HolProg 64 :=
.seq RemovedBody659_84 RemovedBody659_97

def RemovedBody659_99 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def RemovedBody659_100 : StackLang.HolProg 64 :=
.seq RemovedBody659_98 RemovedBody659_99

def RemovedBody659_101 : StackLang.HolProg 64 :=
.call (some (RemovedBody659_83, 0, 659, 2)) (Sum.inl 106) (some (RemovedBody659_100, 659, 3))

def RemovedBody659_102 : StackLang.HolProg 64 :=
.seq RemovedBody659_58 RemovedBody659_101

def RemovedBody659_103 : StackLang.HolProg 64 :=
.seq RemovedBody659_57 RemovedBody659_102

def RemovedBody659_104 : StackLang.HolProg 64 :=
.seq RemovedBody659_56 RemovedBody659_103

def RemovedBody659_105 : StackLang.HolProg 64 :=
.seq RemovedBody659_27 RemovedBody659_104

def RemovedBody659_106 : StackLang.HolProg 64 :=
.seq RemovedBody659_24 RemovedBody659_105

def RemovedBody659_107 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody659_108 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 1 0
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 0)))

def RemovedBody659_109 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 9
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 64#64))

def RemovedBody659_110 : StackLang.HolProg 64 :=
.seq RemovedBody659_108 RemovedBody659_109

def RemovedBody659_111 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody659_112 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 2748#64)

def RemovedBody659_113 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody659_114 : StackLang.HolProg 64 :=
.seq RemovedBody659_112 RemovedBody659_113

def RemovedBody659_115 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody659_116 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 2#64)

def RemovedBody659_117 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 1

def RemovedBody659_118 : StackLang.HolProg 64 :=
.seq RemovedBody659_116 RemovedBody659_117

def RemovedBody659_119 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody659_120 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) RemovedBody659_118 RemovedBody659_119

def RemovedBody659_121 : StackLang.HolProg 64 :=
.seq RemovedBody659_115 RemovedBody659_120

def RemovedBody659_122 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def RemovedBody659_123 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody659_124 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 659 5

def RemovedBody659_125 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody659_126 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody659_127 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody659_128 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody659_129 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def RemovedBody659_130 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def RemovedBody659_131 : StackLang.HolProg 64 :=
.seq RemovedBody659_129 RemovedBody659_130

def RemovedBody659_132 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def RemovedBody659_133 : StackLang.HolProg 64 :=
.seq RemovedBody659_131 RemovedBody659_132

def RemovedBody659_134 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody659_135 : StackLang.HolProg 64 :=
.seq RemovedBody659_133 RemovedBody659_134

def RemovedBody659_136 : StackLang.HolProg 64 :=
.seq RemovedBody659_128 RemovedBody659_135

def RemovedBody659_137 : StackLang.HolProg 64 :=
.seq RemovedBody659_127 RemovedBody659_136

def RemovedBody659_138 : StackLang.HolProg 64 :=
.seq RemovedBody659_126 RemovedBody659_137

def RemovedBody659_139 : StackLang.HolProg 64 :=
.seq RemovedBody659_125 RemovedBody659_138

def RemovedBody659_140 : StackLang.HolProg 64 :=
.seq RemovedBody659_124 RemovedBody659_139

def RemovedBody659_141 : StackLang.HolProg 64 :=
.seq RemovedBody659_123 RemovedBody659_140

def RemovedBody659_142 : StackLang.HolProg 64 :=
.seq RemovedBody659_122 RemovedBody659_141

def RemovedBody659_143 : StackLang.HolProg 64 :=
.seq RemovedBody659_121 RemovedBody659_142

def RemovedBody659_144 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody659_145 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody659_146 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody659_147 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody659_148 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody659_149 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody659_150 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 5 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def RemovedBody659_151 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 64#64))

def RemovedBody659_152 : StackLang.HolProg 64 :=
.seq RemovedBody659_150 RemovedBody659_151

def RemovedBody659_153 : StackLang.HolProg 64 :=
.seq RemovedBody659_149 RemovedBody659_152

def RemovedBody659_154 : StackLang.HolProg 64 :=
.seq RemovedBody659_148 RemovedBody659_153

def RemovedBody659_155 : StackLang.HolProg 64 :=
.seq RemovedBody659_147 RemovedBody659_154

def RemovedBody659_156 : StackLang.HolProg 64 :=
.seq RemovedBody659_146 RemovedBody659_155

def RemovedBody659_157 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 64#64))

def RemovedBody659_158 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def RemovedBody659_159 : StackLang.HolProg 64 :=
.seq RemovedBody659_157 RemovedBody659_158

def RemovedBody659_160 : StackLang.HolProg 64 :=
.call (some (RemovedBody659_156, 0, 659, 4)) (Sum.inl 117) (some (RemovedBody659_159, 659, 5))

def RemovedBody659_161 : StackLang.HolProg 64 :=
.seq RemovedBody659_145 RemovedBody659_160

def RemovedBody659_162 : StackLang.HolProg 64 :=
.seq RemovedBody659_144 RemovedBody659_161

def RemovedBody659_163 : StackLang.HolProg 64 :=
.seq RemovedBody659_143 RemovedBody659_162

def RemovedBody659_164 : StackLang.HolProg 64 :=
.seq RemovedBody659_114 RemovedBody659_163

def RemovedBody659_165 : StackLang.HolProg 64 :=
.seq RemovedBody659_111 RemovedBody659_164

def RemovedBody659_166 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody659_167 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody659_168 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 1#64)

def RemovedBody659_169 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody659_170 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 1 5
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 5)))

def RemovedBody659_171 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 8 3486998266802970665#64)

def RemovedBody659_172 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 7 13281191951274694749#64)

def RemovedBody659_173 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 6 10917124144477883021#64)

def RemovedBody659_174 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 5 4332616871279656263#64)

def RemovedBody659_175 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody659_176 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody659_177 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 2749#64)

def RemovedBody659_178 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody659_179 : StackLang.HolProg 64 :=
.seq RemovedBody659_177 RemovedBody659_178

def RemovedBody659_180 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody659_181 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 2#64)

def RemovedBody659_182 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 1

def RemovedBody659_183 : StackLang.HolProg 64 :=
.seq RemovedBody659_181 RemovedBody659_182

def RemovedBody659_184 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody659_185 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) RemovedBody659_183 RemovedBody659_184

def RemovedBody659_186 : StackLang.HolProg 64 :=
.seq RemovedBody659_180 RemovedBody659_185

def RemovedBody659_187 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def RemovedBody659_188 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody659_189 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 659 7

def RemovedBody659_190 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody659_191 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody659_192 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody659_193 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody659_194 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def RemovedBody659_195 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def RemovedBody659_196 : StackLang.HolProg 64 :=
.seq RemovedBody659_194 RemovedBody659_195

def RemovedBody659_197 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def RemovedBody659_198 : StackLang.HolProg 64 :=
.seq RemovedBody659_196 RemovedBody659_197

def RemovedBody659_199 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody659_200 : StackLang.HolProg 64 :=
.seq RemovedBody659_198 RemovedBody659_199

def RemovedBody659_201 : StackLang.HolProg 64 :=
.seq RemovedBody659_193 RemovedBody659_200

def RemovedBody659_202 : StackLang.HolProg 64 :=
.seq RemovedBody659_192 RemovedBody659_201

def RemovedBody659_203 : StackLang.HolProg 64 :=
.seq RemovedBody659_191 RemovedBody659_202

def RemovedBody659_204 : StackLang.HolProg 64 :=
.seq RemovedBody659_190 RemovedBody659_203

def RemovedBody659_205 : StackLang.HolProg 64 :=
.seq RemovedBody659_189 RemovedBody659_204

def RemovedBody659_206 : StackLang.HolProg 64 :=
.seq RemovedBody659_188 RemovedBody659_205

def RemovedBody659_207 : StackLang.HolProg 64 :=
.seq RemovedBody659_187 RemovedBody659_206

def RemovedBody659_208 : StackLang.HolProg 64 :=
.seq RemovedBody659_186 RemovedBody659_207

def RemovedBody659_209 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody659_210 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody659_211 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody659_212 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody659_213 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody659_214 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody659_215 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 5 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def RemovedBody659_216 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 72#64))

def RemovedBody659_217 : StackLang.HolProg 64 :=
.seq RemovedBody659_215 RemovedBody659_216

def RemovedBody659_218 : StackLang.HolProg 64 :=
.seq RemovedBody659_214 RemovedBody659_217

def RemovedBody659_219 : StackLang.HolProg 64 :=
.seq RemovedBody659_213 RemovedBody659_218

def RemovedBody659_220 : StackLang.HolProg 64 :=
.seq RemovedBody659_212 RemovedBody659_219

def RemovedBody659_221 : StackLang.HolProg 64 :=
.seq RemovedBody659_211 RemovedBody659_220

def RemovedBody659_222 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 72#64))

def RemovedBody659_223 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def RemovedBody659_224 : StackLang.HolProg 64 :=
.seq RemovedBody659_222 RemovedBody659_223

def RemovedBody659_225 : StackLang.HolProg 64 :=
.call (some (RemovedBody659_221, 0, 659, 6)) (Sum.inl 116) (some (RemovedBody659_224, 659, 7))

def RemovedBody659_226 : StackLang.HolProg 64 :=
.seq RemovedBody659_210 RemovedBody659_225

def RemovedBody659_227 : StackLang.HolProg 64 :=
.seq RemovedBody659_209 RemovedBody659_226

def RemovedBody659_228 : StackLang.HolProg 64 :=
.seq RemovedBody659_208 RemovedBody659_227

def RemovedBody659_229 : StackLang.HolProg 64 :=
.seq RemovedBody659_179 RemovedBody659_228

def RemovedBody659_230 : StackLang.HolProg 64 :=
.seq RemovedBody659_176 RemovedBody659_229

def RemovedBody659_231 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody659_232 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody659_233 : StackLang.HolProg 64 :=
.seq RemovedBody659_231 RemovedBody659_232

def RemovedBody659_234 : StackLang.HolProg 64 :=
.seq RemovedBody659_230 RemovedBody659_233

def RemovedBody659_235 : StackLang.HolProg 64 :=
.seq RemovedBody659_175 RemovedBody659_234

def RemovedBody659_236 : StackLang.HolProg 64 :=
.seq RemovedBody659_174 RemovedBody659_235

def RemovedBody659_237 : StackLang.HolProg 64 :=
.seq RemovedBody659_173 RemovedBody659_236

def RemovedBody659_238 : StackLang.HolProg 64 :=
.seq RemovedBody659_172 RemovedBody659_237

def RemovedBody659_239 : StackLang.HolProg 64 :=
.seq RemovedBody659_171 RemovedBody659_238

def RemovedBody659_240 : StackLang.HolProg 64 :=
.seq RemovedBody659_170 RemovedBody659_239

def RemovedBody659_241 : StackLang.HolProg 64 :=
.seq RemovedBody659_169 RemovedBody659_240

def RemovedBody659_242 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody659_243 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 72#64))

def RemovedBody659_244 : StackLang.HolProg 64 :=
.seq RemovedBody659_242 RemovedBody659_243

def RemovedBody659_245 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.equal) 0 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1) RemovedBody659_241 RemovedBody659_244

def RemovedBody659_246 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody659_247 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 1 5
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 5)))

def RemovedBody659_248 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 80#64)))

def RemovedBody659_249 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 0

def RemovedBody659_250 : StackLang.HolProg 64 :=
.seq RemovedBody659_248 RemovedBody659_249

def RemovedBody659_251 : StackLang.HolProg 64 :=
.seq RemovedBody659_247 RemovedBody659_250

def RemovedBody659_252 : StackLang.HolProg 64 :=
.seq RemovedBody659_246 RemovedBody659_251

def RemovedBody659_253 : StackLang.HolProg 64 :=
.seq RemovedBody659_245 RemovedBody659_252

def RemovedBody659_254 : StackLang.HolProg 64 :=
.seq RemovedBody659_168 RemovedBody659_253

def RemovedBody659_255 : StackLang.HolProg 64 :=
.seq RemovedBody659_167 RemovedBody659_254

def RemovedBody659_256 : StackLang.HolProg 64 :=
.seq RemovedBody659_166 RemovedBody659_255

def RemovedBody659_257 : StackLang.HolProg 64 :=
.seq RemovedBody659_165 RemovedBody659_256

def RemovedBody659_258 : StackLang.HolProg 64 :=
.seq RemovedBody659_110 RemovedBody659_257

def RemovedBody659_259 : StackLang.HolProg 64 :=
.seq RemovedBody659_107 RemovedBody659_258

def RemovedBody659_260 : StackLang.HolProg 64 :=
.seq RemovedBody659_106 RemovedBody659_259

def RemovedBody659_261 : StackLang.HolProg 64 :=
.seq RemovedBody659_23 RemovedBody659_260

def RemovedBody659_262 : StackLang.HolProg 64 :=
.seq RemovedBody659_6 RemovedBody659_261

def Removed659 : Nat × StackLang.HolProg 64 := (659, RemovedBody659_262)
theorem Removed659_eq : StackRemove.progComp false riscvConfig.addrOffset (riscvConfig.regCount - (riscvConfig.avoidRegs.length + 3)) Alloc659 = Removed659 := by
  kernel_rfl
#print axioms Removed659_eq
end InitECandidate.Proofs.BackendStages
