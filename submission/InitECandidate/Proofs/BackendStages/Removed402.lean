import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.BackendStages.Alloc402
import Flapjack.Compiler.Backend.Backend
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
namespace InitECandidate.Proofs.BackendStages
def RemovedBody402_0 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody402_1 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 2#64)

def RemovedBody402_2 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 1

def RemovedBody402_3 : StackLang.HolProg 64 :=
.seq RemovedBody402_1 RemovedBody402_2

def RemovedBody402_4 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody402_5 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) RemovedBody402_3 RemovedBody402_4

def RemovedBody402_6 : StackLang.HolProg 64 :=
.seq RemovedBody402_0 RemovedBody402_5

def RemovedBody402_7 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody402_8 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 2
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551592#64))

def RemovedBody402_9 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsl 2 2
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 1#64)))

def RemovedBody402_10 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 2 2
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 26)))

def RemovedBody402_11 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 2
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 2 18446744073709551480#64))

def RemovedBody402_12 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 3 32#64)

def RemovedBody402_13 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody402_14 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody402_15 : StackLang.HolProg 64 :=
.seq RemovedBody402_13 RemovedBody402_14

def RemovedBody402_16 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody402_17 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1198#64)

def RemovedBody402_18 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody402_19 : StackLang.HolProg 64 :=
.seq RemovedBody402_17 RemovedBody402_18

def RemovedBody402_20 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody402_21 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 2#64)

def RemovedBody402_22 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 1

def RemovedBody402_23 : StackLang.HolProg 64 :=
.seq RemovedBody402_21 RemovedBody402_22

def RemovedBody402_24 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody402_25 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) RemovedBody402_23 RemovedBody402_24

def RemovedBody402_26 : StackLang.HolProg 64 :=
.seq RemovedBody402_20 RemovedBody402_25

def RemovedBody402_27 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def RemovedBody402_28 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody402_29 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 402 3

def RemovedBody402_30 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody402_31 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody402_32 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody402_33 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody402_34 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def RemovedBody402_35 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def RemovedBody402_36 : StackLang.HolProg 64 :=
.seq RemovedBody402_34 RemovedBody402_35

def RemovedBody402_37 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def RemovedBody402_38 : StackLang.HolProg 64 :=
.seq RemovedBody402_36 RemovedBody402_37

def RemovedBody402_39 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody402_40 : StackLang.HolProg 64 :=
.seq RemovedBody402_38 RemovedBody402_39

def RemovedBody402_41 : StackLang.HolProg 64 :=
.seq RemovedBody402_33 RemovedBody402_40

def RemovedBody402_42 : StackLang.HolProg 64 :=
.seq RemovedBody402_32 RemovedBody402_41

def RemovedBody402_43 : StackLang.HolProg 64 :=
.seq RemovedBody402_31 RemovedBody402_42

def RemovedBody402_44 : StackLang.HolProg 64 :=
.seq RemovedBody402_30 RemovedBody402_43

def RemovedBody402_45 : StackLang.HolProg 64 :=
.seq RemovedBody402_29 RemovedBody402_44

def RemovedBody402_46 : StackLang.HolProg 64 :=
.seq RemovedBody402_28 RemovedBody402_45

def RemovedBody402_47 : StackLang.HolProg 64 :=
.seq RemovedBody402_27 RemovedBody402_46

def RemovedBody402_48 : StackLang.HolProg 64 :=
.seq RemovedBody402_26 RemovedBody402_47

def RemovedBody402_49 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody402_50 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody402_51 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody402_52 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody402_53 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody402_54 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody402_55 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 0 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def RemovedBody402_56 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 4
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody402_57 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 3
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody402_58 : StackLang.HolProg 64 :=
.seq RemovedBody402_56 RemovedBody402_57

def RemovedBody402_59 : StackLang.HolProg 64 :=
.seq RemovedBody402_55 RemovedBody402_58

def RemovedBody402_60 : StackLang.HolProg 64 :=
.seq RemovedBody402_54 RemovedBody402_59

def RemovedBody402_61 : StackLang.HolProg 64 :=
.seq RemovedBody402_53 RemovedBody402_60

def RemovedBody402_62 : StackLang.HolProg 64 :=
.seq RemovedBody402_52 RemovedBody402_61

