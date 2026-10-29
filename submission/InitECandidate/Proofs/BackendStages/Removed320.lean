import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.BackendStages.Alloc320
import Flapjack.Compiler.Backend.Backend
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
namespace InitECandidate.Proofs.BackendStages
def RemovedBody320_0 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 40#64)))

def RemovedBody320_1 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 2#64)

def RemovedBody320_2 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 1

def RemovedBody320_3 : StackLang.HolProg 64 :=
.seq RemovedBody320_1 RemovedBody320_2

def RemovedBody320_4 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody320_5 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) RemovedBody320_3 RemovedBody320_4

def RemovedBody320_6 : StackLang.HolProg 64 :=
.seq RemovedBody320_0 RemovedBody320_5

def RemovedBody320_7 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 32#64))

def RemovedBody320_8 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 4
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 24#64))

def RemovedBody320_9 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody320_10 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 5
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody320_11 : StackLang.HolProg 64 :=
.seq RemovedBody320_9 RemovedBody320_10

def RemovedBody320_12 : StackLang.HolProg 64 :=
.seq RemovedBody320_8 RemovedBody320_11

def RemovedBody320_13 : StackLang.HolProg 64 :=
.seq RemovedBody320_7 RemovedBody320_12

def RemovedBody320_14 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody320_15 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 896#64)

def RemovedBody320_16 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody320_17 : StackLang.HolProg 64 :=
.seq RemovedBody320_15 RemovedBody320_16

def RemovedBody320_18 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody320_19 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 2#64)

def RemovedBody320_20 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 1

def RemovedBody320_21 : StackLang.HolProg 64 :=
.seq RemovedBody320_19 RemovedBody320_20

def RemovedBody320_22 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody320_23 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) RemovedBody320_21 RemovedBody320_22

def RemovedBody320_24 : StackLang.HolProg 64 :=
.seq RemovedBody320_18 RemovedBody320_23

def RemovedBody320_25 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def RemovedBody320_26 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody320_27 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 320 3

def RemovedBody320_28 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody320_29 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody320_30 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody320_31 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody320_32 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def RemovedBody320_33 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def RemovedBody320_34 : StackLang.HolProg 64 :=
.seq RemovedBody320_32 RemovedBody320_33

def RemovedBody320_35 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def RemovedBody320_36 : StackLang.HolProg 64 :=
.seq RemovedBody320_34 RemovedBody320_35

def RemovedBody320_37 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody320_38 : StackLang.HolProg 64 :=
.seq RemovedBody320_36 RemovedBody320_37

def RemovedBody320_39 : StackLang.HolProg 64 :=
.seq RemovedBody320_31 RemovedBody320_38

def RemovedBody320_40 : StackLang.HolProg 64 :=
.seq RemovedBody320_30 RemovedBody320_39

def RemovedBody320_41 : StackLang.HolProg 64 :=
.seq RemovedBody320_29 RemovedBody320_40

def RemovedBody320_42 : StackLang.HolProg 64 :=
.seq RemovedBody320_28 RemovedBody320_41

def RemovedBody320_43 : StackLang.HolProg 64 :=
.seq RemovedBody320_27 RemovedBody320_42

def RemovedBody320_44 : StackLang.HolProg 64 :=
.seq RemovedBody320_26 RemovedBody320_43

def RemovedBody320_45 : StackLang.HolProg 64 :=
.seq RemovedBody320_25 RemovedBody320_44

def RemovedBody320_46 : StackLang.HolProg 64 :=
.seq RemovedBody320_24 RemovedBody320_45

def RemovedBody320_47 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody320_48 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody320_49 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody320_50 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody320_51 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody320_52 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody320_53 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 0 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def RemovedBody320_54 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 5
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 24#64))

def RemovedBody320_55 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 7
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody320_56 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 6
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody320_57 : StackLang.HolProg 64 :=
.seq RemovedBody320_55 RemovedBody320_56

def RemovedBody320_58 : StackLang.HolProg 64 :=
.seq RemovedBody320_54 RemovedBody320_57

def RemovedBody320_59 : StackLang.HolProg 64 :=
.seq RemovedBody320_53 RemovedBody320_58

def RemovedBody320_60 : StackLang.HolProg 64 :=
.seq RemovedBody320_52 RemovedBody320_59

def RemovedBody320_61 : StackLang.HolProg 64 :=
.seq RemovedBody320_51 RemovedBody320_60

def RemovedBody320_62 : StackLang.HolProg 64 :=
.seq RemovedBody320_50 RemovedBody320_61

