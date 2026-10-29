import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.BackendStages.Alloc782
import Flapjack.Compiler.Backend.Backend
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
namespace InitECandidate.Proofs.BackendStages
def RemovedBody782_0 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 120#64)))

def RemovedBody782_1 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 2#64)

def RemovedBody782_2 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 1

def RemovedBody782_3 : StackLang.HolProg 64 :=
.seq RemovedBody782_1 RemovedBody782_2

def RemovedBody782_4 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody782_5 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) RemovedBody782_3 RemovedBody782_4

def RemovedBody782_6 : StackLang.HolProg 64 :=
.seq RemovedBody782_0 RemovedBody782_5

def RemovedBody782_7 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 112#64))

def RemovedBody782_8 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 2
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 104#64))

def RemovedBody782_9 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 48#64))

def RemovedBody782_10 : StackLang.HolProg 64 :=
.seq RemovedBody782_8 RemovedBody782_9

def RemovedBody782_11 : StackLang.HolProg 64 :=
.seq RemovedBody782_7 RemovedBody782_10

def RemovedBody782_12 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody782_13 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 3550#64)

def RemovedBody782_14 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody782_15 : StackLang.HolProg 64 :=
.seq RemovedBody782_13 RemovedBody782_14

def RemovedBody782_16 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody782_17 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 2#64)

def RemovedBody782_18 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 1

def RemovedBody782_19 : StackLang.HolProg 64 :=
.seq RemovedBody782_17 RemovedBody782_18

def RemovedBody782_20 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody782_21 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) RemovedBody782_19 RemovedBody782_20

def RemovedBody782_22 : StackLang.HolProg 64 :=
.seq RemovedBody782_16 RemovedBody782_21

def RemovedBody782_23 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def RemovedBody782_24 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody782_25 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 782 3

def RemovedBody782_26 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody782_27 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody782_28 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody782_29 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody782_30 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def RemovedBody782_31 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def RemovedBody782_32 : StackLang.HolProg 64 :=
.seq RemovedBody782_30 RemovedBody782_31

def RemovedBody782_33 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def RemovedBody782_34 : StackLang.HolProg 64 :=
.seq RemovedBody782_32 RemovedBody782_33

def RemovedBody782_35 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody782_36 : StackLang.HolProg 64 :=
.seq RemovedBody782_34 RemovedBody782_35

def RemovedBody782_37 : StackLang.HolProg 64 :=
.seq RemovedBody782_29 RemovedBody782_36

def RemovedBody782_38 : StackLang.HolProg 64 :=
.seq RemovedBody782_28 RemovedBody782_37

def RemovedBody782_39 : StackLang.HolProg 64 :=
.seq RemovedBody782_27 RemovedBody782_38

def RemovedBody782_40 : StackLang.HolProg 64 :=
.seq RemovedBody782_26 RemovedBody782_39

def RemovedBody782_41 : StackLang.HolProg 64 :=
.seq RemovedBody782_25 RemovedBody782_40

def RemovedBody782_42 : StackLang.HolProg 64 :=
.seq RemovedBody782_24 RemovedBody782_41

def RemovedBody782_43 : StackLang.HolProg 64 :=
.seq RemovedBody782_23 RemovedBody782_42

def RemovedBody782_44 : StackLang.HolProg 64 :=
.seq RemovedBody782_22 RemovedBody782_43

def RemovedBody782_45 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody782_46 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody782_47 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody782_48 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody782_49 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody782_50 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody782_51 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 0 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def RemovedBody782_52 : StackLang.HolProg 64 :=
.seq RemovedBody782_50 RemovedBody782_51

def RemovedBody782_53 : StackLang.HolProg 64 :=
.seq RemovedBody782_49 RemovedBody782_52

def RemovedBody782_54 : StackLang.HolProg 64 :=
.seq RemovedBody782_48 RemovedBody782_53

def RemovedBody782_55 : StackLang.HolProg 64 :=
.seq RemovedBody782_47 RemovedBody782_54

def RemovedBody782_56 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody782_57 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def RemovedBody782_58 : StackLang.HolProg 64 :=
.seq RemovedBody782_56 RemovedBody782_57

def RemovedBody782_59 : StackLang.HolProg 64 :=
.call (some (RemovedBody782_55, 0, 782, 2)) (Sum.inl 69) (some (RemovedBody782_58, 782, 3))

def RemovedBody782_60 : StackLang.HolProg 64 :=
.seq RemovedBody782_46 RemovedBody782_59

def RemovedBody782_61 : StackLang.HolProg 64 :=
.seq RemovedBody782_45 RemovedBody782_60

def RemovedBody782_62 : StackLang.HolProg 64 :=
.seq RemovedBody782_44 RemovedBody782_61

def RemovedBody782_63 : StackLang.HolProg 64 :=
.seq RemovedBody782_15 RemovedBody782_62

def RemovedBody782_64 : StackLang.HolProg 64 :=
.seq RemovedBody782_12 RemovedBody782_63

def RemovedBody782_65 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody782_66 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 768#64)

def RemovedBody782_67 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody782_68 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody782_69 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 3551#64)

def RemovedBody782_70 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody782_71 : StackLang.HolProg 64 :=
.seq RemovedBody782_69 RemovedBody782_70

def RemovedBody782_72 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody782_73 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 2#64)

def RemovedBody782_74 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 1

def RemovedBody782_75 : StackLang.HolProg 64 :=
.seq RemovedBody782_73 RemovedBody782_74

def RemovedBody782_76 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody782_77 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) RemovedBody782_75 RemovedBody782_76

def RemovedBody782_78 : StackLang.HolProg 64 :=
.seq RemovedBody782_72 RemovedBody782_77

def RemovedBody782_79 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def RemovedBody782_80 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody782_81 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 782 5

def RemovedBody782_82 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody782_83 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody782_84 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody782_85 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody782_86 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def RemovedBody782_87 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def RemovedBody782_88 : StackLang.HolProg 64 :=
.seq RemovedBody782_86 RemovedBody782_87

def RemovedBody782_89 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def RemovedBody782_90 : StackLang.HolProg 64 :=
.seq RemovedBody782_88 RemovedBody782_89

def RemovedBody782_91 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody782_92 : StackLang.HolProg 64 :=
.seq RemovedBody782_90 RemovedBody782_91

def RemovedBody782_93 : StackLang.HolProg 64 :=
.seq RemovedBody782_85 RemovedBody782_92

def RemovedBody782_94 : StackLang.HolProg 64 :=
.seq RemovedBody782_84 RemovedBody782_93

def RemovedBody782_95 : StackLang.HolProg 64 :=
.seq RemovedBody782_83 RemovedBody782_94

def RemovedBody782_96 : StackLang.HolProg 64 :=
.seq RemovedBody782_82 RemovedBody782_95

def RemovedBody782_97 : StackLang.HolProg 64 :=
.seq RemovedBody782_81 RemovedBody782_96

def RemovedBody782_98 : StackLang.HolProg 64 :=
.seq RemovedBody782_80 RemovedBody782_97

def RemovedBody782_99 : StackLang.HolProg 64 :=
.seq RemovedBody782_79 RemovedBody782_98

def RemovedBody782_100 : StackLang.HolProg 64 :=
.seq RemovedBody782_78 RemovedBody782_99

def RemovedBody782_101 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody782_102 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody782_103 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody782_104 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody782_105 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody782_106 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody782_107 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 0 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def RemovedBody782_108 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 2
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 104#64))

def RemovedBody782_109 : StackLang.HolProg 64 :=
.seq RemovedBody782_107 RemovedBody782_108

def RemovedBody782_110 : StackLang.HolProg 64 :=
.seq RemovedBody782_106 RemovedBody782_109

def RemovedBody782_111 : StackLang.HolProg 64 :=
.seq RemovedBody782_105 RemovedBody782_110

def RemovedBody782_112 : StackLang.HolProg 64 :=
.seq RemovedBody782_104 RemovedBody782_111

def RemovedBody782_113 : StackLang.HolProg 64 :=
.seq RemovedBody782_103 RemovedBody782_112

def RemovedBody782_114 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 2
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 104#64))

def RemovedBody782_115 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def RemovedBody782_116 : StackLang.HolProg 64 :=
.seq RemovedBody782_114 RemovedBody782_115

def RemovedBody782_117 : StackLang.HolProg 64 :=
.call (some (RemovedBody782_113, 0, 782, 4)) (Sum.inl 68) (some (RemovedBody782_116, 782, 5))

def RemovedBody782_118 : StackLang.HolProg 64 :=
.seq RemovedBody782_102 RemovedBody782_117

def RemovedBody782_119 : StackLang.HolProg 64 :=
.seq RemovedBody782_101 RemovedBody782_118

def RemovedBody782_120 : StackLang.HolProg 64 :=
.seq RemovedBody782_100 RemovedBody782_119

def RemovedBody782_121 : StackLang.HolProg 64 :=
.seq RemovedBody782_71 RemovedBody782_120

def RemovedBody782_122 : StackLang.HolProg 64 :=
.seq RemovedBody782_68 RemovedBody782_121

def RemovedBody782_123 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody782_124 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 1 0
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 0)))

def RemovedBody782_125 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 9 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 96#64)))

def RemovedBody782_126 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody782_127 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 5 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 192#64)))

def RemovedBody782_128 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody782_129 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 3 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 288#64)))

def RemovedBody782_130 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody782_131 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 4 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 384#64)))

def RemovedBody782_132 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody782_133 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 0 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 480#64)))

def RemovedBody782_134 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody782_135 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 8 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 576#64)))

def RemovedBody782_136 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody782_137 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 7 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 672#64)))

def RemovedBody782_138 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody782_139 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 6 2
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 96#64)))

def RemovedBody782_140 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody782_141 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 10 2
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 192#64)))

def RemovedBody782_142 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 104#64))

def RemovedBody782_143 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 3
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 96#64))

def RemovedBody782_144 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 4
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 88#64))

def RemovedBody782_145 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 5
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 80#64))

def RemovedBody782_146 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 6
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 72#64))

def RemovedBody782_147 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 7
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 64#64))

def RemovedBody782_148 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 2
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 56#64))

def RemovedBody782_149 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 8
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 40#64))

def RemovedBody782_150 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 9
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 32#64))

def RemovedBody782_151 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 24#64))

def RemovedBody782_152 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 10
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody782_153 : StackLang.HolProg 64 :=
.seq RemovedBody782_151 RemovedBody782_152

def RemovedBody782_154 : StackLang.HolProg 64 :=
.seq RemovedBody782_150 RemovedBody782_153

def RemovedBody782_155 : StackLang.HolProg 64 :=
.seq RemovedBody782_149 RemovedBody782_154

def RemovedBody782_156 : StackLang.HolProg 64 :=
.seq RemovedBody782_148 RemovedBody782_155

def RemovedBody782_157 : StackLang.HolProg 64 :=
.seq RemovedBody782_147 RemovedBody782_156

def RemovedBody782_158 : StackLang.HolProg 64 :=
.seq RemovedBody782_146 RemovedBody782_157

def RemovedBody782_159 : StackLang.HolProg 64 :=
.seq RemovedBody782_145 RemovedBody782_158

def RemovedBody782_160 : StackLang.HolProg 64 :=
.seq RemovedBody782_144 RemovedBody782_159

def RemovedBody782_161 : StackLang.HolProg 64 :=
.seq RemovedBody782_143 RemovedBody782_160

def RemovedBody782_162 : StackLang.HolProg 64 :=
.seq RemovedBody782_142 RemovedBody782_161

def RemovedBody782_163 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody782_164 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 3552#64)

def RemovedBody782_165 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody782_166 : StackLang.HolProg 64 :=
.seq RemovedBody782_164 RemovedBody782_165

def RemovedBody782_167 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody782_168 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 2#64)

def RemovedBody782_169 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 1

def RemovedBody782_170 : StackLang.HolProg 64 :=
.seq RemovedBody782_168 RemovedBody782_169

def RemovedBody782_171 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody782_172 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) RemovedBody782_170 RemovedBody782_171

def RemovedBody782_173 : StackLang.HolProg 64 :=
.seq RemovedBody782_167 RemovedBody782_172

def RemovedBody782_174 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def RemovedBody782_175 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody782_176 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 782 7

def RemovedBody782_177 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody782_178 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody782_179 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody782_180 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody782_181 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def RemovedBody782_182 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def RemovedBody782_183 : StackLang.HolProg 64 :=
.seq RemovedBody782_181 RemovedBody782_182

def RemovedBody782_184 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def RemovedBody782_185 : StackLang.HolProg 64 :=
.seq RemovedBody782_183 RemovedBody782_184

def RemovedBody782_186 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody782_187 : StackLang.HolProg 64 :=
.seq RemovedBody782_185 RemovedBody782_186

def RemovedBody782_188 : StackLang.HolProg 64 :=
.seq RemovedBody782_180 RemovedBody782_187

def RemovedBody782_189 : StackLang.HolProg 64 :=
.seq RemovedBody782_179 RemovedBody782_188

def RemovedBody782_190 : StackLang.HolProg 64 :=
.seq RemovedBody782_178 RemovedBody782_189

def RemovedBody782_191 : StackLang.HolProg 64 :=
.seq RemovedBody782_177 RemovedBody782_190

def RemovedBody782_192 : StackLang.HolProg 64 :=
.seq RemovedBody782_176 RemovedBody782_191

def RemovedBody782_193 : StackLang.HolProg 64 :=
.seq RemovedBody782_175 RemovedBody782_192

def RemovedBody782_194 : StackLang.HolProg 64 :=
.seq RemovedBody782_174 RemovedBody782_193

def RemovedBody782_195 : StackLang.HolProg 64 :=
.seq RemovedBody782_173 RemovedBody782_194

def RemovedBody782_196 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody782_197 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody782_198 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody782_199 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody782_200 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody782_201 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody782_202 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 104#64))

def RemovedBody782_203 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 3
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 24#64))

def RemovedBody782_204 : StackLang.HolProg 64 :=
.seq RemovedBody782_202 RemovedBody782_203

def RemovedBody782_205 : StackLang.HolProg 64 :=
.seq RemovedBody782_201 RemovedBody782_204

def RemovedBody782_206 : StackLang.HolProg 64 :=
.seq RemovedBody782_200 RemovedBody782_205

def RemovedBody782_207 : StackLang.HolProg 64 :=
.seq RemovedBody782_199 RemovedBody782_206

def RemovedBody782_208 : StackLang.HolProg 64 :=
.seq RemovedBody782_198 RemovedBody782_207

def RemovedBody782_209 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 104#64))

def RemovedBody782_210 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 3
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 24#64))

def RemovedBody782_211 : StackLang.HolProg 64 :=
.seq RemovedBody782_209 RemovedBody782_210

def RemovedBody782_212 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def RemovedBody782_213 : StackLang.HolProg 64 :=
.seq RemovedBody782_211 RemovedBody782_212

def RemovedBody782_214 : StackLang.HolProg 64 :=
.call (some (RemovedBody782_208, 0, 782, 6)) (Sum.inl 740) (some (RemovedBody782_213, 782, 7))

def RemovedBody782_215 : StackLang.HolProg 64 :=
.seq RemovedBody782_197 RemovedBody782_214

def RemovedBody782_216 : StackLang.HolProg 64 :=
.seq RemovedBody782_196 RemovedBody782_215

def RemovedBody782_217 : StackLang.HolProg 64 :=
.seq RemovedBody782_195 RemovedBody782_216

def RemovedBody782_218 : StackLang.HolProg 64 :=
.seq RemovedBody782_166 RemovedBody782_217

def RemovedBody782_219 : StackLang.HolProg 64 :=
.seq RemovedBody782_163 RemovedBody782_218

def RemovedBody782_220 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody782_221 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 1 0
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 0)))

def RemovedBody782_222 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 2 3
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 3)))

def RemovedBody782_223 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 104#64))

def RemovedBody782_224 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 3
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 24#64))

def RemovedBody782_225 : StackLang.HolProg 64 :=
.seq RemovedBody782_223 RemovedBody782_224

def RemovedBody782_226 : StackLang.HolProg 64 :=
.seq RemovedBody782_222 RemovedBody782_225

def RemovedBody782_227 : StackLang.HolProg 64 :=
.seq RemovedBody782_221 RemovedBody782_226

def RemovedBody782_228 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody782_229 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 3553#64)

def RemovedBody782_230 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody782_231 : StackLang.HolProg 64 :=
.seq RemovedBody782_229 RemovedBody782_230

def RemovedBody782_232 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody782_233 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 2#64)

def RemovedBody782_234 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 1

def RemovedBody782_235 : StackLang.HolProg 64 :=
.seq RemovedBody782_233 RemovedBody782_234

def RemovedBody782_236 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody782_237 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) RemovedBody782_235 RemovedBody782_236

def RemovedBody782_238 : StackLang.HolProg 64 :=
.seq RemovedBody782_232 RemovedBody782_237

def RemovedBody782_239 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def RemovedBody782_240 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody782_241 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 782 9

def RemovedBody782_242 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody782_243 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody782_244 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody782_245 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody782_246 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def RemovedBody782_247 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def RemovedBody782_248 : StackLang.HolProg 64 :=
.seq RemovedBody782_246 RemovedBody782_247

def RemovedBody782_249 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def RemovedBody782_250 : StackLang.HolProg 64 :=
.seq RemovedBody782_248 RemovedBody782_249

def RemovedBody782_251 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody782_252 : StackLang.HolProg 64 :=
.seq RemovedBody782_250 RemovedBody782_251

def RemovedBody782_253 : StackLang.HolProg 64 :=
.seq RemovedBody782_245 RemovedBody782_252

def RemovedBody782_254 : StackLang.HolProg 64 :=
.seq RemovedBody782_244 RemovedBody782_253

def RemovedBody782_255 : StackLang.HolProg 64 :=
.seq RemovedBody782_243 RemovedBody782_254

def RemovedBody782_256 : StackLang.HolProg 64 :=
.seq RemovedBody782_242 RemovedBody782_255

def RemovedBody782_257 : StackLang.HolProg 64 :=
.seq RemovedBody782_241 RemovedBody782_256

def RemovedBody782_258 : StackLang.HolProg 64 :=
.seq RemovedBody782_240 RemovedBody782_257

def RemovedBody782_259 : StackLang.HolProg 64 :=
.seq RemovedBody782_239 RemovedBody782_258

def RemovedBody782_260 : StackLang.HolProg 64 :=
.seq RemovedBody782_238 RemovedBody782_259

def RemovedBody782_261 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody782_262 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody782_263 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody782_264 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody782_265 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody782_266 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody782_267 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 2
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 104#64))

def RemovedBody782_268 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 3
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 24#64))

def RemovedBody782_269 : StackLang.HolProg 64 :=
.seq RemovedBody782_267 RemovedBody782_268

def RemovedBody782_270 : StackLang.HolProg 64 :=
.seq RemovedBody782_266 RemovedBody782_269

def RemovedBody782_271 : StackLang.HolProg 64 :=
.seq RemovedBody782_265 RemovedBody782_270

def RemovedBody782_272 : StackLang.HolProg 64 :=
.seq RemovedBody782_264 RemovedBody782_271

def RemovedBody782_273 : StackLang.HolProg 64 :=
.seq RemovedBody782_263 RemovedBody782_272

def RemovedBody782_274 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 2
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 104#64))

def RemovedBody782_275 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 3
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 24#64))

def RemovedBody782_276 : StackLang.HolProg 64 :=
.seq RemovedBody782_274 RemovedBody782_275

def RemovedBody782_277 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def RemovedBody782_278 : StackLang.HolProg 64 :=
.seq RemovedBody782_276 RemovedBody782_277

def RemovedBody782_279 : StackLang.HolProg 64 :=
.call (some (RemovedBody782_273, 0, 782, 8)) (Sum.inl 734) (some (RemovedBody782_278, 782, 9))

def RemovedBody782_280 : StackLang.HolProg 64 :=
.seq RemovedBody782_262 RemovedBody782_279

def RemovedBody782_281 : StackLang.HolProg 64 :=
.seq RemovedBody782_261 RemovedBody782_280

def RemovedBody782_282 : StackLang.HolProg 64 :=
.seq RemovedBody782_260 RemovedBody782_281

def RemovedBody782_283 : StackLang.HolProg 64 :=
.seq RemovedBody782_231 RemovedBody782_282

def RemovedBody782_284 : StackLang.HolProg 64 :=
.seq RemovedBody782_228 RemovedBody782_283

def RemovedBody782_285 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody782_286 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 1 3
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 3)))

def RemovedBody782_287 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 2
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 104#64))

def RemovedBody782_288 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 3
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 24#64))

def RemovedBody782_289 : StackLang.HolProg 64 :=
.seq RemovedBody782_287 RemovedBody782_288

def RemovedBody782_290 : StackLang.HolProg 64 :=
.seq RemovedBody782_286 RemovedBody782_289

def RemovedBody782_291 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody782_292 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 3554#64)

def RemovedBody782_293 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody782_294 : StackLang.HolProg 64 :=
.seq RemovedBody782_292 RemovedBody782_293

def RemovedBody782_295 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody782_296 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 2#64)

def RemovedBody782_297 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 1

def RemovedBody782_298 : StackLang.HolProg 64 :=
.seq RemovedBody782_296 RemovedBody782_297

def RemovedBody782_299 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody782_300 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) RemovedBody782_298 RemovedBody782_299

def RemovedBody782_301 : StackLang.HolProg 64 :=
.seq RemovedBody782_295 RemovedBody782_300

def RemovedBody782_302 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def RemovedBody782_303 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody782_304 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 782 11

def RemovedBody782_305 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody782_306 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody782_307 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody782_308 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody782_309 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def RemovedBody782_310 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def RemovedBody782_311 : StackLang.HolProg 64 :=
.seq RemovedBody782_309 RemovedBody782_310

def RemovedBody782_312 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def RemovedBody782_313 : StackLang.HolProg 64 :=
.seq RemovedBody782_311 RemovedBody782_312

def RemovedBody782_314 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody782_315 : StackLang.HolProg 64 :=
.seq RemovedBody782_313 RemovedBody782_314

def RemovedBody782_316 : StackLang.HolProg 64 :=
.seq RemovedBody782_308 RemovedBody782_315

def RemovedBody782_317 : StackLang.HolProg 64 :=
.seq RemovedBody782_307 RemovedBody782_316

def RemovedBody782_318 : StackLang.HolProg 64 :=
.seq RemovedBody782_306 RemovedBody782_317

def RemovedBody782_319 : StackLang.HolProg 64 :=
.seq RemovedBody782_305 RemovedBody782_318

def RemovedBody782_320 : StackLang.HolProg 64 :=
.seq RemovedBody782_304 RemovedBody782_319

def RemovedBody782_321 : StackLang.HolProg 64 :=
.seq RemovedBody782_303 RemovedBody782_320

def RemovedBody782_322 : StackLang.HolProg 64 :=
.seq RemovedBody782_302 RemovedBody782_321

def RemovedBody782_323 : StackLang.HolProg 64 :=
.seq RemovedBody782_301 RemovedBody782_322

def RemovedBody782_324 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody782_325 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody782_326 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody782_327 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody782_328 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody782_329 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody782_330 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 2
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 72#64))

def RemovedBody782_331 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 32#64))

def RemovedBody782_332 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 3
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody782_333 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody782_334 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody782_335 : StackLang.HolProg 64 :=
.seq RemovedBody782_333 RemovedBody782_334

def RemovedBody782_336 : StackLang.HolProg 64 :=
.seq RemovedBody782_332 RemovedBody782_335

def RemovedBody782_337 : StackLang.HolProg 64 :=
.seq RemovedBody782_331 RemovedBody782_336

def RemovedBody782_338 : StackLang.HolProg 64 :=
.seq RemovedBody782_330 RemovedBody782_337

def RemovedBody782_339 : StackLang.HolProg 64 :=
.seq RemovedBody782_329 RemovedBody782_338

