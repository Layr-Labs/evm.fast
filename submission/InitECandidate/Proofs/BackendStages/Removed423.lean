import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.BackendStages.Alloc423
import Flapjack.Compiler.Backend.Backend
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
namespace InitECandidate.Proofs.BackendStages
def RemovedBody423_0 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 32#64)))

def RemovedBody423_1 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 2#64)

def RemovedBody423_2 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 1

def RemovedBody423_3 : StackLang.HolProg 64 :=
.seq RemovedBody423_1 RemovedBody423_2

def RemovedBody423_4 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody423_5 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) RemovedBody423_3 RemovedBody423_4

def RemovedBody423_6 : StackLang.HolProg 64 :=
.seq RemovedBody423_0 RemovedBody423_5

def RemovedBody423_7 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 24#64))

def RemovedBody423_8 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 2
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody423_9 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody423_10 : StackLang.HolProg 64 :=
.seq RemovedBody423_8 RemovedBody423_9

def RemovedBody423_11 : StackLang.HolProg 64 :=
.seq RemovedBody423_7 RemovedBody423_10

def RemovedBody423_12 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody423_13 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1261#64)

def RemovedBody423_14 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody423_15 : StackLang.HolProg 64 :=
.seq RemovedBody423_13 RemovedBody423_14

def RemovedBody423_16 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody423_17 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 2#64)

def RemovedBody423_18 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 1

def RemovedBody423_19 : StackLang.HolProg 64 :=
.seq RemovedBody423_17 RemovedBody423_18

def RemovedBody423_20 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody423_21 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) RemovedBody423_19 RemovedBody423_20

def RemovedBody423_22 : StackLang.HolProg 64 :=
.seq RemovedBody423_16 RemovedBody423_21

def RemovedBody423_23 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def RemovedBody423_24 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody423_25 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 423 3

def RemovedBody423_26 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody423_27 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody423_28 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody423_29 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody423_30 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def RemovedBody423_31 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def RemovedBody423_32 : StackLang.HolProg 64 :=
.seq RemovedBody423_30 RemovedBody423_31

def RemovedBody423_33 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def RemovedBody423_34 : StackLang.HolProg 64 :=
.seq RemovedBody423_32 RemovedBody423_33

def RemovedBody423_35 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody423_36 : StackLang.HolProg 64 :=
.seq RemovedBody423_34 RemovedBody423_35

def RemovedBody423_37 : StackLang.HolProg 64 :=
.seq RemovedBody423_29 RemovedBody423_36

def RemovedBody423_38 : StackLang.HolProg 64 :=
.seq RemovedBody423_28 RemovedBody423_37

def RemovedBody423_39 : StackLang.HolProg 64 :=
.seq RemovedBody423_27 RemovedBody423_38

def RemovedBody423_40 : StackLang.HolProg 64 :=
.seq RemovedBody423_26 RemovedBody423_39

def RemovedBody423_41 : StackLang.HolProg 64 :=
.seq RemovedBody423_25 RemovedBody423_40

def RemovedBody423_42 : StackLang.HolProg 64 :=
.seq RemovedBody423_24 RemovedBody423_41

def RemovedBody423_43 : StackLang.HolProg 64 :=
.seq RemovedBody423_23 RemovedBody423_42

def RemovedBody423_44 : StackLang.HolProg 64 :=
.seq RemovedBody423_22 RemovedBody423_43

def RemovedBody423_45 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody423_46 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody423_47 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody423_48 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody423_49 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody423_50 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody423_51 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody423_52 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody423_53 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody423_54 : StackLang.HolProg 64 :=
.seq RemovedBody423_52 RemovedBody423_53

def RemovedBody423_55 : StackLang.HolProg 64 :=
.seq RemovedBody423_51 RemovedBody423_54

def RemovedBody423_56 : StackLang.HolProg 64 :=
.seq RemovedBody423_50 RemovedBody423_55

def RemovedBody423_57 : StackLang.HolProg 64 :=
.seq RemovedBody423_49 RemovedBody423_56

def RemovedBody423_58 : StackLang.HolProg 64 :=
.seq RemovedBody423_48 RemovedBody423_57

def RemovedBody423_59 : StackLang.HolProg 64 :=
.seq RemovedBody423_47 RemovedBody423_58

