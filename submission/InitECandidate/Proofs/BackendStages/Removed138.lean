import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.BackendStages.Alloc138
import Flapjack.Compiler.Backend.Backend
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
namespace InitECandidate.Proofs.BackendStages
def RemovedBody138_0 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody138_1 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 2#64)

def RemovedBody138_2 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 1

def RemovedBody138_3 : StackLang.HolProg 64 :=
.seq RemovedBody138_1 RemovedBody138_2

def RemovedBody138_4 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody138_5 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) RemovedBody138_3 RemovedBody138_4

def RemovedBody138_6 : StackLang.HolProg 64 :=
.seq RemovedBody138_0 RemovedBody138_5

def RemovedBody138_7 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 5 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def RemovedBody138_8 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 0#64)

def RemovedBody138_9 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody138_10 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 1 4
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 4)))

def RemovedBody138_11 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody138_12 : StackLang.HolProg 64 :=
.seq RemovedBody138_10 RemovedBody138_11

def RemovedBody138_13 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody138_14 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 97#64)

def RemovedBody138_15 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody138_16 : StackLang.HolProg 64 :=
.seq RemovedBody138_14 RemovedBody138_15

def RemovedBody138_17 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody138_18 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 2#64)

def RemovedBody138_19 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 1

def RemovedBody138_20 : StackLang.HolProg 64 :=
.seq RemovedBody138_18 RemovedBody138_19

def RemovedBody138_21 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody138_22 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) RemovedBody138_20 RemovedBody138_21

def RemovedBody138_23 : StackLang.HolProg 64 :=
.seq RemovedBody138_17 RemovedBody138_22

def RemovedBody138_24 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def RemovedBody138_25 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody138_26 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 138 3

def RemovedBody138_27 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody138_28 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody138_29 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody138_30 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody138_31 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def RemovedBody138_32 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def RemovedBody138_33 : StackLang.HolProg 64 :=
.seq RemovedBody138_31 RemovedBody138_32

def RemovedBody138_34 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def RemovedBody138_35 : StackLang.HolProg 64 :=
.seq RemovedBody138_33 RemovedBody138_34

def RemovedBody138_36 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody138_37 : StackLang.HolProg 64 :=
.seq RemovedBody138_35 RemovedBody138_36

def RemovedBody138_38 : StackLang.HolProg 64 :=
.seq RemovedBody138_30 RemovedBody138_37

def RemovedBody138_39 : StackLang.HolProg 64 :=
.seq RemovedBody138_29 RemovedBody138_38

def RemovedBody138_40 : StackLang.HolProg 64 :=
.seq RemovedBody138_28 RemovedBody138_39

def RemovedBody138_41 : StackLang.HolProg 64 :=
.seq RemovedBody138_27 RemovedBody138_40

def RemovedBody138_42 : StackLang.HolProg 64 :=
.seq RemovedBody138_26 RemovedBody138_41

def RemovedBody138_43 : StackLang.HolProg 64 :=
.seq RemovedBody138_25 RemovedBody138_42

def RemovedBody138_44 : StackLang.HolProg 64 :=
.seq RemovedBody138_24 RemovedBody138_43

def RemovedBody138_45 : StackLang.HolProg 64 :=
.seq RemovedBody138_23 RemovedBody138_44

def RemovedBody138_46 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody138_47 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody138_48 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody138_49 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody138_50 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody138_51 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody138_52 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 0 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def RemovedBody138_53 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 4
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody138_54 : StackLang.HolProg 64 :=
.seq RemovedBody138_52 RemovedBody138_53

def RemovedBody138_55 : StackLang.HolProg 64 :=
.seq RemovedBody138_51 RemovedBody138_54

def RemovedBody138_56 : StackLang.HolProg 64 :=
.seq RemovedBody138_50 RemovedBody138_55

def RemovedBody138_57 : StackLang.HolProg 64 :=
.seq RemovedBody138_49 RemovedBody138_56

def RemovedBody138_58 : StackLang.HolProg 64 :=
.seq RemovedBody138_48 RemovedBody138_57

