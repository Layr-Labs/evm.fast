import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.BackendStages.Alloc438
import Flapjack.Compiler.Backend.Backend
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
namespace InitECandidate.Proofs.BackendStages
def RemovedBody438_0 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 16#64)))

def RemovedBody438_1 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 2#64)

def RemovedBody438_2 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 1

def RemovedBody438_3 : StackLang.HolProg 64 :=
.seq RemovedBody438_1 RemovedBody438_2

def RemovedBody438_4 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody438_5 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) RemovedBody438_3 RemovedBody438_4

def RemovedBody438_6 : StackLang.HolProg 64 :=
.seq RemovedBody438_0 RemovedBody438_5

def RemovedBody438_7 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody438_8 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 2 64#64)

def RemovedBody438_9 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 20#64)

def RemovedBody438_10 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody438_11 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody438_12 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1319#64)

def RemovedBody438_13 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody438_14 : StackLang.HolProg 64 :=
.seq RemovedBody438_12 RemovedBody438_13

def RemovedBody438_15 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody438_16 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 2#64)

def RemovedBody438_17 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 1

def RemovedBody438_18 : StackLang.HolProg 64 :=
.seq RemovedBody438_16 RemovedBody438_17

def RemovedBody438_19 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody438_20 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) RemovedBody438_18 RemovedBody438_19

def RemovedBody438_21 : StackLang.HolProg 64 :=
.seq RemovedBody438_15 RemovedBody438_20

def RemovedBody438_22 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def RemovedBody438_23 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody438_24 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 438 3

def RemovedBody438_25 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody438_26 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody438_27 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody438_28 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody438_29 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def RemovedBody438_30 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def RemovedBody438_31 : StackLang.HolProg 64 :=
.seq RemovedBody438_29 RemovedBody438_30

def RemovedBody438_32 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def RemovedBody438_33 : StackLang.HolProg 64 :=
.seq RemovedBody438_31 RemovedBody438_32

def RemovedBody438_34 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody438_35 : StackLang.HolProg 64 :=
.seq RemovedBody438_33 RemovedBody438_34

def RemovedBody438_36 : StackLang.HolProg 64 :=
.seq RemovedBody438_28 RemovedBody438_35

def RemovedBody438_37 : StackLang.HolProg 64 :=
.seq RemovedBody438_27 RemovedBody438_36

def RemovedBody438_38 : StackLang.HolProg 64 :=
.seq RemovedBody438_26 RemovedBody438_37

def RemovedBody438_39 : StackLang.HolProg 64 :=
.seq RemovedBody438_25 RemovedBody438_38

def RemovedBody438_40 : StackLang.HolProg 64 :=
.seq RemovedBody438_24 RemovedBody438_39

def RemovedBody438_41 : StackLang.HolProg 64 :=
.seq RemovedBody438_23 RemovedBody438_40

def RemovedBody438_42 : StackLang.HolProg 64 :=
.seq RemovedBody438_22 RemovedBody438_41

def RemovedBody438_43 : StackLang.HolProg 64 :=
.seq RemovedBody438_21 RemovedBody438_42

def RemovedBody438_44 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody438_45 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody438_46 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody438_47 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody438_48 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody438_49 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody438_50 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 0 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def RemovedBody438_51 : StackLang.HolProg 64 :=
.seq RemovedBody438_49 RemovedBody438_50

def RemovedBody438_52 : StackLang.HolProg 64 :=
.seq RemovedBody438_48 RemovedBody438_51

def RemovedBody438_53 : StackLang.HolProg 64 :=
.seq RemovedBody438_47 RemovedBody438_52

def RemovedBody438_54 : StackLang.HolProg 64 :=
.seq RemovedBody438_46 RemovedBody438_53

def RemovedBody438_55 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody438_56 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def RemovedBody438_57 : StackLang.HolProg 64 :=
.seq RemovedBody438_55 RemovedBody438_56

def RemovedBody438_58 : StackLang.HolProg 64 :=
.call (some (RemovedBody438_54, 0, 438, 2)) (Sum.inl 182) (some (RemovedBody438_57, 438, 3))

def RemovedBody438_59 : StackLang.HolProg 64 :=
.seq RemovedBody438_45 RemovedBody438_58