def RemovedBody423_60 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody423_61 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody423_62 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody423_63 : StackLang.HolProg 64 :=
.seq RemovedBody423_61 RemovedBody423_62

def RemovedBody423_64 : StackLang.HolProg 64 :=
.seq RemovedBody423_60 RemovedBody423_63

def RemovedBody423_65 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def RemovedBody423_66 : StackLang.HolProg 64 :=
.seq RemovedBody423_64 RemovedBody423_65

def RemovedBody423_67 : StackLang.HolProg 64 :=
.call (some (RemovedBody423_59, 0, 423, 2)) (Sum.inl 419) (some (RemovedBody423_66, 423, 3))

def RemovedBody423_68 : StackLang.HolProg 64 :=
.seq RemovedBody423_46 RemovedBody423_67

def RemovedBody423_69 : StackLang.HolProg 64 :=
.seq RemovedBody423_45 RemovedBody423_68

def RemovedBody423_70 : StackLang.HolProg 64 :=
.seq RemovedBody423_44 RemovedBody423_69

def RemovedBody423_71 : StackLang.HolProg 64 :=
.seq RemovedBody423_15 RemovedBody423_70

def RemovedBody423_72 : StackLang.HolProg 64 :=
.seq RemovedBody423_12 RemovedBody423_71

def RemovedBody423_73 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody423_74 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 1 0
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 0)))

def RemovedBody423_75 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody423_76 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1262#64)

def RemovedBody423_77 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody423_78 : StackLang.HolProg 64 :=
.seq RemovedBody423_76 RemovedBody423_77

def RemovedBody423_79 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody423_80 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 2#64)

def RemovedBody423_81 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 1

def RemovedBody423_82 : StackLang.HolProg 64 :=
.seq RemovedBody423_80 RemovedBody423_81

def RemovedBody423_83 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody423_84 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) RemovedBody423_82 RemovedBody423_83

def RemovedBody423_85 : StackLang.HolProg 64 :=
.seq RemovedBody423_79 RemovedBody423_84

def RemovedBody423_86 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def RemovedBody423_87 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody423_88 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 423 5

def RemovedBody423_89 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody423_90 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody423_91 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody423_92 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody423_93 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def RemovedBody423_94 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def RemovedBody423_95 : StackLang.HolProg 64 :=
.seq RemovedBody423_93 RemovedBody423_94

def RemovedBody423_96 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def RemovedBody423_97 : StackLang.HolProg 64 :=
.seq RemovedBody423_95 RemovedBody423_96

def RemovedBody423_98 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody423_99 : StackLang.HolProg 64 :=
.seq RemovedBody423_97 RemovedBody423_98

def RemovedBody423_100 : StackLang.HolProg 64 :=
.seq RemovedBody423_92 RemovedBody423_99

def RemovedBody423_101 : StackLang.HolProg 64 :=
.seq RemovedBody423_91 RemovedBody423_100

def RemovedBody423_102 : StackLang.HolProg 64 :=
.seq RemovedBody423_90 RemovedBody423_101

def RemovedBody423_103 : StackLang.HolProg 64 :=
.seq RemovedBody423_89 RemovedBody423_102

def RemovedBody423_104 : StackLang.HolProg 64 :=
.seq RemovedBody423_88 RemovedBody423_103

def RemovedBody423_105 : StackLang.HolProg 64 :=
.seq RemovedBody423_87 RemovedBody423_104

def RemovedBody423_106 : StackLang.HolProg 64 :=
.seq RemovedBody423_86 RemovedBody423_105

def RemovedBody423_107 : StackLang.HolProg 64 :=
.seq RemovedBody423_85 RemovedBody423_106

def RemovedBody423_108 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody423_109 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody423_110 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody423_111 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody423_112 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody423_113 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody423_114 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 0 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def RemovedBody423_115 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 2
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody423_116 : StackLang.HolProg 64 :=
.seq RemovedBody423_114 RemovedBody423_115

def RemovedBody423_117 : StackLang.HolProg 64 :=
.seq RemovedBody423_113 RemovedBody423_116

def RemovedBody423_118 : StackLang.HolProg 64 :=
.seq RemovedBody423_112 RemovedBody423_117