def RemovedBody782_340 : StackLang.HolProg 64 :=
.seq RemovedBody782_328 RemovedBody782_339

def RemovedBody782_341 : StackLang.HolProg 64 :=
.seq RemovedBody782_327 RemovedBody782_340

def RemovedBody782_342 : StackLang.HolProg 64 :=
.seq RemovedBody782_326 RemovedBody782_341

def RemovedBody782_343 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 2
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 72#64))

def RemovedBody782_344 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 32#64))

def RemovedBody782_345 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 3
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody782_346 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody782_347 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody782_348 : StackLang.HolProg 64 :=
.seq RemovedBody782_346 RemovedBody782_347

def RemovedBody782_349 : StackLang.HolProg 64 :=
.seq RemovedBody782_345 RemovedBody782_348

def RemovedBody782_350 : StackLang.HolProg 64 :=
.seq RemovedBody782_344 RemovedBody782_349

def RemovedBody782_351 : StackLang.HolProg 64 :=
.seq RemovedBody782_343 RemovedBody782_350

def RemovedBody782_352 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def RemovedBody782_353 : StackLang.HolProg 64 :=
.seq RemovedBody782_351 RemovedBody782_352

def RemovedBody782_354 : StackLang.HolProg 64 :=
.call (some (RemovedBody782_342, 0, 782, 10)) (Sum.inl 734) (some (RemovedBody782_353, 782, 11))

def RemovedBody782_355 : StackLang.HolProg 64 :=
.seq RemovedBody782_325 RemovedBody782_354

def RemovedBody782_356 : StackLang.HolProg 64 :=
.seq RemovedBody782_324 RemovedBody782_355

def RemovedBody782_357 : StackLang.HolProg 64 :=
.seq RemovedBody782_323 RemovedBody782_356

def RemovedBody782_358 : StackLang.HolProg 64 :=
.seq RemovedBody782_294 RemovedBody782_357

def RemovedBody782_359 : StackLang.HolProg 64 :=
.seq RemovedBody782_291 RemovedBody782_358

def RemovedBody782_360 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody782_361 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 1 0
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 0)))

def RemovedBody782_362 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 2
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 72#64))

def RemovedBody782_363 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 32#64))

def RemovedBody782_364 : StackLang.HolProg 64 :=
.seq RemovedBody782_362 RemovedBody782_363

def RemovedBody782_365 : StackLang.HolProg 64 :=
.seq RemovedBody782_361 RemovedBody782_364

def RemovedBody782_366 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody782_367 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 3555#64)

def RemovedBody782_368 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody782_369 : StackLang.HolProg 64 :=
.seq RemovedBody782_367 RemovedBody782_368

def RemovedBody782_370 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody782_371 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 2#64)

def RemovedBody782_372 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 1

def RemovedBody782_373 : StackLang.HolProg 64 :=
.seq RemovedBody782_371 RemovedBody782_372

def RemovedBody782_374 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody782_375 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) RemovedBody782_373 RemovedBody782_374

def RemovedBody782_376 : StackLang.HolProg 64 :=
.seq RemovedBody782_370 RemovedBody782_375

def RemovedBody782_377 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def RemovedBody782_378 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody782_379 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 782 13

def RemovedBody782_380 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody782_381 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody782_382 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody782_383 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody782_384 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def RemovedBody782_385 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def RemovedBody782_386 : StackLang.HolProg 64 :=
.seq RemovedBody782_384 RemovedBody782_385

def RemovedBody782_387 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def RemovedBody782_388 : StackLang.HolProg 64 :=
.seq RemovedBody782_386 RemovedBody782_387

def RemovedBody782_389 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody782_390 : StackLang.HolProg 64 :=
.seq RemovedBody782_388 RemovedBody782_389

def RemovedBody782_391 : StackLang.HolProg 64 :=
.seq RemovedBody782_383 RemovedBody782_390

def RemovedBody782_392 : StackLang.HolProg 64 :=
.seq RemovedBody782_382 RemovedBody782_391

def RemovedBody782_393 : StackLang.HolProg 64 :=
.seq RemovedBody782_381 RemovedBody782_392

def RemovedBody782_394 : StackLang.HolProg 64 :=
.seq RemovedBody782_380 RemovedBody782_393

def RemovedBody782_395 : StackLang.HolProg 64 :=
.seq RemovedBody782_379 RemovedBody782_394

def RemovedBody782_396 : StackLang.HolProg 64 :=
.seq RemovedBody782_378 RemovedBody782_395

def RemovedBody782_397 : StackLang.HolProg 64 :=
.seq RemovedBody782_377 RemovedBody782_396

def RemovedBody782_398 : StackLang.HolProg 64 :=
.seq RemovedBody782_376 RemovedBody782_397

def RemovedBody782_399 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody782_400 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody782_401 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody782_402 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody782_403 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody782_404 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody782_405 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 80#64))

def RemovedBody782_406 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 3
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 72#64))

def RemovedBody782_407 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 2
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 56#64))

def RemovedBody782_408 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 48#64))

def RemovedBody782_409 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 56#64))

def RemovedBody782_410 : StackLang.HolProg 64 :=
.seq RemovedBody782_408 RemovedBody782_409

def RemovedBody782_411 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 40#64))

def RemovedBody782_412 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 48#64))

def RemovedBody782_413 : StackLang.HolProg 64 :=
.seq RemovedBody782_411 RemovedBody782_412

def RemovedBody782_414 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 32#64))

def RemovedBody782_415 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 40#64))

def RemovedBody782_416 : StackLang.HolProg 64 :=
.seq RemovedBody782_414 RemovedBody782_415

def RemovedBody782_417 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 24#64))

def RemovedBody782_418 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 32#64))

def RemovedBody782_419 : StackLang.HolProg 64 :=
.seq RemovedBody782_417 RemovedBody782_418

def RemovedBody782_420 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody782_421 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 24#64))

def RemovedBody782_422 : StackLang.HolProg 64 :=
.seq RemovedBody782_420 RemovedBody782_421

def RemovedBody782_423 : StackLang.HolProg 64 :=
.seq RemovedBody782_419 RemovedBody782_422

def RemovedBody782_424 : StackLang.HolProg 64 :=
.seq RemovedBody782_416 RemovedBody782_423

def RemovedBody782_425 : StackLang.HolProg 64 :=
.seq RemovedBody782_413 RemovedBody782_424

def RemovedBody782_426 : StackLang.HolProg 64 :=
.seq RemovedBody782_410 RemovedBody782_425

def RemovedBody782_427 : StackLang.HolProg 64 :=
.seq RemovedBody782_407 RemovedBody782_426

def RemovedBody782_428 : StackLang.HolProg 64 :=
.seq RemovedBody782_406 RemovedBody782_427

def RemovedBody782_429 : StackLang.HolProg 64 :=
.seq RemovedBody782_405 RemovedBody782_428

def RemovedBody782_430 : StackLang.HolProg 64 :=
.seq RemovedBody782_404 RemovedBody782_429

def RemovedBody782_431 : StackLang.HolProg 64 :=
.seq RemovedBody782_403 RemovedBody782_430

def RemovedBody782_432 : StackLang.HolProg 64 :=
.seq RemovedBody782_402 RemovedBody782_431

def RemovedBody782_433 : StackLang.HolProg 64 :=
.seq RemovedBody782_401 RemovedBody782_432

def RemovedBody782_434 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 80#64))

def RemovedBody782_435 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 3
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 72#64))

def RemovedBody782_436 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 2
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 56#64))

def RemovedBody782_437 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 48#64))

def RemovedBody782_438 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 56#64))

def RemovedBody782_439 : StackLang.HolProg 64 :=
.seq RemovedBody782_437 RemovedBody782_438

def RemovedBody782_440 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 40#64))

def RemovedBody782_441 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 48#64))

def RemovedBody782_442 : StackLang.HolProg 64 :=
.seq RemovedBody782_440 RemovedBody782_441

def RemovedBody782_443 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 32#64))

def RemovedBody782_444 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 40#64))

def RemovedBody782_445 : StackLang.HolProg 64 :=
.seq RemovedBody782_443 RemovedBody782_444

def RemovedBody782_446 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 24#64))

def RemovedBody782_447 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 32#64))

def RemovedBody782_448 : StackLang.HolProg 64 :=
.seq RemovedBody782_446 RemovedBody782_447

def RemovedBody782_449 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody782_450 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 24#64))

def RemovedBody782_451 : StackLang.HolProg 64 :=
.seq RemovedBody782_449 RemovedBody782_450

def RemovedBody782_452 : StackLang.HolProg 64 :=
.seq RemovedBody782_448 RemovedBody782_451

def RemovedBody782_453 : StackLang.HolProg 64 :=
.seq RemovedBody782_445 RemovedBody782_452

def RemovedBody782_454 : StackLang.HolProg 64 :=
.seq RemovedBody782_442 RemovedBody782_453

def RemovedBody782_455 : StackLang.HolProg 64 :=
.seq RemovedBody782_439 RemovedBody782_454

def RemovedBody782_456 : StackLang.HolProg 64 :=
.seq RemovedBody782_436 RemovedBody782_455

def RemovedBody782_457 : StackLang.HolProg 64 :=
.seq RemovedBody782_435 RemovedBody782_456

def RemovedBody782_458 : StackLang.HolProg 64 :=
.seq RemovedBody782_434 RemovedBody782_457

def RemovedBody782_459 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def RemovedBody782_460 : StackLang.HolProg 64 :=
.seq RemovedBody782_458 RemovedBody782_459

def RemovedBody782_461 : StackLang.HolProg 64 :=
.call (some (RemovedBody782_433, 0, 782, 12)) (Sum.inl 739) (some (RemovedBody782_460, 782, 13))

def RemovedBody782_462 : StackLang.HolProg 64 :=
.seq RemovedBody782_400 RemovedBody782_461

def RemovedBody782_463 : StackLang.HolProg 64 :=
.seq RemovedBody782_399 RemovedBody782_462

def RemovedBody782_464 : StackLang.HolProg 64 :=
.seq RemovedBody782_398 RemovedBody782_463

def RemovedBody782_465 : StackLang.HolProg 64 :=
.seq RemovedBody782_369 RemovedBody782_464

def RemovedBody782_466 : StackLang.HolProg 64 :=
.seq RemovedBody782_366 RemovedBody782_465

def RemovedBody782_467 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody782_468 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 1 0
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 0)))

def RemovedBody782_469 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 80#64))

def RemovedBody782_470 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 3
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 72#64))

def RemovedBody782_471 : StackLang.HolProg 64 :=
.seq RemovedBody782_469 RemovedBody782_470

def RemovedBody782_472 : StackLang.HolProg 64 :=
.seq RemovedBody782_468 RemovedBody782_471

def RemovedBody782_473 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody782_474 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 3556#64)

def RemovedBody782_475 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody782_476 : StackLang.HolProg 64 :=
.seq RemovedBody782_474 RemovedBody782_475

def RemovedBody782_477 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody782_478 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 2#64)

def RemovedBody782_479 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 1

def RemovedBody782_480 : StackLang.HolProg 64 :=
.seq RemovedBody782_478 RemovedBody782_479

def RemovedBody782_481 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody782_482 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) RemovedBody782_480 RemovedBody782_481

def RemovedBody782_483 : StackLang.HolProg 64 :=
.seq RemovedBody782_477 RemovedBody782_482

def RemovedBody782_484 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def RemovedBody782_485 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody782_486 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 782 15

def RemovedBody782_487 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody782_488 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody782_489 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody782_490 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody782_491 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def RemovedBody782_492 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def RemovedBody782_493 : StackLang.HolProg 64 :=
.seq RemovedBody782_491 RemovedBody782_492

def RemovedBody782_494 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def RemovedBody782_495 : StackLang.HolProg 64 :=
.seq RemovedBody782_493 RemovedBody782_494

def RemovedBody782_496 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody782_497 : StackLang.HolProg 64 :=
.seq RemovedBody782_495 RemovedBody782_496

def RemovedBody782_498 : StackLang.HolProg 64 :=
.seq RemovedBody782_490 RemovedBody782_497

def RemovedBody782_499 : StackLang.HolProg 64 :=
.seq RemovedBody782_489 RemovedBody782_498

def RemovedBody782_500 : StackLang.HolProg 64 :=
.seq RemovedBody782_488 RemovedBody782_499

def RemovedBody782_501 : StackLang.HolProg 64 :=
.seq RemovedBody782_487 RemovedBody782_500

def RemovedBody782_502 : StackLang.HolProg 64 :=
.seq RemovedBody782_486 RemovedBody782_501

def RemovedBody782_503 : StackLang.HolProg 64 :=
.seq RemovedBody782_485 RemovedBody782_502

def RemovedBody782_504 : StackLang.HolProg 64 :=
.seq RemovedBody782_484 RemovedBody782_503

def RemovedBody782_505 : StackLang.HolProg 64 :=
.seq RemovedBody782_483 RemovedBody782_504

def RemovedBody782_506 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody782_507 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody782_508 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody782_509 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody782_510 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody782_511 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody782_512 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 2
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 80#64))

def RemovedBody782_513 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 3
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 40#64))

def RemovedBody782_514 : StackLang.HolProg 64 :=
.seq RemovedBody782_512 RemovedBody782_513

def RemovedBody782_515 : StackLang.HolProg 64 :=
.seq RemovedBody782_511 RemovedBody782_514

def RemovedBody782_516 : StackLang.HolProg 64 :=
.seq RemovedBody782_510 RemovedBody782_515

def RemovedBody782_517 : StackLang.HolProg 64 :=
.seq RemovedBody782_509 RemovedBody782_516

def RemovedBody782_518 : StackLang.HolProg 64 :=
.seq RemovedBody782_508 RemovedBody782_517

def RemovedBody782_519 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 2
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 80#64))

def RemovedBody782_520 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 3
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 40#64))

def RemovedBody782_521 : StackLang.HolProg 64 :=
.seq RemovedBody782_519 RemovedBody782_520

def RemovedBody782_522 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def RemovedBody782_523 : StackLang.HolProg 64 :=
.seq RemovedBody782_521 RemovedBody782_522

def RemovedBody782_524 : StackLang.HolProg 64 :=
.call (some (RemovedBody782_518, 0, 782, 14)) (Sum.inl 739) (some (RemovedBody782_523, 782, 15))

def RemovedBody782_525 : StackLang.HolProg 64 :=
.seq RemovedBody782_507 RemovedBody782_524

def RemovedBody782_526 : StackLang.HolProg 64 :=
.seq RemovedBody782_506 RemovedBody782_525

def RemovedBody782_527 : StackLang.HolProg 64 :=
.seq RemovedBody782_505 RemovedBody782_526

def RemovedBody782_528 : StackLang.HolProg 64 :=
.seq RemovedBody782_476 RemovedBody782_527

def RemovedBody782_529 : StackLang.HolProg 64 :=
.seq RemovedBody782_473 RemovedBody782_528

def RemovedBody782_530 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody782_531 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 1 2
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 2)))

def RemovedBody782_532 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 2
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 80#64))

def RemovedBody782_533 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 3
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 40#64))

def RemovedBody782_534 : StackLang.HolProg 64 :=
.seq RemovedBody782_532 RemovedBody782_533

def RemovedBody782_535 : StackLang.HolProg 64 :=
.seq RemovedBody782_531 RemovedBody782_534

def RemovedBody782_536 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody782_537 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 3557#64)

def RemovedBody782_538 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody782_539 : StackLang.HolProg 64 :=
.seq RemovedBody782_537 RemovedBody782_538

def RemovedBody782_540 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody782_541 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 2#64)

def RemovedBody782_542 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 1

def RemovedBody782_543 : StackLang.HolProg 64 :=
.seq RemovedBody782_541 RemovedBody782_542

def RemovedBody782_544 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody782_545 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) RemovedBody782_543 RemovedBody782_544

def RemovedBody782_546 : StackLang.HolProg 64 :=
.seq RemovedBody782_540 RemovedBody782_545

def RemovedBody782_547 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def RemovedBody782_548 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody782_549 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 782 17

def RemovedBody782_550 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody782_551 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody782_552 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody782_553 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody782_554 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def RemovedBody782_555 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def RemovedBody782_556 : StackLang.HolProg 64 :=
.seq RemovedBody782_554 RemovedBody782_555

def RemovedBody782_557 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def RemovedBody782_558 : StackLang.HolProg 64 :=
.seq RemovedBody782_556 RemovedBody782_557

def RemovedBody782_559 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody782_560 : StackLang.HolProg 64 :=
.seq RemovedBody782_558 RemovedBody782_559

def RemovedBody782_561 : StackLang.HolProg 64 :=
.seq RemovedBody782_553 RemovedBody782_560

def RemovedBody782_562 : StackLang.HolProg 64 :=
.seq RemovedBody782_552 RemovedBody782_561

def RemovedBody782_563 : StackLang.HolProg 64 :=
.seq RemovedBody782_551 RemovedBody782_562

def RemovedBody782_564 : StackLang.HolProg 64 :=
.seq RemovedBody782_550 RemovedBody782_563

def RemovedBody782_565 : StackLang.HolProg 64 :=
.seq RemovedBody782_549 RemovedBody782_564

def RemovedBody782_566 : StackLang.HolProg 64 :=
.seq RemovedBody782_548 RemovedBody782_565

def RemovedBody782_567 : StackLang.HolProg 64 :=
.seq RemovedBody782_547 RemovedBody782_566

def RemovedBody782_568 : StackLang.HolProg 64 :=
.seq RemovedBody782_546 RemovedBody782_567

def RemovedBody782_569 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody782_570 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody782_571 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody782_572 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody782_573 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody782_574 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody782_575 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 104#64))

def RemovedBody782_576 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 3
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 80#64))

def RemovedBody782_577 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 72#64))

def RemovedBody782_578 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 80#64))

def RemovedBody782_579 : StackLang.HolProg 64 :=
.seq RemovedBody782_577 RemovedBody782_578

def RemovedBody782_580 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 64#64))

def RemovedBody782_581 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 72#64))

def RemovedBody782_582 : StackLang.HolProg 64 :=
.seq RemovedBody782_580 RemovedBody782_581

def RemovedBody782_583 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 56#64))

def RemovedBody782_584 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 64#64))

def RemovedBody782_585 : StackLang.HolProg 64 :=
.seq RemovedBody782_583 RemovedBody782_584

def RemovedBody782_586 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 48#64))

def RemovedBody782_587 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 56#64))

def RemovedBody782_588 : StackLang.HolProg 64 :=
.seq RemovedBody782_586 RemovedBody782_587

def RemovedBody782_589 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 40#64))

def RemovedBody782_590 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 48#64))

def RemovedBody782_591 : StackLang.HolProg 64 :=
.seq RemovedBody782_589 RemovedBody782_590

def RemovedBody782_592 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 32#64))

def RemovedBody782_593 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 40#64))

def RemovedBody782_594 : StackLang.HolProg 64 :=
.seq RemovedBody782_592 RemovedBody782_593

def RemovedBody782_595 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 24#64))

def RemovedBody782_596 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 32#64))

def RemovedBody782_597 : StackLang.HolProg 64 :=
.seq RemovedBody782_595 RemovedBody782_596

def RemovedBody782_598 : StackLang.HolProg 64 :=
.seq RemovedBody782_594 RemovedBody782_597

def RemovedBody782_599 : StackLang.HolProg 64 :=
.seq RemovedBody782_591 RemovedBody782_598

def RemovedBody782_600 : StackLang.HolProg 64 :=
.seq RemovedBody782_588 RemovedBody782_599

def RemovedBody782_601 : StackLang.HolProg 64 :=
.seq RemovedBody782_585 RemovedBody782_600

def RemovedBody782_602 : StackLang.HolProg 64 :=
.seq RemovedBody782_582 RemovedBody782_601

def RemovedBody782_603 : StackLang.HolProg 64 :=
.seq RemovedBody782_579 RemovedBody782_602

def RemovedBody782_604 : StackLang.HolProg 64 :=
.seq RemovedBody782_576 RemovedBody782_603

def RemovedBody782_605 : StackLang.HolProg 64 :=
.seq RemovedBody782_575 RemovedBody782_604

def RemovedBody782_606 : StackLang.HolProg 64 :=
.seq RemovedBody782_574 RemovedBody782_605

def RemovedBody782_607 : StackLang.HolProg 64 :=
.seq RemovedBody782_573 RemovedBody782_606

def RemovedBody782_608 : StackLang.HolProg 64 :=
.seq RemovedBody782_572 RemovedBody782_607

def RemovedBody782_609 : StackLang.HolProg 64 :=
.seq RemovedBody782_571 RemovedBody782_608

def RemovedBody782_610 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 104#64))

def RemovedBody782_611 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 3
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 80#64))

def RemovedBody782_612 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 72#64))

def RemovedBody782_613 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 80#64))

def RemovedBody782_614 : StackLang.HolProg 64 :=
.seq RemovedBody782_612 RemovedBody782_613

def RemovedBody782_615 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 64#64))

def RemovedBody782_616 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 72#64))

def RemovedBody782_617 : StackLang.HolProg 64 :=
.seq RemovedBody782_615 RemovedBody782_616

def RemovedBody782_618 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 56#64))

def RemovedBody782_619 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 64#64))

def RemovedBody782_620 : StackLang.HolProg 64 :=
.seq RemovedBody782_618 RemovedBody782_619

def RemovedBody782_621 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 48#64))

def RemovedBody782_622 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 56#64))

def RemovedBody782_623 : StackLang.HolProg 64 :=
.seq RemovedBody782_621 RemovedBody782_622

def RemovedBody782_624 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 40#64))

def RemovedBody782_625 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 48#64))

def RemovedBody782_626 : StackLang.HolProg 64 :=
.seq RemovedBody782_624 RemovedBody782_625

def RemovedBody782_627 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 32#64))

def RemovedBody782_628 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 40#64))

def RemovedBody782_629 : StackLang.HolProg 64 :=
.seq RemovedBody782_627 RemovedBody782_628

def RemovedBody782_630 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 24#64))

def RemovedBody782_631 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 32#64))

def RemovedBody782_632 : StackLang.HolProg 64 :=
.seq RemovedBody782_630 RemovedBody782_631

def RemovedBody782_633 : StackLang.HolProg 64 :=
.seq RemovedBody782_629 RemovedBody782_632

def RemovedBody782_634 : StackLang.HolProg 64 :=
.seq RemovedBody782_626 RemovedBody782_633

def RemovedBody782_635 : StackLang.HolProg 64 :=
.seq RemovedBody782_623 RemovedBody782_634

def RemovedBody782_636 : StackLang.HolProg 64 :=
.seq RemovedBody782_620 RemovedBody782_635

def RemovedBody782_637 : StackLang.HolProg 64 :=
.seq RemovedBody782_617 RemovedBody782_636

def RemovedBody782_638 : StackLang.HolProg 64 :=
.seq RemovedBody782_614 RemovedBody782_637

def RemovedBody782_639 : StackLang.HolProg 64 :=
.seq RemovedBody782_611 RemovedBody782_638

def RemovedBody782_640 : StackLang.HolProg 64 :=
.seq RemovedBody782_610 RemovedBody782_639

def RemovedBody782_641 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def RemovedBody782_642 : StackLang.HolProg 64 :=
.seq RemovedBody782_640 RemovedBody782_641

def RemovedBody782_643 : StackLang.HolProg 64 :=
.call (some (RemovedBody782_609, 0, 782, 16)) (Sum.inl 739) (some (RemovedBody782_642, 782, 17))

def RemovedBody782_644 : StackLang.HolProg 64 :=
.seq RemovedBody782_570 RemovedBody782_643

def RemovedBody782_645 : StackLang.HolProg 64 :=
.seq RemovedBody782_569 RemovedBody782_644

def RemovedBody782_646 : StackLang.HolProg 64 :=
.seq RemovedBody782_568 RemovedBody782_645

def RemovedBody782_647 : StackLang.HolProg 64 :=
.seq RemovedBody782_539 RemovedBody782_646

