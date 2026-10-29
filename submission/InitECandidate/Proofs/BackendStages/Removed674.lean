import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.BackendStages.Alloc674
import Flapjack.Compiler.Backend.Backend
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
namespace InitECandidate.Proofs.BackendStages
def RemovedBody674_0 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 48#64)))

def RemovedBody674_1 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 2#64)

def RemovedBody674_2 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 1

def RemovedBody674_3 : StackLang.HolProg 64 :=
.seq RemovedBody674_1 RemovedBody674_2

def RemovedBody674_4 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody674_5 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) RemovedBody674_3 RemovedBody674_4

def RemovedBody674_6 : StackLang.HolProg 64 :=
.seq RemovedBody674_0 RemovedBody674_5

def RemovedBody674_7 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody674_8 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 4 0#64)

def RemovedBody674_9 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody674_10 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 40#64))

def RemovedBody674_11 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 2
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 32#64))

def RemovedBody674_12 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 0 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def RemovedBody674_13 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 7 3
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 3)))

def RemovedBody674_14 : StackLang.HolProg 64 :=
.seq RemovedBody674_12 RemovedBody674_13

def RemovedBody674_15 : StackLang.HolProg 64 :=
.seq RemovedBody674_11 RemovedBody674_14

def RemovedBody674_16 : StackLang.HolProg 64 :=
.seq RemovedBody674_10 RemovedBody674_15

def RemovedBody674_17 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody674_18 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody674_19 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody674_20 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsl 2 4
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 5#64)))

def RemovedBody674_21 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody674_22 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 1 2
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 7)))

def RemovedBody674_23 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 1 0#64))

def RemovedBody674_24 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 4
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 24#64))

def RemovedBody674_25 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 4 7
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 2)))

def RemovedBody674_26 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 2
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 4 8#64))

def RemovedBody674_27 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 7
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody674_28 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 3
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 4 16#64))

def RemovedBody674_29 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody674_30 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 4
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 4 24#64))

def RemovedBody674_31 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody674_32 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody674_33 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 2790#64)

def RemovedBody674_34 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody674_35 : StackLang.HolProg 64 :=
.seq RemovedBody674_33 RemovedBody674_34

def RemovedBody674_36 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody674_37 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 2#64)

def RemovedBody674_38 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 1

def RemovedBody674_39 : StackLang.HolProg 64 :=
.seq RemovedBody674_37 RemovedBody674_38

def RemovedBody674_40 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody674_41 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) RemovedBody674_39 RemovedBody674_40

def RemovedBody674_42 : StackLang.HolProg 64 :=
.seq RemovedBody674_36 RemovedBody674_41

def RemovedBody674_43 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def RemovedBody674_44 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody674_45 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 674 3

def RemovedBody674_46 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody674_47 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody674_48 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody674_49 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody674_50 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def RemovedBody674_51 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def RemovedBody674_52 : StackLang.HolProg 64 :=
.seq RemovedBody674_50 RemovedBody674_51

def RemovedBody674_53 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def RemovedBody674_54 : StackLang.HolProg 64 :=
.seq RemovedBody674_52 RemovedBody674_53

def RemovedBody674_55 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody674_56 : StackLang.HolProg 64 :=
.seq RemovedBody674_54 RemovedBody674_55

def RemovedBody674_57 : StackLang.HolProg 64 :=
.seq RemovedBody674_49 RemovedBody674_56

def RemovedBody674_58 : StackLang.HolProg 64 :=
.seq RemovedBody674_48 RemovedBody674_57

def RemovedBody674_59 : StackLang.HolProg 64 :=
.seq RemovedBody674_47 RemovedBody674_58

def RemovedBody674_60 : StackLang.HolProg 64 :=
.seq RemovedBody674_46 RemovedBody674_59

def RemovedBody674_61 : StackLang.HolProg 64 :=
.seq RemovedBody674_45 RemovedBody674_60

def RemovedBody674_62 : StackLang.HolProg 64 :=
.seq RemovedBody674_44 RemovedBody674_61

def RemovedBody674_63 : StackLang.HolProg 64 :=
.seq RemovedBody674_43 RemovedBody674_62

def RemovedBody674_64 : StackLang.HolProg 64 :=
.seq RemovedBody674_42 RemovedBody674_63

def RemovedBody674_65 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody674_66 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody674_67 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody674_68 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody674_69 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody674_70 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody674_71 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 5 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def RemovedBody674_72 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 9
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 40#64))

def RemovedBody674_73 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 6
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 32#64))

def RemovedBody674_74 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 8
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 24#64))

def RemovedBody674_75 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody674_76 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 7
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody674_77 : StackLang.HolProg 64 :=
.seq RemovedBody674_75 RemovedBody674_76

def RemovedBody674_78 : StackLang.HolProg 64 :=
.seq RemovedBody674_74 RemovedBody674_77

def RemovedBody674_79 : StackLang.HolProg 64 :=
.seq RemovedBody674_73 RemovedBody674_78

