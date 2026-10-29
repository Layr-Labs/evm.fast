import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.BackendStages.Alloc395
import Flapjack.Compiler.Backend.Backend
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
namespace InitECandidate.Proofs.BackendStages
def RemovedBody395_0 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody395_1 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 2#64)

def RemovedBody395_2 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 1

def RemovedBody395_3 : StackLang.HolProg 64 :=
.seq RemovedBody395_1 RemovedBody395_2

def RemovedBody395_4 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody395_5 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) RemovedBody395_3 RemovedBody395_4

def RemovedBody395_6 : StackLang.HolProg 64 :=
.seq RemovedBody395_0 RemovedBody395_5

def RemovedBody395_7 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 2 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def RemovedBody395_8 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 56#64)

def RemovedBody395_9 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody395_10 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 2
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody395_11 : StackLang.HolProg 64 :=
.seq RemovedBody395_9 RemovedBody395_10

def RemovedBody395_12 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody395_13 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1173#64)

def RemovedBody395_14 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody395_15 : StackLang.HolProg 64 :=
.seq RemovedBody395_13 RemovedBody395_14

def RemovedBody395_16 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody395_17 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 2#64)

def RemovedBody395_18 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 1

def RemovedBody395_19 : StackLang.HolProg 64 :=
.seq RemovedBody395_17 RemovedBody395_18

def RemovedBody395_20 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody395_21 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) RemovedBody395_19 RemovedBody395_20

def RemovedBody395_22 : StackLang.HolProg 64 :=
.seq RemovedBody395_16 RemovedBody395_21

def RemovedBody395_23 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def RemovedBody395_24 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody395_25 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 395 3

def RemovedBody395_26 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody395_27 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody395_28 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody395_29 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody395_30 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def RemovedBody395_31 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def RemovedBody395_32 : StackLang.HolProg 64 :=
.seq RemovedBody395_30 RemovedBody395_31

def RemovedBody395_33 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def RemovedBody395_34 : StackLang.HolProg 64 :=
.seq RemovedBody395_32 RemovedBody395_33

def RemovedBody395_35 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody395_36 : StackLang.HolProg 64 :=
.seq RemovedBody395_34 RemovedBody395_35

def RemovedBody395_37 : StackLang.HolProg 64 :=
.seq RemovedBody395_29 RemovedBody395_36

def RemovedBody395_38 : StackLang.HolProg 64 :=
.seq RemovedBody395_28 RemovedBody395_37

def RemovedBody395_39 : StackLang.HolProg 64 :=
.seq RemovedBody395_27 RemovedBody395_38

def RemovedBody395_40 : StackLang.HolProg 64 :=
.seq RemovedBody395_26 RemovedBody395_39

def RemovedBody395_41 : StackLang.HolProg 64 :=
.seq RemovedBody395_25 RemovedBody395_40

def RemovedBody395_42 : StackLang.HolProg 64 :=
.seq RemovedBody395_24 RemovedBody395_41

def RemovedBody395_43 : StackLang.HolProg 64 :=
.seq RemovedBody395_23 RemovedBody395_42

def RemovedBody395_44 : StackLang.HolProg 64 :=
.seq RemovedBody395_22 RemovedBody395_43

def RemovedBody395_45 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody395_46 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody395_47 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody395_48 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody395_49 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody395_50 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody395_51 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 0 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def RemovedBody395_52 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 2
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody395_53 : StackLang.HolProg 64 :=
.seq RemovedBody395_51 RemovedBody395_52

def RemovedBody395_54 : StackLang.HolProg 64 :=
.seq RemovedBody395_50 RemovedBody395_53

def RemovedBody395_55 : StackLang.HolProg 64 :=
.seq RemovedBody395_49 RemovedBody395_54

def RemovedBody395_56 : StackLang.HolProg 64 :=
.seq RemovedBody395_48 RemovedBody395_55

def RemovedBody395_57 : StackLang.HolProg 64 :=
.seq RemovedBody395_47 RemovedBody395_56

def RemovedBody395_58 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 2
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody395_59 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def RemovedBody395_60 : StackLang.HolProg 64 :=
.seq RemovedBody395_58 RemovedBody395_59

def RemovedBody395_61 : StackLang.HolProg 64 :=
.call (some (RemovedBody395_57, 0, 395, 2)) (Sum.inl 68) (some (RemovedBody395_60, 395, 3))

def RemovedBody395_62 : StackLang.HolProg 64 :=
.seq RemovedBody395_46 RemovedBody395_61

def RemovedBody395_63 : StackLang.HolProg 64 :=
.seq RemovedBody395_45 RemovedBody395_62

def RemovedBody395_64 : StackLang.HolProg 64 :=
.seq RemovedBody395_44 RemovedBody395_63

def RemovedBody395_65 : StackLang.HolProg 64 :=
.seq RemovedBody395_15 RemovedBody395_64

def RemovedBody395_66 : StackLang.HolProg 64 :=
.seq RemovedBody395_12 RemovedBody395_65

def RemovedBody395_67 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody395_68 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 1 0
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 0)))

def RemovedBody395_69 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 3 56#64)

def RemovedBody395_70 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody395_71 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody395_72 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1174#64)

def RemovedBody395_73 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody395_74 : StackLang.HolProg 64 :=
.seq RemovedBody395_72 RemovedBody395_73

def RemovedBody395_75 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody395_76 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 2#64)

def RemovedBody395_77 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 1

def RemovedBody395_78 : StackLang.HolProg 64 :=
.seq RemovedBody395_76 RemovedBody395_77

def RemovedBody395_79 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody395_80 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) RemovedBody395_78 RemovedBody395_79

def RemovedBody395_81 : StackLang.HolProg 64 :=
.seq RemovedBody395_75 RemovedBody395_80