def RemovedBody782_648 : StackLang.HolProg 64 :=
.seq RemovedBody782_536 RemovedBody782_647

def RemovedBody782_649 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody782_650 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 1 0
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 0)))

def RemovedBody782_651 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 2 3
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 3)))

def RemovedBody782_652 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 104#64))

def RemovedBody782_653 : StackLang.HolProg 64 :=
.seq RemovedBody782_651 RemovedBody782_652

def RemovedBody782_654 : StackLang.HolProg 64 :=
.seq RemovedBody782_650 RemovedBody782_653

def RemovedBody782_655 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody782_656 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 3558#64)

def RemovedBody782_657 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody782_658 : StackLang.HolProg 64 :=
.seq RemovedBody782_656 RemovedBody782_657

def RemovedBody782_659 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody782_660 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 2#64)

def RemovedBody782_661 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 1

def RemovedBody782_662 : StackLang.HolProg 64 :=
.seq RemovedBody782_660 RemovedBody782_661

def RemovedBody782_663 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody782_664 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) RemovedBody782_662 RemovedBody782_663

def RemovedBody782_665 : StackLang.HolProg 64 :=
.seq RemovedBody782_659 RemovedBody782_664

def RemovedBody782_666 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def RemovedBody782_667 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody782_668 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 782 19

def RemovedBody782_669 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody782_670 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody782_671 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody782_672 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody782_673 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def RemovedBody782_674 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def RemovedBody782_675 : StackLang.HolProg 64 :=
.seq RemovedBody782_673 RemovedBody782_674

def RemovedBody782_676 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def RemovedBody782_677 : StackLang.HolProg 64 :=
.seq RemovedBody782_675 RemovedBody782_676

def RemovedBody782_678 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody782_679 : StackLang.HolProg 64 :=
.seq RemovedBody782_677 RemovedBody782_678

def RemovedBody782_680 : StackLang.HolProg 64 :=
.seq RemovedBody782_672 RemovedBody782_679

def RemovedBody782_681 : StackLang.HolProg 64 :=
.seq RemovedBody782_671 RemovedBody782_680

def RemovedBody782_682 : StackLang.HolProg 64 :=
.seq RemovedBody782_670 RemovedBody782_681

def RemovedBody782_683 : StackLang.HolProg 64 :=
.seq RemovedBody782_669 RemovedBody782_682

def RemovedBody782_684 : StackLang.HolProg 64 :=
.seq RemovedBody782_668 RemovedBody782_683

def RemovedBody782_685 : StackLang.HolProg 64 :=
.seq RemovedBody782_667 RemovedBody782_684

def RemovedBody782_686 : StackLang.HolProg 64 :=
.seq RemovedBody782_666 RemovedBody782_685

def RemovedBody782_687 : StackLang.HolProg 64 :=
.seq RemovedBody782_665 RemovedBody782_686

def RemovedBody782_688 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody782_689 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody782_690 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody782_691 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody782_692 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody782_693 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody782_694 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 3
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 104#64))

def RemovedBody782_695 : StackLang.HolProg 64 :=
.seq RemovedBody782_693 RemovedBody782_694

def RemovedBody782_696 : StackLang.HolProg 64 :=
.seq RemovedBody782_692 RemovedBody782_695

def RemovedBody782_697 : StackLang.HolProg 64 :=
.seq RemovedBody782_691 RemovedBody782_696

def RemovedBody782_698 : StackLang.HolProg 64 :=
.seq RemovedBody782_690 RemovedBody782_697

def RemovedBody782_699 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 3
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 104#64))

def RemovedBody782_700 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def RemovedBody782_701 : StackLang.HolProg 64 :=
.seq RemovedBody782_699 RemovedBody782_700

def RemovedBody782_702 : StackLang.HolProg 64 :=
.call (some (RemovedBody782_698, 0, 782, 18)) (Sum.inl 734) (some (RemovedBody782_701, 782, 19))

def RemovedBody782_703 : StackLang.HolProg 64 :=
.seq RemovedBody782_689 RemovedBody782_702

def RemovedBody782_704 : StackLang.HolProg 64 :=
.seq RemovedBody782_688 RemovedBody782_703

def RemovedBody782_705 : StackLang.HolProg 64 :=
.seq RemovedBody782_687 RemovedBody782_704

def RemovedBody782_706 : StackLang.HolProg 64 :=
.seq RemovedBody782_658 RemovedBody782_705

def RemovedBody782_707 : StackLang.HolProg 64 :=
.seq RemovedBody782_655 RemovedBody782_706

def RemovedBody782_708 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody782_709 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 1 3
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 3)))

def RemovedBody782_710 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 2 3
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 3)))

def RemovedBody782_711 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 3
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 104#64))

def RemovedBody782_712 : StackLang.HolProg 64 :=
.seq RemovedBody782_710 RemovedBody782_711

def RemovedBody782_713 : StackLang.HolProg 64 :=
.seq RemovedBody782_709 RemovedBody782_712

def RemovedBody782_714 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody782_715 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 3559#64)

def RemovedBody782_716 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody782_717 : StackLang.HolProg 64 :=
.seq RemovedBody782_715 RemovedBody782_716

def RemovedBody782_718 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody782_719 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 2#64)

def RemovedBody782_720 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 1

def RemovedBody782_721 : StackLang.HolProg 64 :=
.seq RemovedBody782_719 RemovedBody782_720

def RemovedBody782_722 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody782_723 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) RemovedBody782_721 RemovedBody782_722

def RemovedBody782_724 : StackLang.HolProg 64 :=
.seq RemovedBody782_718 RemovedBody782_723

def RemovedBody782_725 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def RemovedBody782_726 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody782_727 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 782 21

def RemovedBody782_728 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody782_729 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody782_730 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody782_731 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody782_732 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def RemovedBody782_733 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def RemovedBody782_734 : StackLang.HolProg 64 :=
.seq RemovedBody782_732 RemovedBody782_733

def RemovedBody782_735 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def RemovedBody782_736 : StackLang.HolProg 64 :=
.seq RemovedBody782_734 RemovedBody782_735

def RemovedBody782_737 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody782_738 : StackLang.HolProg 64 :=
.seq RemovedBody782_736 RemovedBody782_737

def RemovedBody782_739 : StackLang.HolProg 64 :=
.seq RemovedBody782_731 RemovedBody782_738

def RemovedBody782_740 : StackLang.HolProg 64 :=
.seq RemovedBody782_730 RemovedBody782_739

def RemovedBody782_741 : StackLang.HolProg 64 :=
.seq RemovedBody782_729 RemovedBody782_740

def RemovedBody782_742 : StackLang.HolProg 64 :=
.seq RemovedBody782_728 RemovedBody782_741

def RemovedBody782_743 : StackLang.HolProg 64 :=
.seq RemovedBody782_727 RemovedBody782_742

def RemovedBody782_744 : StackLang.HolProg 64 :=
.seq RemovedBody782_726 RemovedBody782_743

def RemovedBody782_745 : StackLang.HolProg 64 :=
.seq RemovedBody782_725 RemovedBody782_744

def RemovedBody782_746 : StackLang.HolProg 64 :=
.seq RemovedBody782_724 RemovedBody782_745

def RemovedBody782_747 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody782_748 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody782_749 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody782_750 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody782_751 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody782_752 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody782_753 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 3
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 104#64))

def RemovedBody782_754 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 96#64))

def RemovedBody782_755 : StackLang.HolProg 64 :=
.seq RemovedBody782_753 RemovedBody782_754

def RemovedBody782_756 : StackLang.HolProg 64 :=
.seq RemovedBody782_752 RemovedBody782_755

def RemovedBody782_757 : StackLang.HolProg 64 :=
.seq RemovedBody782_751 RemovedBody782_756

def RemovedBody782_758 : StackLang.HolProg 64 :=
.seq RemovedBody782_750 RemovedBody782_757

def RemovedBody782_759 : StackLang.HolProg 64 :=
.seq RemovedBody782_749 RemovedBody782_758

def RemovedBody782_760 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 3
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 104#64))

def RemovedBody782_761 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 96#64))

def RemovedBody782_762 : StackLang.HolProg 64 :=
.seq RemovedBody782_760 RemovedBody782_761

def RemovedBody782_763 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def RemovedBody782_764 : StackLang.HolProg 64 :=
.seq RemovedBody782_762 RemovedBody782_763

def RemovedBody782_765 : StackLang.HolProg 64 :=
.call (some (RemovedBody782_759, 0, 782, 20)) (Sum.inl 734) (some (RemovedBody782_764, 782, 21))

def RemovedBody782_766 : StackLang.HolProg 64 :=
.seq RemovedBody782_748 RemovedBody782_765

def RemovedBody782_767 : StackLang.HolProg 64 :=
.seq RemovedBody782_747 RemovedBody782_766

def RemovedBody782_768 : StackLang.HolProg 64 :=
.seq RemovedBody782_746 RemovedBody782_767

def RemovedBody782_769 : StackLang.HolProg 64 :=
.seq RemovedBody782_717 RemovedBody782_768

def RemovedBody782_770 : StackLang.HolProg 64 :=
.seq RemovedBody782_714 RemovedBody782_769

def RemovedBody782_771 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody782_772 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 1 0
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 0)))

def RemovedBody782_773 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 2 3
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 3)))

def RemovedBody782_774 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 3
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 104#64))

def RemovedBody782_775 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 96#64))

def RemovedBody782_776 : StackLang.HolProg 64 :=
.seq RemovedBody782_774 RemovedBody782_775

def RemovedBody782_777 : StackLang.HolProg 64 :=
.seq RemovedBody782_773 RemovedBody782_776

def RemovedBody782_778 : StackLang.HolProg 64 :=
.seq RemovedBody782_772 RemovedBody782_777

def RemovedBody782_779 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody782_780 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 3560#64)

def RemovedBody782_781 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody782_782 : StackLang.HolProg 64 :=
.seq RemovedBody782_780 RemovedBody782_781

def RemovedBody782_783 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody782_784 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 2#64)

def RemovedBody782_785 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 1

def RemovedBody782_786 : StackLang.HolProg 64 :=
.seq RemovedBody782_784 RemovedBody782_785

def RemovedBody782_787 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody782_788 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) RemovedBody782_786 RemovedBody782_787

def RemovedBody782_789 : StackLang.HolProg 64 :=
.seq RemovedBody782_783 RemovedBody782_788

def RemovedBody782_790 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def RemovedBody782_791 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody782_792 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 782 23

def RemovedBody782_793 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody782_794 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody782_795 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody782_796 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody782_797 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def RemovedBody782_798 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def RemovedBody782_799 : StackLang.HolProg 64 :=
.seq RemovedBody782_797 RemovedBody782_798

def RemovedBody782_800 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def RemovedBody782_801 : StackLang.HolProg 64 :=
.seq RemovedBody782_799 RemovedBody782_800

def RemovedBody782_802 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody782_803 : StackLang.HolProg 64 :=
.seq RemovedBody782_801 RemovedBody782_802

def RemovedBody782_804 : StackLang.HolProg 64 :=
.seq RemovedBody782_796 RemovedBody782_803

def RemovedBody782_805 : StackLang.HolProg 64 :=
.seq RemovedBody782_795 RemovedBody782_804

def RemovedBody782_806 : StackLang.HolProg 64 :=
.seq RemovedBody782_794 RemovedBody782_805

def RemovedBody782_807 : StackLang.HolProg 64 :=
.seq RemovedBody782_793 RemovedBody782_806

def RemovedBody782_808 : StackLang.HolProg 64 :=
.seq RemovedBody782_792 RemovedBody782_807

def RemovedBody782_809 : StackLang.HolProg 64 :=
.seq RemovedBody782_791 RemovedBody782_808

def RemovedBody782_810 : StackLang.HolProg 64 :=
.seq RemovedBody782_790 RemovedBody782_809

def RemovedBody782_811 : StackLang.HolProg 64 :=
.seq RemovedBody782_789 RemovedBody782_810

def RemovedBody782_812 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody782_813 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody782_814 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody782_815 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody782_816 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody782_817 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody782_818 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 56#64))

def RemovedBody782_819 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 2
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 40#64))

def RemovedBody782_820 : StackLang.HolProg 64 :=
.seq RemovedBody782_818 RemovedBody782_819

def RemovedBody782_821 : StackLang.HolProg 64 :=
.seq RemovedBody782_817 RemovedBody782_820

def RemovedBody782_822 : StackLang.HolProg 64 :=
.seq RemovedBody782_816 RemovedBody782_821

def RemovedBody782_823 : StackLang.HolProg 64 :=
.seq RemovedBody782_815 RemovedBody782_822

def RemovedBody782_824 : StackLang.HolProg 64 :=
.seq RemovedBody782_814 RemovedBody782_823

def RemovedBody782_825 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 56#64))

def RemovedBody782_826 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 2
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 40#64))

def RemovedBody782_827 : StackLang.HolProg 64 :=
.seq RemovedBody782_825 RemovedBody782_826

def RemovedBody782_828 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def RemovedBody782_829 : StackLang.HolProg 64 :=
.seq RemovedBody782_827 RemovedBody782_828

def RemovedBody782_830 : StackLang.HolProg 64 :=
.call (some (RemovedBody782_824, 0, 782, 22)) (Sum.inl 734) (some (RemovedBody782_829, 782, 23))

def RemovedBody782_831 : StackLang.HolProg 64 :=
.seq RemovedBody782_813 RemovedBody782_830

def RemovedBody782_832 : StackLang.HolProg 64 :=
.seq RemovedBody782_812 RemovedBody782_831

def RemovedBody782_833 : StackLang.HolProg 64 :=
.seq RemovedBody782_811 RemovedBody782_832

def RemovedBody782_834 : StackLang.HolProg 64 :=
.seq RemovedBody782_782 RemovedBody782_833

def RemovedBody782_835 : StackLang.HolProg 64 :=
.seq RemovedBody782_779 RemovedBody782_834

def RemovedBody782_836 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody782_837 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 1 0
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 0)))

def RemovedBody782_838 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 56#64))

def RemovedBody782_839 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 2
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 40#64))

def RemovedBody782_840 : StackLang.HolProg 64 :=
.seq RemovedBody782_838 RemovedBody782_839

def RemovedBody782_841 : StackLang.HolProg 64 :=
.seq RemovedBody782_837 RemovedBody782_840

def RemovedBody782_842 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody782_843 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 3561#64)

def RemovedBody782_844 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody782_845 : StackLang.HolProg 64 :=
.seq RemovedBody782_843 RemovedBody782_844

def RemovedBody782_846 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody782_847 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 2#64)

def RemovedBody782_848 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 1

def RemovedBody782_849 : StackLang.HolProg 64 :=
.seq RemovedBody782_847 RemovedBody782_848

def RemovedBody782_850 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody782_851 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) RemovedBody782_849 RemovedBody782_850

def RemovedBody782_852 : StackLang.HolProg 64 :=
.seq RemovedBody782_846 RemovedBody782_851

def RemovedBody782_853 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def RemovedBody782_854 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody782_855 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 782 25

def RemovedBody782_856 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody782_857 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody782_858 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody782_859 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody782_860 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def RemovedBody782_861 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def RemovedBody782_862 : StackLang.HolProg 64 :=
.seq RemovedBody782_860 RemovedBody782_861

def RemovedBody782_863 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def RemovedBody782_864 : StackLang.HolProg 64 :=
.seq RemovedBody782_862 RemovedBody782_863

def RemovedBody782_865 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody782_866 : StackLang.HolProg 64 :=
.seq RemovedBody782_864 RemovedBody782_865

def RemovedBody782_867 : StackLang.HolProg 64 :=
.seq RemovedBody782_859 RemovedBody782_866

def RemovedBody782_868 : StackLang.HolProg 64 :=
.seq RemovedBody782_858 RemovedBody782_867

def RemovedBody782_869 : StackLang.HolProg 64 :=
.seq RemovedBody782_857 RemovedBody782_868

def RemovedBody782_870 : StackLang.HolProg 64 :=
.seq RemovedBody782_856 RemovedBody782_869

def RemovedBody782_871 : StackLang.HolProg 64 :=
.seq RemovedBody782_855 RemovedBody782_870

def RemovedBody782_872 : StackLang.HolProg 64 :=
.seq RemovedBody782_854 RemovedBody782_871

def RemovedBody782_873 : StackLang.HolProg 64 :=
.seq RemovedBody782_853 RemovedBody782_872

def RemovedBody782_874 : StackLang.HolProg 64 :=
.seq RemovedBody782_852 RemovedBody782_873

def RemovedBody782_875 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody782_876 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody782_877 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody782_878 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody782_879 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody782_880 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody782_881 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 3
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 96#64))

def RemovedBody782_882 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 2
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 56#64))

def RemovedBody782_883 : StackLang.HolProg 64 :=
.seq RemovedBody782_881 RemovedBody782_882

def RemovedBody782_884 : StackLang.HolProg 64 :=
.seq RemovedBody782_880 RemovedBody782_883

def RemovedBody782_885 : StackLang.HolProg 64 :=
.seq RemovedBody782_879 RemovedBody782_884

def RemovedBody782_886 : StackLang.HolProg 64 :=
.seq RemovedBody782_878 RemovedBody782_885

def RemovedBody782_887 : StackLang.HolProg 64 :=
.seq RemovedBody782_877 RemovedBody782_886

def RemovedBody782_888 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 3
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 96#64))

def RemovedBody782_889 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 2
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 56#64))

def RemovedBody782_890 : StackLang.HolProg 64 :=
.seq RemovedBody782_888 RemovedBody782_889

def RemovedBody782_891 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def RemovedBody782_892 : StackLang.HolProg 64 :=
.seq RemovedBody782_890 RemovedBody782_891

def RemovedBody782_893 : StackLang.HolProg 64 :=
.call (some (RemovedBody782_887, 0, 782, 24)) (Sum.inl 740) (some (RemovedBody782_892, 782, 25))

def RemovedBody782_894 : StackLang.HolProg 64 :=
.seq RemovedBody782_876 RemovedBody782_893

def RemovedBody782_895 : StackLang.HolProg 64 :=
.seq RemovedBody782_875 RemovedBody782_894

def RemovedBody782_896 : StackLang.HolProg 64 :=
.seq RemovedBody782_874 RemovedBody782_895

def RemovedBody782_897 : StackLang.HolProg 64 :=
.seq RemovedBody782_845 RemovedBody782_896

def RemovedBody782_898 : StackLang.HolProg 64 :=
.seq RemovedBody782_842 RemovedBody782_897

def RemovedBody782_899 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody782_900 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 1 3
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 3)))

def RemovedBody782_901 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 3
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 96#64))

def RemovedBody782_902 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 2
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 56#64))

def RemovedBody782_903 : StackLang.HolProg 64 :=
.seq RemovedBody782_901 RemovedBody782_902

def RemovedBody782_904 : StackLang.HolProg 64 :=
.seq RemovedBody782_900 RemovedBody782_903

def RemovedBody782_905 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody782_906 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 3562#64)

def RemovedBody782_907 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody782_908 : StackLang.HolProg 64 :=
.seq RemovedBody782_906 RemovedBody782_907

def RemovedBody782_909 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody782_910 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 2#64)

def RemovedBody782_911 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 1

def RemovedBody782_912 : StackLang.HolProg 64 :=
.seq RemovedBody782_910 RemovedBody782_911

def RemovedBody782_913 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody782_914 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) RemovedBody782_912 RemovedBody782_913

def RemovedBody782_915 : StackLang.HolProg 64 :=
.seq RemovedBody782_909 RemovedBody782_914

def RemovedBody782_916 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def RemovedBody782_917 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody782_918 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 782 27

def RemovedBody782_919 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody782_920 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody782_921 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody782_922 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody782_923 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def RemovedBody782_924 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def RemovedBody782_925 : StackLang.HolProg 64 :=
.seq RemovedBody782_923 RemovedBody782_924

def RemovedBody782_926 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def RemovedBody782_927 : StackLang.HolProg 64 :=
.seq RemovedBody782_925 RemovedBody782_926

def RemovedBody782_928 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody782_929 : StackLang.HolProg 64 :=
.seq RemovedBody782_927 RemovedBody782_928

def RemovedBody782_930 : StackLang.HolProg 64 :=
.seq RemovedBody782_922 RemovedBody782_929

def RemovedBody782_931 : StackLang.HolProg 64 :=
.seq RemovedBody782_921 RemovedBody782_930

def RemovedBody782_932 : StackLang.HolProg 64 :=
.seq RemovedBody782_920 RemovedBody782_931

def RemovedBody782_933 : StackLang.HolProg 64 :=
.seq RemovedBody782_919 RemovedBody782_932

def RemovedBody782_934 : StackLang.HolProg 64 :=
.seq RemovedBody782_918 RemovedBody782_933

def RemovedBody782_935 : StackLang.HolProg 64 :=
.seq RemovedBody782_917 RemovedBody782_934

def RemovedBody782_936 : StackLang.HolProg 64 :=
.seq RemovedBody782_916 RemovedBody782_935

def RemovedBody782_937 : StackLang.HolProg 64 :=
.seq RemovedBody782_915 RemovedBody782_936

def RemovedBody782_938 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody782_939 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody782_940 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody782_941 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody782_942 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody782_943 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody782_944 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 88#64))

def RemovedBody782_945 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 2
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 48#64))

def RemovedBody782_946 : StackLang.HolProg 64 :=
.seq RemovedBody782_944 RemovedBody782_945

def RemovedBody782_947 : StackLang.HolProg 64 :=
.seq RemovedBody782_943 RemovedBody782_946

def RemovedBody782_948 : StackLang.HolProg 64 :=
.seq RemovedBody782_942 RemovedBody782_947

def RemovedBody782_949 : StackLang.HolProg 64 :=
.seq RemovedBody782_941 RemovedBody782_948

def RemovedBody782_950 : StackLang.HolProg 64 :=
.seq RemovedBody782_940 RemovedBody782_949

def RemovedBody782_951 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 88#64))

def RemovedBody782_952 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 2
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 48#64))

def RemovedBody782_953 : StackLang.HolProg 64 :=
.seq RemovedBody782_951 RemovedBody782_952

def RemovedBody782_954 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def RemovedBody782_955 : StackLang.HolProg 64 :=
.seq RemovedBody782_953 RemovedBody782_954

def RemovedBody782_956 : StackLang.HolProg 64 :=
.call (some (RemovedBody782_950, 0, 782, 26)) (Sum.inl 735) (some (RemovedBody782_955, 782, 27))

def RemovedBody782_957 : StackLang.HolProg 64 :=
.seq RemovedBody782_939 RemovedBody782_956

def RemovedBody782_958 : StackLang.HolProg 64 :=
.seq RemovedBody782_938 RemovedBody782_957

def RemovedBody782_959 : StackLang.HolProg 64 :=
.seq RemovedBody782_937 RemovedBody782_958

def RemovedBody782_960 : StackLang.HolProg 64 :=
.seq RemovedBody782_908 RemovedBody782_959

def RemovedBody782_961 : StackLang.HolProg 64 :=
.seq RemovedBody782_905 RemovedBody782_960

def RemovedBody782_962 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody782_963 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 1 0
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 0)))

def RemovedBody782_964 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 88#64))

def RemovedBody782_965 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 2
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 48#64))

def RemovedBody782_966 : StackLang.HolProg 64 :=
.seq RemovedBody782_964 RemovedBody782_965

def RemovedBody782_967 : StackLang.HolProg 64 :=
.seq RemovedBody782_963 RemovedBody782_966

def RemovedBody782_968 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody782_969 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 3563#64)

def RemovedBody782_970 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody782_971 : StackLang.HolProg 64 :=
.seq RemovedBody782_969 RemovedBody782_970

def RemovedBody782_972 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody782_973 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 2#64)

def RemovedBody782_974 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 1

def RemovedBody782_975 : StackLang.HolProg 64 :=
.seq RemovedBody782_973 RemovedBody782_974

def RemovedBody782_976 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody782_977 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) RemovedBody782_975 RemovedBody782_976