def RemovedBody674_80 : StackLang.HolProg 64 :=
.seq RemovedBody674_72 RemovedBody674_79

def RemovedBody674_81 : StackLang.HolProg 64 :=
.seq RemovedBody674_71 RemovedBody674_80

def RemovedBody674_82 : StackLang.HolProg 64 :=
.seq RemovedBody674_70 RemovedBody674_81

def RemovedBody674_83 : StackLang.HolProg 64 :=
.seq RemovedBody674_69 RemovedBody674_82

def RemovedBody674_84 : StackLang.HolProg 64 :=
.seq RemovedBody674_68 RemovedBody674_83

def RemovedBody674_85 : StackLang.HolProg 64 :=
.seq RemovedBody674_67 RemovedBody674_84

def RemovedBody674_86 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 9
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 40#64))

def RemovedBody674_87 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 6
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 32#64))

def RemovedBody674_88 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 8
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 24#64))

def RemovedBody674_89 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody674_90 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 7
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody674_91 : StackLang.HolProg 64 :=
.seq RemovedBody674_89 RemovedBody674_90

def RemovedBody674_92 : StackLang.HolProg 64 :=
.seq RemovedBody674_88 RemovedBody674_91

def RemovedBody674_93 : StackLang.HolProg 64 :=
.seq RemovedBody674_87 RemovedBody674_92

def RemovedBody674_94 : StackLang.HolProg 64 :=
.seq RemovedBody674_86 RemovedBody674_93

def RemovedBody674_95 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def RemovedBody674_96 : StackLang.HolProg 64 :=
.seq RemovedBody674_94 RemovedBody674_95

def RemovedBody674_97 : StackLang.HolProg 64 :=
.call (some (RemovedBody674_85, 0, 674, 2)) (Sum.inl 660) (some (RemovedBody674_96, 674, 3))

def RemovedBody674_98 : StackLang.HolProg 64 :=
.seq RemovedBody674_66 RemovedBody674_97

def RemovedBody674_99 : StackLang.HolProg 64 :=
.seq RemovedBody674_65 RemovedBody674_98

def RemovedBody674_100 : StackLang.HolProg 64 :=
.seq RemovedBody674_64 RemovedBody674_99

def RemovedBody674_101 : StackLang.HolProg 64 :=
.seq RemovedBody674_35 RemovedBody674_100

def RemovedBody674_102 : StackLang.HolProg 64 :=
.seq RemovedBody674_32 RemovedBody674_101

def RemovedBody674_103 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody674_104 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody674_105 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsl 1 8
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 5#64)))

def RemovedBody674_106 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody674_107 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 1 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 6)))

def RemovedBody674_108 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody674_109 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 5
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 1 0#64))

def RemovedBody674_110 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody674_111 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 2
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 1 8#64))

def RemovedBody674_112 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody674_113 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 3
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 1 16#64))

def RemovedBody674_114 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody674_115 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 4
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 1 24#64))

def RemovedBody674_116 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody674_117 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 4 8
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 1#64)))

def RemovedBody674_118 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 9
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 40#64))

def RemovedBody674_119 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 6
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 32#64))

def RemovedBody674_120 : StackLang.HolProg 64 :=
.seq RemovedBody674_118 RemovedBody674_119

def RemovedBody674_121 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.continue 0

def RemovedBody674_122 : StackLang.HolProg 64 :=
.seq RemovedBody674_120 RemovedBody674_121

def RemovedBody674_123 : StackLang.HolProg 64 :=
.seq RemovedBody674_117 RemovedBody674_122

def RemovedBody674_124 : StackLang.HolProg 64 :=
.seq RemovedBody674_116 RemovedBody674_123

def RemovedBody674_125 : StackLang.HolProg 64 :=
.seq RemovedBody674_115 RemovedBody674_124

def RemovedBody674_126 : StackLang.HolProg 64 :=
.seq RemovedBody674_114 RemovedBody674_125

def RemovedBody674_127 : StackLang.HolProg 64 :=
.seq RemovedBody674_113 RemovedBody674_126

def RemovedBody674_128 : StackLang.HolProg 64 :=
.seq RemovedBody674_112 RemovedBody674_127

def RemovedBody674_129 : StackLang.HolProg 64 :=
.seq RemovedBody674_111 RemovedBody674_128

def RemovedBody674_130 : StackLang.HolProg 64 :=
.seq RemovedBody674_110 RemovedBody674_129

def RemovedBody674_131 : StackLang.HolProg 64 :=
.seq RemovedBody674_109 RemovedBody674_130

def RemovedBody674_132 : StackLang.HolProg 64 :=
.seq RemovedBody674_108 RemovedBody674_131

def RemovedBody674_133 : StackLang.HolProg 64 :=
.seq RemovedBody674_107 RemovedBody674_132

def RemovedBody674_134 : StackLang.HolProg 64 :=
.seq RemovedBody674_106 RemovedBody674_133

def RemovedBody674_135 : StackLang.HolProg 64 :=
.seq RemovedBody674_105 RemovedBody674_134

