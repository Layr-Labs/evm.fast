import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.BackendStages.Alloc270
import Flapjack.Compiler.Backend.Backend
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
namespace InitECandidate.Proofs.BackendStages
def RemovedBody270_0 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 32#64)))

def RemovedBody270_1 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 2#64)

def RemovedBody270_2 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 1

def RemovedBody270_3 : StackLang.HolProg 64 :=
.seq RemovedBody270_1 RemovedBody270_2

def RemovedBody270_4 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody270_5 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) RemovedBody270_3 RemovedBody270_4

def RemovedBody270_6 : StackLang.HolProg 64 :=
.seq RemovedBody270_0 RemovedBody270_5

def RemovedBody270_7 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody270_8 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 3 0#64)

def RemovedBody270_9 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 24#64))

def RemovedBody270_10 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 2
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody270_11 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody270_12 : StackLang.HolProg 64 :=
.seq RemovedBody270_10 RemovedBody270_11

def RemovedBody270_13 : StackLang.HolProg 64 :=
.seq RemovedBody270_9 RemovedBody270_12

def RemovedBody270_14 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody270_15 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 656#64)

def RemovedBody270_16 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody270_17 : StackLang.HolProg 64 :=
.seq RemovedBody270_15 RemovedBody270_16

def RemovedBody270_18 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody270_19 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 2#64)

def RemovedBody270_20 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 1

def RemovedBody270_21 : StackLang.HolProg 64 :=
.seq RemovedBody270_19 RemovedBody270_20

def RemovedBody270_22 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody270_23 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) RemovedBody270_21 RemovedBody270_22

def RemovedBody270_24 : StackLang.HolProg 64 :=
.seq RemovedBody270_18 RemovedBody270_23

def RemovedBody270_25 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def RemovedBody270_26 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody270_27 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 270 3

def RemovedBody270_28 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody270_29 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody270_30 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody270_31 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody270_32 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def RemovedBody270_33 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def RemovedBody270_34 : StackLang.HolProg 64 :=
.seq RemovedBody270_32 RemovedBody270_33

def RemovedBody270_35 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def RemovedBody270_36 : StackLang.HolProg 64 :=
.seq RemovedBody270_34 RemovedBody270_35

def RemovedBody270_37 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody270_38 : StackLang.HolProg 64 :=
.seq RemovedBody270_36 RemovedBody270_37

def RemovedBody270_39 : StackLang.HolProg 64 :=
.seq RemovedBody270_31 RemovedBody270_38

def RemovedBody270_40 : StackLang.HolProg 64 :=
.seq RemovedBody270_30 RemovedBody270_39

def RemovedBody270_41 : StackLang.HolProg 64 :=
.seq RemovedBody270_29 RemovedBody270_40

def RemovedBody270_42 : StackLang.HolProg 64 :=
.seq RemovedBody270_28 RemovedBody270_41

def RemovedBody270_43 : StackLang.HolProg 64 :=
.seq RemovedBody270_27 RemovedBody270_42

def RemovedBody270_44 : StackLang.HolProg 64 :=
.seq RemovedBody270_26 RemovedBody270_43

def RemovedBody270_45 : StackLang.HolProg 64 :=
.seq RemovedBody270_25 RemovedBody270_44

def RemovedBody270_46 : StackLang.HolProg 64 :=
.seq RemovedBody270_24 RemovedBody270_45

def RemovedBody270_47 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody270_48 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody270_49 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody270_50 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody270_51 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody270_52 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody270_53 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 3 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def RemovedBody270_54 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 7
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 24#64))

def RemovedBody270_55 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 6
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody270_56 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 5
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody270_57 : StackLang.HolProg 64 :=
.seq RemovedBody270_55 RemovedBody270_56

def RemovedBody270_58 : StackLang.HolProg 64 :=
.seq RemovedBody270_54 RemovedBody270_57

def RemovedBody270_59 : StackLang.HolProg 64 :=
.seq RemovedBody270_53 RemovedBody270_58

def RemovedBody270_60 : StackLang.HolProg 64 :=
.seq RemovedBody270_52 RemovedBody270_59