def RemovedBody438_60 : StackLang.HolProg 64 :=
.seq RemovedBody438_44 RemovedBody438_59

def RemovedBody438_61 : StackLang.HolProg 64 :=
.seq RemovedBody438_43 RemovedBody438_60

def RemovedBody438_62 : StackLang.HolProg 64 :=
.seq RemovedBody438_14 RemovedBody438_61

def RemovedBody438_63 : StackLang.HolProg 64 :=
.seq RemovedBody438_11 RemovedBody438_62

def RemovedBody438_64 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody438_65 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551592#64))

def RemovedBody438_66 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsl 1 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 1#64)))

def RemovedBody438_67 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 1 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 26)))

def RemovedBody438_68 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 1 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 18446744073709551400#64)))

def RemovedBody438_69 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody438_70 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 1 0#64))

def RemovedBody438_71 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 2 64#64)

def RemovedBody438_72 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 28#64)

def RemovedBody438_73 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody438_74 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody438_75 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1320#64)

def RemovedBody438_76 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody438_77 : StackLang.HolProg 64 :=
.seq RemovedBody438_75 RemovedBody438_76

def RemovedBody438_78 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody438_79 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 2#64)

def RemovedBody438_80 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 1

def RemovedBody438_81 : StackLang.HolProg 64 :=
.seq RemovedBody438_79 RemovedBody438_80

def RemovedBody438_82 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody438_83 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) RemovedBody438_81 RemovedBody438_82

def RemovedBody438_84 : StackLang.HolProg 64 :=
.seq RemovedBody438_78 RemovedBody438_83

def RemovedBody438_85 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def RemovedBody438_86 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody438_87 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 438 5

def RemovedBody438_88 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody438_89 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody438_90 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody438_91 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody438_92 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def RemovedBody438_93 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def RemovedBody438_94 : StackLang.HolProg 64 :=
.seq RemovedBody438_92 RemovedBody438_93

def RemovedBody438_95 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def RemovedBody438_96 : StackLang.HolProg 64 :=
.seq RemovedBody438_94 RemovedBody438_95

def RemovedBody438_97 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody438_98 : StackLang.HolProg 64 :=
.seq RemovedBody438_96 RemovedBody438_97

def RemovedBody438_99 : StackLang.HolProg 64 :=
.seq RemovedBody438_91 RemovedBody438_98

def RemovedBody438_100 : StackLang.HolProg 64 :=
.seq RemovedBody438_90 RemovedBody438_99

def RemovedBody438_101 : StackLang.HolProg 64 :=
.seq RemovedBody438_89 RemovedBody438_100

def RemovedBody438_102 : StackLang.HolProg 64 :=
.seq RemovedBody438_88 RemovedBody438_101

def RemovedBody438_103 : StackLang.HolProg 64 :=
.seq RemovedBody438_87 RemovedBody438_102

def RemovedBody438_104 : StackLang.HolProg 64 :=
.seq RemovedBody438_86 RemovedBody438_103

def RemovedBody438_105 : StackLang.HolProg 64 :=
.seq RemovedBody438_85 RemovedBody438_104

def RemovedBody438_106 : StackLang.HolProg 64 :=
.seq RemovedBody438_84 RemovedBody438_105

def RemovedBody438_107 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody438_108 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody438_109 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody438_110 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody438_111 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody438_112 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody438_113 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 0 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def RemovedBody438_114 : StackLang.HolProg 64 :=
.seq RemovedBody438_112 RemovedBody438_113

def RemovedBody438_115 : StackLang.HolProg 64 :=
.seq RemovedBody438_111 RemovedBody438_114

def RemovedBody438_116 : StackLang.HolProg 64 :=
.seq RemovedBody438_110 RemovedBody438_115

def RemovedBody438_117 : StackLang.HolProg 64 :=
.seq RemovedBody438_109 RemovedBody438_116

def RemovedBody438_118 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody438_119 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def RemovedBody438_120 : StackLang.HolProg 64 :=
.seq RemovedBody438_118 RemovedBody438_119

def RemovedBody438_121 : StackLang.HolProg 64 :=
.call (some (RemovedBody438_117, 0, 438, 4)) (Sum.inl 182) (some (RemovedBody438_120, 438, 5))

def RemovedBody438_122 : StackLang.HolProg 64 :=
.seq RemovedBody438_108 RemovedBody438_121

