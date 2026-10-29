import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.BackendStages.Alloc291
import Flapjack.Compiler.Backend.Backend
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
namespace InitECandidate.Proofs.BackendStages
def RemovedBody291_0 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 48#64)))

def RemovedBody291_1 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 2#64)

def RemovedBody291_2 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 1

def RemovedBody291_3 : StackLang.HolProg 64 :=
.seq RemovedBody291_1 RemovedBody291_2

def RemovedBody291_4 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody291_5 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) RemovedBody291_3 RemovedBody291_4

def RemovedBody291_6 : StackLang.HolProg 64 :=
.seq RemovedBody291_0 RemovedBody291_5

def RemovedBody291_7 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody291_8 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 1 2
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 2)))

def RemovedBody291_9 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 2
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 24#64))

def RemovedBody291_10 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 2 4
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 4)))

def RemovedBody291_11 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 40#64))

def RemovedBody291_12 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 4
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 32#64))

def RemovedBody291_13 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 3
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody291_14 : StackLang.HolProg 64 :=
.seq RemovedBody291_12 RemovedBody291_13

def RemovedBody291_15 : StackLang.HolProg 64 :=
.seq RemovedBody291_11 RemovedBody291_14

def RemovedBody291_16 : StackLang.HolProg 64 :=
.seq RemovedBody291_10 RemovedBody291_15

def RemovedBody291_17 : StackLang.HolProg 64 :=
.seq RemovedBody291_9 RemovedBody291_16

def RemovedBody291_18 : StackLang.HolProg 64 :=
.seq RemovedBody291_8 RemovedBody291_17

def RemovedBody291_19 : StackLang.HolProg 64 :=
.seq RemovedBody291_7 RemovedBody291_18

def RemovedBody291_20 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody291_21 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 793#64)

def RemovedBody291_22 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody291_23 : StackLang.HolProg 64 :=
.seq RemovedBody291_21 RemovedBody291_22

def RemovedBody291_24 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody291_25 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 2#64)

def RemovedBody291_26 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 1

def RemovedBody291_27 : StackLang.HolProg 64 :=
.seq RemovedBody291_25 RemovedBody291_26

def RemovedBody291_28 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody291_29 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) RemovedBody291_27 RemovedBody291_28

def RemovedBody291_30 : StackLang.HolProg 64 :=
.seq RemovedBody291_24 RemovedBody291_29

def RemovedBody291_31 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def RemovedBody291_32 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody291_33 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 291 3

def RemovedBody291_34 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody291_35 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody291_36 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody291_37 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody291_38 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def RemovedBody291_39 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def RemovedBody291_40 : StackLang.HolProg 64 :=
.seq RemovedBody291_38 RemovedBody291_39

def RemovedBody291_41 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def RemovedBody291_42 : StackLang.HolProg 64 :=
.seq RemovedBody291_40 RemovedBody291_41

def RemovedBody291_43 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody291_44 : StackLang.HolProg 64 :=
.seq RemovedBody291_42 RemovedBody291_43

def RemovedBody291_45 : StackLang.HolProg 64 :=
.seq RemovedBody291_37 RemovedBody291_44

def RemovedBody291_46 : StackLang.HolProg 64 :=
.seq RemovedBody291_36 RemovedBody291_45

def RemovedBody291_47 : StackLang.HolProg 64 :=
.seq RemovedBody291_35 RemovedBody291_46

def RemovedBody291_48 : StackLang.HolProg 64 :=
.seq RemovedBody291_34 RemovedBody291_47

def RemovedBody291_49 : StackLang.HolProg 64 :=
.seq RemovedBody291_33 RemovedBody291_48

def RemovedBody291_50 : StackLang.HolProg 64 :=
.seq RemovedBody291_32 RemovedBody291_49

def RemovedBody291_51 : StackLang.HolProg 64 :=
.seq RemovedBody291_31 RemovedBody291_50

def RemovedBody291_52 : StackLang.HolProg 64 :=
.seq RemovedBody291_30 RemovedBody291_51

def RemovedBody291_53 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody291_54 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody291_55 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody291_56 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody291_57 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody291_58 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody291_59 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 8 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def RemovedBody291_60 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 7
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 40#64))

def RemovedBody291_61 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 6
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 32#64))

def RemovedBody291_62 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 5
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 24#64))