def RemovedBody395_82 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def RemovedBody395_83 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody395_84 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 395 5

def RemovedBody395_85 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody395_86 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody395_87 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody395_88 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody395_89 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def RemovedBody395_90 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def RemovedBody395_91 : StackLang.HolProg 64 :=
.seq RemovedBody395_89 RemovedBody395_90

def RemovedBody395_92 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def RemovedBody395_93 : StackLang.HolProg 64 :=
.seq RemovedBody395_91 RemovedBody395_92

def RemovedBody395_94 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody395_95 : StackLang.HolProg 64 :=
.seq RemovedBody395_93 RemovedBody395_94

def RemovedBody395_96 : StackLang.HolProg 64 :=
.seq RemovedBody395_88 RemovedBody395_95

def RemovedBody395_97 : StackLang.HolProg 64 :=
.seq RemovedBody395_87 RemovedBody395_96

def RemovedBody395_98 : StackLang.HolProg 64 :=
.seq RemovedBody395_86 RemovedBody395_97

def RemovedBody395_99 : StackLang.HolProg 64 :=
.seq RemovedBody395_85 RemovedBody395_98

def RemovedBody395_100 : StackLang.HolProg 64 :=
.seq RemovedBody395_84 RemovedBody395_99

def RemovedBody395_101 : StackLang.HolProg 64 :=
.seq RemovedBody395_83 RemovedBody395_100

def RemovedBody395_102 : StackLang.HolProg 64 :=
.seq RemovedBody395_82 RemovedBody395_101

def RemovedBody395_103 : StackLang.HolProg 64 :=
.seq RemovedBody395_81 RemovedBody395_102

def RemovedBody395_104 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody395_105 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody395_106 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody395_107 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody395_108 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody395_109 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody395_110 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody395_111 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 2
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody395_112 : StackLang.HolProg 64 :=
.seq RemovedBody395_110 RemovedBody395_111

def RemovedBody395_113 : StackLang.HolProg 64 :=
.seq RemovedBody395_109 RemovedBody395_112

def RemovedBody395_114 : StackLang.HolProg 64 :=
.seq RemovedBody395_108 RemovedBody395_113

def RemovedBody395_115 : StackLang.HolProg 64 :=
.seq RemovedBody395_107 RemovedBody395_114

def RemovedBody395_116 : StackLang.HolProg 64 :=
.seq RemovedBody395_106 RemovedBody395_115

def RemovedBody395_117 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody395_118 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 2
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody395_119 : StackLang.HolProg 64 :=
.seq RemovedBody395_117 RemovedBody395_118

def RemovedBody395_120 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def RemovedBody395_121 : StackLang.HolProg 64 :=
.seq RemovedBody395_119 RemovedBody395_120

def RemovedBody395_122 : StackLang.HolProg 64 :=
.call (some (RemovedBody395_116, 0, 395, 4)) (Sum.inl 77) (some (RemovedBody395_121, 395, 5))

def RemovedBody395_123 : StackLang.HolProg 64 :=
.seq RemovedBody395_105 RemovedBody395_122

def RemovedBody395_124 : StackLang.HolProg 64 :=
.seq RemovedBody395_104 RemovedBody395_123

def RemovedBody395_125 : StackLang.HolProg 64 :=
.seq RemovedBody395_103 RemovedBody395_124

def RemovedBody395_126 : StackLang.HolProg 64 :=
.seq RemovedBody395_74 RemovedBody395_125

def RemovedBody395_127 : StackLang.HolProg 64 :=
.seq RemovedBody395_71 RemovedBody395_126

def RemovedBody395_128 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody395_129 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 1 2
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 2)))

def RemovedBody395_130 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody395_131 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 0

def RemovedBody395_132 : StackLang.HolProg 64 :=
.seq RemovedBody395_130 RemovedBody395_131

def RemovedBody395_133 : StackLang.HolProg 64 :=
.seq RemovedBody395_129 RemovedBody395_132

def RemovedBody395_134 : StackLang.HolProg 64 :=
.seq RemovedBody395_128 RemovedBody395_133

def RemovedBody395_135 : StackLang.HolProg 64 :=
.seq RemovedBody395_127 RemovedBody395_134

def RemovedBody395_136 : StackLang.HolProg 64 :=
.seq RemovedBody395_70 RemovedBody395_135

def RemovedBody395_137 : StackLang.HolProg 64 :=
.seq RemovedBody395_69 RemovedBody395_136

def RemovedBody395_138 : StackLang.HolProg 64 :=
.seq RemovedBody395_68 RemovedBody395_137

def RemovedBody395_139 : StackLang.HolProg 64 :=
.seq RemovedBody395_67 RemovedBody395_138

def RemovedBody395_140 : StackLang.HolProg 64 :=
.seq RemovedBody395_66 RemovedBody395_139

def RemovedBody395_141 : StackLang.HolProg 64 :=
.seq RemovedBody395_11 RemovedBody395_140

def RemovedBody395_142 : StackLang.HolProg 64 :=
.seq RemovedBody395_8 RemovedBody395_141

def RemovedBody395_143 : StackLang.HolProg 64 :=
.seq RemovedBody395_7 RemovedBody395_142

def RemovedBody395_144 : StackLang.HolProg 64 :=
.seq RemovedBody395_6 RemovedBody395_143

def Removed395 : Nat × StackLang.HolProg 64 := (395, RemovedBody395_144)
theorem Removed395_eq : StackRemove.progComp false riscvConfig.addrOffset (riscvConfig.regCount - (riscvConfig.avoidRegs.length + 3)) Alloc395 = Removed395 := by
  kernel_rfl
#print axioms Removed395_eq
end InitECandidate.Proofs.BackendStages