def RemovedBody438_123 : StackLang.HolProg 64 :=
.seq RemovedBody438_107 RemovedBody438_122

def RemovedBody438_124 : StackLang.HolProg 64 :=
.seq RemovedBody438_106 RemovedBody438_123

def RemovedBody438_125 : StackLang.HolProg 64 :=
.seq RemovedBody438_77 RemovedBody438_124

def RemovedBody438_126 : StackLang.HolProg 64 :=
.seq RemovedBody438_74 RemovedBody438_125

def RemovedBody438_127 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody438_128 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551592#64))

def RemovedBody438_129 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsl 1 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 1#64)))

def RemovedBody438_130 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 1 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 26)))

def RemovedBody438_131 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 1 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 18446744073709551384#64)))

def RemovedBody438_132 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody438_133 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 1 0#64))

def RemovedBody438_134 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 2 64#64)

def RemovedBody438_135 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 60#64)

def RemovedBody438_136 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody438_137 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody438_138 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1321#64)

def RemovedBody438_139 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody438_140 : StackLang.HolProg 64 :=
.seq RemovedBody438_138 RemovedBody438_139

def RemovedBody438_141 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody438_142 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 2#64)

def RemovedBody438_143 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 1

def RemovedBody438_144 : StackLang.HolProg 64 :=
.seq RemovedBody438_142 RemovedBody438_143

def RemovedBody438_145 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody438_146 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) RemovedBody438_144 RemovedBody438_145

def RemovedBody438_147 : StackLang.HolProg 64 :=
.seq RemovedBody438_141 RemovedBody438_146

def RemovedBody438_148 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def RemovedBody438_149 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody438_150 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 438 7

def RemovedBody438_151 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody438_152 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody438_153 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody438_154 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody438_155 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def RemovedBody438_156 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def RemovedBody438_157 : StackLang.HolProg 64 :=
.seq RemovedBody438_155 RemovedBody438_156

def RemovedBody438_158 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def RemovedBody438_159 : StackLang.HolProg 64 :=
.seq RemovedBody438_157 RemovedBody438_158

def RemovedBody438_160 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody438_161 : StackLang.HolProg 64 :=
.seq RemovedBody438_159 RemovedBody438_160

def RemovedBody438_162 : StackLang.HolProg 64 :=
.seq RemovedBody438_154 RemovedBody438_161

def RemovedBody438_163 : StackLang.HolProg 64 :=
.seq RemovedBody438_153 RemovedBody438_162

def RemovedBody438_164 : StackLang.HolProg 64 :=
.seq RemovedBody438_152 RemovedBody438_163

def RemovedBody438_165 : StackLang.HolProg 64 :=
.seq RemovedBody438_151 RemovedBody438_164

def RemovedBody438_166 : StackLang.HolProg 64 :=
.seq RemovedBody438_150 RemovedBody438_165

def RemovedBody438_167 : StackLang.HolProg 64 :=
.seq RemovedBody438_149 RemovedBody438_166

def RemovedBody438_168 : StackLang.HolProg 64 :=
.seq RemovedBody438_148 RemovedBody438_167

def RemovedBody438_169 : StackLang.HolProg 64 :=
.seq RemovedBody438_147 RemovedBody438_168

def RemovedBody438_170 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody438_171 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody438_172 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody438_173 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody438_174 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody438_175 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody438_176 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 0 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def RemovedBody438_177 : StackLang.HolProg 64 :=
.seq RemovedBody438_175 RemovedBody438_176

def RemovedBody438_178 : StackLang.HolProg 64 :=
.seq RemovedBody438_174 RemovedBody438_177

def RemovedBody438_179 : StackLang.HolProg 64 :=
.seq RemovedBody438_173 RemovedBody438_178

def RemovedBody438_180 : StackLang.HolProg 64 :=
.seq RemovedBody438_172 RemovedBody438_179

def RemovedBody438_181 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody438_182 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def RemovedBody438_183 : StackLang.HolProg 64 :=
.seq RemovedBody438_181 RemovedBody438_182

def RemovedBody438_184 : StackLang.HolProg 64 :=
.call (some (RemovedBody438_180, 0, 438, 6)) (Sum.inl 182) (some (RemovedBody438_183, 438, 7))