def RemovedBody402_63 : StackLang.HolProg 64 :=
.seq RemovedBody402_51 RemovedBody402_62

def RemovedBody402_64 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 4
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody402_65 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 3
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody402_66 : StackLang.HolProg 64 :=
.seq RemovedBody402_64 RemovedBody402_65

def RemovedBody402_67 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def RemovedBody402_68 : StackLang.HolProg 64 :=
.seq RemovedBody402_66 RemovedBody402_67

def RemovedBody402_69 : StackLang.HolProg 64 :=
.call (some (RemovedBody402_63, 0, 402, 2)) (Sum.inl 79) (some (RemovedBody402_68, 402, 3))

def RemovedBody402_70 : StackLang.HolProg 64 :=
.seq RemovedBody402_50 RemovedBody402_69

def RemovedBody402_71 : StackLang.HolProg 64 :=
.seq RemovedBody402_49 RemovedBody402_70

def RemovedBody402_72 : StackLang.HolProg 64 :=
.seq RemovedBody402_48 RemovedBody402_71

def RemovedBody402_73 : StackLang.HolProg 64 :=
.seq RemovedBody402_19 RemovedBody402_72

def RemovedBody402_74 : StackLang.HolProg 64 :=
.seq RemovedBody402_16 RemovedBody402_73

def RemovedBody402_75 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody402_76 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody402_77 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 0#64)

def RemovedBody402_78 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody402_79 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 0#64)

def RemovedBody402_80 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 2 0#64)

def RemovedBody402_81 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody402_82 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody402_83 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 4

def RemovedBody402_84 : StackLang.HolProg 64 :=
.seq RemovedBody402_82 RemovedBody402_83

def RemovedBody402_85 : StackLang.HolProg 64 :=
.seq RemovedBody402_81 RemovedBody402_84

def RemovedBody402_86 : StackLang.HolProg 64 :=
.seq RemovedBody402_80 RemovedBody402_85

def RemovedBody402_87 : StackLang.HolProg 64 :=
.seq RemovedBody402_79 RemovedBody402_86

def RemovedBody402_88 : StackLang.HolProg 64 :=
.seq RemovedBody402_78 RemovedBody402_87

def RemovedBody402_89 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody402_90 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.notEqual) 0 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1) RemovedBody402_88 RemovedBody402_89

def RemovedBody402_91 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody402_92 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody402_93 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551592#64))

def RemovedBody402_94 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsl 0 0
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 1#64)))

def RemovedBody402_95 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 0 0
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 26)))

def RemovedBody402_96 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 0 18446744073709551448#64))

def RemovedBody402_97 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 0 16#64))

def RemovedBody402_98 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 2 3
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 3)))

def RemovedBody402_99 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 4
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody402_100 : StackLang.HolProg 64 :=
.seq RemovedBody402_98 RemovedBody402_99

def RemovedBody402_101 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody402_102 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1199#64)

def RemovedBody402_103 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody402_104 : StackLang.HolProg 64 :=
.seq RemovedBody402_102 RemovedBody402_103

def RemovedBody402_105 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody402_106 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 2#64)

def RemovedBody402_107 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 1

def RemovedBody402_108 : StackLang.HolProg 64 :=
.seq RemovedBody402_106 RemovedBody402_107

def RemovedBody402_109 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody402_110 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) RemovedBody402_108 RemovedBody402_109

def RemovedBody402_111 : StackLang.HolProg 64 :=
.seq RemovedBody402_105 RemovedBody402_110

def RemovedBody402_112 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def RemovedBody402_113 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody402_114 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 402 5

def RemovedBody402_115 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody402_116 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody402_117 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody402_118 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody402_119 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def RemovedBody402_120 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def RemovedBody402_121 : StackLang.HolProg 64 :=
.seq RemovedBody402_119 RemovedBody402_120

def RemovedBody402_122 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def RemovedBody402_123 : StackLang.HolProg 64 :=
.seq RemovedBody402_121 RemovedBody402_122

def RemovedBody402_124 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody402_125 : StackLang.HolProg 64 :=
.seq RemovedBody402_123 RemovedBody402_124