def RemovedBody782_978 : StackLang.HolProg 64 :=
.seq RemovedBody782_972 RemovedBody782_977

def RemovedBody782_979 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def RemovedBody782_980 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody782_981 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 782 29

def RemovedBody782_982 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody782_983 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody782_984 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody782_985 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody782_986 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def RemovedBody782_987 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def RemovedBody782_988 : StackLang.HolProg 64 :=
.seq RemovedBody782_986 RemovedBody782_987

def RemovedBody782_989 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def RemovedBody782_990 : StackLang.HolProg 64 :=
.seq RemovedBody782_988 RemovedBody782_989

def RemovedBody782_991 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody782_992 : StackLang.HolProg 64 :=
.seq RemovedBody782_990 RemovedBody782_991

def RemovedBody782_993 : StackLang.HolProg 64 :=
.seq RemovedBody782_985 RemovedBody782_992

def RemovedBody782_994 : StackLang.HolProg 64 :=
.seq RemovedBody782_984 RemovedBody782_993

def RemovedBody782_995 : StackLang.HolProg 64 :=
.seq RemovedBody782_983 RemovedBody782_994

def RemovedBody782_996 : StackLang.HolProg 64 :=
.seq RemovedBody782_982 RemovedBody782_995

def RemovedBody782_997 : StackLang.HolProg 64 :=
.seq RemovedBody782_981 RemovedBody782_996

def RemovedBody782_998 : StackLang.HolProg 64 :=
.seq RemovedBody782_980 RemovedBody782_997

def RemovedBody782_999 : StackLang.HolProg 64 :=
.seq RemovedBody782_979 RemovedBody782_998

def RemovedBody782_1000 : StackLang.HolProg 64 :=
.seq RemovedBody782_978 RemovedBody782_999

def RemovedBody782_1001 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody782_1002 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody782_1003 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody782_1004 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody782_1005 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody782_1006 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody782_1007 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 2
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 96#64))

def RemovedBody782_1008 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 56#64))

def RemovedBody782_1009 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 3
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 48#64))

def RemovedBody782_1010 : StackLang.HolProg 64 :=
.seq RemovedBody782_1008 RemovedBody782_1009

def RemovedBody782_1011 : StackLang.HolProg 64 :=
.seq RemovedBody782_1007 RemovedBody782_1010

def RemovedBody782_1012 : StackLang.HolProg 64 :=
.seq RemovedBody782_1006 RemovedBody782_1011

def RemovedBody782_1013 : StackLang.HolProg 64 :=
.seq RemovedBody782_1005 RemovedBody782_1012

def RemovedBody782_1014 : StackLang.HolProg 64 :=
.seq RemovedBody782_1004 RemovedBody782_1013

def RemovedBody782_1015 : StackLang.HolProg 64 :=
.seq RemovedBody782_1003 RemovedBody782_1014

def RemovedBody782_1016 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 2
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 96#64))

def RemovedBody782_1017 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 56#64))

def RemovedBody782_1018 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 3
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 48#64))

def RemovedBody782_1019 : StackLang.HolProg 64 :=
.seq RemovedBody782_1017 RemovedBody782_1018

def RemovedBody782_1020 : StackLang.HolProg 64 :=
.seq RemovedBody782_1016 RemovedBody782_1019

def RemovedBody782_1021 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def RemovedBody782_1022 : StackLang.HolProg 64 :=
.seq RemovedBody782_1020 RemovedBody782_1021

def RemovedBody782_1023 : StackLang.HolProg 64 :=
.call (some (RemovedBody782_1015, 0, 782, 28)) (Sum.inl 740) (some (RemovedBody782_1022, 782, 29))

def RemovedBody782_1024 : StackLang.HolProg 64 :=
.seq RemovedBody782_1002 RemovedBody782_1023

def RemovedBody782_1025 : StackLang.HolProg 64 :=
.seq RemovedBody782_1001 RemovedBody782_1024

def RemovedBody782_1026 : StackLang.HolProg 64 :=
.seq RemovedBody782_1000 RemovedBody782_1025

def RemovedBody782_1027 : StackLang.HolProg 64 :=
.seq RemovedBody782_971 RemovedBody782_1026

def RemovedBody782_1028 : StackLang.HolProg 64 :=
.seq RemovedBody782_968 RemovedBody782_1027

def RemovedBody782_1029 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody782_1030 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 1 0
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 0)))

def RemovedBody782_1031 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 2
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 96#64))

def RemovedBody782_1032 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 56#64))

def RemovedBody782_1033 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 3
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 48#64))

def RemovedBody782_1034 : StackLang.HolProg 64 :=
.seq RemovedBody782_1032 RemovedBody782_1033

def RemovedBody782_1035 : StackLang.HolProg 64 :=
.seq RemovedBody782_1031 RemovedBody782_1034

def RemovedBody782_1036 : StackLang.HolProg 64 :=
.seq RemovedBody782_1030 RemovedBody782_1035

def RemovedBody782_1037 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody782_1038 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 3564#64)

def RemovedBody782_1039 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody782_1040 : StackLang.HolProg 64 :=
.seq RemovedBody782_1038 RemovedBody782_1039

def RemovedBody782_1041 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody782_1042 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 2#64)

def RemovedBody782_1043 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 1

def RemovedBody782_1044 : StackLang.HolProg 64 :=
.seq RemovedBody782_1042 RemovedBody782_1043

def RemovedBody782_1045 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody782_1046 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) RemovedBody782_1044 RemovedBody782_1045

def RemovedBody782_1047 : StackLang.HolProg 64 :=
.seq RemovedBody782_1041 RemovedBody782_1046

def RemovedBody782_1048 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def RemovedBody782_1049 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody782_1050 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 782 31

def RemovedBody782_1051 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody782_1052 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody782_1053 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody782_1054 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody782_1055 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def RemovedBody782_1056 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def RemovedBody782_1057 : StackLang.HolProg 64 :=
.seq RemovedBody782_1055 RemovedBody782_1056

def RemovedBody782_1058 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def RemovedBody782_1059 : StackLang.HolProg 64 :=
.seq RemovedBody782_1057 RemovedBody782_1058

def RemovedBody782_1060 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody782_1061 : StackLang.HolProg 64 :=
.seq RemovedBody782_1059 RemovedBody782_1060

def RemovedBody782_1062 : StackLang.HolProg 64 :=
.seq RemovedBody782_1054 RemovedBody782_1061

def RemovedBody782_1063 : StackLang.HolProg 64 :=
.seq RemovedBody782_1053 RemovedBody782_1062

def RemovedBody782_1064 : StackLang.HolProg 64 :=
.seq RemovedBody782_1052 RemovedBody782_1063

def RemovedBody782_1065 : StackLang.HolProg 64 :=
.seq RemovedBody782_1051 RemovedBody782_1064

def RemovedBody782_1066 : StackLang.HolProg 64 :=
.seq RemovedBody782_1050 RemovedBody782_1065

def RemovedBody782_1067 : StackLang.HolProg 64 :=
.seq RemovedBody782_1049 RemovedBody782_1066

def RemovedBody782_1068 : StackLang.HolProg 64 :=
.seq RemovedBody782_1048 RemovedBody782_1067

def RemovedBody782_1069 : StackLang.HolProg 64 :=
.seq RemovedBody782_1047 RemovedBody782_1068

def RemovedBody782_1070 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody782_1071 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody782_1072 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody782_1073 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody782_1074 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody782_1075 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody782_1076 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 3
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 56#64))

def RemovedBody782_1077 : StackLang.HolProg 64 :=
.seq RemovedBody782_1075 RemovedBody782_1076

def RemovedBody782_1078 : StackLang.HolProg 64 :=
.seq RemovedBody782_1074 RemovedBody782_1077

def RemovedBody782_1079 : StackLang.HolProg 64 :=
.seq RemovedBody782_1073 RemovedBody782_1078

def RemovedBody782_1080 : StackLang.HolProg 64 :=
.seq RemovedBody782_1072 RemovedBody782_1079

def RemovedBody782_1081 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 3
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 56#64))

def RemovedBody782_1082 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def RemovedBody782_1083 : StackLang.HolProg 64 :=
.seq RemovedBody782_1081 RemovedBody782_1082

def RemovedBody782_1084 : StackLang.HolProg 64 :=
.call (some (RemovedBody782_1080, 0, 782, 30)) (Sum.inl 739) (some (RemovedBody782_1083, 782, 31))

def RemovedBody782_1085 : StackLang.HolProg 64 :=
.seq RemovedBody782_1071 RemovedBody782_1084

def RemovedBody782_1086 : StackLang.HolProg 64 :=
.seq RemovedBody782_1070 RemovedBody782_1085

def RemovedBody782_1087 : StackLang.HolProg 64 :=
.seq RemovedBody782_1069 RemovedBody782_1086

def RemovedBody782_1088 : StackLang.HolProg 64 :=
.seq RemovedBody782_1040 RemovedBody782_1087

def RemovedBody782_1089 : StackLang.HolProg 64 :=
.seq RemovedBody782_1037 RemovedBody782_1088

def RemovedBody782_1090 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody782_1091 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 1 3
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 3)))

def RemovedBody782_1092 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 2 3
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 3)))

def RemovedBody782_1093 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 3
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 56#64))

def RemovedBody782_1094 : StackLang.HolProg 64 :=
.seq RemovedBody782_1092 RemovedBody782_1093

def RemovedBody782_1095 : StackLang.HolProg 64 :=
.seq RemovedBody782_1091 RemovedBody782_1094

def RemovedBody782_1096 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody782_1097 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 3565#64)

def RemovedBody782_1098 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody782_1099 : StackLang.HolProg 64 :=
.seq RemovedBody782_1097 RemovedBody782_1098

def RemovedBody782_1100 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody782_1101 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 2#64)

def RemovedBody782_1102 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 1

def RemovedBody782_1103 : StackLang.HolProg 64 :=
.seq RemovedBody782_1101 RemovedBody782_1102

def RemovedBody782_1104 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody782_1105 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) RemovedBody782_1103 RemovedBody782_1104

def RemovedBody782_1106 : StackLang.HolProg 64 :=
.seq RemovedBody782_1100 RemovedBody782_1105

def RemovedBody782_1107 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def RemovedBody782_1108 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody782_1109 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 782 33

def RemovedBody782_1110 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody782_1111 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody782_1112 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody782_1113 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody782_1114 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def RemovedBody782_1115 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def RemovedBody782_1116 : StackLang.HolProg 64 :=
.seq RemovedBody782_1114 RemovedBody782_1115

def RemovedBody782_1117 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def RemovedBody782_1118 : StackLang.HolProg 64 :=
.seq RemovedBody782_1116 RemovedBody782_1117

def RemovedBody782_1119 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody782_1120 : StackLang.HolProg 64 :=
.seq RemovedBody782_1118 RemovedBody782_1119

def RemovedBody782_1121 : StackLang.HolProg 64 :=
.seq RemovedBody782_1113 RemovedBody782_1120

def RemovedBody782_1122 : StackLang.HolProg 64 :=
.seq RemovedBody782_1112 RemovedBody782_1121

def RemovedBody782_1123 : StackLang.HolProg 64 :=
.seq RemovedBody782_1111 RemovedBody782_1122

def RemovedBody782_1124 : StackLang.HolProg 64 :=
.seq RemovedBody782_1110 RemovedBody782_1123

def RemovedBody782_1125 : StackLang.HolProg 64 :=
.seq RemovedBody782_1109 RemovedBody782_1124

def RemovedBody782_1126 : StackLang.HolProg 64 :=
.seq RemovedBody782_1108 RemovedBody782_1125

def RemovedBody782_1127 : StackLang.HolProg 64 :=
.seq RemovedBody782_1107 RemovedBody782_1126

def RemovedBody782_1128 : StackLang.HolProg 64 :=
.seq RemovedBody782_1106 RemovedBody782_1127

def RemovedBody782_1129 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody782_1130 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody782_1131 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody782_1132 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody782_1133 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody782_1134 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody782_1135 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 2
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 104#64))

def RemovedBody782_1136 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 3
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 96#64))

def RemovedBody782_1137 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 88#64))

def RemovedBody782_1138 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 96#64))

def RemovedBody782_1139 : StackLang.HolProg 64 :=
.seq RemovedBody782_1137 RemovedBody782_1138

def RemovedBody782_1140 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 80#64))

def RemovedBody782_1141 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 88#64))

def RemovedBody782_1142 : StackLang.HolProg 64 :=
.seq RemovedBody782_1140 RemovedBody782_1141

def RemovedBody782_1143 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 72#64))

def RemovedBody782_1144 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 80#64))

def RemovedBody782_1145 : StackLang.HolProg 64 :=
.seq RemovedBody782_1143 RemovedBody782_1144

def RemovedBody782_1146 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 64#64))

def RemovedBody782_1147 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 72#64))

def RemovedBody782_1148 : StackLang.HolProg 64 :=
.seq RemovedBody782_1146 RemovedBody782_1147

def RemovedBody782_1149 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 56#64))

def RemovedBody782_1150 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 64#64))

def RemovedBody782_1151 : StackLang.HolProg 64 :=
.seq RemovedBody782_1149 RemovedBody782_1150

def RemovedBody782_1152 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 48#64))

def RemovedBody782_1153 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 56#64))

def RemovedBody782_1154 : StackLang.HolProg 64 :=
.seq RemovedBody782_1152 RemovedBody782_1153

def RemovedBody782_1155 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 40#64))

def RemovedBody782_1156 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 48#64))

def RemovedBody782_1157 : StackLang.HolProg 64 :=
.seq RemovedBody782_1155 RemovedBody782_1156

def RemovedBody782_1158 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 32#64))

def RemovedBody782_1159 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 40#64))

def RemovedBody782_1160 : StackLang.HolProg 64 :=
.seq RemovedBody782_1158 RemovedBody782_1159

def RemovedBody782_1161 : StackLang.HolProg 64 :=
.seq RemovedBody782_1157 RemovedBody782_1160

def RemovedBody782_1162 : StackLang.HolProg 64 :=
.seq RemovedBody782_1154 RemovedBody782_1161

def RemovedBody782_1163 : StackLang.HolProg 64 :=
.seq RemovedBody782_1151 RemovedBody782_1162

def RemovedBody782_1164 : StackLang.HolProg 64 :=
.seq RemovedBody782_1148 RemovedBody782_1163

def RemovedBody782_1165 : StackLang.HolProg 64 :=
.seq RemovedBody782_1145 RemovedBody782_1164

def RemovedBody782_1166 : StackLang.HolProg 64 :=
.seq RemovedBody782_1142 RemovedBody782_1165

def RemovedBody782_1167 : StackLang.HolProg 64 :=
.seq RemovedBody782_1139 RemovedBody782_1166

def RemovedBody782_1168 : StackLang.HolProg 64 :=
.seq RemovedBody782_1136 RemovedBody782_1167

def RemovedBody782_1169 : StackLang.HolProg 64 :=
.seq RemovedBody782_1135 RemovedBody782_1168

def RemovedBody782_1170 : StackLang.HolProg 64 :=
.seq RemovedBody782_1134 RemovedBody782_1169

def RemovedBody782_1171 : StackLang.HolProg 64 :=
.seq RemovedBody782_1133 RemovedBody782_1170

def RemovedBody782_1172 : StackLang.HolProg 64 :=
.seq RemovedBody782_1132 RemovedBody782_1171

def RemovedBody782_1173 : StackLang.HolProg 64 :=
.seq RemovedBody782_1131 RemovedBody782_1172

def RemovedBody782_1174 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 2
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 104#64))

def RemovedBody782_1175 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 3
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 96#64))

def RemovedBody782_1176 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 88#64))

def RemovedBody782_1177 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 96#64))

def RemovedBody782_1178 : StackLang.HolProg 64 :=
.seq RemovedBody782_1176 RemovedBody782_1177

def RemovedBody782_1179 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 80#64))

def RemovedBody782_1180 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 88#64))

def RemovedBody782_1181 : StackLang.HolProg 64 :=
.seq RemovedBody782_1179 RemovedBody782_1180

def RemovedBody782_1182 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 72#64))

def RemovedBody782_1183 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 80#64))

def RemovedBody782_1184 : StackLang.HolProg 64 :=
.seq RemovedBody782_1182 RemovedBody782_1183

def RemovedBody782_1185 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 64#64))

def RemovedBody782_1186 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 72#64))

def RemovedBody782_1187 : StackLang.HolProg 64 :=
.seq RemovedBody782_1185 RemovedBody782_1186

def RemovedBody782_1188 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 56#64))

def RemovedBody782_1189 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 64#64))

def RemovedBody782_1190 : StackLang.HolProg 64 :=
.seq RemovedBody782_1188 RemovedBody782_1189

def RemovedBody782_1191 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 48#64))

def RemovedBody782_1192 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 56#64))

def RemovedBody782_1193 : StackLang.HolProg 64 :=
.seq RemovedBody782_1191 RemovedBody782_1192

def RemovedBody782_1194 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 40#64))

def RemovedBody782_1195 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 48#64))

def RemovedBody782_1196 : StackLang.HolProg 64 :=
.seq RemovedBody782_1194 RemovedBody782_1195

def RemovedBody782_1197 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 32#64))

def RemovedBody782_1198 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 40#64))

def RemovedBody782_1199 : StackLang.HolProg 64 :=
.seq RemovedBody782_1197 RemovedBody782_1198

def RemovedBody782_1200 : StackLang.HolProg 64 :=
.seq RemovedBody782_1196 RemovedBody782_1199

def RemovedBody782_1201 : StackLang.HolProg 64 :=
.seq RemovedBody782_1193 RemovedBody782_1200

def RemovedBody782_1202 : StackLang.HolProg 64 :=
.seq RemovedBody782_1190 RemovedBody782_1201

def RemovedBody782_1203 : StackLang.HolProg 64 :=
.seq RemovedBody782_1187 RemovedBody782_1202

def RemovedBody782_1204 : StackLang.HolProg 64 :=
.seq RemovedBody782_1184 RemovedBody782_1203

def RemovedBody782_1205 : StackLang.HolProg 64 :=
.seq RemovedBody782_1181 RemovedBody782_1204

def RemovedBody782_1206 : StackLang.HolProg 64 :=
.seq RemovedBody782_1178 RemovedBody782_1205

def RemovedBody782_1207 : StackLang.HolProg 64 :=
.seq RemovedBody782_1175 RemovedBody782_1206

def RemovedBody782_1208 : StackLang.HolProg 64 :=
.seq RemovedBody782_1174 RemovedBody782_1207

def RemovedBody782_1209 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def RemovedBody782_1210 : StackLang.HolProg 64 :=
.seq RemovedBody782_1208 RemovedBody782_1209

def RemovedBody782_1211 : StackLang.HolProg 64 :=
.call (some (RemovedBody782_1173, 0, 782, 32)) (Sum.inl 734) (some (RemovedBody782_1210, 782, 33))

def RemovedBody782_1212 : StackLang.HolProg 64 :=
.seq RemovedBody782_1130 RemovedBody782_1211

def RemovedBody782_1213 : StackLang.HolProg 64 :=
.seq RemovedBody782_1129 RemovedBody782_1212

def RemovedBody782_1214 : StackLang.HolProg 64 :=
.seq RemovedBody782_1128 RemovedBody782_1213

def RemovedBody782_1215 : StackLang.HolProg 64 :=
.seq RemovedBody782_1099 RemovedBody782_1214

def RemovedBody782_1216 : StackLang.HolProg 64 :=
.seq RemovedBody782_1096 RemovedBody782_1215

def RemovedBody782_1217 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody782_1218 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 1 2
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 2)))

def RemovedBody782_1219 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 2
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 104#64))

def RemovedBody782_1220 : StackLang.HolProg 64 :=
.seq RemovedBody782_1218 RemovedBody782_1219

def RemovedBody782_1221 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody782_1222 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 3566#64)

def RemovedBody782_1223 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody782_1224 : StackLang.HolProg 64 :=
.seq RemovedBody782_1222 RemovedBody782_1223

def RemovedBody782_1225 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody782_1226 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 2#64)

def RemovedBody782_1227 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 1

def RemovedBody782_1228 : StackLang.HolProg 64 :=
.seq RemovedBody782_1226 RemovedBody782_1227

def RemovedBody782_1229 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody782_1230 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) RemovedBody782_1228 RemovedBody782_1229

def RemovedBody782_1231 : StackLang.HolProg 64 :=
.seq RemovedBody782_1225 RemovedBody782_1230

def RemovedBody782_1232 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def RemovedBody782_1233 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody782_1234 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 782 35

def RemovedBody782_1235 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody782_1236 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody782_1237 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody782_1238 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody782_1239 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def RemovedBody782_1240 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def RemovedBody782_1241 : StackLang.HolProg 64 :=
.seq RemovedBody782_1239 RemovedBody782_1240

def RemovedBody782_1242 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def RemovedBody782_1243 : StackLang.HolProg 64 :=
.seq RemovedBody782_1241 RemovedBody782_1242

def RemovedBody782_1244 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody782_1245 : StackLang.HolProg 64 :=
.seq RemovedBody782_1243 RemovedBody782_1244

def RemovedBody782_1246 : StackLang.HolProg 64 :=
.seq RemovedBody782_1238 RemovedBody782_1245

def RemovedBody782_1247 : StackLang.HolProg 64 :=
.seq RemovedBody782_1237 RemovedBody782_1246

def RemovedBody782_1248 : StackLang.HolProg 64 :=
.seq RemovedBody782_1236 RemovedBody782_1247

def RemovedBody782_1249 : StackLang.HolProg 64 :=
.seq RemovedBody782_1235 RemovedBody782_1248

def RemovedBody782_1250 : StackLang.HolProg 64 :=
.seq RemovedBody782_1234 RemovedBody782_1249

def RemovedBody782_1251 : StackLang.HolProg 64 :=
.seq RemovedBody782_1233 RemovedBody782_1250

def RemovedBody782_1252 : StackLang.HolProg 64 :=
.seq RemovedBody782_1232 RemovedBody782_1251

def RemovedBody782_1253 : StackLang.HolProg 64 :=
.seq RemovedBody782_1231 RemovedBody782_1252

def RemovedBody782_1254 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody782_1255 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody782_1256 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody782_1257 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody782_1258 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody782_1259 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody782_1260 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 3
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 104#64))

def RemovedBody782_1261 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 80#64))

def RemovedBody782_1262 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 2
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 48#64))

def RemovedBody782_1263 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 40#64))

def RemovedBody782_1264 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 48#64))

def RemovedBody782_1265 : StackLang.HolProg 64 :=
.seq RemovedBody782_1263 RemovedBody782_1264

def RemovedBody782_1266 : StackLang.HolProg 64 :=
.seq RemovedBody782_1262 RemovedBody782_1265

def RemovedBody782_1267 : StackLang.HolProg 64 :=
.seq RemovedBody782_1261 RemovedBody782_1266

def RemovedBody782_1268 : StackLang.HolProg 64 :=
.seq RemovedBody782_1260 RemovedBody782_1267

def RemovedBody782_1269 : StackLang.HolProg 64 :=
.seq RemovedBody782_1259 RemovedBody782_1268

def RemovedBody782_1270 : StackLang.HolProg 64 :=
.seq RemovedBody782_1258 RemovedBody782_1269

def RemovedBody782_1271 : StackLang.HolProg 64 :=
.seq RemovedBody782_1257 RemovedBody782_1270

def RemovedBody782_1272 : StackLang.HolProg 64 :=
.seq RemovedBody782_1256 RemovedBody782_1271

def RemovedBody782_1273 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 3
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 104#64))

def RemovedBody782_1274 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 80#64))

def RemovedBody782_1275 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 2
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 48#64))

def RemovedBody782_1276 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 40#64))

def RemovedBody782_1277 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 48#64))

def RemovedBody782_1278 : StackLang.HolProg 64 :=
.seq RemovedBody782_1276 RemovedBody782_1277