def RemovedBody438_185 : StackLang.HolProg 64 :=
.seq RemovedBody438_171 RemovedBody438_184

def RemovedBody438_186 : StackLang.HolProg 64 :=
.seq RemovedBody438_170 RemovedBody438_185

def RemovedBody438_187 : StackLang.HolProg 64 :=
.seq RemovedBody438_169 RemovedBody438_186

def RemovedBody438_188 : StackLang.HolProg 64 :=
.seq RemovedBody438_140 RemovedBody438_187

def RemovedBody438_189 : StackLang.HolProg 64 :=
.seq RemovedBody438_137 RemovedBody438_188

def RemovedBody438_190 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody438_191 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551592#64))

def RemovedBody438_192 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsl 1 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 1#64)))

def RemovedBody438_193 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 1 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 26)))

def RemovedBody438_194 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 1 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 18446744073709551376#64)))

def RemovedBody438_195 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody438_196 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 1 0#64))

def RemovedBody438_197 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 64#64)

def RemovedBody438_198 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody438_199 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody438_200 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1322#64)

def RemovedBody438_201 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody438_202 : StackLang.HolProg 64 :=
.seq RemovedBody438_200 RemovedBody438_201

def RemovedBody438_203 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody438_204 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 2#64)

def RemovedBody438_205 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 1

def RemovedBody438_206 : StackLang.HolProg 64 :=
.seq RemovedBody438_204 RemovedBody438_205

def RemovedBody438_207 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody438_208 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) RemovedBody438_206 RemovedBody438_207

def RemovedBody438_209 : StackLang.HolProg 64 :=
.seq RemovedBody438_203 RemovedBody438_208

def RemovedBody438_210 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def RemovedBody438_211 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody438_212 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 438 9

def RemovedBody438_213 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody438_214 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody438_215 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody438_216 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody438_217 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def RemovedBody438_218 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def RemovedBody438_219 : StackLang.HolProg 64 :=
.seq RemovedBody438_217 RemovedBody438_218

def RemovedBody438_220 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def RemovedBody438_221 : StackLang.HolProg 64 :=
.seq RemovedBody438_219 RemovedBody438_220

def RemovedBody438_222 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody438_223 : StackLang.HolProg 64 :=
.seq RemovedBody438_221 RemovedBody438_222

def RemovedBody438_224 : StackLang.HolProg 64 :=
.seq RemovedBody438_216 RemovedBody438_223

def RemovedBody438_225 : StackLang.HolProg 64 :=
.seq RemovedBody438_215 RemovedBody438_224

def RemovedBody438_226 : StackLang.HolProg 64 :=
.seq RemovedBody438_214 RemovedBody438_225

def RemovedBody438_227 : StackLang.HolProg 64 :=
.seq RemovedBody438_213 RemovedBody438_226

def RemovedBody438_228 : StackLang.HolProg 64 :=
.seq RemovedBody438_212 RemovedBody438_227

def RemovedBody438_229 : StackLang.HolProg 64 :=
.seq RemovedBody438_211 RemovedBody438_228

def RemovedBody438_230 : StackLang.HolProg 64 :=
.seq RemovedBody438_210 RemovedBody438_229

def RemovedBody438_231 : StackLang.HolProg 64 :=
.seq RemovedBody438_209 RemovedBody438_230

def RemovedBody438_232 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody438_233 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody438_234 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody438_235 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody438_236 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody438_237 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody438_238 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 2 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def RemovedBody438_239 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 3
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody438_240 : StackLang.HolProg 64 :=
.seq RemovedBody438_238 RemovedBody438_239

def RemovedBody438_241 : StackLang.HolProg 64 :=
.seq RemovedBody438_237 RemovedBody438_240

def RemovedBody438_242 : StackLang.HolProg 64 :=
.seq RemovedBody438_236 RemovedBody438_241

def RemovedBody438_243 : StackLang.HolProg 64 :=
.seq RemovedBody438_235 RemovedBody438_242

def RemovedBody438_244 : StackLang.HolProg 64 :=
.seq RemovedBody438_234 RemovedBody438_243

def RemovedBody438_245 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 3
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody438_246 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def RemovedBody438_247 : StackLang.HolProg 64 :=
.seq RemovedBody438_245 RemovedBody438_246