def RemovedBody291_63 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 9
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody291_64 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody291_65 : StackLang.HolProg 64 :=
.seq RemovedBody291_63 RemovedBody291_64

def RemovedBody291_66 : StackLang.HolProg 64 :=
.seq RemovedBody291_62 RemovedBody291_65

def RemovedBody291_67 : StackLang.HolProg 64 :=
.seq RemovedBody291_61 RemovedBody291_66

def RemovedBody291_68 : StackLang.HolProg 64 :=
.seq RemovedBody291_60 RemovedBody291_67

def RemovedBody291_69 : StackLang.HolProg 64 :=
.seq RemovedBody291_59 RemovedBody291_68

def RemovedBody291_70 : StackLang.HolProg 64 :=
.seq RemovedBody291_58 RemovedBody291_69

def RemovedBody291_71 : StackLang.HolProg 64 :=
.seq RemovedBody291_57 RemovedBody291_70

def RemovedBody291_72 : StackLang.HolProg 64 :=
.seq RemovedBody291_56 RemovedBody291_71

def RemovedBody291_73 : StackLang.HolProg 64 :=
.seq RemovedBody291_55 RemovedBody291_72

def RemovedBody291_74 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 7
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 40#64))

def RemovedBody291_75 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 6
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 32#64))

def RemovedBody291_76 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 5
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 24#64))

def RemovedBody291_77 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 9
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody291_78 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody291_79 : StackLang.HolProg 64 :=
.seq RemovedBody291_77 RemovedBody291_78

def RemovedBody291_80 : StackLang.HolProg 64 :=
.seq RemovedBody291_76 RemovedBody291_79

def RemovedBody291_81 : StackLang.HolProg 64 :=
.seq RemovedBody291_75 RemovedBody291_80

def RemovedBody291_82 : StackLang.HolProg 64 :=
.seq RemovedBody291_74 RemovedBody291_81

def RemovedBody291_83 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def RemovedBody291_84 : StackLang.HolProg 64 :=
.seq RemovedBody291_82 RemovedBody291_83

def RemovedBody291_85 : StackLang.HolProg 64 :=
.call (some (RemovedBody291_73, 0, 291, 2)) (Sum.inl 92) (some (RemovedBody291_84, 291, 3))

def RemovedBody291_86 : StackLang.HolProg 64 :=
.seq RemovedBody291_54 RemovedBody291_85

def RemovedBody291_87 : StackLang.HolProg 64 :=
.seq RemovedBody291_53 RemovedBody291_86

def RemovedBody291_88 : StackLang.HolProg 64 :=
.seq RemovedBody291_52 RemovedBody291_87

def RemovedBody291_89 : StackLang.HolProg 64 :=
.seq RemovedBody291_23 RemovedBody291_88

def RemovedBody291_90 : StackLang.HolProg 64 :=
.seq RemovedBody291_20 RemovedBody291_89

def RemovedBody291_91 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody291_92 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 0#64)

def RemovedBody291_93 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody291_94 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody291_95 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody291_96 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody291_97 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody291_98 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 3 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 9)))

def RemovedBody291_99 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load8 3
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 3 0#64))

def RemovedBody291_100 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody291_101 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 4 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 0)))

def RemovedBody291_102 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load8 4
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 4 0#64))

def RemovedBody291_103 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody291_104 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody291_105 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody291_106 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 48#64)))

def RemovedBody291_107 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 7

def RemovedBody291_108 : StackLang.HolProg 64 :=
.seq RemovedBody291_106 RemovedBody291_107

def RemovedBody291_109 : StackLang.HolProg 64 :=
.seq RemovedBody291_105 RemovedBody291_108

def RemovedBody291_110 : StackLang.HolProg 64 :=
.seq RemovedBody291_104 RemovedBody291_109

def RemovedBody291_111 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 2 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def RemovedBody291_112 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.notEqual) 3 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 4) RemovedBody291_110 RemovedBody291_111

def RemovedBody291_113 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody291_114 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody291_115 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody291_116 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 1 2
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 1#64)))

def RemovedBody291_117 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody291_118 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.continue 0

def RemovedBody291_119 : StackLang.HolProg 64 :=
.seq RemovedBody291_117 RemovedBody291_118

def RemovedBody291_120 : StackLang.HolProg 64 :=
.seq RemovedBody291_116 RemovedBody291_119