def RemovedBody782_1279 : StackLang.HolProg 64 :=
.seq RemovedBody782_1275 RemovedBody782_1278

def RemovedBody782_1280 : StackLang.HolProg 64 :=
.seq RemovedBody782_1274 RemovedBody782_1279

def RemovedBody782_1281 : StackLang.HolProg 64 :=
.seq RemovedBody782_1273 RemovedBody782_1280

def RemovedBody782_1282 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def RemovedBody782_1283 : StackLang.HolProg 64 :=
.seq RemovedBody782_1281 RemovedBody782_1282

def RemovedBody782_1284 : StackLang.HolProg 64 :=
.call (some (RemovedBody782_1272, 0, 782, 34)) (Sum.inl 735) (some (RemovedBody782_1283, 782, 35))

def RemovedBody782_1285 : StackLang.HolProg 64 :=
.seq RemovedBody782_1255 RemovedBody782_1284

def RemovedBody782_1286 : StackLang.HolProg 64 :=
.seq RemovedBody782_1254 RemovedBody782_1285

def RemovedBody782_1287 : StackLang.HolProg 64 :=
.seq RemovedBody782_1253 RemovedBody782_1286

def RemovedBody782_1288 : StackLang.HolProg 64 :=
.seq RemovedBody782_1224 RemovedBody782_1287

def RemovedBody782_1289 : StackLang.HolProg 64 :=
.seq RemovedBody782_1221 RemovedBody782_1288

def RemovedBody782_1290 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody782_1291 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 1 0
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 0)))

def RemovedBody782_1292 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 3
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 104#64))

def RemovedBody782_1293 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 80#64))

def RemovedBody782_1294 : StackLang.HolProg 64 :=
.seq RemovedBody782_1292 RemovedBody782_1293

def RemovedBody782_1295 : StackLang.HolProg 64 :=
.seq RemovedBody782_1291 RemovedBody782_1294

def RemovedBody782_1296 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody782_1297 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 3567#64)

def RemovedBody782_1298 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody782_1299 : StackLang.HolProg 64 :=
.seq RemovedBody782_1297 RemovedBody782_1298

def RemovedBody782_1300 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody782_1301 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 2#64)

def RemovedBody782_1302 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 1

def RemovedBody782_1303 : StackLang.HolProg 64 :=
.seq RemovedBody782_1301 RemovedBody782_1302

def RemovedBody782_1304 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody782_1305 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) RemovedBody782_1303 RemovedBody782_1304

def RemovedBody782_1306 : StackLang.HolProg 64 :=
.seq RemovedBody782_1300 RemovedBody782_1305

def RemovedBody782_1307 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def RemovedBody782_1308 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody782_1309 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 782 37

def RemovedBody782_1310 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody782_1311 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody782_1312 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody782_1313 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody782_1314 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def RemovedBody782_1315 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def RemovedBody782_1316 : StackLang.HolProg 64 :=
.seq RemovedBody782_1314 RemovedBody782_1315

def RemovedBody782_1317 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def RemovedBody782_1318 : StackLang.HolProg 64 :=
.seq RemovedBody782_1316 RemovedBody782_1317

def RemovedBody782_1319 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody782_1320 : StackLang.HolProg 64 :=
.seq RemovedBody782_1318 RemovedBody782_1319

def RemovedBody782_1321 : StackLang.HolProg 64 :=
.seq RemovedBody782_1313 RemovedBody782_1320

def RemovedBody782_1322 : StackLang.HolProg 64 :=
.seq RemovedBody782_1312 RemovedBody782_1321

def RemovedBody782_1323 : StackLang.HolProg 64 :=
.seq RemovedBody782_1311 RemovedBody782_1322

def RemovedBody782_1324 : StackLang.HolProg 64 :=
.seq RemovedBody782_1310 RemovedBody782_1323

def RemovedBody782_1325 : StackLang.HolProg 64 :=
.seq RemovedBody782_1309 RemovedBody782_1324

def RemovedBody782_1326 : StackLang.HolProg 64 :=
.seq RemovedBody782_1308 RemovedBody782_1325

def RemovedBody782_1327 : StackLang.HolProg 64 :=
.seq RemovedBody782_1307 RemovedBody782_1326

def RemovedBody782_1328 : StackLang.HolProg 64 :=
.seq RemovedBody782_1306 RemovedBody782_1327

def RemovedBody782_1329 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody782_1330 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody782_1331 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody782_1332 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody782_1333 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody782_1334 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody782_1335 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 104#64))

def RemovedBody782_1336 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 2
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 88#64))

def RemovedBody782_1337 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 80#64))

def RemovedBody782_1338 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 88#64))

def RemovedBody782_1339 : StackLang.HolProg 64 :=
.seq RemovedBody782_1337 RemovedBody782_1338

def RemovedBody782_1340 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 72#64))

def RemovedBody782_1341 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 80#64))

def RemovedBody782_1342 : StackLang.HolProg 64 :=
.seq RemovedBody782_1340 RemovedBody782_1341

def RemovedBody782_1343 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 64#64))

def RemovedBody782_1344 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 72#64))

def RemovedBody782_1345 : StackLang.HolProg 64 :=
.seq RemovedBody782_1343 RemovedBody782_1344

def RemovedBody782_1346 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 56#64))

def RemovedBody782_1347 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 64#64))

def RemovedBody782_1348 : StackLang.HolProg 64 :=
.seq RemovedBody782_1346 RemovedBody782_1347

def RemovedBody782_1349 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 48#64))

def RemovedBody782_1350 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 56#64))

def RemovedBody782_1351 : StackLang.HolProg 64 :=
.seq RemovedBody782_1349 RemovedBody782_1350

def RemovedBody782_1352 : StackLang.HolProg 64 :=
.seq RemovedBody782_1348 RemovedBody782_1351

def RemovedBody782_1353 : StackLang.HolProg 64 :=
.seq RemovedBody782_1345 RemovedBody782_1352

def RemovedBody782_1354 : StackLang.HolProg 64 :=
.seq RemovedBody782_1342 RemovedBody782_1353

def RemovedBody782_1355 : StackLang.HolProg 64 :=
.seq RemovedBody782_1339 RemovedBody782_1354

def RemovedBody782_1356 : StackLang.HolProg 64 :=
.seq RemovedBody782_1336 RemovedBody782_1355

def RemovedBody782_1357 : StackLang.HolProg 64 :=
.seq RemovedBody782_1335 RemovedBody782_1356

def RemovedBody782_1358 : StackLang.HolProg 64 :=
.seq RemovedBody782_1334 RemovedBody782_1357

def RemovedBody782_1359 : StackLang.HolProg 64 :=
.seq RemovedBody782_1333 RemovedBody782_1358

def RemovedBody782_1360 : StackLang.HolProg 64 :=
.seq RemovedBody782_1332 RemovedBody782_1359

def RemovedBody782_1361 : StackLang.HolProg 64 :=
.seq RemovedBody782_1331 RemovedBody782_1360

def RemovedBody782_1362 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 104#64))

def RemovedBody782_1363 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 2
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 88#64))

def RemovedBody782_1364 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 80#64))

def RemovedBody782_1365 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 88#64))

def RemovedBody782_1366 : StackLang.HolProg 64 :=
.seq RemovedBody782_1364 RemovedBody782_1365

def RemovedBody782_1367 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 72#64))

def RemovedBody782_1368 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 80#64))

def RemovedBody782_1369 : StackLang.HolProg 64 :=
.seq RemovedBody782_1367 RemovedBody782_1368

def RemovedBody782_1370 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 64#64))

def RemovedBody782_1371 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 72#64))

def RemovedBody782_1372 : StackLang.HolProg 64 :=
.seq RemovedBody782_1370 RemovedBody782_1371

def RemovedBody782_1373 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 56#64))

def RemovedBody782_1374 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 64#64))

def RemovedBody782_1375 : StackLang.HolProg 64 :=
.seq RemovedBody782_1373 RemovedBody782_1374

def RemovedBody782_1376 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 48#64))

def RemovedBody782_1377 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 56#64))

def RemovedBody782_1378 : StackLang.HolProg 64 :=
.seq RemovedBody782_1376 RemovedBody782_1377

def RemovedBody782_1379 : StackLang.HolProg 64 :=
.seq RemovedBody782_1375 RemovedBody782_1378

def RemovedBody782_1380 : StackLang.HolProg 64 :=
.seq RemovedBody782_1372 RemovedBody782_1379

def RemovedBody782_1381 : StackLang.HolProg 64 :=
.seq RemovedBody782_1369 RemovedBody782_1380

def RemovedBody782_1382 : StackLang.HolProg 64 :=
.seq RemovedBody782_1366 RemovedBody782_1381

def RemovedBody782_1383 : StackLang.HolProg 64 :=
.seq RemovedBody782_1363 RemovedBody782_1382

def RemovedBody782_1384 : StackLang.HolProg 64 :=
.seq RemovedBody782_1362 RemovedBody782_1383

def RemovedBody782_1385 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def RemovedBody782_1386 : StackLang.HolProg 64 :=
.seq RemovedBody782_1384 RemovedBody782_1385

def RemovedBody782_1387 : StackLang.HolProg 64 :=
.call (some (RemovedBody782_1361, 0, 782, 36)) (Sum.inl 739) (some (RemovedBody782_1386, 782, 37))

def RemovedBody782_1388 : StackLang.HolProg 64 :=
.seq RemovedBody782_1330 RemovedBody782_1387

def RemovedBody782_1389 : StackLang.HolProg 64 :=
.seq RemovedBody782_1329 RemovedBody782_1388

def RemovedBody782_1390 : StackLang.HolProg 64 :=
.seq RemovedBody782_1328 RemovedBody782_1389

def RemovedBody782_1391 : StackLang.HolProg 64 :=
.seq RemovedBody782_1299 RemovedBody782_1390

def RemovedBody782_1392 : StackLang.HolProg 64 :=
.seq RemovedBody782_1296 RemovedBody782_1391

def RemovedBody782_1393 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody782_1394 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 1 0
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 0)))

def RemovedBody782_1395 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 104#64))

def RemovedBody782_1396 : StackLang.HolProg 64 :=
.seq RemovedBody782_1394 RemovedBody782_1395

def RemovedBody782_1397 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody782_1398 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 3568#64)

def RemovedBody782_1399 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody782_1400 : StackLang.HolProg 64 :=
.seq RemovedBody782_1398 RemovedBody782_1399

def RemovedBody782_1401 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody782_1402 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 2#64)

def RemovedBody782_1403 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 1

def RemovedBody782_1404 : StackLang.HolProg 64 :=
.seq RemovedBody782_1402 RemovedBody782_1403

def RemovedBody782_1405 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody782_1406 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) RemovedBody782_1404 RemovedBody782_1405

def RemovedBody782_1407 : StackLang.HolProg 64 :=
.seq RemovedBody782_1401 RemovedBody782_1406

def RemovedBody782_1408 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def RemovedBody782_1409 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody782_1410 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 782 39

def RemovedBody782_1411 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody782_1412 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody782_1413 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody782_1414 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody782_1415 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def RemovedBody782_1416 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def RemovedBody782_1417 : StackLang.HolProg 64 :=
.seq RemovedBody782_1415 RemovedBody782_1416

def RemovedBody782_1418 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def RemovedBody782_1419 : StackLang.HolProg 64 :=
.seq RemovedBody782_1417 RemovedBody782_1418

def RemovedBody782_1420 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody782_1421 : StackLang.HolProg 64 :=
.seq RemovedBody782_1419 RemovedBody782_1420

def RemovedBody782_1422 : StackLang.HolProg 64 :=
.seq RemovedBody782_1414 RemovedBody782_1421

def RemovedBody782_1423 : StackLang.HolProg 64 :=
.seq RemovedBody782_1413 RemovedBody782_1422

def RemovedBody782_1424 : StackLang.HolProg 64 :=
.seq RemovedBody782_1412 RemovedBody782_1423

def RemovedBody782_1425 : StackLang.HolProg 64 :=
.seq RemovedBody782_1411 RemovedBody782_1424

def RemovedBody782_1426 : StackLang.HolProg 64 :=
.seq RemovedBody782_1410 RemovedBody782_1425

def RemovedBody782_1427 : StackLang.HolProg 64 :=
.seq RemovedBody782_1409 RemovedBody782_1426

def RemovedBody782_1428 : StackLang.HolProg 64 :=
.seq RemovedBody782_1408 RemovedBody782_1427

def RemovedBody782_1429 : StackLang.HolProg 64 :=
.seq RemovedBody782_1407 RemovedBody782_1428

def RemovedBody782_1430 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody782_1431 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody782_1432 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody782_1433 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody782_1434 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody782_1435 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody782_1436 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 2
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 104#64))

def RemovedBody782_1437 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 3
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 96#64))

def RemovedBody782_1438 : StackLang.HolProg 64 :=
.seq RemovedBody782_1436 RemovedBody782_1437

def RemovedBody782_1439 : StackLang.HolProg 64 :=
.seq RemovedBody782_1435 RemovedBody782_1438

def RemovedBody782_1440 : StackLang.HolProg 64 :=
.seq RemovedBody782_1434 RemovedBody782_1439

def RemovedBody782_1441 : StackLang.HolProg 64 :=
.seq RemovedBody782_1433 RemovedBody782_1440

def RemovedBody782_1442 : StackLang.HolProg 64 :=
.seq RemovedBody782_1432 RemovedBody782_1441

def RemovedBody782_1443 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 2
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 104#64))

def RemovedBody782_1444 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 3
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 96#64))

def RemovedBody782_1445 : StackLang.HolProg 64 :=
.seq RemovedBody782_1443 RemovedBody782_1444

def RemovedBody782_1446 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def RemovedBody782_1447 : StackLang.HolProg 64 :=
.seq RemovedBody782_1445 RemovedBody782_1446

def RemovedBody782_1448 : StackLang.HolProg 64 :=
.call (some (RemovedBody782_1442, 0, 782, 38)) (Sum.inl 740) (some (RemovedBody782_1447, 782, 39))

def RemovedBody782_1449 : StackLang.HolProg 64 :=
.seq RemovedBody782_1431 RemovedBody782_1448

def RemovedBody782_1450 : StackLang.HolProg 64 :=
.seq RemovedBody782_1430 RemovedBody782_1449

def RemovedBody782_1451 : StackLang.HolProg 64 :=
.seq RemovedBody782_1429 RemovedBody782_1450

def RemovedBody782_1452 : StackLang.HolProg 64 :=
.seq RemovedBody782_1400 RemovedBody782_1451

def RemovedBody782_1453 : StackLang.HolProg 64 :=
.seq RemovedBody782_1397 RemovedBody782_1452

def RemovedBody782_1454 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody782_1455 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 1 2
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 2)))

def RemovedBody782_1456 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 2
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 104#64))

def RemovedBody782_1457 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 3
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 96#64))

def RemovedBody782_1458 : StackLang.HolProg 64 :=
.seq RemovedBody782_1456 RemovedBody782_1457

def RemovedBody782_1459 : StackLang.HolProg 64 :=
.seq RemovedBody782_1455 RemovedBody782_1458

def RemovedBody782_1460 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody782_1461 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 3569#64)

def RemovedBody782_1462 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody782_1463 : StackLang.HolProg 64 :=
.seq RemovedBody782_1461 RemovedBody782_1462

def RemovedBody782_1464 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody782_1465 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 2#64)

def RemovedBody782_1466 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 1

def RemovedBody782_1467 : StackLang.HolProg 64 :=
.seq RemovedBody782_1465 RemovedBody782_1466

def RemovedBody782_1468 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody782_1469 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) RemovedBody782_1467 RemovedBody782_1468

def RemovedBody782_1470 : StackLang.HolProg 64 :=
.seq RemovedBody782_1464 RemovedBody782_1469

def RemovedBody782_1471 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def RemovedBody782_1472 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody782_1473 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 782 41

def RemovedBody782_1474 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody782_1475 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody782_1476 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody782_1477 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody782_1478 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def RemovedBody782_1479 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def RemovedBody782_1480 : StackLang.HolProg 64 :=
.seq RemovedBody782_1478 RemovedBody782_1479

def RemovedBody782_1481 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def RemovedBody782_1482 : StackLang.HolProg 64 :=
.seq RemovedBody782_1480 RemovedBody782_1481

def RemovedBody782_1483 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody782_1484 : StackLang.HolProg 64 :=
.seq RemovedBody782_1482 RemovedBody782_1483

def RemovedBody782_1485 : StackLang.HolProg 64 :=
.seq RemovedBody782_1477 RemovedBody782_1484

def RemovedBody782_1486 : StackLang.HolProg 64 :=
.seq RemovedBody782_1476 RemovedBody782_1485

def RemovedBody782_1487 : StackLang.HolProg 64 :=
.seq RemovedBody782_1475 RemovedBody782_1486

def RemovedBody782_1488 : StackLang.HolProg 64 :=
.seq RemovedBody782_1474 RemovedBody782_1487

def RemovedBody782_1489 : StackLang.HolProg 64 :=
.seq RemovedBody782_1473 RemovedBody782_1488

def RemovedBody782_1490 : StackLang.HolProg 64 :=
.seq RemovedBody782_1472 RemovedBody782_1489

def RemovedBody782_1491 : StackLang.HolProg 64 :=
.seq RemovedBody782_1471 RemovedBody782_1490

def RemovedBody782_1492 : StackLang.HolProg 64 :=
.seq RemovedBody782_1470 RemovedBody782_1491

def RemovedBody782_1493 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody782_1494 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody782_1495 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody782_1496 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody782_1497 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody782_1498 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody782_1499 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 3
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 104#64))

def RemovedBody782_1500 : StackLang.HolProg 64 :=
.seq RemovedBody782_1498 RemovedBody782_1499

def RemovedBody782_1501 : StackLang.HolProg 64 :=
.seq RemovedBody782_1497 RemovedBody782_1500

def RemovedBody782_1502 : StackLang.HolProg 64 :=
.seq RemovedBody782_1496 RemovedBody782_1501

def RemovedBody782_1503 : StackLang.HolProg 64 :=
.seq RemovedBody782_1495 RemovedBody782_1502

def RemovedBody782_1504 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 3
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 104#64))

def RemovedBody782_1505 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def RemovedBody782_1506 : StackLang.HolProg 64 :=
.seq RemovedBody782_1504 RemovedBody782_1505

def RemovedBody782_1507 : StackLang.HolProg 64 :=
.call (some (RemovedBody782_1503, 0, 782, 40)) (Sum.inl 739) (some (RemovedBody782_1506, 782, 41))

def RemovedBody782_1508 : StackLang.HolProg 64 :=
.seq RemovedBody782_1494 RemovedBody782_1507

def RemovedBody782_1509 : StackLang.HolProg 64 :=
.seq RemovedBody782_1493 RemovedBody782_1508

def RemovedBody782_1510 : StackLang.HolProg 64 :=
.seq RemovedBody782_1492 RemovedBody782_1509

def RemovedBody782_1511 : StackLang.HolProg 64 :=
.seq RemovedBody782_1463 RemovedBody782_1510

def RemovedBody782_1512 : StackLang.HolProg 64 :=
.seq RemovedBody782_1460 RemovedBody782_1511

def RemovedBody782_1513 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody782_1514 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 1 3
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 3)))

def RemovedBody782_1515 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 2 3
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 3)))

def RemovedBody782_1516 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 3
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 104#64))

def RemovedBody782_1517 : StackLang.HolProg 64 :=
.seq RemovedBody782_1515 RemovedBody782_1516

def RemovedBody782_1518 : StackLang.HolProg 64 :=
.seq RemovedBody782_1514 RemovedBody782_1517

def RemovedBody782_1519 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody782_1520 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 3570#64)

def RemovedBody782_1521 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody782_1522 : StackLang.HolProg 64 :=
.seq RemovedBody782_1520 RemovedBody782_1521

def RemovedBody782_1523 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody782_1524 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 2#64)

def RemovedBody782_1525 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 1

def RemovedBody782_1526 : StackLang.HolProg 64 :=
.seq RemovedBody782_1524 RemovedBody782_1525

def RemovedBody782_1527 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody782_1528 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) RemovedBody782_1526 RemovedBody782_1527

def RemovedBody782_1529 : StackLang.HolProg 64 :=
.seq RemovedBody782_1523 RemovedBody782_1528

def RemovedBody782_1530 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def RemovedBody782_1531 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody782_1532 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 782 43

def RemovedBody782_1533 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody782_1534 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody782_1535 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody782_1536 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody782_1537 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def RemovedBody782_1538 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def RemovedBody782_1539 : StackLang.HolProg 64 :=
.seq RemovedBody782_1537 RemovedBody782_1538

def RemovedBody782_1540 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def RemovedBody782_1541 : StackLang.HolProg 64 :=
.seq RemovedBody782_1539 RemovedBody782_1540

def RemovedBody782_1542 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody782_1543 : StackLang.HolProg 64 :=
.seq RemovedBody782_1541 RemovedBody782_1542

def RemovedBody782_1544 : StackLang.HolProg 64 :=
.seq RemovedBody782_1536 RemovedBody782_1543

def RemovedBody782_1545 : StackLang.HolProg 64 :=
.seq RemovedBody782_1535 RemovedBody782_1544

def RemovedBody782_1546 : StackLang.HolProg 64 :=
.seq RemovedBody782_1534 RemovedBody782_1545

def RemovedBody782_1547 : StackLang.HolProg 64 :=
.seq RemovedBody782_1533 RemovedBody782_1546

def RemovedBody782_1548 : StackLang.HolProg 64 :=
.seq RemovedBody782_1532 RemovedBody782_1547

def RemovedBody782_1549 : StackLang.HolProg 64 :=
.seq RemovedBody782_1531 RemovedBody782_1548

def RemovedBody782_1550 : StackLang.HolProg 64 :=
.seq RemovedBody782_1530 RemovedBody782_1549

def RemovedBody782_1551 : StackLang.HolProg 64 :=
.seq RemovedBody782_1529 RemovedBody782_1550

def RemovedBody782_1552 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody782_1553 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody782_1554 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody782_1555 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody782_1556 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody782_1557 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody782_1558 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 3
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 104#64))

def RemovedBody782_1559 : StackLang.HolProg 64 :=
.seq RemovedBody782_1557 RemovedBody782_1558

def RemovedBody782_1560 : StackLang.HolProg 64 :=
.seq RemovedBody782_1556 RemovedBody782_1559

def RemovedBody782_1561 : StackLang.HolProg 64 :=
.seq RemovedBody782_1555 RemovedBody782_1560

def RemovedBody782_1562 : StackLang.HolProg 64 :=
.seq RemovedBody782_1554 RemovedBody782_1561

def RemovedBody782_1563 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 3
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 104#64))

def RemovedBody782_1564 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def RemovedBody782_1565 : StackLang.HolProg 64 :=
.seq RemovedBody782_1563 RemovedBody782_1564

def RemovedBody782_1566 : StackLang.HolProg 64 :=
.call (some (RemovedBody782_1562, 0, 782, 42)) (Sum.inl 734) (some (RemovedBody782_1565, 782, 43))

def RemovedBody782_1567 : StackLang.HolProg 64 :=
.seq RemovedBody782_1553 RemovedBody782_1566

def RemovedBody782_1568 : StackLang.HolProg 64 :=
.seq RemovedBody782_1552 RemovedBody782_1567

def RemovedBody782_1569 : StackLang.HolProg 64 :=
.seq RemovedBody782_1551 RemovedBody782_1568

def RemovedBody782_1570 : StackLang.HolProg 64 :=
.seq RemovedBody782_1522 RemovedBody782_1569

def RemovedBody782_1571 : StackLang.HolProg 64 :=
.seq RemovedBody782_1519 RemovedBody782_1570

def RemovedBody782_1572 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody782_1573 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 1 3
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 3)))

def RemovedBody782_1574 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 2 3
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 3)))

def RemovedBody782_1575 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 3
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 104#64))

def RemovedBody782_1576 : StackLang.HolProg 64 :=
.seq RemovedBody782_1574 RemovedBody782_1575