def RemovedBody438_248 : StackLang.HolProg 64 :=
.call (some (RemovedBody438_244, 0, 438, 8)) (Sum.inl 68) (some (RemovedBody438_247, 438, 9))

def RemovedBody438_249 : StackLang.HolProg 64 :=
.seq RemovedBody438_233 RemovedBody438_248

def RemovedBody438_250 : StackLang.HolProg 64 :=
.seq RemovedBody438_232 RemovedBody438_249

def RemovedBody438_251 : StackLang.HolProg 64 :=
.seq RemovedBody438_231 RemovedBody438_250

def RemovedBody438_252 : StackLang.HolProg 64 :=
.seq RemovedBody438_202 RemovedBody438_251

def RemovedBody438_253 : StackLang.HolProg 64 :=
.seq RemovedBody438_199 RemovedBody438_252

def RemovedBody438_254 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody438_255 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551592#64))

def RemovedBody438_256 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsl 0 0
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 1#64)))

def RemovedBody438_257 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 0 0
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 26)))

def RemovedBody438_258 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 1 0
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 18446744073709551368#64)))

def RemovedBody438_259 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody438_260 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 2
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 1 0#64))

def RemovedBody438_261 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody438_262 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 0 0
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 18446744073709551392#64)))

def RemovedBody438_263 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 0#64)

def RemovedBody438_264 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody438_265 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 0 0#64))

def RemovedBody438_266 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 0#64)

def RemovedBody438_267 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody438_268 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 16#64)))

def RemovedBody438_269 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 3

def RemovedBody438_270 : StackLang.HolProg 64 :=
.seq RemovedBody438_268 RemovedBody438_269

def RemovedBody438_271 : StackLang.HolProg 64 :=
.seq RemovedBody438_267 RemovedBody438_270

def RemovedBody438_272 : StackLang.HolProg 64 :=
.seq RemovedBody438_266 RemovedBody438_271

def RemovedBody438_273 : StackLang.HolProg 64 :=
.seq RemovedBody438_265 RemovedBody438_272

def RemovedBody438_274 : StackLang.HolProg 64 :=
.seq RemovedBody438_264 RemovedBody438_273

def RemovedBody438_275 : StackLang.HolProg 64 :=
.seq RemovedBody438_263 RemovedBody438_274

def RemovedBody438_276 : StackLang.HolProg 64 :=
.seq RemovedBody438_262 RemovedBody438_275

def RemovedBody438_277 : StackLang.HolProg 64 :=
.seq RemovedBody438_261 RemovedBody438_276

def RemovedBody438_278 : StackLang.HolProg 64 :=
.seq RemovedBody438_260 RemovedBody438_277

def RemovedBody438_279 : StackLang.HolProg 64 :=
.seq RemovedBody438_259 RemovedBody438_278

def RemovedBody438_280 : StackLang.HolProg 64 :=
.seq RemovedBody438_258 RemovedBody438_279

def RemovedBody438_281 : StackLang.HolProg 64 :=
.seq RemovedBody438_257 RemovedBody438_280

def RemovedBody438_282 : StackLang.HolProg 64 :=
.seq RemovedBody438_256 RemovedBody438_281

def RemovedBody438_283 : StackLang.HolProg 64 :=
.seq RemovedBody438_255 RemovedBody438_282

def RemovedBody438_284 : StackLang.HolProg 64 :=
.seq RemovedBody438_254 RemovedBody438_283

def RemovedBody438_285 : StackLang.HolProg 64 :=
.seq RemovedBody438_253 RemovedBody438_284

def RemovedBody438_286 : StackLang.HolProg 64 :=
.seq RemovedBody438_198 RemovedBody438_285

def RemovedBody438_287 : StackLang.HolProg 64 :=
.seq RemovedBody438_197 RemovedBody438_286

def RemovedBody438_288 : StackLang.HolProg 64 :=
.seq RemovedBody438_196 RemovedBody438_287

def RemovedBody438_289 : StackLang.HolProg 64 :=
.seq RemovedBody438_195 RemovedBody438_288

def RemovedBody438_290 : StackLang.HolProg 64 :=
.seq RemovedBody438_194 RemovedBody438_289

def RemovedBody438_291 : StackLang.HolProg 64 :=
.seq RemovedBody438_193 RemovedBody438_290