def RemovedBody320_63 : StackLang.HolProg 64 :=
.seq RemovedBody320_49 RemovedBody320_62

def RemovedBody320_64 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 5
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 24#64))

def RemovedBody320_65 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 7
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody320_66 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 6
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody320_67 : StackLang.HolProg 64 :=
.seq RemovedBody320_65 RemovedBody320_66

def RemovedBody320_68 : StackLang.HolProg 64 :=
.seq RemovedBody320_64 RemovedBody320_67

def RemovedBody320_69 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def RemovedBody320_70 : StackLang.HolProg 64 :=
.seq RemovedBody320_68 RemovedBody320_69

def RemovedBody320_71 : StackLang.HolProg 64 :=
.call (some (RemovedBody320_63, 0, 320, 2)) (Sum.inl 310) (some (RemovedBody320_70, 320, 3))

def RemovedBody320_72 : StackLang.HolProg 64 :=
.seq RemovedBody320_48 RemovedBody320_71

def RemovedBody320_73 : StackLang.HolProg 64 :=
.seq RemovedBody320_47 RemovedBody320_72

def RemovedBody320_74 : StackLang.HolProg 64 :=
.seq RemovedBody320_46 RemovedBody320_73

def RemovedBody320_75 : StackLang.HolProg 64 :=
.seq RemovedBody320_17 RemovedBody320_74

def RemovedBody320_76 : StackLang.HolProg 64 :=
.seq RemovedBody320_14 RemovedBody320_75

def RemovedBody320_77 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody320_78 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody320_79 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 7 0#64))

def RemovedBody320_80 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody320_81 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 3 0#64)

def RemovedBody320_82 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 4 1#64)

def RemovedBody320_83 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody320_84 : StackLang.HolProg 64 :=
.seq RemovedBody320_82 RemovedBody320_83

def RemovedBody320_85 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 4 0#64)

def RemovedBody320_86 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody320_87 : StackLang.HolProg 64 :=
.seq RemovedBody320_85 RemovedBody320_86

def RemovedBody320_88 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.equal) 5 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 3) RemovedBody320_84 RemovedBody320_87

def RemovedBody320_89 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody320_90 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody320_91 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 3 0#64)

def RemovedBody320_92 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 3 1#64)

def RemovedBody320_93 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody320_94 : StackLang.HolProg 64 :=
.seq RemovedBody320_92 RemovedBody320_93

def RemovedBody320_95 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 3 0#64)

def RemovedBody320_96 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody320_97 : StackLang.HolProg 64 :=
.seq RemovedBody320_95 RemovedBody320_96

def RemovedBody320_98 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.equal) 6 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 3) RemovedBody320_94 RemovedBody320_97

def RemovedBody320_99 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody320_100 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 8 0#64)

def RemovedBody320_101 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody320_102 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 3 3
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 4)))

def RemovedBody320_103 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody320_104 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 3 2
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 2)))

def RemovedBody320_105 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 2 0
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 0)))

def RemovedBody320_106 : StackLang.HolProg 64 :=
.seq RemovedBody320_104 RemovedBody320_105

def RemovedBody320_107 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 4 0#64)

def RemovedBody320_108 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 7
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 24#64))

def RemovedBody320_109 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody320_110 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 897#64)

def RemovedBody320_111 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody320_112 : StackLang.HolProg 64 :=
.seq RemovedBody320_110 RemovedBody320_111

def RemovedBody320_113 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody320_114 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 2#64)

def RemovedBody320_115 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 1

def RemovedBody320_116 : StackLang.HolProg 64 :=
.seq RemovedBody320_114 RemovedBody320_115

def RemovedBody320_117 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody320_118 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) RemovedBody320_116 RemovedBody320_117

def RemovedBody320_119 : StackLang.HolProg 64 :=
.seq RemovedBody320_113 RemovedBody320_118

def RemovedBody320_120 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def RemovedBody320_121 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody320_122 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 320 5

def RemovedBody320_123 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody320_124 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody320_125 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody320_126 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody320_127 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def RemovedBody320_128 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def RemovedBody320_129 : StackLang.HolProg 64 :=
.seq RemovedBody320_127 RemovedBody320_128

def RemovedBody320_130 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def RemovedBody320_131 : StackLang.HolProg 64 :=
.seq RemovedBody320_129 RemovedBody320_130

def RemovedBody320_132 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody320_133 : StackLang.HolProg 64 :=
.seq RemovedBody320_131 RemovedBody320_132