def RemovedBody270_61 : StackLang.HolProg 64 :=
.seq RemovedBody270_51 RemovedBody270_60

def RemovedBody270_62 : StackLang.HolProg 64 :=
.seq RemovedBody270_50 RemovedBody270_61

def RemovedBody270_63 : StackLang.HolProg 64 :=
.seq RemovedBody270_49 RemovedBody270_62

def RemovedBody270_64 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 7
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 24#64))

def RemovedBody270_65 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 6
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody270_66 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 5
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody270_67 : StackLang.HolProg 64 :=
.seq RemovedBody270_65 RemovedBody270_66

def RemovedBody270_68 : StackLang.HolProg 64 :=
.seq RemovedBody270_64 RemovedBody270_67

def RemovedBody270_69 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def RemovedBody270_70 : StackLang.HolProg 64 :=
.seq RemovedBody270_68 RemovedBody270_69

def RemovedBody270_71 : StackLang.HolProg 64 :=
.call (some (RemovedBody270_63, 0, 270, 2)) (Sum.inl 269) (some (RemovedBody270_70, 270, 3))

def RemovedBody270_72 : StackLang.HolProg 64 :=
.seq RemovedBody270_48 RemovedBody270_71

def RemovedBody270_73 : StackLang.HolProg 64 :=
.seq RemovedBody270_47 RemovedBody270_72

def RemovedBody270_74 : StackLang.HolProg 64 :=
.seq RemovedBody270_46 RemovedBody270_73

def RemovedBody270_75 : StackLang.HolProg 64 :=
.seq RemovedBody270_17 RemovedBody270_74

def RemovedBody270_76 : StackLang.HolProg 64 :=
.seq RemovedBody270_14 RemovedBody270_75

def RemovedBody270_77 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody270_78 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 0 8#64)

def RemovedBody270_79 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody270_80 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody270_81 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 0 4#64)

def RemovedBody270_82 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody270_83 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551480#64))

def RemovedBody270_84 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 3#64)

def RemovedBody270_85 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody270_86 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def RemovedBody270_87 : StackLang.HolProg 64 :=
.seq RemovedBody270_85 RemovedBody270_86

def RemovedBody270_88 : StackLang.HolProg 64 :=
.seq RemovedBody270_84 RemovedBody270_87

def RemovedBody270_89 : StackLang.HolProg 64 :=
.seq RemovedBody270_83 RemovedBody270_88

def RemovedBody270_90 : StackLang.HolProg 64 :=
.seq RemovedBody270_82 RemovedBody270_89

def RemovedBody270_91 : StackLang.HolProg 64 :=
.seq RemovedBody270_81 RemovedBody270_90

def RemovedBody270_92 : StackLang.HolProg 64 :=
.seq RemovedBody270_80 RemovedBody270_91

def RemovedBody270_93 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody270_94 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 0 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 2) RemovedBody270_92 RemovedBody270_93

def RemovedBody270_95 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody270_96 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody270_97 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 0#64)

def RemovedBody270_98 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 0 0#64)

def RemovedBody270_99 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody270_100 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody270_101 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody270_102 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody270_103 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody270_104 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 4 0
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 3)))

def RemovedBody270_105 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load8 4
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 4 0#64))

def RemovedBody270_106 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody270_107 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsl 1 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 8#64)))

def RemovedBody270_108 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 1 4
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def RemovedBody270_109 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody270_110 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 0 0
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 1#64)))

def RemovedBody270_111 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody270_112 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.continue 0

def RemovedBody270_113 : StackLang.HolProg 64 :=
.seq RemovedBody270_111 RemovedBody270_112

def RemovedBody270_114 : StackLang.HolProg 64 :=
.seq RemovedBody270_110 RemovedBody270_113

def RemovedBody270_115 : StackLang.HolProg 64 :=
.seq RemovedBody270_109 RemovedBody270_114

def RemovedBody270_116 : StackLang.HolProg 64 :=
.seq RemovedBody270_108 RemovedBody270_115

def RemovedBody270_117 : StackLang.HolProg 64 :=
.seq RemovedBody270_107 RemovedBody270_116

def RemovedBody270_118 : StackLang.HolProg 64 :=
.seq RemovedBody270_106 RemovedBody270_117

