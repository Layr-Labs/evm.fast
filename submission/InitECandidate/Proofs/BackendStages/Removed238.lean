import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.BackendStages.Alloc238
import Flapjack.Compiler.Backend.Backend
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
namespace InitECandidate.Proofs.BackendStages
def RemovedBody238_0 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 32#64)))

def RemovedBody238_1 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 2#64)

def RemovedBody238_2 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 1

def RemovedBody238_3 : StackLang.HolProg 64 :=
.seq RemovedBody238_1 RemovedBody238_2

def RemovedBody238_4 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody238_5 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) RemovedBody238_3 RemovedBody238_4

def RemovedBody238_6 : StackLang.HolProg 64 :=
.seq RemovedBody238_0 RemovedBody238_5

def RemovedBody238_7 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 3
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody238_8 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 3 4
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 4)))

def RemovedBody238_9 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 24#64))

def RemovedBody238_10 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 4
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody238_11 : StackLang.HolProg 64 :=
.seq RemovedBody238_9 RemovedBody238_10

def RemovedBody238_12 : StackLang.HolProg 64 :=
.seq RemovedBody238_8 RemovedBody238_11

def RemovedBody238_13 : StackLang.HolProg 64 :=
.seq RemovedBody238_7 RemovedBody238_12

def RemovedBody238_14 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody238_15 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 455#64)

def RemovedBody238_16 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody238_17 : StackLang.HolProg 64 :=
.seq RemovedBody238_15 RemovedBody238_16

def RemovedBody238_18 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody238_19 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 2#64)

def RemovedBody238_20 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 1

def RemovedBody238_21 : StackLang.HolProg 64 :=
.seq RemovedBody238_19 RemovedBody238_20

def RemovedBody238_22 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody238_23 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) RemovedBody238_21 RemovedBody238_22

def RemovedBody238_24 : StackLang.HolProg 64 :=
.seq RemovedBody238_18 RemovedBody238_23

def RemovedBody238_25 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def RemovedBody238_26 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody238_27 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 238 3

def RemovedBody238_28 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody238_29 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody238_30 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody238_31 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody238_32 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def RemovedBody238_33 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def RemovedBody238_34 : StackLang.HolProg 64 :=
.seq RemovedBody238_32 RemovedBody238_33

def RemovedBody238_35 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def RemovedBody238_36 : StackLang.HolProg 64 :=
.seq RemovedBody238_34 RemovedBody238_35

def RemovedBody238_37 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody238_38 : StackLang.HolProg 64 :=
.seq RemovedBody238_36 RemovedBody238_37

def RemovedBody238_39 : StackLang.HolProg 64 :=
.seq RemovedBody238_31 RemovedBody238_38

def RemovedBody238_40 : StackLang.HolProg 64 :=
.seq RemovedBody238_30 RemovedBody238_39

def RemovedBody238_41 : StackLang.HolProg 64 :=
.seq RemovedBody238_29 RemovedBody238_40

def RemovedBody238_42 : StackLang.HolProg 64 :=
.seq RemovedBody238_28 RemovedBody238_41

def RemovedBody238_43 : StackLang.HolProg 64 :=
.seq RemovedBody238_27 RemovedBody238_42

def RemovedBody238_44 : StackLang.HolProg 64 :=
.seq RemovedBody238_26 RemovedBody238_43

def RemovedBody238_45 : StackLang.HolProg 64 :=
.seq RemovedBody238_25 RemovedBody238_44

def RemovedBody238_46 : StackLang.HolProg 64 :=
.seq RemovedBody238_24 RemovedBody238_45

def RemovedBody238_47 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody238_48 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody238_49 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody238_50 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody238_51 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody238_52 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody238_53 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 3
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody238_54 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 2
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody238_55 : StackLang.HolProg 64 :=
.seq RemovedBody238_53 RemovedBody238_54

def RemovedBody238_56 : StackLang.HolProg 64 :=
.seq RemovedBody238_52 RemovedBody238_55

def RemovedBody238_57 : StackLang.HolProg 64 :=
.seq RemovedBody238_51 RemovedBody238_56

def RemovedBody238_58 : StackLang.HolProg 64 :=
.seq RemovedBody238_50 RemovedBody238_57

def RemovedBody238_59 : StackLang.HolProg 64 :=
.seq RemovedBody238_49 RemovedBody238_58

def RemovedBody238_60 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 3
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody238_61 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 2
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody238_62 : StackLang.HolProg 64 :=
.seq RemovedBody238_60 RemovedBody238_61

def RemovedBody238_63 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def RemovedBody238_64 : StackLang.HolProg 64 :=
.seq RemovedBody238_62 RemovedBody238_63

def RemovedBody238_65 : StackLang.HolProg 64 :=
.call (some (RemovedBody238_59, 0, 238, 2)) (Sum.inl 237) (some (RemovedBody238_64, 238, 3))

def RemovedBody238_66 : StackLang.HolProg 64 :=
.seq RemovedBody238_48 RemovedBody238_65

def RemovedBody238_67 : StackLang.HolProg 64 :=
.seq RemovedBody238_47 RemovedBody238_66

def RemovedBody238_68 : StackLang.HolProg 64 :=
.seq RemovedBody238_46 RemovedBody238_67

def RemovedBody238_69 : StackLang.HolProg 64 :=
.seq RemovedBody238_17 RemovedBody238_68

def RemovedBody238_70 : StackLang.HolProg 64 :=
.seq RemovedBody238_14 RemovedBody238_69

def RemovedBody238_71 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody238_72 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 1 3
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 3)))

def RemovedBody238_73 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody238_74 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 456#64)