def RemovedBody320_134 : StackLang.HolProg 64 :=
.seq RemovedBody320_126 RemovedBody320_133

def RemovedBody320_135 : StackLang.HolProg 64 :=
.seq RemovedBody320_125 RemovedBody320_134

def RemovedBody320_136 : StackLang.HolProg 64 :=
.seq RemovedBody320_124 RemovedBody320_135

def RemovedBody320_137 : StackLang.HolProg 64 :=
.seq RemovedBody320_123 RemovedBody320_136

def RemovedBody320_138 : StackLang.HolProg 64 :=
.seq RemovedBody320_122 RemovedBody320_137

def RemovedBody320_139 : StackLang.HolProg 64 :=
.seq RemovedBody320_121 RemovedBody320_138

def RemovedBody320_140 : StackLang.HolProg 64 :=
.seq RemovedBody320_120 RemovedBody320_139

def RemovedBody320_141 : StackLang.HolProg 64 :=
.seq RemovedBody320_119 RemovedBody320_140

def RemovedBody320_142 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody320_143 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody320_144 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody320_145 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody320_146 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody320_147 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody320_148 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 2 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def RemovedBody320_149 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 32#64))

def RemovedBody320_150 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 3
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 24#64))

def RemovedBody320_151 : StackLang.HolProg 64 :=
.seq RemovedBody320_149 RemovedBody320_150

def RemovedBody320_152 : StackLang.HolProg 64 :=
.seq RemovedBody320_148 RemovedBody320_151

def RemovedBody320_153 : StackLang.HolProg 64 :=
.seq RemovedBody320_147 RemovedBody320_152

def RemovedBody320_154 : StackLang.HolProg 64 :=
.seq RemovedBody320_146 RemovedBody320_153

def RemovedBody320_155 : StackLang.HolProg 64 :=
.seq RemovedBody320_145 RemovedBody320_154

def RemovedBody320_156 : StackLang.HolProg 64 :=
.seq RemovedBody320_144 RemovedBody320_155

def RemovedBody320_157 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 32#64))

def RemovedBody320_158 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 3
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 24#64))

def RemovedBody320_159 : StackLang.HolProg 64 :=
.seq RemovedBody320_157 RemovedBody320_158

def RemovedBody320_160 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def RemovedBody320_161 : StackLang.HolProg 64 :=
.seq RemovedBody320_159 RemovedBody320_160

def RemovedBody320_162 : StackLang.HolProg 64 :=
.call (some (RemovedBody320_156, 0, 320, 4)) (Sum.inl 319) (some (RemovedBody320_161, 320, 5))

def RemovedBody320_163 : StackLang.HolProg 64 :=
.seq RemovedBody320_143 RemovedBody320_162

def RemovedBody320_164 : StackLang.HolProg 64 :=
.seq RemovedBody320_142 RemovedBody320_163

def RemovedBody320_165 : StackLang.HolProg 64 :=
.seq RemovedBody320_141 RemovedBody320_164

def RemovedBody320_166 : StackLang.HolProg 64 :=
.seq RemovedBody320_112 RemovedBody320_165

def RemovedBody320_167 : StackLang.HolProg 64 :=
.seq RemovedBody320_109 RemovedBody320_166

def RemovedBody320_168 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody320_169 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody320_170 : StackLang.HolProg 64 :=
.seq RemovedBody320_168 RemovedBody320_169

def RemovedBody320_171 : StackLang.HolProg 64 :=
.seq RemovedBody320_167 RemovedBody320_170

def RemovedBody320_172 : StackLang.HolProg 64 :=
.seq RemovedBody320_108 RemovedBody320_171

def RemovedBody320_173 : StackLang.HolProg 64 :=
.seq RemovedBody320_107 RemovedBody320_172

def RemovedBody320_174 : StackLang.HolProg 64 :=
.seq RemovedBody320_106 RemovedBody320_173

def RemovedBody320_175 : StackLang.HolProg 64 :=
.seq RemovedBody320_103 RemovedBody320_174

def RemovedBody320_176 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody320_177 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 3 2
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 2)))

def RemovedBody320_178 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 2 0
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 0)))

def RemovedBody320_179 : StackLang.HolProg 64 :=
.seq RemovedBody320_177 RemovedBody320_178

def RemovedBody320_180 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 4 0#64)

def RemovedBody320_181 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 7
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 24#64))

def RemovedBody320_182 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody320_183 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 898#64)