def RemovedBody674_136 : StackLang.HolProg 64 :=
.seq RemovedBody674_104 RemovedBody674_135

def RemovedBody674_137 : StackLang.HolProg 64 :=
.seq RemovedBody674_103 RemovedBody674_136

def RemovedBody674_138 : StackLang.HolProg 64 :=
.seq RemovedBody674_102 RemovedBody674_137

def RemovedBody674_139 : StackLang.HolProg 64 :=
.seq RemovedBody674_31 RemovedBody674_138

def RemovedBody674_140 : StackLang.HolProg 64 :=
.seq RemovedBody674_30 RemovedBody674_139

def RemovedBody674_141 : StackLang.HolProg 64 :=
.seq RemovedBody674_29 RemovedBody674_140

def RemovedBody674_142 : StackLang.HolProg 64 :=
.seq RemovedBody674_28 RemovedBody674_141

def RemovedBody674_143 : StackLang.HolProg 64 :=
.seq RemovedBody674_27 RemovedBody674_142

def RemovedBody674_144 : StackLang.HolProg 64 :=
.seq RemovedBody674_26 RemovedBody674_143

def RemovedBody674_145 : StackLang.HolProg 64 :=
.seq RemovedBody674_25 RemovedBody674_144

def RemovedBody674_146 : StackLang.HolProg 64 :=
.seq RemovedBody674_24 RemovedBody674_145

def RemovedBody674_147 : StackLang.HolProg 64 :=
.seq RemovedBody674_23 RemovedBody674_146

def RemovedBody674_148 : StackLang.HolProg 64 :=
.seq RemovedBody674_22 RemovedBody674_147

def RemovedBody674_149 : StackLang.HolProg 64 :=
.seq RemovedBody674_21 RemovedBody674_148

def RemovedBody674_150 : StackLang.HolProg 64 :=
.seq RemovedBody674_20 RemovedBody674_149

def RemovedBody674_151 : StackLang.HolProg 64 :=
.seq RemovedBody674_19 RemovedBody674_150

def RemovedBody674_152 : StackLang.HolProg 64 :=
.seq RemovedBody674_18 RemovedBody674_151

def RemovedBody674_153 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody674_154 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.break 0

def RemovedBody674_155 : StackLang.HolProg 64 :=
.seq RemovedBody674_153 RemovedBody674_154

def RemovedBody674_156 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 4 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 0) RemovedBody674_152 RemovedBody674_155

def RemovedBody674_157 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody674_158 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 40#64))

def RemovedBody674_159 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 2
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 32#64))

def RemovedBody674_160 : StackLang.HolProg 64 :=
.seq RemovedBody674_158 RemovedBody674_159

def RemovedBody674_161 : StackLang.HolProg 64 :=
.seq RemovedBody674_157 RemovedBody674_160

def RemovedBody674_162 : StackLang.HolProg 64 :=
.seq RemovedBody674_156 RemovedBody674_161

def RemovedBody674_163 : StackLang.HolProg 64 :=
.seq RemovedBody674_17 RemovedBody674_162

def RemovedBody674_164 : StackLang.HolProg 64 :=
.loop RemovedBody674_163

def RemovedBody674_165 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody674_166 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 0#64)

def RemovedBody674_167 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody674_168 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 40#64))

def RemovedBody674_169 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 48#64)))

def RemovedBody674_170 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 22

def RemovedBody674_171 : StackLang.HolProg 64 :=
.seq RemovedBody674_169 RemovedBody674_170

def RemovedBody674_172 : StackLang.HolProg 64 :=
.seq RemovedBody674_168 RemovedBody674_171

def RemovedBody674_173 : StackLang.HolProg 64 :=
.seq RemovedBody674_167 RemovedBody674_172

def RemovedBody674_174 : StackLang.HolProg 64 :=
.seq RemovedBody674_166 RemovedBody674_173

def RemovedBody674_175 : StackLang.HolProg 64 :=
.seq RemovedBody674_165 RemovedBody674_174

def RemovedBody674_176 : StackLang.HolProg 64 :=
.seq RemovedBody674_164 RemovedBody674_175

def RemovedBody674_177 : StackLang.HolProg 64 :=
.seq RemovedBody674_16 RemovedBody674_176

def RemovedBody674_178 : StackLang.HolProg 64 :=
.seq RemovedBody674_9 RemovedBody674_177

def RemovedBody674_179 : StackLang.HolProg 64 :=
.seq RemovedBody674_8 RemovedBody674_178

def RemovedBody674_180 : StackLang.HolProg 64 :=
.seq RemovedBody674_7 RemovedBody674_179

def RemovedBody674_181 : StackLang.HolProg 64 :=
.seq RemovedBody674_6 RemovedBody674_180

def Removed674 : Nat × StackLang.HolProg 64 := (674, RemovedBody674_181)
theorem Removed674_eq : StackRemove.progComp false riscvConfig.addrOffset (riscvConfig.regCount - (riscvConfig.avoidRegs.length + 3)) Alloc674 = Removed674 := by
  kernel_rfl
#print axioms Removed674_eq
end InitECandidate.Proofs.BackendStages