def RemovedBody138_59 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 4
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody138_60 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def RemovedBody138_61 : StackLang.HolProg 64 :=
.seq RemovedBody138_59 RemovedBody138_60

def RemovedBody138_62 : StackLang.HolProg 64 :=
.call (some (RemovedBody138_58, 0, 138, 2)) (Sum.inl 137) (some (RemovedBody138_61, 138, 3))

def RemovedBody138_63 : StackLang.HolProg 64 :=
.seq RemovedBody138_47 RemovedBody138_62

def RemovedBody138_64 : StackLang.HolProg 64 :=
.seq RemovedBody138_46 RemovedBody138_63

def RemovedBody138_65 : StackLang.HolProg 64 :=
.seq RemovedBody138_45 RemovedBody138_64

def RemovedBody138_66 : StackLang.HolProg 64 :=
.seq RemovedBody138_16 RemovedBody138_65

def RemovedBody138_67 : StackLang.HolProg 64 :=
.seq RemovedBody138_13 RemovedBody138_66

def RemovedBody138_68 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody138_69 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody138_70 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 1 0
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 192#64)))

def RemovedBody138_71 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody138_72 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody138_73 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 4

def RemovedBody138_74 : StackLang.HolProg 64 :=
.seq RemovedBody138_72 RemovedBody138_73

def RemovedBody138_75 : StackLang.HolProg 64 :=
.seq RemovedBody138_71 RemovedBody138_74

def RemovedBody138_76 : StackLang.HolProg 64 :=
.seq RemovedBody138_70 RemovedBody138_75

def RemovedBody138_77 : StackLang.HolProg 64 :=
.seq RemovedBody138_69 RemovedBody138_76

def RemovedBody138_78 : StackLang.HolProg 64 :=
.seq RemovedBody138_68 RemovedBody138_77

def RemovedBody138_79 : StackLang.HolProg 64 :=
.seq RemovedBody138_67 RemovedBody138_78

def RemovedBody138_80 : StackLang.HolProg 64 :=
.seq RemovedBody138_12 RemovedBody138_79

def RemovedBody138_81 : StackLang.HolProg 64 :=
.seq RemovedBody138_9 RemovedBody138_80

def RemovedBody138_82 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody138_83 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.notEqual) 4 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1) RemovedBody138_81 RemovedBody138_82

def RemovedBody138_84 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody138_85 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody138_86 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 1 3
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 3)))

def RemovedBody138_87 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 0 0#64)

def RemovedBody138_88 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody138_89 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody138_90 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody138_91 : StackLang.HolProg 64 :=
.seq RemovedBody138_89 RemovedBody138_90

def RemovedBody138_92 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody138_93 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 98#64)

def RemovedBody138_94 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody138_95 : StackLang.HolProg 64 :=
.seq RemovedBody138_93 RemovedBody138_94

def RemovedBody138_96 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody138_97 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 2#64)

def RemovedBody138_98 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 1

def RemovedBody138_99 : StackLang.HolProg 64 :=
.seq RemovedBody138_97 RemovedBody138_98

def RemovedBody138_100 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody138_101 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) RemovedBody138_99 RemovedBody138_100

def RemovedBody138_102 : StackLang.HolProg 64 :=
.seq RemovedBody138_96 RemovedBody138_101

def RemovedBody138_103 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def RemovedBody138_104 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody138_105 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 138 5

def RemovedBody138_106 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody138_107 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody138_108 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody138_109 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody138_110 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def RemovedBody138_111 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def RemovedBody138_112 : StackLang.HolProg 64 :=
.seq RemovedBody138_110 RemovedBody138_111

def RemovedBody138_113 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def RemovedBody138_114 : StackLang.HolProg 64 :=
.seq RemovedBody138_112 RemovedBody138_113

def RemovedBody138_115 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody138_116 : StackLang.HolProg 64 :=
.seq RemovedBody138_114 RemovedBody138_115

def RemovedBody138_117 : StackLang.HolProg 64 :=
.seq RemovedBody138_109 RemovedBody138_116

def RemovedBody138_118 : StackLang.HolProg 64 :=
.seq RemovedBody138_108 RemovedBody138_117