def RemovedBody320_184 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody320_185 : StackLang.HolProg 64 :=
.seq RemovedBody320_183 RemovedBody320_184

def RemovedBody320_186 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody320_187 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 2#64)

def RemovedBody320_188 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 1

def RemovedBody320_189 : StackLang.HolProg 64 :=
.seq RemovedBody320_187 RemovedBody320_188

def RemovedBody320_190 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody320_191 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) RemovedBody320_189 RemovedBody320_190

def RemovedBody320_192 : StackLang.HolProg 64 :=
.seq RemovedBody320_186 RemovedBody320_191

def RemovedBody320_193 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def RemovedBody320_194 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody320_195 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 320 7

def RemovedBody320_196 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody320_197 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody320_198 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody320_199 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody320_200 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def RemovedBody320_201 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def RemovedBody320_202 : StackLang.HolProg 64 :=
.seq RemovedBody320_200 RemovedBody320_201

def RemovedBody320_203 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def RemovedBody320_204 : StackLang.HolProg 64 :=
.seq RemovedBody320_202 RemovedBody320_203

def RemovedBody320_205 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody320_206 : StackLang.HolProg 64 :=
.seq RemovedBody320_204 RemovedBody320_205

def RemovedBody320_207 : StackLang.HolProg 64 :=
.seq RemovedBody320_199 RemovedBody320_206

def RemovedBody320_208 : StackLang.HolProg 64 :=
.seq RemovedBody320_198 RemovedBody320_207

def RemovedBody320_209 : StackLang.HolProg 64 :=
.seq RemovedBody320_197 RemovedBody320_208

def RemovedBody320_210 : StackLang.HolProg 64 :=
.seq RemovedBody320_196 RemovedBody320_209

def RemovedBody320_211 : StackLang.HolProg 64 :=
.seq RemovedBody320_195 RemovedBody320_210

def RemovedBody320_212 : StackLang.HolProg 64 :=
.seq RemovedBody320_194 RemovedBody320_211

def RemovedBody320_213 : StackLang.HolProg 64 :=
.seq RemovedBody320_193 RemovedBody320_212

def RemovedBody320_214 : StackLang.HolProg 64 :=
.seq RemovedBody320_192 RemovedBody320_213

def RemovedBody320_215 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody320_216 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody320_217 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody320_218 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody320_219 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody320_220 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody320_221 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 2 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def RemovedBody320_222 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 32#64))

def RemovedBody320_223 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 3
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 24#64))

def RemovedBody320_224 : StackLang.HolProg 64 :=
.seq RemovedBody320_222 RemovedBody320_223

def RemovedBody320_225 : StackLang.HolProg 64 :=
.seq RemovedBody320_221 RemovedBody320_224

def RemovedBody320_226 : StackLang.HolProg 64 :=
.seq RemovedBody320_220 RemovedBody320_225

def RemovedBody320_227 : StackLang.HolProg 64 :=
.seq RemovedBody320_219 RemovedBody320_226

def RemovedBody320_228 : StackLang.HolProg 64 :=
.seq RemovedBody320_218 RemovedBody320_227

def RemovedBody320_229 : StackLang.HolProg 64 :=
.seq RemovedBody320_217 RemovedBody320_228

def RemovedBody320_230 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 32#64))

def RemovedBody320_231 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 3
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 24#64))

def RemovedBody320_232 : StackLang.HolProg 64 :=
.seq RemovedBody320_230 RemovedBody320_231

def RemovedBody320_233 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def RemovedBody320_234 : StackLang.HolProg 64 :=
.seq RemovedBody320_232 RemovedBody320_233

def RemovedBody320_235 : StackLang.HolProg 64 :=
.call (some (RemovedBody320_229, 0, 320, 6)) (Sum.inl 315) (some (RemovedBody320_234, 320, 7))

def RemovedBody320_236 : StackLang.HolProg 64 :=
.seq RemovedBody320_216 RemovedBody320_235

def RemovedBody320_237 : StackLang.HolProg 64 :=
.seq RemovedBody320_215 RemovedBody320_236

def RemovedBody320_238 : StackLang.HolProg 64 :=
.seq RemovedBody320_214 RemovedBody320_237

def RemovedBody320_239 : StackLang.HolProg 64 :=
.seq RemovedBody320_185 RemovedBody320_238

def RemovedBody320_240 : StackLang.HolProg 64 :=
.seq RemovedBody320_182 RemovedBody320_239