def RemovedBody402_126 : StackLang.HolProg 64 :=
.seq RemovedBody402_118 RemovedBody402_125

def RemovedBody402_127 : StackLang.HolProg 64 :=
.seq RemovedBody402_117 RemovedBody402_126

def RemovedBody402_128 : StackLang.HolProg 64 :=
.seq RemovedBody402_116 RemovedBody402_127

def RemovedBody402_129 : StackLang.HolProg 64 :=
.seq RemovedBody402_115 RemovedBody402_128

def RemovedBody402_130 : StackLang.HolProg 64 :=
.seq RemovedBody402_114 RemovedBody402_129

def RemovedBody402_131 : StackLang.HolProg 64 :=
.seq RemovedBody402_113 RemovedBody402_130

def RemovedBody402_132 : StackLang.HolProg 64 :=
.seq RemovedBody402_112 RemovedBody402_131

def RemovedBody402_133 : StackLang.HolProg 64 :=
.seq RemovedBody402_111 RemovedBody402_132

def RemovedBody402_134 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody402_135 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody402_136 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody402_137 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody402_138 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody402_139 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody402_140 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 0 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def RemovedBody402_141 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 4
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody402_142 : StackLang.HolProg 64 :=
.seq RemovedBody402_140 RemovedBody402_141

def RemovedBody402_143 : StackLang.HolProg 64 :=
.seq RemovedBody402_139 RemovedBody402_142

def RemovedBody402_144 : StackLang.HolProg 64 :=
.seq RemovedBody402_138 RemovedBody402_143

def RemovedBody402_145 : StackLang.HolProg 64 :=
.seq RemovedBody402_137 RemovedBody402_144

def RemovedBody402_146 : StackLang.HolProg 64 :=
.seq RemovedBody402_136 RemovedBody402_145

def RemovedBody402_147 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 4
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody402_148 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def RemovedBody402_149 : StackLang.HolProg 64 :=
.seq RemovedBody402_147 RemovedBody402_148

def RemovedBody402_150 : StackLang.HolProg 64 :=
.call (some (RemovedBody402_146, 0, 402, 4)) (Sum.inl 294) (some (RemovedBody402_149, 402, 5))

def RemovedBody402_151 : StackLang.HolProg 64 :=
.seq RemovedBody402_135 RemovedBody402_150

def RemovedBody402_152 : StackLang.HolProg 64 :=
.seq RemovedBody402_134 RemovedBody402_151

def RemovedBody402_153 : StackLang.HolProg 64 :=
.seq RemovedBody402_133 RemovedBody402_152

def RemovedBody402_154 : StackLang.HolProg 64 :=
.seq RemovedBody402_104 RemovedBody402_153

def RemovedBody402_155 : StackLang.HolProg 64 :=
.seq RemovedBody402_101 RemovedBody402_154

def RemovedBody402_156 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody402_157 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody402_158 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 0#64)

def RemovedBody402_159 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody402_160 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 0 2#64)

def RemovedBody402_161 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody402_162 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551480#64))

def RemovedBody402_163 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 7#64)

def RemovedBody402_164 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody402_165 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def RemovedBody402_166 : StackLang.HolProg 64 :=
.seq RemovedBody402_164 RemovedBody402_165

def RemovedBody402_167 : StackLang.HolProg 64 :=
.seq RemovedBody402_163 RemovedBody402_166

def RemovedBody402_168 : StackLang.HolProg 64 :=
.seq RemovedBody402_162 RemovedBody402_167

def RemovedBody402_169 : StackLang.HolProg 64 :=
.seq RemovedBody402_161 RemovedBody402_168

def RemovedBody402_170 : StackLang.HolProg 64 :=
.seq RemovedBody402_160 RemovedBody402_169

def RemovedBody402_171 : StackLang.HolProg 64 :=
.seq RemovedBody402_159 RemovedBody402_170

def RemovedBody402_172 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody402_173 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.equal) 0 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1) RemovedBody402_171 RemovedBody402_172

def RemovedBody402_174 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody402_175 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody402_176 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 1 2
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 2)))

def RemovedBody402_177 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 2 3
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 3)))

def RemovedBody402_178 : StackLang.HolProg 64 :=
.seq RemovedBody402_176 RemovedBody402_177