def RemovedBody782_1577 : StackLang.HolProg 64 :=
.seq RemovedBody782_1573 RemovedBody782_1576

def RemovedBody782_1578 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody782_1579 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 3571#64)

def RemovedBody782_1580 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody782_1581 : StackLang.HolProg 64 :=
.seq RemovedBody782_1579 RemovedBody782_1580

def RemovedBody782_1582 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody782_1583 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 2#64)

def RemovedBody782_1584 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 1

def RemovedBody782_1585 : StackLang.HolProg 64 :=
.seq RemovedBody782_1583 RemovedBody782_1584

def RemovedBody782_1586 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody782_1587 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) RemovedBody782_1585 RemovedBody782_1586

def RemovedBody782_1588 : StackLang.HolProg 64 :=
.seq RemovedBody782_1582 RemovedBody782_1587

def RemovedBody782_1589 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def RemovedBody782_1590 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody782_1591 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 782 45

def RemovedBody782_1592 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody782_1593 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody782_1594 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody782_1595 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody782_1596 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def RemovedBody782_1597 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def RemovedBody782_1598 : StackLang.HolProg 64 :=
.seq RemovedBody782_1596 RemovedBody782_1597

def RemovedBody782_1599 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def RemovedBody782_1600 : StackLang.HolProg 64 :=
.seq RemovedBody782_1598 RemovedBody782_1599

def RemovedBody782_1601 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody782_1602 : StackLang.HolProg 64 :=
.seq RemovedBody782_1600 RemovedBody782_1601

def RemovedBody782_1603 : StackLang.HolProg 64 :=
.seq RemovedBody782_1595 RemovedBody782_1602

def RemovedBody782_1604 : StackLang.HolProg 64 :=
.seq RemovedBody782_1594 RemovedBody782_1603

def RemovedBody782_1605 : StackLang.HolProg 64 :=
.seq RemovedBody782_1593 RemovedBody782_1604

def RemovedBody782_1606 : StackLang.HolProg 64 :=
.seq RemovedBody782_1592 RemovedBody782_1605

def RemovedBody782_1607 : StackLang.HolProg 64 :=
.seq RemovedBody782_1591 RemovedBody782_1606

def RemovedBody782_1608 : StackLang.HolProg 64 :=
.seq RemovedBody782_1590 RemovedBody782_1607

def RemovedBody782_1609 : StackLang.HolProg 64 :=
.seq RemovedBody782_1589 RemovedBody782_1608

def RemovedBody782_1610 : StackLang.HolProg 64 :=
.seq RemovedBody782_1588 RemovedBody782_1609

def RemovedBody782_1611 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody782_1612 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody782_1613 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody782_1614 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody782_1615 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody782_1616 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody782_1617 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 3
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 104#64))

def RemovedBody782_1618 : StackLang.HolProg 64 :=
.seq RemovedBody782_1616 RemovedBody782_1617

def RemovedBody782_1619 : StackLang.HolProg 64 :=
.seq RemovedBody782_1615 RemovedBody782_1618

def RemovedBody782_1620 : StackLang.HolProg 64 :=
.seq RemovedBody782_1614 RemovedBody782_1619

def RemovedBody782_1621 : StackLang.HolProg 64 :=
.seq RemovedBody782_1613 RemovedBody782_1620

def RemovedBody782_1622 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 3
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 104#64))

def RemovedBody782_1623 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def RemovedBody782_1624 : StackLang.HolProg 64 :=
.seq RemovedBody782_1622 RemovedBody782_1623

def RemovedBody782_1625 : StackLang.HolProg 64 :=
.call (some (RemovedBody782_1621, 0, 782, 44)) (Sum.inl 734) (some (RemovedBody782_1624, 782, 45))

def RemovedBody782_1626 : StackLang.HolProg 64 :=
.seq RemovedBody782_1612 RemovedBody782_1625

def RemovedBody782_1627 : StackLang.HolProg 64 :=
.seq RemovedBody782_1611 RemovedBody782_1626

def RemovedBody782_1628 : StackLang.HolProg 64 :=
.seq RemovedBody782_1610 RemovedBody782_1627

def RemovedBody782_1629 : StackLang.HolProg 64 :=
.seq RemovedBody782_1581 RemovedBody782_1628

def RemovedBody782_1630 : StackLang.HolProg 64 :=
.seq RemovedBody782_1578 RemovedBody782_1629

def RemovedBody782_1631 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody782_1632 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 1 3
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 3)))

def RemovedBody782_1633 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 2 3
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 3)))

def RemovedBody782_1634 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 3
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 104#64))

def RemovedBody782_1635 : StackLang.HolProg 64 :=
.seq RemovedBody782_1633 RemovedBody782_1634

def RemovedBody782_1636 : StackLang.HolProg 64 :=
.seq RemovedBody782_1632 RemovedBody782_1635

def RemovedBody782_1637 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody782_1638 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 3572#64)

def RemovedBody782_1639 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody782_1640 : StackLang.HolProg 64 :=
.seq RemovedBody782_1638 RemovedBody782_1639

def RemovedBody782_1641 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody782_1642 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 2#64)

def RemovedBody782_1643 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 1

def RemovedBody782_1644 : StackLang.HolProg 64 :=
.seq RemovedBody782_1642 RemovedBody782_1643

def RemovedBody782_1645 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody782_1646 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) RemovedBody782_1644 RemovedBody782_1645

def RemovedBody782_1647 : StackLang.HolProg 64 :=
.seq RemovedBody782_1641 RemovedBody782_1646

def RemovedBody782_1648 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def RemovedBody782_1649 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody782_1650 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 782 47

def RemovedBody782_1651 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody782_1652 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody782_1653 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody782_1654 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody782_1655 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def RemovedBody782_1656 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def RemovedBody782_1657 : StackLang.HolProg 64 :=
.seq RemovedBody782_1655 RemovedBody782_1656

def RemovedBody782_1658 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def RemovedBody782_1659 : StackLang.HolProg 64 :=
.seq RemovedBody782_1657 RemovedBody782_1658

def RemovedBody782_1660 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody782_1661 : StackLang.HolProg 64 :=
.seq RemovedBody782_1659 RemovedBody782_1660

def RemovedBody782_1662 : StackLang.HolProg 64 :=
.seq RemovedBody782_1654 RemovedBody782_1661

def RemovedBody782_1663 : StackLang.HolProg 64 :=
.seq RemovedBody782_1653 RemovedBody782_1662

def RemovedBody782_1664 : StackLang.HolProg 64 :=
.seq RemovedBody782_1652 RemovedBody782_1663

def RemovedBody782_1665 : StackLang.HolProg 64 :=
.seq RemovedBody782_1651 RemovedBody782_1664

def RemovedBody782_1666 : StackLang.HolProg 64 :=
.seq RemovedBody782_1650 RemovedBody782_1665

def RemovedBody782_1667 : StackLang.HolProg 64 :=
.seq RemovedBody782_1649 RemovedBody782_1666

def RemovedBody782_1668 : StackLang.HolProg 64 :=
.seq RemovedBody782_1648 RemovedBody782_1667

def RemovedBody782_1669 : StackLang.HolProg 64 :=
.seq RemovedBody782_1647 RemovedBody782_1668

def RemovedBody782_1670 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody782_1671 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody782_1672 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody782_1673 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody782_1674 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody782_1675 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody782_1676 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 3
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 104#64))

def RemovedBody782_1677 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 2
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 88#64))

def RemovedBody782_1678 : StackLang.HolProg 64 :=
.seq RemovedBody782_1676 RemovedBody782_1677

def RemovedBody782_1679 : StackLang.HolProg 64 :=
.seq RemovedBody782_1675 RemovedBody782_1678

def RemovedBody782_1680 : StackLang.HolProg 64 :=
.seq RemovedBody782_1674 RemovedBody782_1679

def RemovedBody782_1681 : StackLang.HolProg 64 :=
.seq RemovedBody782_1673 RemovedBody782_1680

def RemovedBody782_1682 : StackLang.HolProg 64 :=
.seq RemovedBody782_1672 RemovedBody782_1681

def RemovedBody782_1683 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 3
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 104#64))

def RemovedBody782_1684 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 2
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 88#64))

def RemovedBody782_1685 : StackLang.HolProg 64 :=
.seq RemovedBody782_1683 RemovedBody782_1684

def RemovedBody782_1686 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def RemovedBody782_1687 : StackLang.HolProg 64 :=
.seq RemovedBody782_1685 RemovedBody782_1686

def RemovedBody782_1688 : StackLang.HolProg 64 :=
.call (some (RemovedBody782_1682, 0, 782, 46)) (Sum.inl 734) (some (RemovedBody782_1687, 782, 47))

def RemovedBody782_1689 : StackLang.HolProg 64 :=
.seq RemovedBody782_1671 RemovedBody782_1688

def RemovedBody782_1690 : StackLang.HolProg 64 :=
.seq RemovedBody782_1670 RemovedBody782_1689

def RemovedBody782_1691 : StackLang.HolProg 64 :=
.seq RemovedBody782_1669 RemovedBody782_1690

def RemovedBody782_1692 : StackLang.HolProg 64 :=
.seq RemovedBody782_1640 RemovedBody782_1691

def RemovedBody782_1693 : StackLang.HolProg 64 :=
.seq RemovedBody782_1637 RemovedBody782_1692

def RemovedBody782_1694 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody782_1695 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 1 2
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 2)))

def RemovedBody782_1696 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 3
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 104#64))

def RemovedBody782_1697 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 2
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 88#64))

def RemovedBody782_1698 : StackLang.HolProg 64 :=
.seq RemovedBody782_1696 RemovedBody782_1697

def RemovedBody782_1699 : StackLang.HolProg 64 :=
.seq RemovedBody782_1695 RemovedBody782_1698

def RemovedBody782_1700 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody782_1701 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 3573#64)

def RemovedBody782_1702 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody782_1703 : StackLang.HolProg 64 :=
.seq RemovedBody782_1701 RemovedBody782_1702

def RemovedBody782_1704 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody782_1705 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 2#64)

def RemovedBody782_1706 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 1

def RemovedBody782_1707 : StackLang.HolProg 64 :=
.seq RemovedBody782_1705 RemovedBody782_1706

def RemovedBody782_1708 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody782_1709 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) RemovedBody782_1707 RemovedBody782_1708

def RemovedBody782_1710 : StackLang.HolProg 64 :=
.seq RemovedBody782_1704 RemovedBody782_1709

def RemovedBody782_1711 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def RemovedBody782_1712 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody782_1713 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 782 49

def RemovedBody782_1714 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody782_1715 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody782_1716 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody782_1717 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody782_1718 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def RemovedBody782_1719 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def RemovedBody782_1720 : StackLang.HolProg 64 :=
.seq RemovedBody782_1718 RemovedBody782_1719

def RemovedBody782_1721 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def RemovedBody782_1722 : StackLang.HolProg 64 :=
.seq RemovedBody782_1720 RemovedBody782_1721

def RemovedBody782_1723 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody782_1724 : StackLang.HolProg 64 :=
.seq RemovedBody782_1722 RemovedBody782_1723

def RemovedBody782_1725 : StackLang.HolProg 64 :=
.seq RemovedBody782_1717 RemovedBody782_1724

def RemovedBody782_1726 : StackLang.HolProg 64 :=
.seq RemovedBody782_1716 RemovedBody782_1725

def RemovedBody782_1727 : StackLang.HolProg 64 :=
.seq RemovedBody782_1715 RemovedBody782_1726

def RemovedBody782_1728 : StackLang.HolProg 64 :=
.seq RemovedBody782_1714 RemovedBody782_1727

def RemovedBody782_1729 : StackLang.HolProg 64 :=
.seq RemovedBody782_1713 RemovedBody782_1728

def RemovedBody782_1730 : StackLang.HolProg 64 :=
.seq RemovedBody782_1712 RemovedBody782_1729

def RemovedBody782_1731 : StackLang.HolProg 64 :=
.seq RemovedBody782_1711 RemovedBody782_1730

def RemovedBody782_1732 : StackLang.HolProg 64 :=
.seq RemovedBody782_1710 RemovedBody782_1731

def RemovedBody782_1733 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody782_1734 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody782_1735 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody782_1736 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody782_1737 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody782_1738 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody782_1739 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 104#64))

def RemovedBody782_1740 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 3
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 96#64))

def RemovedBody782_1741 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 88#64))

def RemovedBody782_1742 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 96#64))

def RemovedBody782_1743 : StackLang.HolProg 64 :=
.seq RemovedBody782_1741 RemovedBody782_1742

def RemovedBody782_1744 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 80#64))

def RemovedBody782_1745 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 88#64))

def RemovedBody782_1746 : StackLang.HolProg 64 :=
.seq RemovedBody782_1744 RemovedBody782_1745

def RemovedBody782_1747 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 72#64))

def RemovedBody782_1748 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 80#64))

def RemovedBody782_1749 : StackLang.HolProg 64 :=
.seq RemovedBody782_1747 RemovedBody782_1748

def RemovedBody782_1750 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 2
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 64#64))

def RemovedBody782_1751 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 56#64))

def RemovedBody782_1752 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 72#64))

def RemovedBody782_1753 : StackLang.HolProg 64 :=
.seq RemovedBody782_1751 RemovedBody782_1752

def RemovedBody782_1754 : StackLang.HolProg 64 :=
.seq RemovedBody782_1750 RemovedBody782_1753

def RemovedBody782_1755 : StackLang.HolProg 64 :=
.seq RemovedBody782_1749 RemovedBody782_1754

def RemovedBody782_1756 : StackLang.HolProg 64 :=
.seq RemovedBody782_1746 RemovedBody782_1755

def RemovedBody782_1757 : StackLang.HolProg 64 :=
.seq RemovedBody782_1743 RemovedBody782_1756

def RemovedBody782_1758 : StackLang.HolProg 64 :=
.seq RemovedBody782_1740 RemovedBody782_1757

def RemovedBody782_1759 : StackLang.HolProg 64 :=
.seq RemovedBody782_1739 RemovedBody782_1758

def RemovedBody782_1760 : StackLang.HolProg 64 :=
.seq RemovedBody782_1738 RemovedBody782_1759

def RemovedBody782_1761 : StackLang.HolProg 64 :=
.seq RemovedBody782_1737 RemovedBody782_1760

def RemovedBody782_1762 : StackLang.HolProg 64 :=
.seq RemovedBody782_1736 RemovedBody782_1761

def RemovedBody782_1763 : StackLang.HolProg 64 :=
.seq RemovedBody782_1735 RemovedBody782_1762

def RemovedBody782_1764 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 104#64))

def RemovedBody782_1765 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 3
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 96#64))

def RemovedBody782_1766 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 88#64))

def RemovedBody782_1767 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 96#64))

def RemovedBody782_1768 : StackLang.HolProg 64 :=
.seq RemovedBody782_1766 RemovedBody782_1767

def RemovedBody782_1769 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 80#64))

def RemovedBody782_1770 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 88#64))

def RemovedBody782_1771 : StackLang.HolProg 64 :=
.seq RemovedBody782_1769 RemovedBody782_1770

def RemovedBody782_1772 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 72#64))

def RemovedBody782_1773 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 80#64))

def RemovedBody782_1774 : StackLang.HolProg 64 :=
.seq RemovedBody782_1772 RemovedBody782_1773

def RemovedBody782_1775 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 2
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 64#64))

def RemovedBody782_1776 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 56#64))

def RemovedBody782_1777 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 72#64))

def RemovedBody782_1778 : StackLang.HolProg 64 :=
.seq RemovedBody782_1776 RemovedBody782_1777

def RemovedBody782_1779 : StackLang.HolProg 64 :=
.seq RemovedBody782_1775 RemovedBody782_1778

def RemovedBody782_1780 : StackLang.HolProg 64 :=
.seq RemovedBody782_1774 RemovedBody782_1779

def RemovedBody782_1781 : StackLang.HolProg 64 :=
.seq RemovedBody782_1771 RemovedBody782_1780

def RemovedBody782_1782 : StackLang.HolProg 64 :=
.seq RemovedBody782_1768 RemovedBody782_1781

def RemovedBody782_1783 : StackLang.HolProg 64 :=
.seq RemovedBody782_1765 RemovedBody782_1782

def RemovedBody782_1784 : StackLang.HolProg 64 :=
.seq RemovedBody782_1764 RemovedBody782_1783

def RemovedBody782_1785 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def RemovedBody782_1786 : StackLang.HolProg 64 :=
.seq RemovedBody782_1784 RemovedBody782_1785

def RemovedBody782_1787 : StackLang.HolProg 64 :=
.call (some (RemovedBody782_1763, 0, 782, 48)) (Sum.inl 735) (some (RemovedBody782_1786, 782, 49))

def RemovedBody782_1788 : StackLang.HolProg 64 :=
.seq RemovedBody782_1734 RemovedBody782_1787

def RemovedBody782_1789 : StackLang.HolProg 64 :=
.seq RemovedBody782_1733 RemovedBody782_1788

def RemovedBody782_1790 : StackLang.HolProg 64 :=
.seq RemovedBody782_1732 RemovedBody782_1789

def RemovedBody782_1791 : StackLang.HolProg 64 :=
.seq RemovedBody782_1703 RemovedBody782_1790

def RemovedBody782_1792 : StackLang.HolProg 64 :=
.seq RemovedBody782_1700 RemovedBody782_1791

def RemovedBody782_1793 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody782_1794 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 1 0
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 0)))

def RemovedBody782_1795 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 104#64))

def RemovedBody782_1796 : StackLang.HolProg 64 :=
.seq RemovedBody782_1794 RemovedBody782_1795

def RemovedBody782_1797 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody782_1798 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 3574#64)

def RemovedBody782_1799 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody782_1800 : StackLang.HolProg 64 :=
.seq RemovedBody782_1798 RemovedBody782_1799

def RemovedBody782_1801 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody782_1802 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 2#64)

def RemovedBody782_1803 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 1

def RemovedBody782_1804 : StackLang.HolProg 64 :=
.seq RemovedBody782_1802 RemovedBody782_1803

def RemovedBody782_1805 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody782_1806 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) RemovedBody782_1804 RemovedBody782_1805

def RemovedBody782_1807 : StackLang.HolProg 64 :=
.seq RemovedBody782_1801 RemovedBody782_1806

def RemovedBody782_1808 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def RemovedBody782_1809 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody782_1810 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 782 51

def RemovedBody782_1811 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody782_1812 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody782_1813 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody782_1814 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody782_1815 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def RemovedBody782_1816 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def RemovedBody782_1817 : StackLang.HolProg 64 :=
.seq RemovedBody782_1815 RemovedBody782_1816

def RemovedBody782_1818 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def RemovedBody782_1819 : StackLang.HolProg 64 :=
.seq RemovedBody782_1817 RemovedBody782_1818

def RemovedBody782_1820 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody782_1821 : StackLang.HolProg 64 :=
.seq RemovedBody782_1819 RemovedBody782_1820

def RemovedBody782_1822 : StackLang.HolProg 64 :=
.seq RemovedBody782_1814 RemovedBody782_1821

def RemovedBody782_1823 : StackLang.HolProg 64 :=
.seq RemovedBody782_1813 RemovedBody782_1822

def RemovedBody782_1824 : StackLang.HolProg 64 :=
.seq RemovedBody782_1812 RemovedBody782_1823

def RemovedBody782_1825 : StackLang.HolProg 64 :=
.seq RemovedBody782_1811 RemovedBody782_1824

def RemovedBody782_1826 : StackLang.HolProg 64 :=
.seq RemovedBody782_1810 RemovedBody782_1825

def RemovedBody782_1827 : StackLang.HolProg 64 :=
.seq RemovedBody782_1809 RemovedBody782_1826

def RemovedBody782_1828 : StackLang.HolProg 64 :=
.seq RemovedBody782_1808 RemovedBody782_1827

def RemovedBody782_1829 : StackLang.HolProg 64 :=
.seq RemovedBody782_1807 RemovedBody782_1828

def RemovedBody782_1830 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody782_1831 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody782_1832 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody782_1833 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody782_1834 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody782_1835 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody782_1836 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 3
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 104#64))

def RemovedBody782_1837 : StackLang.HolProg 64 :=
.seq RemovedBody782_1835 RemovedBody782_1836

def RemovedBody782_1838 : StackLang.HolProg 64 :=
.seq RemovedBody782_1834 RemovedBody782_1837

def RemovedBody782_1839 : StackLang.HolProg 64 :=
.seq RemovedBody782_1833 RemovedBody782_1838

def RemovedBody782_1840 : StackLang.HolProg 64 :=
.seq RemovedBody782_1832 RemovedBody782_1839

def RemovedBody782_1841 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 3
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 104#64))

def RemovedBody782_1842 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def RemovedBody782_1843 : StackLang.HolProg 64 :=
.seq RemovedBody782_1841 RemovedBody782_1842

def RemovedBody782_1844 : StackLang.HolProg 64 :=
.call (some (RemovedBody782_1840, 0, 782, 50)) (Sum.inl 739) (some (RemovedBody782_1843, 782, 51))

def RemovedBody782_1845 : StackLang.HolProg 64 :=
.seq RemovedBody782_1831 RemovedBody782_1844

def RemovedBody782_1846 : StackLang.HolProg 64 :=
.seq RemovedBody782_1830 RemovedBody782_1845

def RemovedBody782_1847 : StackLang.HolProg 64 :=
.seq RemovedBody782_1829 RemovedBody782_1846

def RemovedBody782_1848 : StackLang.HolProg 64 :=
.seq RemovedBody782_1800 RemovedBody782_1847

def RemovedBody782_1849 : StackLang.HolProg 64 :=
.seq RemovedBody782_1797 RemovedBody782_1848

def RemovedBody782_1850 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody782_1851 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 1 3
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 3)))

def RemovedBody782_1852 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 2 3
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 3)))

def RemovedBody782_1853 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 3
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 104#64))

def RemovedBody782_1854 : StackLang.HolProg 64 :=
.seq RemovedBody782_1852 RemovedBody782_1853

def RemovedBody782_1855 : StackLang.HolProg 64 :=
.seq RemovedBody782_1851 RemovedBody782_1854

def RemovedBody782_1856 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody782_1857 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 3575#64)

def RemovedBody782_1858 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody782_1859 : StackLang.HolProg 64 :=
.seq RemovedBody782_1857 RemovedBody782_1858

def RemovedBody782_1860 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody782_1861 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 2#64)

def RemovedBody782_1862 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 1

def RemovedBody782_1863 : StackLang.HolProg 64 :=
.seq RemovedBody782_1861 RemovedBody782_1862

def RemovedBody782_1864 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody782_1865 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) RemovedBody782_1863 RemovedBody782_1864

def RemovedBody782_1866 : StackLang.HolProg 64 :=
.seq RemovedBody782_1860 RemovedBody782_1865

def RemovedBody782_1867 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def RemovedBody782_1868 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody782_1869 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 782 53

def RemovedBody782_1870 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody782_1871 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody782_1872 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody782_1873 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody782_1874 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def RemovedBody782_1875 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def RemovedBody782_1876 : StackLang.HolProg 64 :=
.seq RemovedBody782_1874 RemovedBody782_1875

def RemovedBody782_1877 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def RemovedBody782_1878 : StackLang.HolProg 64 :=
.seq RemovedBody782_1876 RemovedBody782_1877

def RemovedBody782_1879 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody782_1880 : StackLang.HolProg 64 :=
.seq RemovedBody782_1878 RemovedBody782_1879

def RemovedBody782_1881 : StackLang.HolProg 64 :=
.seq RemovedBody782_1873 RemovedBody782_1880

def RemovedBody782_1882 : StackLang.HolProg 64 :=
.seq RemovedBody782_1872 RemovedBody782_1881

def RemovedBody782_1883 : StackLang.HolProg 64 :=
.seq RemovedBody782_1871 RemovedBody782_1882

def RemovedBody782_1884 : StackLang.HolProg 64 :=
.seq RemovedBody782_1870 RemovedBody782_1883