def RemovedBody291_121 : StackLang.HolProg 64 :=
.seq RemovedBody291_115 RemovedBody291_120

def RemovedBody291_122 : StackLang.HolProg 64 :=
.seq RemovedBody291_114 RemovedBody291_121

def RemovedBody291_123 : StackLang.HolProg 64 :=
.seq RemovedBody291_113 RemovedBody291_122

def RemovedBody291_124 : StackLang.HolProg 64 :=
.seq RemovedBody291_112 RemovedBody291_123

def RemovedBody291_125 : StackLang.HolProg 64 :=
.seq RemovedBody291_103 RemovedBody291_124

def RemovedBody291_126 : StackLang.HolProg 64 :=
.seq RemovedBody291_102 RemovedBody291_125

def RemovedBody291_127 : StackLang.HolProg 64 :=
.seq RemovedBody291_101 RemovedBody291_126

def RemovedBody291_128 : StackLang.HolProg 64 :=
.seq RemovedBody291_100 RemovedBody291_127

def RemovedBody291_129 : StackLang.HolProg 64 :=
.seq RemovedBody291_99 RemovedBody291_128

def RemovedBody291_130 : StackLang.HolProg 64 :=
.seq RemovedBody291_98 RemovedBody291_129

def RemovedBody291_131 : StackLang.HolProg 64 :=
.seq RemovedBody291_97 RemovedBody291_130

def RemovedBody291_132 : StackLang.HolProg 64 :=
.seq RemovedBody291_96 RemovedBody291_131

def RemovedBody291_133 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody291_134 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody291_135 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.break 0

def RemovedBody291_136 : StackLang.HolProg 64 :=
.seq RemovedBody291_134 RemovedBody291_135

def RemovedBody291_137 : StackLang.HolProg 64 :=
.seq RemovedBody291_133 RemovedBody291_136

def RemovedBody291_138 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 1 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 8) RemovedBody291_132 RemovedBody291_137

def RemovedBody291_139 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody291_140 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody291_141 : StackLang.HolProg 64 :=
.seq RemovedBody291_139 RemovedBody291_140

def RemovedBody291_142 : StackLang.HolProg 64 :=
.seq RemovedBody291_138 RemovedBody291_141

def RemovedBody291_143 : StackLang.HolProg 64 :=
.seq RemovedBody291_95 RemovedBody291_142

def RemovedBody291_144 : StackLang.HolProg 64 :=
.loop RemovedBody291_143

def RemovedBody291_145 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody291_146 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 1 8
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 8)))

def RemovedBody291_147 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 48#64)))

def RemovedBody291_148 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 7

def RemovedBody291_149 : StackLang.HolProg 64 :=
.seq RemovedBody291_147 RemovedBody291_148

def RemovedBody291_150 : StackLang.HolProg 64 :=
.seq RemovedBody291_146 RemovedBody291_149

def RemovedBody291_151 : StackLang.HolProg 64 :=
.seq RemovedBody291_145 RemovedBody291_150

def RemovedBody291_152 : StackLang.HolProg 64 :=
.seq RemovedBody291_144 RemovedBody291_151

def RemovedBody291_153 : StackLang.HolProg 64 :=
.seq RemovedBody291_94 RemovedBody291_152

def RemovedBody291_154 : StackLang.HolProg 64 :=
.seq RemovedBody291_93 RemovedBody291_153

def RemovedBody291_155 : StackLang.HolProg 64 :=
.seq RemovedBody291_92 RemovedBody291_154

def RemovedBody291_156 : StackLang.HolProg 64 :=
.seq RemovedBody291_91 RemovedBody291_155

def RemovedBody291_157 : StackLang.HolProg 64 :=
.seq RemovedBody291_90 RemovedBody291_156

def RemovedBody291_158 : StackLang.HolProg 64 :=
.seq RemovedBody291_19 RemovedBody291_157

def RemovedBody291_159 : StackLang.HolProg 64 :=
.seq RemovedBody291_6 RemovedBody291_158

def Removed291 : Nat × StackLang.HolProg 64 := (291, RemovedBody291_159)
theorem Removed291_eq : StackRemove.progComp false riscvConfig.addrOffset (riscvConfig.regCount - (riscvConfig.avoidRegs.length + 3)) Alloc291 = Removed291 := by
  kernel_rfl
#print axioms Removed291_eq
end InitECandidate.Proofs.BackendStages