def RemovedBody402_179 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody402_180 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 4

def RemovedBody402_181 : StackLang.HolProg 64 :=
.seq RemovedBody402_179 RemovedBody402_180

def RemovedBody402_182 : StackLang.HolProg 64 :=
.seq RemovedBody402_178 RemovedBody402_181

def RemovedBody402_183 : StackLang.HolProg 64 :=
.seq RemovedBody402_175 RemovedBody402_182

def RemovedBody402_184 : StackLang.HolProg 64 :=
.seq RemovedBody402_174 RemovedBody402_183

def RemovedBody402_185 : StackLang.HolProg 64 :=
.seq RemovedBody402_173 RemovedBody402_184

def RemovedBody402_186 : StackLang.HolProg 64 :=
.seq RemovedBody402_158 RemovedBody402_185

def RemovedBody402_187 : StackLang.HolProg 64 :=
.seq RemovedBody402_157 RemovedBody402_186

def RemovedBody402_188 : StackLang.HolProg 64 :=
.seq RemovedBody402_156 RemovedBody402_187

def RemovedBody402_189 : StackLang.HolProg 64 :=
.seq RemovedBody402_155 RemovedBody402_188

def RemovedBody402_190 : StackLang.HolProg 64 :=
.seq RemovedBody402_100 RemovedBody402_189

def RemovedBody402_191 : StackLang.HolProg 64 :=
.seq RemovedBody402_97 RemovedBody402_190

def RemovedBody402_192 : StackLang.HolProg 64 :=
.seq RemovedBody402_96 RemovedBody402_191

def RemovedBody402_193 : StackLang.HolProg 64 :=
.seq RemovedBody402_95 RemovedBody402_192

def RemovedBody402_194 : StackLang.HolProg 64 :=
.seq RemovedBody402_94 RemovedBody402_193

def RemovedBody402_195 : StackLang.HolProg 64 :=
.seq RemovedBody402_93 RemovedBody402_194

def RemovedBody402_196 : StackLang.HolProg 64 :=
.seq RemovedBody402_92 RemovedBody402_195

def RemovedBody402_197 : StackLang.HolProg 64 :=
.seq RemovedBody402_91 RemovedBody402_196

def RemovedBody402_198 : StackLang.HolProg 64 :=
.seq RemovedBody402_90 RemovedBody402_197

def RemovedBody402_199 : StackLang.HolProg 64 :=
.seq RemovedBody402_77 RemovedBody402_198

def RemovedBody402_200 : StackLang.HolProg 64 :=
.seq RemovedBody402_76 RemovedBody402_199

def RemovedBody402_201 : StackLang.HolProg 64 :=
.seq RemovedBody402_75 RemovedBody402_200

def RemovedBody402_202 : StackLang.HolProg 64 :=
.seq RemovedBody402_74 RemovedBody402_201

def RemovedBody402_203 : StackLang.HolProg 64 :=
.seq RemovedBody402_15 RemovedBody402_202

def RemovedBody402_204 : StackLang.HolProg 64 :=
.seq RemovedBody402_12 RemovedBody402_203

def RemovedBody402_205 : StackLang.HolProg 64 :=
.seq RemovedBody402_11 RemovedBody402_204

def RemovedBody402_206 : StackLang.HolProg 64 :=
.seq RemovedBody402_10 RemovedBody402_205

def RemovedBody402_207 : StackLang.HolProg 64 :=
.seq RemovedBody402_9 RemovedBody402_206

def RemovedBody402_208 : StackLang.HolProg 64 :=
.seq RemovedBody402_8 RemovedBody402_207

def RemovedBody402_209 : StackLang.HolProg 64 :=
.seq RemovedBody402_7 RemovedBody402_208

def RemovedBody402_210 : StackLang.HolProg 64 :=
.seq RemovedBody402_6 RemovedBody402_209

def Removed402 : Nat × StackLang.HolProg 64 := (402, RemovedBody402_210)
theorem Removed402_eq : StackRemove.progComp false riscvConfig.addrOffset (riscvConfig.regCount - (riscvConfig.avoidRegs.length + 3)) Alloc402 = Removed402 := by
  kernel_rfl
#print axioms Removed402_eq
end InitECandidate.Proofs.BackendStages