def RemovedBody438_292 : StackLang.HolProg 64 :=
.seq RemovedBody438_192 RemovedBody438_291

def RemovedBody438_293 : StackLang.HolProg 64 :=
.seq RemovedBody438_191 RemovedBody438_292

def RemovedBody438_294 : StackLang.HolProg 64 :=
.seq RemovedBody438_190 RemovedBody438_293

def RemovedBody438_295 : StackLang.HolProg 64 :=
.seq RemovedBody438_189 RemovedBody438_294

def RemovedBody438_296 : StackLang.HolProg 64 :=
.seq RemovedBody438_136 RemovedBody438_295

def RemovedBody438_297 : StackLang.HolProg 64 :=
.seq RemovedBody438_135 RemovedBody438_296

def RemovedBody438_298 : StackLang.HolProg 64 :=
.seq RemovedBody438_134 RemovedBody438_297

def RemovedBody438_299 : StackLang.HolProg 64 :=
.seq RemovedBody438_133 RemovedBody438_298

def RemovedBody438_300 : StackLang.HolProg 64 :=
.seq RemovedBody438_132 RemovedBody438_299

def RemovedBody438_301 : StackLang.HolProg 64 :=
.seq RemovedBody438_131 RemovedBody438_300

def RemovedBody438_302 : StackLang.HolProg 64 :=
.seq RemovedBody438_130 RemovedBody438_301

def RemovedBody438_303 : StackLang.HolProg 64 :=
.seq RemovedBody438_129 RemovedBody438_302

def RemovedBody438_304 : StackLang.HolProg 64 :=
.seq RemovedBody438_128 RemovedBody438_303

def RemovedBody438_305 : StackLang.HolProg 64 :=
.seq RemovedBody438_127 RemovedBody438_304

def RemovedBody438_306 : StackLang.HolProg 64 :=
.seq RemovedBody438_126 RemovedBody438_305

def RemovedBody438_307 : StackLang.HolProg 64 :=
.seq RemovedBody438_73 RemovedBody438_306

def RemovedBody438_308 : StackLang.HolProg 64 :=
.seq RemovedBody438_72 RemovedBody438_307

def RemovedBody438_309 : StackLang.HolProg 64 :=
.seq RemovedBody438_71 RemovedBody438_308

def RemovedBody438_310 : StackLang.HolProg 64 :=
.seq RemovedBody438_70 RemovedBody438_309

def RemovedBody438_311 : StackLang.HolProg 64 :=
.seq RemovedBody438_69 RemovedBody438_310

def RemovedBody438_312 : StackLang.HolProg 64 :=
.seq RemovedBody438_68 RemovedBody438_311

def RemovedBody438_313 : StackLang.HolProg 64 :=
.seq RemovedBody438_67 RemovedBody438_312

def RemovedBody438_314 : StackLang.HolProg 64 :=
.seq RemovedBody438_66 RemovedBody438_313

def RemovedBody438_315 : StackLang.HolProg 64 :=
.seq RemovedBody438_65 RemovedBody438_314

def RemovedBody438_316 : StackLang.HolProg 64 :=
.seq RemovedBody438_64 RemovedBody438_315

def RemovedBody438_317 : StackLang.HolProg 64 :=
.seq RemovedBody438_63 RemovedBody438_316

def RemovedBody438_318 : StackLang.HolProg 64 :=
.seq RemovedBody438_10 RemovedBody438_317

def RemovedBody438_319 : StackLang.HolProg 64 :=
.seq RemovedBody438_9 RemovedBody438_318

def RemovedBody438_320 : StackLang.HolProg 64 :=
.seq RemovedBody438_8 RemovedBody438_319

def RemovedBody438_321 : StackLang.HolProg 64 :=
.seq RemovedBody438_7 RemovedBody438_320

def RemovedBody438_322 : StackLang.HolProg 64 :=
.seq RemovedBody438_6 RemovedBody438_321

def Removed438 : Nat × StackLang.HolProg 64 := (438, RemovedBody438_322)
theorem Removed438_eq : StackRemove.progComp false riscvConfig.addrOffset (riscvConfig.regCount - (riscvConfig.avoidRegs.length + 3)) Alloc438 = Removed438 := by
  kernel_rfl
#print axioms Removed438_eq
end InitECandidate.Proofs.BackendStages