def RemovedBody138_119 : StackLang.HolProg 64 :=
.seq RemovedBody138_107 RemovedBody138_118

def RemovedBody138_120 : StackLang.HolProg 64 :=
.seq RemovedBody138_106 RemovedBody138_119

def RemovedBody138_121 : StackLang.HolProg 64 :=
.seq RemovedBody138_105 RemovedBody138_120

def RemovedBody138_122 : StackLang.HolProg 64 :=
.seq RemovedBody138_104 RemovedBody138_121

def RemovedBody138_123 : StackLang.HolProg 64 :=
.seq RemovedBody138_103 RemovedBody138_122

def RemovedBody138_124 : StackLang.HolProg 64 :=
.seq RemovedBody138_102 RemovedBody138_123

def RemovedBody138_125 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody138_126 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody138_127 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody138_128 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody138_129 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody138_130 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody138_131 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 0 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def RemovedBody138_132 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 3
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody138_133 : StackLang.HolProg 64 :=
.seq RemovedBody138_131 RemovedBody138_132

def RemovedBody138_134 : StackLang.HolProg 64 :=
.seq RemovedBody138_130 RemovedBody138_133

def RemovedBody138_135 : StackLang.HolProg 64 :=
.seq RemovedBody138_129 RemovedBody138_134

def RemovedBody138_136 : StackLang.HolProg 64 :=
.seq RemovedBody138_128 RemovedBody138_135

def RemovedBody138_137 : StackLang.HolProg 64 :=
.seq RemovedBody138_127 RemovedBody138_136

def RemovedBody138_138 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 3
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody138_139 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def RemovedBody138_140 : StackLang.HolProg 64 :=
.seq RemovedBody138_138 RemovedBody138_139

def RemovedBody138_141 : StackLang.HolProg 64 :=
.call (some (RemovedBody138_137, 0, 138, 4)) (Sum.inl 137) (some (RemovedBody138_140, 138, 5))

def RemovedBody138_142 : StackLang.HolProg 64 :=
.seq RemovedBody138_126 RemovedBody138_141

def RemovedBody138_143 : StackLang.HolProg 64 :=
.seq RemovedBody138_125 RemovedBody138_142

def RemovedBody138_144 : StackLang.HolProg 64 :=
.seq RemovedBody138_124 RemovedBody138_143

def RemovedBody138_145 : StackLang.HolProg 64 :=
.seq RemovedBody138_95 RemovedBody138_144

def RemovedBody138_146 : StackLang.HolProg 64 :=
.seq RemovedBody138_92 RemovedBody138_145

def RemovedBody138_147 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody138_148 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody138_149 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 1 0
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 128#64)))

def RemovedBody138_150 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody138_151 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody138_152 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 3

def RemovedBody138_153 : StackLang.HolProg 64 :=
.seq RemovedBody138_151 RemovedBody138_152

def RemovedBody138_154 : StackLang.HolProg 64 :=
.seq RemovedBody138_150 RemovedBody138_153

def RemovedBody138_155 : StackLang.HolProg 64 :=
.seq RemovedBody138_149 RemovedBody138_154

def RemovedBody138_156 : StackLang.HolProg 64 :=
.seq RemovedBody138_148 RemovedBody138_155

def RemovedBody138_157 : StackLang.HolProg 64 :=
.seq RemovedBody138_147 RemovedBody138_156

def RemovedBody138_158 : StackLang.HolProg 64 :=
.seq RemovedBody138_146 RemovedBody138_157

def RemovedBody138_159 : StackLang.HolProg 64 :=
.seq RemovedBody138_91 RemovedBody138_158

def RemovedBody138_160 : StackLang.HolProg 64 :=
.seq RemovedBody138_88 RemovedBody138_159

def RemovedBody138_161 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody138_162 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.notEqual) 1 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 0) RemovedBody138_160 RemovedBody138_161

def RemovedBody138_163 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody138_164 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody138_165 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 1 2
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 2)))

def RemovedBody138_166 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 0 0#64)

def RemovedBody138_167 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody138_168 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody138_169 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody138_170 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 99#64)