def RemovedBody320_241 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody320_242 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody320_243 : StackLang.HolProg 64 :=
.seq RemovedBody320_241 RemovedBody320_242

def RemovedBody320_244 : StackLang.HolProg 64 :=
.seq RemovedBody320_240 RemovedBody320_243

def RemovedBody320_245 : StackLang.HolProg 64 :=
.seq RemovedBody320_181 RemovedBody320_244

def RemovedBody320_246 : StackLang.HolProg 64 :=
.seq RemovedBody320_180 RemovedBody320_245

def RemovedBody320_247 : StackLang.HolProg 64 :=
.seq RemovedBody320_179 RemovedBody320_246

def RemovedBody320_248 : StackLang.HolProg 64 :=
.seq RemovedBody320_176 RemovedBody320_247

def RemovedBody320_249 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.notEqual) 8 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 3) RemovedBody320_175 RemovedBody320_248

def RemovedBody320_250 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody320_251 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody320_252 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 2
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 3 0#64))

def RemovedBody320_253 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 0#64)

def RemovedBody320_254 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody320_255 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 40#64)))

def RemovedBody320_256 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 0

def RemovedBody320_257 : StackLang.HolProg 64 :=
.seq RemovedBody320_255 RemovedBody320_256

def RemovedBody320_258 : StackLang.HolProg 64 :=
.seq RemovedBody320_254 RemovedBody320_257

def RemovedBody320_259 : StackLang.HolProg 64 :=
.seq RemovedBody320_253 RemovedBody320_258

def RemovedBody320_260 : StackLang.HolProg 64 :=
.seq RemovedBody320_252 RemovedBody320_259

def RemovedBody320_261 : StackLang.HolProg 64 :=
.seq RemovedBody320_251 RemovedBody320_260

def RemovedBody320_262 : StackLang.HolProg 64 :=
.seq RemovedBody320_250 RemovedBody320_261

def RemovedBody320_263 : StackLang.HolProg 64 :=
.seq RemovedBody320_249 RemovedBody320_262

def RemovedBody320_264 : StackLang.HolProg 64 :=
.seq RemovedBody320_102 RemovedBody320_263

def RemovedBody320_265 : StackLang.HolProg 64 :=
.seq RemovedBody320_101 RemovedBody320_264

def RemovedBody320_266 : StackLang.HolProg 64 :=
.seq RemovedBody320_100 RemovedBody320_265

def RemovedBody320_267 : StackLang.HolProg 64 :=
.seq RemovedBody320_99 RemovedBody320_266

def RemovedBody320_268 : StackLang.HolProg 64 :=
.seq RemovedBody320_98 RemovedBody320_267

def RemovedBody320_269 : StackLang.HolProg 64 :=
.seq RemovedBody320_91 RemovedBody320_268

def RemovedBody320_270 : StackLang.HolProg 64 :=
.seq RemovedBody320_90 RemovedBody320_269

def RemovedBody320_271 : StackLang.HolProg 64 :=
.seq RemovedBody320_89 RemovedBody320_270

def RemovedBody320_272 : StackLang.HolProg 64 :=
.seq RemovedBody320_88 RemovedBody320_271

def RemovedBody320_273 : StackLang.HolProg 64 :=
.seq RemovedBody320_81 RemovedBody320_272

def RemovedBody320_274 : StackLang.HolProg 64 :=
.seq RemovedBody320_80 RemovedBody320_273

def RemovedBody320_275 : StackLang.HolProg 64 :=
.seq RemovedBody320_79 RemovedBody320_274

def RemovedBody320_276 : StackLang.HolProg 64 :=
.seq RemovedBody320_78 RemovedBody320_275

def RemovedBody320_277 : StackLang.HolProg 64 :=
.seq RemovedBody320_77 RemovedBody320_276

def RemovedBody320_278 : StackLang.HolProg 64 :=
.seq RemovedBody320_76 RemovedBody320_277

def RemovedBody320_279 : StackLang.HolProg 64 :=
.seq RemovedBody320_13 RemovedBody320_278

def RemovedBody320_280 : StackLang.HolProg 64 :=
.seq RemovedBody320_6 RemovedBody320_279

def Removed320 : Nat × StackLang.HolProg 64 := (320, RemovedBody320_280)
theorem Removed320_eq : StackRemove.progComp false riscvConfig.addrOffset (riscvConfig.regCount - (riscvConfig.avoidRegs.length + 3)) Alloc320 = Removed320 := by
  kernel_rfl
#print axioms Removed320_eq
end InitECandidate.Proofs.BackendStages