def RemovedBody782_1885 : StackLang.HolProg 64 :=
.seq RemovedBody782_1869 RemovedBody782_1884

def RemovedBody782_1886 : StackLang.HolProg 64 :=
.seq RemovedBody782_1868 RemovedBody782_1885

def RemovedBody782_1887 : StackLang.HolProg 64 :=
.seq RemovedBody782_1867 RemovedBody782_1886

def RemovedBody782_1888 : StackLang.HolProg 64 :=
.seq RemovedBody782_1866 RemovedBody782_1887

def RemovedBody782_1889 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody782_1890 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody782_1891 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody782_1892 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody782_1893 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody782_1894 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody782_1895 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 3
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 104#64))

def RemovedBody782_1896 : StackLang.HolProg 64 :=
.seq RemovedBody782_1894 RemovedBody782_1895

def RemovedBody782_1897 : StackLang.HolProg 64 :=
.seq RemovedBody782_1893 RemovedBody782_1896

def RemovedBody782_1898 : StackLang.HolProg 64 :=
.seq RemovedBody782_1892 RemovedBody782_1897

def RemovedBody782_1899 : StackLang.HolProg 64 :=
.seq RemovedBody782_1891 RemovedBody782_1898

def RemovedBody782_1900 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 3
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 104#64))

def RemovedBody782_1901 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def RemovedBody782_1902 : StackLang.HolProg 64 :=
.seq RemovedBody782_1900 RemovedBody782_1901

def RemovedBody782_1903 : StackLang.HolProg 64 :=
.call (some (RemovedBody782_1899, 0, 782, 52)) (Sum.inl 734) (some (RemovedBody782_1902, 782, 53))

def RemovedBody782_1904 : StackLang.HolProg 64 :=
.seq RemovedBody782_1890 RemovedBody782_1903

def RemovedBody782_1905 : StackLang.HolProg 64 :=
.seq RemovedBody782_1889 RemovedBody782_1904

def RemovedBody782_1906 : StackLang.HolProg 64 :=
.seq RemovedBody782_1888 RemovedBody782_1905

def RemovedBody782_1907 : StackLang.HolProg 64 :=
.seq RemovedBody782_1859 RemovedBody782_1906

def RemovedBody782_1908 : StackLang.HolProg 64 :=
.seq RemovedBody782_1856 RemovedBody782_1907

def RemovedBody782_1909 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody782_1910 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 1 3
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 3)))

def RemovedBody782_1911 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 2 3
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 3)))

def RemovedBody782_1912 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 3
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 104#64))

def RemovedBody782_1913 : StackLang.HolProg 64 :=
.seq RemovedBody782_1911 RemovedBody782_1912

def RemovedBody782_1914 : StackLang.HolProg 64 :=
.seq RemovedBody782_1910 RemovedBody782_1913

def RemovedBody782_1915 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody782_1916 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 3576#64)

def RemovedBody782_1917 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody782_1918 : StackLang.HolProg 64 :=
.seq RemovedBody782_1916 RemovedBody782_1917

def RemovedBody782_1919 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody782_1920 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 2#64)

def RemovedBody782_1921 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 1

def RemovedBody782_1922 : StackLang.HolProg 64 :=
.seq RemovedBody782_1920 RemovedBody782_1921

def RemovedBody782_1923 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody782_1924 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) RemovedBody782_1922 RemovedBody782_1923

def RemovedBody782_1925 : StackLang.HolProg 64 :=
.seq RemovedBody782_1919 RemovedBody782_1924

def RemovedBody782_1926 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def RemovedBody782_1927 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody782_1928 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 782 55

def RemovedBody782_1929 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody782_1930 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody782_1931 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody782_1932 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody782_1933 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def RemovedBody782_1934 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def RemovedBody782_1935 : StackLang.HolProg 64 :=
.seq RemovedBody782_1933 RemovedBody782_1934

def RemovedBody782_1936 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def RemovedBody782_1937 : StackLang.HolProg 64 :=
.seq RemovedBody782_1935 RemovedBody782_1936

def RemovedBody782_1938 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody782_1939 : StackLang.HolProg 64 :=
.seq RemovedBody782_1937 RemovedBody782_1938

def RemovedBody782_1940 : StackLang.HolProg 64 :=
.seq RemovedBody782_1932 RemovedBody782_1939

def RemovedBody782_1941 : StackLang.HolProg 64 :=
.seq RemovedBody782_1931 RemovedBody782_1940

def RemovedBody782_1942 : StackLang.HolProg 64 :=
.seq RemovedBody782_1930 RemovedBody782_1941

def RemovedBody782_1943 : StackLang.HolProg 64 :=
.seq RemovedBody782_1929 RemovedBody782_1942

def RemovedBody782_1944 : StackLang.HolProg 64 :=
.seq RemovedBody782_1928 RemovedBody782_1943

def RemovedBody782_1945 : StackLang.HolProg 64 :=
.seq RemovedBody782_1927 RemovedBody782_1944

def RemovedBody782_1946 : StackLang.HolProg 64 :=
.seq RemovedBody782_1926 RemovedBody782_1945

def RemovedBody782_1947 : StackLang.HolProg 64 :=
.seq RemovedBody782_1925 RemovedBody782_1946

def RemovedBody782_1948 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody782_1949 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody782_1950 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody782_1951 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody782_1952 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody782_1953 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody782_1954 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 3
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 104#64))

def RemovedBody782_1955 : StackLang.HolProg 64 :=
.seq RemovedBody782_1953 RemovedBody782_1954

def RemovedBody782_1956 : StackLang.HolProg 64 :=
.seq RemovedBody782_1952 RemovedBody782_1955

def RemovedBody782_1957 : StackLang.HolProg 64 :=
.seq RemovedBody782_1951 RemovedBody782_1956

def RemovedBody782_1958 : StackLang.HolProg 64 :=
.seq RemovedBody782_1950 RemovedBody782_1957

def RemovedBody782_1959 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 3
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 104#64))

def RemovedBody782_1960 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def RemovedBody782_1961 : StackLang.HolProg 64 :=
.seq RemovedBody782_1959 RemovedBody782_1960

def RemovedBody782_1962 : StackLang.HolProg 64 :=
.call (some (RemovedBody782_1958, 0, 782, 54)) (Sum.inl 734) (some (RemovedBody782_1961, 782, 55))

def RemovedBody782_1963 : StackLang.HolProg 64 :=
.seq RemovedBody782_1949 RemovedBody782_1962

def RemovedBody782_1964 : StackLang.HolProg 64 :=
.seq RemovedBody782_1948 RemovedBody782_1963

def RemovedBody782_1965 : StackLang.HolProg 64 :=
.seq RemovedBody782_1947 RemovedBody782_1964

def RemovedBody782_1966 : StackLang.HolProg 64 :=
.seq RemovedBody782_1918 RemovedBody782_1965

def RemovedBody782_1967 : StackLang.HolProg 64 :=
.seq RemovedBody782_1915 RemovedBody782_1966

def RemovedBody782_1968 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody782_1969 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 1 3
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 3)))

def RemovedBody782_1970 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 2 3
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 3)))

def RemovedBody782_1971 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 3
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 104#64))

def RemovedBody782_1972 : StackLang.HolProg 64 :=
.seq RemovedBody782_1970 RemovedBody782_1971

def RemovedBody782_1973 : StackLang.HolProg 64 :=
.seq RemovedBody782_1969 RemovedBody782_1972

def RemovedBody782_1974 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody782_1975 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 3577#64)

def RemovedBody782_1976 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody782_1977 : StackLang.HolProg 64 :=
.seq RemovedBody782_1975 RemovedBody782_1976

def RemovedBody782_1978 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody782_1979 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 2#64)

def RemovedBody782_1980 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 1

def RemovedBody782_1981 : StackLang.HolProg 64 :=
.seq RemovedBody782_1979 RemovedBody782_1980

def RemovedBody782_1982 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody782_1983 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) RemovedBody782_1981 RemovedBody782_1982

def RemovedBody782_1984 : StackLang.HolProg 64 :=
.seq RemovedBody782_1978 RemovedBody782_1983

def RemovedBody782_1985 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def RemovedBody782_1986 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody782_1987 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 782 57

def RemovedBody782_1988 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody782_1989 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody782_1990 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody782_1991 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody782_1992 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def RemovedBody782_1993 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def RemovedBody782_1994 : StackLang.HolProg 64 :=
.seq RemovedBody782_1992 RemovedBody782_1993

def RemovedBody782_1995 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def RemovedBody782_1996 : StackLang.HolProg 64 :=
.seq RemovedBody782_1994 RemovedBody782_1995

def RemovedBody782_1997 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody782_1998 : StackLang.HolProg 64 :=
.seq RemovedBody782_1996 RemovedBody782_1997

def RemovedBody782_1999 : StackLang.HolProg 64 :=
.seq RemovedBody782_1991 RemovedBody782_1998

def RemovedBody782_2000 : StackLang.HolProg 64 :=
.seq RemovedBody782_1990 RemovedBody782_1999

def RemovedBody782_2001 : StackLang.HolProg 64 :=
.seq RemovedBody782_1989 RemovedBody782_2000

def RemovedBody782_2002 : StackLang.HolProg 64 :=
.seq RemovedBody782_1988 RemovedBody782_2001

def RemovedBody782_2003 : StackLang.HolProg 64 :=
.seq RemovedBody782_1987 RemovedBody782_2002

def RemovedBody782_2004 : StackLang.HolProg 64 :=
.seq RemovedBody782_1986 RemovedBody782_2003

def RemovedBody782_2005 : StackLang.HolProg 64 :=
.seq RemovedBody782_1985 RemovedBody782_2004

def RemovedBody782_2006 : StackLang.HolProg 64 :=
.seq RemovedBody782_1984 RemovedBody782_2005

def RemovedBody782_2007 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody782_2008 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody782_2009 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody782_2010 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody782_2011 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody782_2012 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody782_2013 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 88#64))

def RemovedBody782_2014 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 2
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 80#64))

def RemovedBody782_2015 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 72#64))

def RemovedBody782_2016 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 80#64))

def RemovedBody782_2017 : StackLang.HolProg 64 :=
.seq RemovedBody782_2015 RemovedBody782_2016

def RemovedBody782_2018 : StackLang.HolProg 64 :=
.seq RemovedBody782_2014 RemovedBody782_2017

def RemovedBody782_2019 : StackLang.HolProg 64 :=
.seq RemovedBody782_2013 RemovedBody782_2018

def RemovedBody782_2020 : StackLang.HolProg 64 :=
.seq RemovedBody782_2012 RemovedBody782_2019

def RemovedBody782_2021 : StackLang.HolProg 64 :=
.seq RemovedBody782_2011 RemovedBody782_2020

def RemovedBody782_2022 : StackLang.HolProg 64 :=
.seq RemovedBody782_2010 RemovedBody782_2021

def RemovedBody782_2023 : StackLang.HolProg 64 :=
.seq RemovedBody782_2009 RemovedBody782_2022

def RemovedBody782_2024 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 88#64))

def RemovedBody782_2025 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 2
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 80#64))

def RemovedBody782_2026 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 72#64))

def RemovedBody782_2027 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 80#64))

def RemovedBody782_2028 : StackLang.HolProg 64 :=
.seq RemovedBody782_2026 RemovedBody782_2027

def RemovedBody782_2029 : StackLang.HolProg 64 :=
.seq RemovedBody782_2025 RemovedBody782_2028

def RemovedBody782_2030 : StackLang.HolProg 64 :=
.seq RemovedBody782_2024 RemovedBody782_2029

def RemovedBody782_2031 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def RemovedBody782_2032 : StackLang.HolProg 64 :=
.seq RemovedBody782_2030 RemovedBody782_2031

def RemovedBody782_2033 : StackLang.HolProg 64 :=
.call (some (RemovedBody782_2023, 0, 782, 56)) (Sum.inl 734) (some (RemovedBody782_2032, 782, 57))

def RemovedBody782_2034 : StackLang.HolProg 64 :=
.seq RemovedBody782_2008 RemovedBody782_2033

def RemovedBody782_2035 : StackLang.HolProg 64 :=
.seq RemovedBody782_2007 RemovedBody782_2034

def RemovedBody782_2036 : StackLang.HolProg 64 :=
.seq RemovedBody782_2006 RemovedBody782_2035

def RemovedBody782_2037 : StackLang.HolProg 64 :=
.seq RemovedBody782_1977 RemovedBody782_2036

def RemovedBody782_2038 : StackLang.HolProg 64 :=
.seq RemovedBody782_1974 RemovedBody782_2037

def RemovedBody782_2039 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody782_2040 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 1 0
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 0)))

def RemovedBody782_2041 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 88#64))

def RemovedBody782_2042 : StackLang.HolProg 64 :=
.seq RemovedBody782_2040 RemovedBody782_2041

def RemovedBody782_2043 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody782_2044 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 3578#64)

def RemovedBody782_2045 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody782_2046 : StackLang.HolProg 64 :=
.seq RemovedBody782_2044 RemovedBody782_2045

def RemovedBody782_2047 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody782_2048 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 2#64)

def RemovedBody782_2049 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 1

def RemovedBody782_2050 : StackLang.HolProg 64 :=
.seq RemovedBody782_2048 RemovedBody782_2049

def RemovedBody782_2051 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody782_2052 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) RemovedBody782_2050 RemovedBody782_2051

def RemovedBody782_2053 : StackLang.HolProg 64 :=
.seq RemovedBody782_2047 RemovedBody782_2052

def RemovedBody782_2054 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def RemovedBody782_2055 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody782_2056 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 782 59

def RemovedBody782_2057 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody782_2058 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody782_2059 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody782_2060 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody782_2061 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def RemovedBody782_2062 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def RemovedBody782_2063 : StackLang.HolProg 64 :=
.seq RemovedBody782_2061 RemovedBody782_2062

def RemovedBody782_2064 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def RemovedBody782_2065 : StackLang.HolProg 64 :=
.seq RemovedBody782_2063 RemovedBody782_2064

def RemovedBody782_2066 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody782_2067 : StackLang.HolProg 64 :=
.seq RemovedBody782_2065 RemovedBody782_2066

def RemovedBody782_2068 : StackLang.HolProg 64 :=
.seq RemovedBody782_2060 RemovedBody782_2067

def RemovedBody782_2069 : StackLang.HolProg 64 :=
.seq RemovedBody782_2059 RemovedBody782_2068

def RemovedBody782_2070 : StackLang.HolProg 64 :=
.seq RemovedBody782_2058 RemovedBody782_2069

def RemovedBody782_2071 : StackLang.HolProg 64 :=
.seq RemovedBody782_2057 RemovedBody782_2070

def RemovedBody782_2072 : StackLang.HolProg 64 :=
.seq RemovedBody782_2056 RemovedBody782_2071

def RemovedBody782_2073 : StackLang.HolProg 64 :=
.seq RemovedBody782_2055 RemovedBody782_2072

def RemovedBody782_2074 : StackLang.HolProg 64 :=
.seq RemovedBody782_2054 RemovedBody782_2073

def RemovedBody782_2075 : StackLang.HolProg 64 :=
.seq RemovedBody782_2053 RemovedBody782_2074

def RemovedBody782_2076 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody782_2077 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody782_2078 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody782_2079 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody782_2080 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody782_2081 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody782_2082 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 2
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 96#64))

def RemovedBody782_2083 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 88#64))

def RemovedBody782_2084 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 80#64))

def RemovedBody782_2085 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 88#64))

def RemovedBody782_2086 : StackLang.HolProg 64 :=
.seq RemovedBody782_2084 RemovedBody782_2085

def RemovedBody782_2087 : StackLang.HolProg 64 :=
.seq RemovedBody782_2083 RemovedBody782_2086

def RemovedBody782_2088 : StackLang.HolProg 64 :=
.seq RemovedBody782_2082 RemovedBody782_2087

def RemovedBody782_2089 : StackLang.HolProg 64 :=
.seq RemovedBody782_2081 RemovedBody782_2088

def RemovedBody782_2090 : StackLang.HolProg 64 :=
.seq RemovedBody782_2080 RemovedBody782_2089

def RemovedBody782_2091 : StackLang.HolProg 64 :=
.seq RemovedBody782_2079 RemovedBody782_2090

def RemovedBody782_2092 : StackLang.HolProg 64 :=
.seq RemovedBody782_2078 RemovedBody782_2091

def RemovedBody782_2093 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 2
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 96#64))

def RemovedBody782_2094 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 88#64))

def RemovedBody782_2095 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 80#64))

def RemovedBody782_2096 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 88#64))

def RemovedBody782_2097 : StackLang.HolProg 64 :=
.seq RemovedBody782_2095 RemovedBody782_2096

def RemovedBody782_2098 : StackLang.HolProg 64 :=
.seq RemovedBody782_2094 RemovedBody782_2097

def RemovedBody782_2099 : StackLang.HolProg 64 :=
.seq RemovedBody782_2093 RemovedBody782_2098

def RemovedBody782_2100 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def RemovedBody782_2101 : StackLang.HolProg 64 :=
.seq RemovedBody782_2099 RemovedBody782_2100

def RemovedBody782_2102 : StackLang.HolProg 64 :=
.call (some (RemovedBody782_2092, 0, 782, 58)) (Sum.inl 729) (some (RemovedBody782_2101, 782, 59))

def RemovedBody782_2103 : StackLang.HolProg 64 :=
.seq RemovedBody782_2077 RemovedBody782_2102

def RemovedBody782_2104 : StackLang.HolProg 64 :=
.seq RemovedBody782_2076 RemovedBody782_2103

def RemovedBody782_2105 : StackLang.HolProg 64 :=
.seq RemovedBody782_2075 RemovedBody782_2104

def RemovedBody782_2106 : StackLang.HolProg 64 :=
.seq RemovedBody782_2046 RemovedBody782_2105

def RemovedBody782_2107 : StackLang.HolProg 64 :=
.seq RemovedBody782_2043 RemovedBody782_2106

def RemovedBody782_2108 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody782_2109 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody782_2110 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 1 0
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 96#64)))

def RemovedBody782_2111 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 96#64))

def RemovedBody782_2112 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody782_2113 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 3579#64)

def RemovedBody782_2114 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody782_2115 : StackLang.HolProg 64 :=
.seq RemovedBody782_2113 RemovedBody782_2114

def RemovedBody782_2116 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody782_2117 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 2#64)

def RemovedBody782_2118 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 1

def RemovedBody782_2119 : StackLang.HolProg 64 :=
.seq RemovedBody782_2117 RemovedBody782_2118

def RemovedBody782_2120 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody782_2121 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) RemovedBody782_2119 RemovedBody782_2120

def RemovedBody782_2122 : StackLang.HolProg 64 :=
.seq RemovedBody782_2116 RemovedBody782_2121

def RemovedBody782_2123 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def RemovedBody782_2124 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody782_2125 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 782 61

def RemovedBody782_2126 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody782_2127 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody782_2128 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody782_2129 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody782_2130 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def RemovedBody782_2131 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def RemovedBody782_2132 : StackLang.HolProg 64 :=
.seq RemovedBody782_2130 RemovedBody782_2131

def RemovedBody782_2133 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def RemovedBody782_2134 : StackLang.HolProg 64 :=
.seq RemovedBody782_2132 RemovedBody782_2133

def RemovedBody782_2135 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody782_2136 : StackLang.HolProg 64 :=
.seq RemovedBody782_2134 RemovedBody782_2135

def RemovedBody782_2137 : StackLang.HolProg 64 :=
.seq RemovedBody782_2129 RemovedBody782_2136

def RemovedBody782_2138 : StackLang.HolProg 64 :=
.seq RemovedBody782_2128 RemovedBody782_2137

def RemovedBody782_2139 : StackLang.HolProg 64 :=
.seq RemovedBody782_2127 RemovedBody782_2138

def RemovedBody782_2140 : StackLang.HolProg 64 :=
.seq RemovedBody782_2126 RemovedBody782_2139

def RemovedBody782_2141 : StackLang.HolProg 64 :=
.seq RemovedBody782_2125 RemovedBody782_2140

def RemovedBody782_2142 : StackLang.HolProg 64 :=
.seq RemovedBody782_2124 RemovedBody782_2141

def RemovedBody782_2143 : StackLang.HolProg 64 :=
.seq RemovedBody782_2123 RemovedBody782_2142

def RemovedBody782_2144 : StackLang.HolProg 64 :=
.seq RemovedBody782_2122 RemovedBody782_2143

def RemovedBody782_2145 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody782_2146 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody782_2147 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody782_2148 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody782_2149 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody782_2150 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody782_2151 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 2
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 104#64))

def RemovedBody782_2152 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 96#64))

def RemovedBody782_2153 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 88#64))

def RemovedBody782_2154 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 104#64))

def RemovedBody782_2155 : StackLang.HolProg 64 :=
.seq RemovedBody782_2153 RemovedBody782_2154

def RemovedBody782_2156 : StackLang.HolProg 64 :=
.seq RemovedBody782_2152 RemovedBody782_2155

def RemovedBody782_2157 : StackLang.HolProg 64 :=
.seq RemovedBody782_2151 RemovedBody782_2156

def RemovedBody782_2158 : StackLang.HolProg 64 :=
.seq RemovedBody782_2150 RemovedBody782_2157

def RemovedBody782_2159 : StackLang.HolProg 64 :=
.seq RemovedBody782_2149 RemovedBody782_2158

def RemovedBody782_2160 : StackLang.HolProg 64 :=
.seq RemovedBody782_2148 RemovedBody782_2159

def RemovedBody782_2161 : StackLang.HolProg 64 :=
.seq RemovedBody782_2147 RemovedBody782_2160

def RemovedBody782_2162 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 2
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 104#64))

def RemovedBody782_2163 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 96#64))

def RemovedBody782_2164 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 88#64))

def RemovedBody782_2165 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 104#64))

def RemovedBody782_2166 : StackLang.HolProg 64 :=
.seq RemovedBody782_2164 RemovedBody782_2165

def RemovedBody782_2167 : StackLang.HolProg 64 :=
.seq RemovedBody782_2163 RemovedBody782_2166

def RemovedBody782_2168 : StackLang.HolProg 64 :=
.seq RemovedBody782_2162 RemovedBody782_2167

def RemovedBody782_2169 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def RemovedBody782_2170 : StackLang.HolProg 64 :=
.seq RemovedBody782_2168 RemovedBody782_2169

def RemovedBody782_2171 : StackLang.HolProg 64 :=
.call (some (RemovedBody782_2161, 0, 782, 60)) (Sum.inl 729) (some (RemovedBody782_2170, 782, 61))

def RemovedBody782_2172 : StackLang.HolProg 64 :=
.seq RemovedBody782_2146 RemovedBody782_2171

def RemovedBody782_2173 : StackLang.HolProg 64 :=
.seq RemovedBody782_2145 RemovedBody782_2172

def RemovedBody782_2174 : StackLang.HolProg 64 :=
.seq RemovedBody782_2144 RemovedBody782_2173

def RemovedBody782_2175 : StackLang.HolProg 64 :=
.seq RemovedBody782_2115 RemovedBody782_2174

def RemovedBody782_2176 : StackLang.HolProg 64 :=
.seq RemovedBody782_2112 RemovedBody782_2175

def RemovedBody782_2177 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody782_2178 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody782_2179 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 1 0
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 192#64)))

def RemovedBody782_2180 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody782_2181 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody782_2182 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 3580#64)

def RemovedBody782_2183 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody782_2184 : StackLang.HolProg 64 :=
.seq RemovedBody782_2182 RemovedBody782_2183

def RemovedBody782_2185 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody782_2186 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 2#64)

def RemovedBody782_2187 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 1

def RemovedBody782_2188 : StackLang.HolProg 64 :=
.seq RemovedBody782_2186 RemovedBody782_2187

def RemovedBody782_2189 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody782_2190 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) RemovedBody782_2188 RemovedBody782_2189