def RemovedBody138_171 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody138_172 : StackLang.HolProg 64 :=
.seq RemovedBody138_170 RemovedBody138_171

def RemovedBody138_173 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody138_174 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 2#64)

def RemovedBody138_175 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 1

def RemovedBody138_176 : StackLang.HolProg 64 :=
.seq RemovedBody138_174 RemovedBody138_175

def RemovedBody138_177 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody138_178 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) RemovedBody138_176 RemovedBody138_177

def RemovedBody138_179 : StackLang.HolProg 64 :=
.seq RemovedBody138_173 RemovedBody138_178

def RemovedBody138_180 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def RemovedBody138_181 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody138_182 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 138 7

def RemovedBody138_183 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody138_184 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody138_185 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody138_186 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody138_187 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def RemovedBody138_188 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def RemovedBody138_189 : StackLang.HolProg 64 :=
.seq RemovedBody138_187 RemovedBody138_188

def RemovedBody138_190 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def RemovedBody138_191 : StackLang.HolProg 64 :=
.seq RemovedBody138_189 RemovedBody138_190

def RemovedBody138_192 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody138_193 : StackLang.HolProg 64 :=
.seq RemovedBody138_191 RemovedBody138_192

def RemovedBody138_194 : StackLang.HolProg 64 :=
.seq RemovedBody138_186 RemovedBody138_193

def RemovedBody138_195 : StackLang.HolProg 64 :=
.seq RemovedBody138_185 RemovedBody138_194

def RemovedBody138_196 : StackLang.HolProg 64 :=
.seq RemovedBody138_184 RemovedBody138_195

def RemovedBody138_197 : StackLang.HolProg 64 :=
.seq RemovedBody138_183 RemovedBody138_196

def RemovedBody138_198 : StackLang.HolProg 64 :=
.seq RemovedBody138_182 RemovedBody138_197

def RemovedBody138_199 : StackLang.HolProg 64 :=
.seq RemovedBody138_181 RemovedBody138_198

def RemovedBody138_200 : StackLang.HolProg 64 :=
.seq RemovedBody138_180 RemovedBody138_199

def RemovedBody138_201 : StackLang.HolProg 64 :=
.seq RemovedBody138_179 RemovedBody138_200

def RemovedBody138_202 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody138_203 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody138_204 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody138_205 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody138_206 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody138_207 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody138_208 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 2 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def RemovedBody138_209 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 3
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody138_210 : StackLang.HolProg 64 :=
.seq RemovedBody138_208 RemovedBody138_209

def RemovedBody138_211 : StackLang.HolProg 64 :=
.seq RemovedBody138_207 RemovedBody138_210

def RemovedBody138_212 : StackLang.HolProg 64 :=
.seq RemovedBody138_206 RemovedBody138_211

def RemovedBody138_213 : StackLang.HolProg 64 :=
.seq RemovedBody138_205 RemovedBody138_212

def RemovedBody138_214 : StackLang.HolProg 64 :=
.seq RemovedBody138_204 RemovedBody138_213

def RemovedBody138_215 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 3
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody138_216 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def RemovedBody138_217 : StackLang.HolProg 64 :=
.seq RemovedBody138_215 RemovedBody138_216

def RemovedBody138_218 : StackLang.HolProg 64 :=
.call (some (RemovedBody138_214, 0, 138, 6)) (Sum.inl 137) (some (RemovedBody138_217, 138, 7))

def RemovedBody138_219 : StackLang.HolProg 64 :=
.seq RemovedBody138_203 RemovedBody138_218

def RemovedBody138_220 : StackLang.HolProg 64 :=
.seq RemovedBody138_202 RemovedBody138_219

def RemovedBody138_221 : StackLang.HolProg 64 :=
.seq RemovedBody138_201 RemovedBody138_220

def RemovedBody138_222 : StackLang.HolProg 64 :=
.seq RemovedBody138_172 RemovedBody138_221

def RemovedBody138_223 : StackLang.HolProg 64 :=
.seq RemovedBody138_169 RemovedBody138_222

def RemovedBody138_224 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody138_225 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody138_226 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 1 2
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 64#64)))

