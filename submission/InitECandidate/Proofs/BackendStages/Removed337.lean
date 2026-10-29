import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.BackendStages.Alloc337
import Flapjack.Compiler.Backend.Backend
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
namespace InitECandidate.Proofs.BackendStages
def RemovedBody337_0 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 48#64)))

def RemovedBody337_1 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 2#64)

def RemovedBody337_2 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 1

def RemovedBody337_3 : StackLang.HolProg 64 :=
.seq RemovedBody337_1 RemovedBody337_2

def RemovedBody337_4 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody337_5 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) RemovedBody337_3 RemovedBody337_4

def RemovedBody337_6 : StackLang.HolProg 64 :=
.seq RemovedBody337_0 RemovedBody337_5

def RemovedBody337_7 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 40#64))

def RemovedBody337_8 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 4
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 32#64))

def RemovedBody337_9 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 2
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 24#64))

def RemovedBody337_10 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody337_11 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 3
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody337_12 : StackLang.HolProg 64 :=
.seq RemovedBody337_10 RemovedBody337_11

def RemovedBody337_13 : StackLang.HolProg 64 :=
.seq RemovedBody337_9 RemovedBody337_12

def RemovedBody337_14 : StackLang.HolProg 64 :=
.seq RemovedBody337_8 RemovedBody337_13

def RemovedBody337_15 : StackLang.HolProg 64 :=
.seq RemovedBody337_7 RemovedBody337_14

def RemovedBody337_16 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody337_17 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 971#64)

def RemovedBody337_18 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody337_19 : StackLang.HolProg 64 :=
.seq RemovedBody337_17 RemovedBody337_18

def RemovedBody337_20 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody337_21 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 2#64)

def RemovedBody337_22 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 1

def RemovedBody337_23 : StackLang.HolProg 64 :=
.seq RemovedBody337_21 RemovedBody337_22

def RemovedBody337_24 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody337_25 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) RemovedBody337_23 RemovedBody337_24

def RemovedBody337_26 : StackLang.HolProg 64 :=
.seq RemovedBody337_20 RemovedBody337_25

def RemovedBody337_27 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def RemovedBody337_28 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody337_29 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 337 3

def RemovedBody337_30 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody337_31 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody337_32 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody337_33 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody337_34 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def RemovedBody337_35 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def RemovedBody337_36 : StackLang.HolProg 64 :=
.seq RemovedBody337_34 RemovedBody337_35

def RemovedBody337_37 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def RemovedBody337_38 : StackLang.HolProg 64 :=
.seq RemovedBody337_36 RemovedBody337_37

def RemovedBody337_39 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody337_40 : StackLang.HolProg 64 :=
.seq RemovedBody337_38 RemovedBody337_39

def RemovedBody337_41 : StackLang.HolProg 64 :=
.seq RemovedBody337_33 RemovedBody337_40

def RemovedBody337_42 : StackLang.HolProg 64 :=
.seq RemovedBody337_32 RemovedBody337_41

def RemovedBody337_43 : StackLang.HolProg 64 :=
.seq RemovedBody337_31 RemovedBody337_42

def RemovedBody337_44 : StackLang.HolProg 64 :=
.seq RemovedBody337_30 RemovedBody337_43

def RemovedBody337_45 : StackLang.HolProg 64 :=
.seq RemovedBody337_29 RemovedBody337_44

def RemovedBody337_46 : StackLang.HolProg 64 :=
.seq RemovedBody337_28 RemovedBody337_45

def RemovedBody337_47 : StackLang.HolProg 64 :=
.seq RemovedBody337_27 RemovedBody337_46

def RemovedBody337_48 : StackLang.HolProg 64 :=
.seq RemovedBody337_26 RemovedBody337_47

def RemovedBody337_49 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody337_50 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody337_51 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody337_52 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody337_53 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody337_54 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody337_55 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 9 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def RemovedBody337_56 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 40#64))

def RemovedBody337_57 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 3
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 32#64))

def RemovedBody337_58 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 8
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 24#64))

def RemovedBody337_59 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 7
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody337_60 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 6
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody337_61 : StackLang.HolProg 64 :=
.seq RemovedBody337_59 RemovedBody337_60

def RemovedBody337_62 : StackLang.HolProg 64 :=
.seq RemovedBody337_58 RemovedBody337_61

def RemovedBody337_63 : StackLang.HolProg 64 :=
.seq RemovedBody337_57 RemovedBody337_62