def RemovedBody270_119 : StackLang.HolProg 64 :=
.seq RemovedBody270_105 RemovedBody270_118

def RemovedBody270_120 : StackLang.HolProg 64 :=
.seq RemovedBody270_104 RemovedBody270_119

def RemovedBody270_121 : StackLang.HolProg 64 :=
.seq RemovedBody270_103 RemovedBody270_120

def RemovedBody270_122 : StackLang.HolProg 64 :=
.seq RemovedBody270_102 RemovedBody270_121

def RemovedBody270_123 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody270_124 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.break 0

def RemovedBody270_125 : StackLang.HolProg 64 :=
.seq RemovedBody270_123 RemovedBody270_124

def RemovedBody270_126 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 0 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 2) RemovedBody270_122 RemovedBody270_125

def RemovedBody270_127 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody270_128 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody270_129 : StackLang.HolProg 64 :=
.seq RemovedBody270_127 RemovedBody270_128

def RemovedBody270_130 : StackLang.HolProg 64 :=
.seq RemovedBody270_126 RemovedBody270_129

def RemovedBody270_131 : StackLang.HolProg 64 :=
.seq RemovedBody270_101 RemovedBody270_130

def RemovedBody270_132 : StackLang.HolProg 64 :=
.loop RemovedBody270_131

def RemovedBody270_133 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody270_134 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody270_135 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 32#64)))

def RemovedBody270_136 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 7

def RemovedBody270_137 : StackLang.HolProg 64 :=
.seq RemovedBody270_135 RemovedBody270_136

def RemovedBody270_138 : StackLang.HolProg 64 :=
.seq RemovedBody270_134 RemovedBody270_137

def RemovedBody270_139 : StackLang.HolProg 64 :=
.seq RemovedBody270_133 RemovedBody270_138

def RemovedBody270_140 : StackLang.HolProg 64 :=
.seq RemovedBody270_132 RemovedBody270_139

def RemovedBody270_141 : StackLang.HolProg 64 :=
.seq RemovedBody270_100 RemovedBody270_140

def RemovedBody270_142 : StackLang.HolProg 64 :=
.seq RemovedBody270_99 RemovedBody270_141

def RemovedBody270_143 : StackLang.HolProg 64 :=
.seq RemovedBody270_98 RemovedBody270_142

def RemovedBody270_144 : StackLang.HolProg 64 :=
.seq RemovedBody270_97 RemovedBody270_143

def RemovedBody270_145 : StackLang.HolProg 64 :=
.seq RemovedBody270_96 RemovedBody270_144

def RemovedBody270_146 : StackLang.HolProg 64 :=
.seq RemovedBody270_95 RemovedBody270_145

def RemovedBody270_147 : StackLang.HolProg 64 :=
.seq RemovedBody270_94 RemovedBody270_146

def RemovedBody270_148 : StackLang.HolProg 64 :=
.seq RemovedBody270_79 RemovedBody270_147

def RemovedBody270_149 : StackLang.HolProg 64 :=
.seq RemovedBody270_78 RemovedBody270_148

def RemovedBody270_150 : StackLang.HolProg 64 :=
.seq RemovedBody270_77 RemovedBody270_149

def RemovedBody270_151 : StackLang.HolProg 64 :=
.seq RemovedBody270_76 RemovedBody270_150

def RemovedBody270_152 : StackLang.HolProg 64 :=
.seq RemovedBody270_13 RemovedBody270_151

def RemovedBody270_153 : StackLang.HolProg 64 :=
.seq RemovedBody270_8 RemovedBody270_152

def RemovedBody270_154 : StackLang.HolProg 64 :=
.seq RemovedBody270_7 RemovedBody270_153

def RemovedBody270_155 : StackLang.HolProg 64 :=
.seq RemovedBody270_6 RemovedBody270_154

def Removed270 : Nat × StackLang.HolProg 64 := (270, RemovedBody270_155)
theorem Removed270_eq : StackRemove.progComp false riscvConfig.addrOffset (riscvConfig.regCount - (riscvConfig.avoidRegs.length + 3)) Alloc270 = Removed270 := by
  kernel_rfl
#print axioms Removed270_eq
end InitECandidate.Proofs.BackendStages