def RemovedBody138_227 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody138_228 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody138_229 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 3

def RemovedBody138_230 : StackLang.HolProg 64 :=
.seq RemovedBody138_228 RemovedBody138_229

def RemovedBody138_231 : StackLang.HolProg 64 :=
.seq RemovedBody138_227 RemovedBody138_230

def RemovedBody138_232 : StackLang.HolProg 64 :=
.seq RemovedBody138_226 RemovedBody138_231

def RemovedBody138_233 : StackLang.HolProg 64 :=
.seq RemovedBody138_225 RemovedBody138_232

def RemovedBody138_234 : StackLang.HolProg 64 :=
.seq RemovedBody138_224 RemovedBody138_233

def RemovedBody138_235 : StackLang.HolProg 64 :=
.seq RemovedBody138_223 RemovedBody138_234

def RemovedBody138_236 : StackLang.HolProg 64 :=
.seq RemovedBody138_168 RemovedBody138_235

def RemovedBody138_237 : StackLang.HolProg 64 :=
.seq RemovedBody138_167 RemovedBody138_236

def RemovedBody138_238 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody138_239 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.notEqual) 1 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 0) RemovedBody138_237 RemovedBody138_238

def RemovedBody138_240 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody138_241 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody138_242 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 1 5
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 5)))

def RemovedBody138_243 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody138_244 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody138_245 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.rawCall 137

def RemovedBody138_246 : StackLang.HolProg 64 :=
.seq RemovedBody138_244 RemovedBody138_245

def RemovedBody138_247 : StackLang.HolProg 64 :=
.seq RemovedBody138_243 RemovedBody138_246

def RemovedBody138_248 : StackLang.HolProg 64 :=
.seq RemovedBody138_242 RemovedBody138_247

def RemovedBody138_249 : StackLang.HolProg 64 :=
.seq RemovedBody138_241 RemovedBody138_248

def RemovedBody138_250 : StackLang.HolProg 64 :=
.seq RemovedBody138_240 RemovedBody138_249

def RemovedBody138_251 : StackLang.HolProg 64 :=
.seq RemovedBody138_239 RemovedBody138_250

def RemovedBody138_252 : StackLang.HolProg 64 :=
.seq RemovedBody138_166 RemovedBody138_251

def RemovedBody138_253 : StackLang.HolProg 64 :=
.seq RemovedBody138_165 RemovedBody138_252

def RemovedBody138_254 : StackLang.HolProg 64 :=
.seq RemovedBody138_164 RemovedBody138_253

def RemovedBody138_255 : StackLang.HolProg 64 :=
.seq RemovedBody138_163 RemovedBody138_254

def RemovedBody138_256 : StackLang.HolProg 64 :=
.seq RemovedBody138_162 RemovedBody138_255

def RemovedBody138_257 : StackLang.HolProg 64 :=
.seq RemovedBody138_87 RemovedBody138_256

def RemovedBody138_258 : StackLang.HolProg 64 :=
.seq RemovedBody138_86 RemovedBody138_257

def RemovedBody138_259 : StackLang.HolProg 64 :=
.seq RemovedBody138_85 RemovedBody138_258

def RemovedBody138_260 : StackLang.HolProg 64 :=
.seq RemovedBody138_84 RemovedBody138_259

def RemovedBody138_261 : StackLang.HolProg 64 :=
.seq RemovedBody138_83 RemovedBody138_260

def RemovedBody138_262 : StackLang.HolProg 64 :=
.seq RemovedBody138_8 RemovedBody138_261

def RemovedBody138_263 : StackLang.HolProg 64 :=
.seq RemovedBody138_7 RemovedBody138_262

def RemovedBody138_264 : StackLang.HolProg 64 :=
.seq RemovedBody138_6 RemovedBody138_263

def Removed138 : Nat × StackLang.HolProg 64 := (138, RemovedBody138_264)
theorem Removed138_eq : StackRemove.progComp false riscvConfig.addrOffset (riscvConfig.regCount - (riscvConfig.avoidRegs.length + 3)) Alloc138 = Removed138 := by
  kernel_rfl
#print axioms Removed138_eq
end InitECandidate.Proofs.BackendStages