def RemovedBody337_64 : StackLang.HolProg 64 :=
.seq RemovedBody337_56 RemovedBody337_63

def RemovedBody337_65 : StackLang.HolProg 64 :=
.seq RemovedBody337_55 RemovedBody337_64

def RemovedBody337_66 : StackLang.HolProg 64 :=
.seq RemovedBody337_54 RemovedBody337_65

def RemovedBody337_67 : StackLang.HolProg 64 :=
.seq RemovedBody337_53 RemovedBody337_66

def RemovedBody337_68 : StackLang.HolProg 64 :=
.seq RemovedBody337_52 RemovedBody337_67

def RemovedBody337_69 : StackLang.HolProg 64 :=
.seq RemovedBody337_51 RemovedBody337_68

def RemovedBody337_70 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 40#64))

def RemovedBody337_71 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 3
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 32#64))

def RemovedBody337_72 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 8
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 24#64))

def RemovedBody337_73 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 7
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody337_74 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 6
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody337_75 : StackLang.HolProg 64 :=
.seq RemovedBody337_73 RemovedBody337_74

def RemovedBody337_76 : StackLang.HolProg 64 :=
.seq RemovedBody337_72 RemovedBody337_75

def RemovedBody337_77 : StackLang.HolProg 64 :=
.seq RemovedBody337_71 RemovedBody337_76

def RemovedBody337_78 : StackLang.HolProg 64 :=
.seq RemovedBody337_70 RemovedBody337_77

def RemovedBody337_79 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def RemovedBody337_80 : StackLang.HolProg 64 :=
.seq RemovedBody337_78 RemovedBody337_79

def RemovedBody337_81 : StackLang.HolProg 64 :=
.call (some (RemovedBody337_69, 0, 337, 2)) (Sum.inl 335) (some (RemovedBody337_80, 337, 3))

def RemovedBody337_82 : StackLang.HolProg 64 :=
.seq RemovedBody337_50 RemovedBody337_81

def RemovedBody337_83 : StackLang.HolProg 64 :=
.seq RemovedBody337_49 RemovedBody337_82

def RemovedBody337_84 : StackLang.HolProg 64 :=
.seq RemovedBody337_48 RemovedBody337_83

def RemovedBody337_85 : StackLang.HolProg 64 :=
.seq RemovedBody337_19 RemovedBody337_84

def RemovedBody337_86 : StackLang.HolProg 64 :=
.seq RemovedBody337_16 RemovedBody337_85

def RemovedBody337_87 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody337_88 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 8#64)

def RemovedBody337_89 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody337_90 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody337_91 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody337_92 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 3
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551480#64))

def RemovedBody337_93 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 6#64)

def RemovedBody337_94 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody337_95 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def RemovedBody337_96 : StackLang.HolProg 64 :=
.seq RemovedBody337_94 RemovedBody337_95

def RemovedBody337_97 : StackLang.HolProg 64 :=
.seq RemovedBody337_93 RemovedBody337_96

def RemovedBody337_98 : StackLang.HolProg 64 :=
.seq RemovedBody337_92 RemovedBody337_97

def RemovedBody337_99 : StackLang.HolProg 64 :=
.seq RemovedBody337_91 RemovedBody337_98

def RemovedBody337_100 : StackLang.HolProg 64 :=
.seq RemovedBody337_90 RemovedBody337_99

def RemovedBody337_101 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 5 3
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 3)))

def RemovedBody337_102 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 1 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 2) RemovedBody337_100 RemovedBody337_101

def RemovedBody337_103 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody337_104 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody337_105 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 0#64)

def RemovedBody337_106 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 4 0#64)

def RemovedBody337_107 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody337_108 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody337_109 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody337_110 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody337_111 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody337_112 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 3 4
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 9)))

def RemovedBody337_113 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load8 3
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 3 0#64))

def RemovedBody337_114 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody337_115 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsl 1 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 8#64)))

def RemovedBody337_116 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 1 3
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def RemovedBody337_117 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody337_118 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 4 4
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 1#64)))

def RemovedBody337_119 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody337_120 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.continue 0

def RemovedBody337_121 : StackLang.HolProg 64 :=
.seq RemovedBody337_119 RemovedBody337_120

def RemovedBody337_122 : StackLang.HolProg 64 :=
.seq RemovedBody337_118 RemovedBody337_121