def RemovedBody238_75 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody238_76 : StackLang.HolProg 64 :=
.seq RemovedBody238_74 RemovedBody238_75

def RemovedBody238_77 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody238_78 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 2#64)

def RemovedBody238_79 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 1

def RemovedBody238_80 : StackLang.HolProg 64 :=
.seq RemovedBody238_78 RemovedBody238_79

def RemovedBody238_81 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody238_82 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) RemovedBody238_80 RemovedBody238_81

def RemovedBody238_83 : StackLang.HolProg 64 :=
.seq RemovedBody238_77 RemovedBody238_82

def RemovedBody238_84 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def RemovedBody238_85 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody238_86 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 238 5

def RemovedBody238_87 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody238_88 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody238_89 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody238_90 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody238_91 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def RemovedBody238_92 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def RemovedBody238_93 : StackLang.HolProg 64 :=
.seq RemovedBody238_91 RemovedBody238_92

def RemovedBody238_94 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def RemovedBody238_95 : StackLang.HolProg 64 :=
.seq RemovedBody238_93 RemovedBody238_94

def RemovedBody238_96 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody238_97 : StackLang.HolProg 64 :=
.seq RemovedBody238_95 RemovedBody238_96

def RemovedBody238_98 : StackLang.HolProg 64 :=
.seq RemovedBody238_90 RemovedBody238_97

def RemovedBody238_99 : StackLang.HolProg 64 :=
.seq RemovedBody238_89 RemovedBody238_98

def RemovedBody238_100 : StackLang.HolProg 64 :=
.seq RemovedBody238_88 RemovedBody238_99

def RemovedBody238_101 : StackLang.HolProg 64 :=
.seq RemovedBody238_87 RemovedBody238_100

def RemovedBody238_102 : StackLang.HolProg 64 :=
.seq RemovedBody238_86 RemovedBody238_101

def RemovedBody238_103 : StackLang.HolProg 64 :=
.seq RemovedBody238_85 RemovedBody238_102

def RemovedBody238_104 : StackLang.HolProg 64 :=
.seq RemovedBody238_84 RemovedBody238_103

def RemovedBody238_105 : StackLang.HolProg 64 :=
.seq RemovedBody238_83 RemovedBody238_104

def RemovedBody238_106 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody238_107 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody238_108 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody238_109 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody238_110 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody238_111 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody238_112 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 24#64))

def RemovedBody238_113 : StackLang.HolProg 64 :=
.seq RemovedBody238_111 RemovedBody238_112

def RemovedBody238_114 : StackLang.HolProg 64 :=
.seq RemovedBody238_110 RemovedBody238_113

def RemovedBody238_115 : StackLang.HolProg 64 :=
.seq RemovedBody238_109 RemovedBody238_114

def RemovedBody238_116 : StackLang.HolProg 64 :=
.seq RemovedBody238_108 RemovedBody238_115

def RemovedBody238_117 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 24#64))

def RemovedBody238_118 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def RemovedBody238_119 : StackLang.HolProg 64 :=
.seq RemovedBody238_117 RemovedBody238_118

def RemovedBody238_120 : StackLang.HolProg 64 :=
.call (some (RemovedBody238_116, 0, 238, 4)) (Sum.inl 236) (some (RemovedBody238_119, 238, 5))

def RemovedBody238_121 : StackLang.HolProg 64 :=
.seq RemovedBody238_107 RemovedBody238_120

def RemovedBody238_122 : StackLang.HolProg 64 :=
.seq RemovedBody238_106 RemovedBody238_121

def RemovedBody238_123 : StackLang.HolProg 64 :=
.seq RemovedBody238_105 RemovedBody238_122

def RemovedBody238_124 : StackLang.HolProg 64 :=
.seq RemovedBody238_76 RemovedBody238_123

def RemovedBody238_125 : StackLang.HolProg 64 :=
.seq RemovedBody238_73 RemovedBody238_124

def RemovedBody238_126 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody238_127 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 0#64)

def RemovedBody238_128 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody238_129 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 32#64)))

def RemovedBody238_130 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 0

def RemovedBody238_131 : StackLang.HolProg 64 :=
.seq RemovedBody238_129 RemovedBody238_130

def RemovedBody238_132 : StackLang.HolProg 64 :=
.seq RemovedBody238_128 RemovedBody238_131

def RemovedBody238_133 : StackLang.HolProg 64 :=
.seq RemovedBody238_127 RemovedBody238_132

def RemovedBody238_134 : StackLang.HolProg 64 :=
.seq RemovedBody238_126 RemovedBody238_133

def RemovedBody238_135 : StackLang.HolProg 64 :=
.seq RemovedBody238_125 RemovedBody238_134

def RemovedBody238_136 : StackLang.HolProg 64 :=
.seq RemovedBody238_72 RemovedBody238_135

def RemovedBody238_137 : StackLang.HolProg 64 :=
.seq RemovedBody238_71 RemovedBody238_136

def RemovedBody238_138 : StackLang.HolProg 64 :=
.seq RemovedBody238_70 RemovedBody238_137

def RemovedBody238_139 : StackLang.HolProg 64 :=
.seq RemovedBody238_13 RemovedBody238_138

def RemovedBody238_140 : StackLang.HolProg 64 :=
.seq RemovedBody238_6 RemovedBody238_139

def Removed238 : Nat × StackLang.HolProg 64 := (238, RemovedBody238_140)
theorem Removed238_eq : StackRemove.progComp false riscvConfig.addrOffset (riscvConfig.regCount - (riscvConfig.avoidRegs.length + 3)) Alloc238 = Removed238 := by
  kernel_rfl
#print axioms Removed238_eq
end InitECandidate.Proofs.BackendStages