def RemovedBody782_2191 : StackLang.HolProg 64 :=
.seq RemovedBody782_2185 RemovedBody782_2190

def RemovedBody782_2192 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def RemovedBody782_2193 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody782_2194 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 782 63

def RemovedBody782_2195 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody782_2196 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody782_2197 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody782_2198 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody782_2199 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def RemovedBody782_2200 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def RemovedBody782_2201 : StackLang.HolProg 64 :=
.seq RemovedBody782_2199 RemovedBody782_2200

def RemovedBody782_2202 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def RemovedBody782_2203 : StackLang.HolProg 64 :=
.seq RemovedBody782_2201 RemovedBody782_2202

def RemovedBody782_2204 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody782_2205 : StackLang.HolProg 64 :=
.seq RemovedBody782_2203 RemovedBody782_2204

def RemovedBody782_2206 : StackLang.HolProg 64 :=
.seq RemovedBody782_2198 RemovedBody782_2205

def RemovedBody782_2207 : StackLang.HolProg 64 :=
.seq RemovedBody782_2197 RemovedBody782_2206

def RemovedBody782_2208 : StackLang.HolProg 64 :=
.seq RemovedBody782_2196 RemovedBody782_2207

def RemovedBody782_2209 : StackLang.HolProg 64 :=
.seq RemovedBody782_2195 RemovedBody782_2208

def RemovedBody782_2210 : StackLang.HolProg 64 :=
.seq RemovedBody782_2194 RemovedBody782_2209

def RemovedBody782_2211 : StackLang.HolProg 64 :=
.seq RemovedBody782_2193 RemovedBody782_2210

def RemovedBody782_2212 : StackLang.HolProg 64 :=
.seq RemovedBody782_2192 RemovedBody782_2211

def RemovedBody782_2213 : StackLang.HolProg 64 :=
.seq RemovedBody782_2191 RemovedBody782_2212

def RemovedBody782_2214 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody782_2215 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody782_2216 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody782_2217 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody782_2218 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody782_2219 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody782_2220 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 104#64))

def RemovedBody782_2221 : StackLang.HolProg 64 :=
.seq RemovedBody782_2219 RemovedBody782_2220

def RemovedBody782_2222 : StackLang.HolProg 64 :=
.seq RemovedBody782_2218 RemovedBody782_2221

def RemovedBody782_2223 : StackLang.HolProg 64 :=
.seq RemovedBody782_2217 RemovedBody782_2222

def RemovedBody782_2224 : StackLang.HolProg 64 :=
.seq RemovedBody782_2216 RemovedBody782_2223

def RemovedBody782_2225 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 104#64))

def RemovedBody782_2226 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def RemovedBody782_2227 : StackLang.HolProg 64 :=
.seq RemovedBody782_2225 RemovedBody782_2226

def RemovedBody782_2228 : StackLang.HolProg 64 :=
.call (some (RemovedBody782_2224, 0, 782, 62)) (Sum.inl 729) (some (RemovedBody782_2227, 782, 63))

def RemovedBody782_2229 : StackLang.HolProg 64 :=
.seq RemovedBody782_2215 RemovedBody782_2228

def RemovedBody782_2230 : StackLang.HolProg 64 :=
.seq RemovedBody782_2214 RemovedBody782_2229

def RemovedBody782_2231 : StackLang.HolProg 64 :=
.seq RemovedBody782_2213 RemovedBody782_2230

def RemovedBody782_2232 : StackLang.HolProg 64 :=
.seq RemovedBody782_2184 RemovedBody782_2231

def RemovedBody782_2233 : StackLang.HolProg 64 :=
.seq RemovedBody782_2181 RemovedBody782_2232

def RemovedBody782_2234 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody782_2235 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 1 0
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 0)))

def RemovedBody782_2236 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody782_2237 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 3581#64)

def RemovedBody782_2238 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody782_2239 : StackLang.HolProg 64 :=
.seq RemovedBody782_2237 RemovedBody782_2238

def RemovedBody782_2240 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody782_2241 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 2#64)

def RemovedBody782_2242 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 1

def RemovedBody782_2243 : StackLang.HolProg 64 :=
.seq RemovedBody782_2241 RemovedBody782_2242

def RemovedBody782_2244 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody782_2245 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) RemovedBody782_2243 RemovedBody782_2244

def RemovedBody782_2246 : StackLang.HolProg 64 :=
.seq RemovedBody782_2240 RemovedBody782_2245

def RemovedBody782_2247 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def RemovedBody782_2248 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody782_2249 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 782 65

def RemovedBody782_2250 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody782_2251 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody782_2252 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody782_2253 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody782_2254 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def RemovedBody782_2255 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def RemovedBody782_2256 : StackLang.HolProg 64 :=
.seq RemovedBody782_2254 RemovedBody782_2255

def RemovedBody782_2257 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def RemovedBody782_2258 : StackLang.HolProg 64 :=
.seq RemovedBody782_2256 RemovedBody782_2257

def RemovedBody782_2259 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody782_2260 : StackLang.HolProg 64 :=
.seq RemovedBody782_2258 RemovedBody782_2259

def RemovedBody782_2261 : StackLang.HolProg 64 :=
.seq RemovedBody782_2253 RemovedBody782_2260

def RemovedBody782_2262 : StackLang.HolProg 64 :=
.seq RemovedBody782_2252 RemovedBody782_2261

def RemovedBody782_2263 : StackLang.HolProg 64 :=
.seq RemovedBody782_2251 RemovedBody782_2262

def RemovedBody782_2264 : StackLang.HolProg 64 :=
.seq RemovedBody782_2250 RemovedBody782_2263

def RemovedBody782_2265 : StackLang.HolProg 64 :=
.seq RemovedBody782_2249 RemovedBody782_2264

def RemovedBody782_2266 : StackLang.HolProg 64 :=
.seq RemovedBody782_2248 RemovedBody782_2265

def RemovedBody782_2267 : StackLang.HolProg 64 :=
.seq RemovedBody782_2247 RemovedBody782_2266

def RemovedBody782_2268 : StackLang.HolProg 64 :=
.seq RemovedBody782_2246 RemovedBody782_2267

def RemovedBody782_2269 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody782_2270 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody782_2271 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody782_2272 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody782_2273 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody782_2274 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody782_2275 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 112#64))

def RemovedBody782_2276 : StackLang.HolProg 64 :=
.seq RemovedBody782_2274 RemovedBody782_2275

def RemovedBody782_2277 : StackLang.HolProg 64 :=
.seq RemovedBody782_2273 RemovedBody782_2276

def RemovedBody782_2278 : StackLang.HolProg 64 :=
.seq RemovedBody782_2272 RemovedBody782_2277

def RemovedBody782_2279 : StackLang.HolProg 64 :=
.seq RemovedBody782_2271 RemovedBody782_2278

def RemovedBody782_2280 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 112#64))

def RemovedBody782_2281 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def RemovedBody782_2282 : StackLang.HolProg 64 :=
.seq RemovedBody782_2280 RemovedBody782_2281

def RemovedBody782_2283 : StackLang.HolProg 64 :=
.call (some (RemovedBody782_2279, 0, 782, 64)) (Sum.inl 70) (some (RemovedBody782_2282, 782, 65))

def RemovedBody782_2284 : StackLang.HolProg 64 :=
.seq RemovedBody782_2270 RemovedBody782_2283

def RemovedBody782_2285 : StackLang.HolProg 64 :=
.seq RemovedBody782_2269 RemovedBody782_2284

def RemovedBody782_2286 : StackLang.HolProg 64 :=
.seq RemovedBody782_2268 RemovedBody782_2285

def RemovedBody782_2287 : StackLang.HolProg 64 :=
.seq RemovedBody782_2239 RemovedBody782_2286

def RemovedBody782_2288 : StackLang.HolProg 64 :=
.seq RemovedBody782_2236 RemovedBody782_2287

def RemovedBody782_2289 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody782_2290 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 0#64)

def RemovedBody782_2291 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody782_2292 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 120#64)))

def RemovedBody782_2293 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 0

def RemovedBody782_2294 : StackLang.HolProg 64 :=
.seq RemovedBody782_2292 RemovedBody782_2293

def RemovedBody782_2295 : StackLang.HolProg 64 :=
.seq RemovedBody782_2291 RemovedBody782_2294

def RemovedBody782_2296 : StackLang.HolProg 64 :=
.seq RemovedBody782_2290 RemovedBody782_2295

def RemovedBody782_2297 : StackLang.HolProg 64 :=
.seq RemovedBody782_2289 RemovedBody782_2296

def RemovedBody782_2298 : StackLang.HolProg 64 :=
.seq RemovedBody782_2288 RemovedBody782_2297

def RemovedBody782_2299 : StackLang.HolProg 64 :=
.seq RemovedBody782_2235 RemovedBody782_2298

def RemovedBody782_2300 : StackLang.HolProg 64 :=
.seq RemovedBody782_2234 RemovedBody782_2299

def RemovedBody782_2301 : StackLang.HolProg 64 :=
.seq RemovedBody782_2233 RemovedBody782_2300

def RemovedBody782_2302 : StackLang.HolProg 64 :=
.seq RemovedBody782_2180 RemovedBody782_2301

def RemovedBody782_2303 : StackLang.HolProg 64 :=
.seq RemovedBody782_2179 RemovedBody782_2302

def RemovedBody782_2304 : StackLang.HolProg 64 :=
.seq RemovedBody782_2178 RemovedBody782_2303

def RemovedBody782_2305 : StackLang.HolProg 64 :=
.seq RemovedBody782_2177 RemovedBody782_2304

def RemovedBody782_2306 : StackLang.HolProg 64 :=
.seq RemovedBody782_2176 RemovedBody782_2305

def RemovedBody782_2307 : StackLang.HolProg 64 :=
.seq RemovedBody782_2111 RemovedBody782_2306

def RemovedBody782_2308 : StackLang.HolProg 64 :=
.seq RemovedBody782_2110 RemovedBody782_2307

def RemovedBody782_2309 : StackLang.HolProg 64 :=
.seq RemovedBody782_2109 RemovedBody782_2308

def RemovedBody782_2310 : StackLang.HolProg 64 :=
.seq RemovedBody782_2108 RemovedBody782_2309

def RemovedBody782_2311 : StackLang.HolProg 64 :=
.seq RemovedBody782_2107 RemovedBody782_2310

def RemovedBody782_2312 : StackLang.HolProg 64 :=
.seq RemovedBody782_2042 RemovedBody782_2311

def RemovedBody782_2313 : StackLang.HolProg 64 :=
.seq RemovedBody782_2039 RemovedBody782_2312

def RemovedBody782_2314 : StackLang.HolProg 64 :=
.seq RemovedBody782_2038 RemovedBody782_2313

def RemovedBody782_2315 : StackLang.HolProg 64 :=
.seq RemovedBody782_1973 RemovedBody782_2314

def RemovedBody782_2316 : StackLang.HolProg 64 :=
.seq RemovedBody782_1968 RemovedBody782_2315

def RemovedBody782_2317 : StackLang.HolProg 64 :=
.seq RemovedBody782_1967 RemovedBody782_2316

def RemovedBody782_2318 : StackLang.HolProg 64 :=
.seq RemovedBody782_1914 RemovedBody782_2317

def RemovedBody782_2319 : StackLang.HolProg 64 :=
.seq RemovedBody782_1909 RemovedBody782_2318

def RemovedBody782_2320 : StackLang.HolProg 64 :=
.seq RemovedBody782_1908 RemovedBody782_2319

def RemovedBody782_2321 : StackLang.HolProg 64 :=
.seq RemovedBody782_1855 RemovedBody782_2320

def RemovedBody782_2322 : StackLang.HolProg 64 :=
.seq RemovedBody782_1850 RemovedBody782_2321

def RemovedBody782_2323 : StackLang.HolProg 64 :=
.seq RemovedBody782_1849 RemovedBody782_2322

def RemovedBody782_2324 : StackLang.HolProg 64 :=
.seq RemovedBody782_1796 RemovedBody782_2323

def RemovedBody782_2325 : StackLang.HolProg 64 :=
.seq RemovedBody782_1793 RemovedBody782_2324

def RemovedBody782_2326 : StackLang.HolProg 64 :=
.seq RemovedBody782_1792 RemovedBody782_2325

def RemovedBody782_2327 : StackLang.HolProg 64 :=
.seq RemovedBody782_1699 RemovedBody782_2326

def RemovedBody782_2328 : StackLang.HolProg 64 :=
.seq RemovedBody782_1694 RemovedBody782_2327

def RemovedBody782_2329 : StackLang.HolProg 64 :=
.seq RemovedBody782_1693 RemovedBody782_2328

def RemovedBody782_2330 : StackLang.HolProg 64 :=
.seq RemovedBody782_1636 RemovedBody782_2329

def RemovedBody782_2331 : StackLang.HolProg 64 :=
.seq RemovedBody782_1631 RemovedBody782_2330

def RemovedBody782_2332 : StackLang.HolProg 64 :=
.seq RemovedBody782_1630 RemovedBody782_2331

def RemovedBody782_2333 : StackLang.HolProg 64 :=
.seq RemovedBody782_1577 RemovedBody782_2332

def RemovedBody782_2334 : StackLang.HolProg 64 :=
.seq RemovedBody782_1572 RemovedBody782_2333

def RemovedBody782_2335 : StackLang.HolProg 64 :=
.seq RemovedBody782_1571 RemovedBody782_2334

def RemovedBody782_2336 : StackLang.HolProg 64 :=
.seq RemovedBody782_1518 RemovedBody782_2335

def RemovedBody782_2337 : StackLang.HolProg 64 :=
.seq RemovedBody782_1513 RemovedBody782_2336

def RemovedBody782_2338 : StackLang.HolProg 64 :=
.seq RemovedBody782_1512 RemovedBody782_2337

def RemovedBody782_2339 : StackLang.HolProg 64 :=
.seq RemovedBody782_1459 RemovedBody782_2338

def RemovedBody782_2340 : StackLang.HolProg 64 :=
.seq RemovedBody782_1454 RemovedBody782_2339

def RemovedBody782_2341 : StackLang.HolProg 64 :=
.seq RemovedBody782_1453 RemovedBody782_2340

def RemovedBody782_2342 : StackLang.HolProg 64 :=
.seq RemovedBody782_1396 RemovedBody782_2341

def RemovedBody782_2343 : StackLang.HolProg 64 :=
.seq RemovedBody782_1393 RemovedBody782_2342

def RemovedBody782_2344 : StackLang.HolProg 64 :=
.seq RemovedBody782_1392 RemovedBody782_2343

def RemovedBody782_2345 : StackLang.HolProg 64 :=
.seq RemovedBody782_1295 RemovedBody782_2344

def RemovedBody782_2346 : StackLang.HolProg 64 :=
.seq RemovedBody782_1290 RemovedBody782_2345

def RemovedBody782_2347 : StackLang.HolProg 64 :=
.seq RemovedBody782_1289 RemovedBody782_2346

def RemovedBody782_2348 : StackLang.HolProg 64 :=
.seq RemovedBody782_1220 RemovedBody782_2347

def RemovedBody782_2349 : StackLang.HolProg 64 :=
.seq RemovedBody782_1217 RemovedBody782_2348

def RemovedBody782_2350 : StackLang.HolProg 64 :=
.seq RemovedBody782_1216 RemovedBody782_2349

def RemovedBody782_2351 : StackLang.HolProg 64 :=
.seq RemovedBody782_1095 RemovedBody782_2350

def RemovedBody782_2352 : StackLang.HolProg 64 :=
.seq RemovedBody782_1090 RemovedBody782_2351

def RemovedBody782_2353 : StackLang.HolProg 64 :=
.seq RemovedBody782_1089 RemovedBody782_2352

def RemovedBody782_2354 : StackLang.HolProg 64 :=
.seq RemovedBody782_1036 RemovedBody782_2353

def RemovedBody782_2355 : StackLang.HolProg 64 :=
.seq RemovedBody782_1029 RemovedBody782_2354

def RemovedBody782_2356 : StackLang.HolProg 64 :=
.seq RemovedBody782_1028 RemovedBody782_2355

def RemovedBody782_2357 : StackLang.HolProg 64 :=
.seq RemovedBody782_967 RemovedBody782_2356

def RemovedBody782_2358 : StackLang.HolProg 64 :=
.seq RemovedBody782_962 RemovedBody782_2357

def RemovedBody782_2359 : StackLang.HolProg 64 :=
.seq RemovedBody782_961 RemovedBody782_2358

def RemovedBody782_2360 : StackLang.HolProg 64 :=
.seq RemovedBody782_904 RemovedBody782_2359

def RemovedBody782_2361 : StackLang.HolProg 64 :=
.seq RemovedBody782_899 RemovedBody782_2360

def RemovedBody782_2362 : StackLang.HolProg 64 :=
.seq RemovedBody782_898 RemovedBody782_2361

def RemovedBody782_2363 : StackLang.HolProg 64 :=
.seq RemovedBody782_841 RemovedBody782_2362

def RemovedBody782_2364 : StackLang.HolProg 64 :=
.seq RemovedBody782_836 RemovedBody782_2363

def RemovedBody782_2365 : StackLang.HolProg 64 :=
.seq RemovedBody782_835 RemovedBody782_2364

def RemovedBody782_2366 : StackLang.HolProg 64 :=
.seq RemovedBody782_778 RemovedBody782_2365

def RemovedBody782_2367 : StackLang.HolProg 64 :=
.seq RemovedBody782_771 RemovedBody782_2366

def RemovedBody782_2368 : StackLang.HolProg 64 :=
.seq RemovedBody782_770 RemovedBody782_2367

def RemovedBody782_2369 : StackLang.HolProg 64 :=
.seq RemovedBody782_713 RemovedBody782_2368

def RemovedBody782_2370 : StackLang.HolProg 64 :=
.seq RemovedBody782_708 RemovedBody782_2369

def RemovedBody782_2371 : StackLang.HolProg 64 :=
.seq RemovedBody782_707 RemovedBody782_2370

def RemovedBody782_2372 : StackLang.HolProg 64 :=
.seq RemovedBody782_654 RemovedBody782_2371

def RemovedBody782_2373 : StackLang.HolProg 64 :=
.seq RemovedBody782_649 RemovedBody782_2372

def RemovedBody782_2374 : StackLang.HolProg 64 :=
.seq RemovedBody782_648 RemovedBody782_2373

def RemovedBody782_2375 : StackLang.HolProg 64 :=
.seq RemovedBody782_535 RemovedBody782_2374

def RemovedBody782_2376 : StackLang.HolProg 64 :=
.seq RemovedBody782_530 RemovedBody782_2375

def RemovedBody782_2377 : StackLang.HolProg 64 :=
.seq RemovedBody782_529 RemovedBody782_2376

def RemovedBody782_2378 : StackLang.HolProg 64 :=
.seq RemovedBody782_472 RemovedBody782_2377

def RemovedBody782_2379 : StackLang.HolProg 64 :=
.seq RemovedBody782_467 RemovedBody782_2378

def RemovedBody782_2380 : StackLang.HolProg 64 :=
.seq RemovedBody782_466 RemovedBody782_2379

def RemovedBody782_2381 : StackLang.HolProg 64 :=
.seq RemovedBody782_365 RemovedBody782_2380

def RemovedBody782_2382 : StackLang.HolProg 64 :=
.seq RemovedBody782_360 RemovedBody782_2381

def RemovedBody782_2383 : StackLang.HolProg 64 :=
.seq RemovedBody782_359 RemovedBody782_2382

def RemovedBody782_2384 : StackLang.HolProg 64 :=
.seq RemovedBody782_290 RemovedBody782_2383

def RemovedBody782_2385 : StackLang.HolProg 64 :=
.seq RemovedBody782_285 RemovedBody782_2384

def RemovedBody782_2386 : StackLang.HolProg 64 :=
.seq RemovedBody782_284 RemovedBody782_2385

def RemovedBody782_2387 : StackLang.HolProg 64 :=
.seq RemovedBody782_227 RemovedBody782_2386

def RemovedBody782_2388 : StackLang.HolProg 64 :=
.seq RemovedBody782_220 RemovedBody782_2387

def RemovedBody782_2389 : StackLang.HolProg 64 :=
.seq RemovedBody782_219 RemovedBody782_2388

def RemovedBody782_2390 : StackLang.HolProg 64 :=
.seq RemovedBody782_162 RemovedBody782_2389

def RemovedBody782_2391 : StackLang.HolProg 64 :=
.seq RemovedBody782_141 RemovedBody782_2390

def RemovedBody782_2392 : StackLang.HolProg 64 :=
.seq RemovedBody782_140 RemovedBody782_2391

def RemovedBody782_2393 : StackLang.HolProg 64 :=
.seq RemovedBody782_139 RemovedBody782_2392

def RemovedBody782_2394 : StackLang.HolProg 64 :=
.seq RemovedBody782_138 RemovedBody782_2393

def RemovedBody782_2395 : StackLang.HolProg 64 :=
.seq RemovedBody782_137 RemovedBody782_2394

def RemovedBody782_2396 : StackLang.HolProg 64 :=
.seq RemovedBody782_136 RemovedBody782_2395

def RemovedBody782_2397 : StackLang.HolProg 64 :=
.seq RemovedBody782_135 RemovedBody782_2396

def RemovedBody782_2398 : StackLang.HolProg 64 :=
.seq RemovedBody782_134 RemovedBody782_2397

def RemovedBody782_2399 : StackLang.HolProg 64 :=
.seq RemovedBody782_133 RemovedBody782_2398

def RemovedBody782_2400 : StackLang.HolProg 64 :=
.seq RemovedBody782_132 RemovedBody782_2399

def RemovedBody782_2401 : StackLang.HolProg 64 :=
.seq RemovedBody782_131 RemovedBody782_2400

def RemovedBody782_2402 : StackLang.HolProg 64 :=
.seq RemovedBody782_130 RemovedBody782_2401

def RemovedBody782_2403 : StackLang.HolProg 64 :=
.seq RemovedBody782_129 RemovedBody782_2402

def RemovedBody782_2404 : StackLang.HolProg 64 :=
.seq RemovedBody782_128 RemovedBody782_2403

def RemovedBody782_2405 : StackLang.HolProg 64 :=
.seq RemovedBody782_127 RemovedBody782_2404

def RemovedBody782_2406 : StackLang.HolProg 64 :=
.seq RemovedBody782_126 RemovedBody782_2405

def RemovedBody782_2407 : StackLang.HolProg 64 :=
.seq RemovedBody782_125 RemovedBody782_2406

def RemovedBody782_2408 : StackLang.HolProg 64 :=
.seq RemovedBody782_124 RemovedBody782_2407

def RemovedBody782_2409 : StackLang.HolProg 64 :=
.seq RemovedBody782_123 RemovedBody782_2408

def RemovedBody782_2410 : StackLang.HolProg 64 :=
.seq RemovedBody782_122 RemovedBody782_2409

def RemovedBody782_2411 : StackLang.HolProg 64 :=
.seq RemovedBody782_67 RemovedBody782_2410

def RemovedBody782_2412 : StackLang.HolProg 64 :=
.seq RemovedBody782_66 RemovedBody782_2411

def RemovedBody782_2413 : StackLang.HolProg 64 :=
.seq RemovedBody782_65 RemovedBody782_2412

def RemovedBody782_2414 : StackLang.HolProg 64 :=
.seq RemovedBody782_64 RemovedBody782_2413

def RemovedBody782_2415 : StackLang.HolProg 64 :=
.seq RemovedBody782_11 RemovedBody782_2414

def RemovedBody782_2416 : StackLang.HolProg 64 :=
.seq RemovedBody782_6 RemovedBody782_2415

def Removed782 : Nat × StackLang.HolProg 64 := (782, RemovedBody782_2416)
theorem Removed782_eq : StackRemove.progComp false riscvConfig.addrOffset (riscvConfig.regCount - (riscvConfig.avoidRegs.length + 3)) Alloc782 = Removed782 := by
  kernel_rfl
#print axioms Removed782_eq
end InitECandidate.Proofs.BackendStages