def RemovedBody337_123 : StackLang.HolProg 64 :=
.seq RemovedBody337_117 RemovedBody337_122

def RemovedBody337_124 : StackLang.HolProg 64 :=
.seq RemovedBody337_116 RemovedBody337_123

def RemovedBody337_125 : StackLang.HolProg 64 :=
.seq RemovedBody337_115 RemovedBody337_124

def RemovedBody337_126 : StackLang.HolProg 64 :=
.seq RemovedBody337_114 RemovedBody337_125

def RemovedBody337_127 : StackLang.HolProg 64 :=
.seq RemovedBody337_113 RemovedBody337_126

def RemovedBody337_128 : StackLang.HolProg 64 :=
.seq RemovedBody337_112 RemovedBody337_127

def RemovedBody337_129 : StackLang.HolProg 64 :=
.seq RemovedBody337_111 RemovedBody337_128

def RemovedBody337_130 : StackLang.HolProg 64 :=
.seq RemovedBody337_110 RemovedBody337_129

def RemovedBody337_131 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody337_132 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.break 0

def RemovedBody337_133 : StackLang.HolProg 64 :=
.seq RemovedBody337_131 RemovedBody337_132

def RemovedBody337_134 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 4 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 2) RemovedBody337_130 RemovedBody337_133

def RemovedBody337_135 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody337_136 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody337_137 : StackLang.HolProg 64 :=
.seq RemovedBody337_135 RemovedBody337_136

def RemovedBody337_138 : StackLang.HolProg 64 :=
.seq RemovedBody337_134 RemovedBody337_137

def RemovedBody337_139 : StackLang.HolProg 64 :=
.seq RemovedBody337_109 RemovedBody337_138

def RemovedBody337_140 : StackLang.HolProg 64 :=
.loop RemovedBody337_139

def RemovedBody337_141 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody337_142 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody337_143 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 48#64)))

def RemovedBody337_144 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 0

def RemovedBody337_145 : StackLang.HolProg 64 :=
.seq RemovedBody337_143 RemovedBody337_144

def RemovedBody337_146 : StackLang.HolProg 64 :=
.seq RemovedBody337_142 RemovedBody337_145

def RemovedBody337_147 : StackLang.HolProg 64 :=
.seq RemovedBody337_141 RemovedBody337_146

def RemovedBody337_148 : StackLang.HolProg 64 :=
.seq RemovedBody337_140 RemovedBody337_147

def RemovedBody337_149 : StackLang.HolProg 64 :=
.seq RemovedBody337_108 RemovedBody337_148

def RemovedBody337_150 : StackLang.HolProg 64 :=
.seq RemovedBody337_107 RemovedBody337_149

def RemovedBody337_151 : StackLang.HolProg 64 :=
.seq RemovedBody337_106 RemovedBody337_150

def RemovedBody337_152 : StackLang.HolProg 64 :=
.seq RemovedBody337_105 RemovedBody337_151

def RemovedBody337_153 : StackLang.HolProg 64 :=
.seq RemovedBody337_104 RemovedBody337_152

def RemovedBody337_154 : StackLang.HolProg 64 :=
.seq RemovedBody337_103 RemovedBody337_153

def RemovedBody337_155 : StackLang.HolProg 64 :=
.seq RemovedBody337_102 RemovedBody337_154

def RemovedBody337_156 : StackLang.HolProg 64 :=
.seq RemovedBody337_89 RemovedBody337_155

def RemovedBody337_157 : StackLang.HolProg 64 :=
.seq RemovedBody337_88 RemovedBody337_156

def RemovedBody337_158 : StackLang.HolProg 64 :=
.seq RemovedBody337_87 RemovedBody337_157

def RemovedBody337_159 : StackLang.HolProg 64 :=
.seq RemovedBody337_86 RemovedBody337_158

def RemovedBody337_160 : StackLang.HolProg 64 :=
.seq RemovedBody337_15 RemovedBody337_159

def RemovedBody337_161 : StackLang.HolProg 64 :=
.seq RemovedBody337_6 RemovedBody337_160

def Removed337 : Nat × StackLang.HolProg 64 := (337, RemovedBody337_161)
theorem Removed337_eq : StackRemove.progComp false riscvConfig.addrOffset (riscvConfig.regCount - (riscvConfig.avoidRegs.length + 3)) Alloc337 = Removed337 := by
  kernel_rfl
#print axioms Removed337_eq
end InitECandidate.Proofs.BackendStages