def RemovedBody423_119 : StackLang.HolProg 64 :=
.seq RemovedBody423_111 RemovedBody423_118

def RemovedBody423_120 : StackLang.HolProg 64 :=
.seq RemovedBody423_110 RemovedBody423_119

def RemovedBody423_121 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 2
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody423_122 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def RemovedBody423_123 : StackLang.HolProg 64 :=
.seq RemovedBody423_121 RemovedBody423_122

def RemovedBody423_124 : StackLang.HolProg 64 :=
.call (some (RemovedBody423_120, 0, 423, 4)) (Sum.inl 416) (some (RemovedBody423_123, 423, 5))

def RemovedBody423_125 : StackLang.HolProg 64 :=
.seq RemovedBody423_109 RemovedBody423_124

def RemovedBody423_126 : StackLang.HolProg 64 :=
.seq RemovedBody423_108 RemovedBody423_125

def RemovedBody423_127 : StackLang.HolProg 64 :=
.seq RemovedBody423_107 RemovedBody423_126

def RemovedBody423_128 : StackLang.HolProg 64 :=
.seq RemovedBody423_78 RemovedBody423_127

def RemovedBody423_129 : StackLang.HolProg 64 :=
.seq RemovedBody423_75 RemovedBody423_128

def RemovedBody423_130 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody423_131 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody423_132 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 0#64)

def RemovedBody423_133 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody423_134 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 1 2
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 2)))

def RemovedBody423_135 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody423_136 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1263#64)

def RemovedBody423_137 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody423_138 : StackLang.HolProg 64 :=
.seq RemovedBody423_136 RemovedBody423_137

def RemovedBody423_139 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody423_140 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 2#64)

def RemovedBody423_141 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 1

def RemovedBody423_142 : StackLang.HolProg 64 :=
.seq RemovedBody423_140 RemovedBody423_141

def RemovedBody423_143 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody423_144 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) RemovedBody423_142 RemovedBody423_143

def RemovedBody423_145 : StackLang.HolProg 64 :=
.seq RemovedBody423_139 RemovedBody423_144

def RemovedBody423_146 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def RemovedBody423_147 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody423_148 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 423 7

def RemovedBody423_149 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody423_150 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody423_151 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody423_152 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody423_153 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def RemovedBody423_154 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def RemovedBody423_155 : StackLang.HolProg 64 :=
.seq RemovedBody423_153 RemovedBody423_154

def RemovedBody423_156 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def RemovedBody423_157 : StackLang.HolProg 64 :=
.seq RemovedBody423_155 RemovedBody423_156

def RemovedBody423_158 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody423_159 : StackLang.HolProg 64 :=
.seq RemovedBody423_157 RemovedBody423_158

def RemovedBody423_160 : StackLang.HolProg 64 :=
.seq RemovedBody423_152 RemovedBody423_159

def RemovedBody423_161 : StackLang.HolProg 64 :=
.seq RemovedBody423_151 RemovedBody423_160

def RemovedBody423_162 : StackLang.HolProg 64 :=
.seq RemovedBody423_150 RemovedBody423_161

def RemovedBody423_163 : StackLang.HolProg 64 :=
.seq RemovedBody423_149 RemovedBody423_162

def RemovedBody423_164 : StackLang.HolProg 64 :=
.seq RemovedBody423_148 RemovedBody423_163

def RemovedBody423_165 : StackLang.HolProg 64 :=
.seq RemovedBody423_147 RemovedBody423_164

def RemovedBody423_166 : StackLang.HolProg 64 :=
.seq RemovedBody423_146 RemovedBody423_165

def RemovedBody423_167 : StackLang.HolProg 64 :=
.seq RemovedBody423_145 RemovedBody423_166

def RemovedBody423_168 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody423_169 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody423_170 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody423_171 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody423_172 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody423_173 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody423_174 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 24#64))

def RemovedBody423_175 : StackLang.HolProg 64 :=
.seq RemovedBody423_173 RemovedBody423_174

def RemovedBody423_176 : StackLang.HolProg 64 :=
.seq RemovedBody423_172 RemovedBody423_175

def RemovedBody423_177 : StackLang.HolProg 64 :=
.seq RemovedBody423_171 RemovedBody423_176

def RemovedBody423_178 : StackLang.HolProg 64 :=
.seq RemovedBody423_170 RemovedBody423_177

def RemovedBody423_179 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 24#64))

def RemovedBody423_180 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def RemovedBody423_181 : StackLang.HolProg 64 :=
.seq RemovedBody423_179 RemovedBody423_180

def RemovedBody423_182 : StackLang.HolProg 64 :=
.call (some (RemovedBody423_178, 0, 423, 6)) (Sum.inl 422) (some (RemovedBody423_181, 423, 7))

def RemovedBody423_183 : StackLang.HolProg 64 :=
.seq RemovedBody423_169 RemovedBody423_182

def RemovedBody423_184 : StackLang.HolProg 64 :=
.seq RemovedBody423_168 RemovedBody423_183

def RemovedBody423_185 : StackLang.HolProg 64 :=
.seq RemovedBody423_167 RemovedBody423_184

def RemovedBody423_186 : StackLang.HolProg 64 :=
.seq RemovedBody423_138 RemovedBody423_185

def RemovedBody423_187 : StackLang.HolProg 64 :=
.seq RemovedBody423_135 RemovedBody423_186

def RemovedBody423_188 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody423_189 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody423_190 : StackLang.HolProg 64 :=
.seq RemovedBody423_188 RemovedBody423_189

def RemovedBody423_191 : StackLang.HolProg 64 :=
.seq RemovedBody423_187 RemovedBody423_190

def RemovedBody423_192 : StackLang.HolProg 64 :=
.seq RemovedBody423_134 RemovedBody423_191

def RemovedBody423_193 : StackLang.HolProg 64 :=
.seq RemovedBody423_133 RemovedBody423_192

def RemovedBody423_194 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody423_195 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 24#64))

def RemovedBody423_196 : StackLang.HolProg 64 :=
.seq RemovedBody423_194 RemovedBody423_195

def RemovedBody423_197 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.notEqual) 0 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1) RemovedBody423_193 RemovedBody423_196

def RemovedBody423_198 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody423_199 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 0#64)

def RemovedBody423_200 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody423_201 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 32#64)))

def RemovedBody423_202 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 0

def RemovedBody423_203 : StackLang.HolProg 64 :=
.seq RemovedBody423_201 RemovedBody423_202

def RemovedBody423_204 : StackLang.HolProg 64 :=
.seq RemovedBody423_200 RemovedBody423_203

def RemovedBody423_205 : StackLang.HolProg 64 :=
.seq RemovedBody423_199 RemovedBody423_204

def RemovedBody423_206 : StackLang.HolProg 64 :=
.seq RemovedBody423_198 RemovedBody423_205

def RemovedBody423_207 : StackLang.HolProg 64 :=
.seq RemovedBody423_197 RemovedBody423_206

def RemovedBody423_208 : StackLang.HolProg 64 :=
.seq RemovedBody423_132 RemovedBody423_207

def RemovedBody423_209 : StackLang.HolProg 64 :=
.seq RemovedBody423_131 RemovedBody423_208

def RemovedBody423_210 : StackLang.HolProg 64 :=
.seq RemovedBody423_130 RemovedBody423_209

def RemovedBody423_211 : StackLang.HolProg 64 :=
.seq RemovedBody423_129 RemovedBody423_210

def RemovedBody423_212 : StackLang.HolProg 64 :=
.seq RemovedBody423_74 RemovedBody423_211

def RemovedBody423_213 : StackLang.HolProg 64 :=
.seq RemovedBody423_73 RemovedBody423_212

def RemovedBody423_214 : StackLang.HolProg 64 :=
.seq RemovedBody423_72 RemovedBody423_213

def RemovedBody423_215 : StackLang.HolProg 64 :=
.seq RemovedBody423_11 RemovedBody423_214

def RemovedBody423_216 : StackLang.HolProg 64 :=
.seq RemovedBody423_6 RemovedBody423_215

def Removed423 : Nat × StackLang.HolProg 64 := (423, RemovedBody423_216)
theorem Removed423_eq : StackRemove.progComp false riscvConfig.addrOffset (riscvConfig.regCount - (riscvConfig.avoidRegs.length + 3)) Alloc423 = Removed423 := by
  kernel_rfl
#print axioms Removed423_eq
end InitECandidate.Proofs.BackendStages
