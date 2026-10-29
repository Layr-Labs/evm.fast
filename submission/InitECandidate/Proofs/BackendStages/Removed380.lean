import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.BackendStages.Alloc380
import Flapjack.Compiler.Backend.Backend
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
namespace InitECandidate.Proofs.BackendStages
def RemovedBody380_0 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 40#64)))

def RemovedBody380_1 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 2#64)

def RemovedBody380_2 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 1

def RemovedBody380_3 : StackLang.HolProg 64 :=
.seq RemovedBody380_1 RemovedBody380_2

def RemovedBody380_4 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody380_5 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) RemovedBody380_3 RemovedBody380_4

def RemovedBody380_6 : StackLang.HolProg 64 :=
.seq RemovedBody380_0 RemovedBody380_5

def RemovedBody380_7 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 32#64))

def RemovedBody380_8 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 2
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody380_9 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 24#64))

def RemovedBody380_10 : StackLang.HolProg 64 :=
.seq RemovedBody380_8 RemovedBody380_9

def RemovedBody380_11 : StackLang.HolProg 64 :=
.seq RemovedBody380_7 RemovedBody380_10

def RemovedBody380_12 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody380_13 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1114#64)

def RemovedBody380_14 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody380_15 : StackLang.HolProg 64 :=
.seq RemovedBody380_13 RemovedBody380_14

def RemovedBody380_16 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody380_17 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 2#64)

def RemovedBody380_18 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 1

def RemovedBody380_19 : StackLang.HolProg 64 :=
.seq RemovedBody380_17 RemovedBody380_18

def RemovedBody380_20 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody380_21 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) RemovedBody380_19 RemovedBody380_20

def RemovedBody380_22 : StackLang.HolProg 64 :=
.seq RemovedBody380_16 RemovedBody380_21

def RemovedBody380_23 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def RemovedBody380_24 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody380_25 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 380 3

def RemovedBody380_26 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody380_27 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody380_28 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody380_29 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody380_30 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def RemovedBody380_31 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def RemovedBody380_32 : StackLang.HolProg 64 :=
.seq RemovedBody380_30 RemovedBody380_31

def RemovedBody380_33 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def RemovedBody380_34 : StackLang.HolProg 64 :=
.seq RemovedBody380_32 RemovedBody380_33

def RemovedBody380_35 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody380_36 : StackLang.HolProg 64 :=
.seq RemovedBody380_34 RemovedBody380_35

def RemovedBody380_37 : StackLang.HolProg 64 :=
.seq RemovedBody380_29 RemovedBody380_36

def RemovedBody380_38 : StackLang.HolProg 64 :=
.seq RemovedBody380_28 RemovedBody380_37

def RemovedBody380_39 : StackLang.HolProg 64 :=
.seq RemovedBody380_27 RemovedBody380_38

def RemovedBody380_40 : StackLang.HolProg 64 :=
.seq RemovedBody380_26 RemovedBody380_39

def RemovedBody380_41 : StackLang.HolProg 64 :=
.seq RemovedBody380_25 RemovedBody380_40

def RemovedBody380_42 : StackLang.HolProg 64 :=
.seq RemovedBody380_24 RemovedBody380_41

def RemovedBody380_43 : StackLang.HolProg 64 :=
.seq RemovedBody380_23 RemovedBody380_42

def RemovedBody380_44 : StackLang.HolProg 64 :=
.seq RemovedBody380_22 RemovedBody380_43

def RemovedBody380_45 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody380_46 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody380_47 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody380_48 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody380_49 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody380_50 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody380_51 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 0 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def RemovedBody380_52 : StackLang.HolProg 64 :=
.seq RemovedBody380_50 RemovedBody380_51

def RemovedBody380_53 : StackLang.HolProg 64 :=
.seq RemovedBody380_49 RemovedBody380_52

def RemovedBody380_54 : StackLang.HolProg 64 :=
.seq RemovedBody380_48 RemovedBody380_53

def RemovedBody380_55 : StackLang.HolProg 64 :=
.seq RemovedBody380_47 RemovedBody380_54

def RemovedBody380_56 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody380_57 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def RemovedBody380_58 : StackLang.HolProg 64 :=
.seq RemovedBody380_56 RemovedBody380_57

def RemovedBody380_59 : StackLang.HolProg 64 :=
.call (some (RemovedBody380_55, 0, 380, 2)) (Sum.inl 69) (some (RemovedBody380_58, 380, 3))

def RemovedBody380_60 : StackLang.HolProg 64 :=
.seq RemovedBody380_46 RemovedBody380_59

def RemovedBody380_61 : StackLang.HolProg 64 :=
.seq RemovedBody380_45 RemovedBody380_60

def RemovedBody380_62 : StackLang.HolProg 64 :=
.seq RemovedBody380_44 RemovedBody380_61

def RemovedBody380_63 : StackLang.HolProg 64 :=
.seq RemovedBody380_15 RemovedBody380_62

def RemovedBody380_64 : StackLang.HolProg 64 :=
.seq RemovedBody380_12 RemovedBody380_63

def RemovedBody380_65 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody380_66 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 32#64)

def RemovedBody380_67 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody380_68 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody380_69 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1115#64)

def RemovedBody380_70 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody380_71 : StackLang.HolProg 64 :=
.seq RemovedBody380_69 RemovedBody380_70

def RemovedBody380_72 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody380_73 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 2#64)

def RemovedBody380_74 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 1

def RemovedBody380_75 : StackLang.HolProg 64 :=
.seq RemovedBody380_73 RemovedBody380_74

def RemovedBody380_76 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody380_77 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) RemovedBody380_75 RemovedBody380_76

def RemovedBody380_78 : StackLang.HolProg 64 :=
.seq RemovedBody380_72 RemovedBody380_77

def RemovedBody380_79 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def RemovedBody380_80 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody380_81 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 380 5

def RemovedBody380_82 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody380_83 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody380_84 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody380_85 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody380_86 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def RemovedBody380_87 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def RemovedBody380_88 : StackLang.HolProg 64 :=
.seq RemovedBody380_86 RemovedBody380_87

def RemovedBody380_89 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def RemovedBody380_90 : StackLang.HolProg 64 :=
.seq RemovedBody380_88 RemovedBody380_89

def RemovedBody380_91 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody380_92 : StackLang.HolProg 64 :=
.seq RemovedBody380_90 RemovedBody380_91

def RemovedBody380_93 : StackLang.HolProg 64 :=
.seq RemovedBody380_85 RemovedBody380_92

def RemovedBody380_94 : StackLang.HolProg 64 :=
.seq RemovedBody380_84 RemovedBody380_93

def RemovedBody380_95 : StackLang.HolProg 64 :=
.seq RemovedBody380_83 RemovedBody380_94

def RemovedBody380_96 : StackLang.HolProg 64 :=
.seq RemovedBody380_82 RemovedBody380_95

def RemovedBody380_97 : StackLang.HolProg 64 :=
.seq RemovedBody380_81 RemovedBody380_96

def RemovedBody380_98 : StackLang.HolProg 64 :=
.seq RemovedBody380_80 RemovedBody380_97

def RemovedBody380_99 : StackLang.HolProg 64 :=
.seq RemovedBody380_79 RemovedBody380_98

def RemovedBody380_100 : StackLang.HolProg 64 :=
.seq RemovedBody380_78 RemovedBody380_99

def RemovedBody380_101 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody380_102 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody380_103 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody380_104 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody380_105 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody380_106 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody380_107 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 3 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def RemovedBody380_108 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 24#64))

def RemovedBody380_109 : StackLang.HolProg 64 :=
.seq RemovedBody380_107 RemovedBody380_108

def RemovedBody380_110 : StackLang.HolProg 64 :=
.seq RemovedBody380_106 RemovedBody380_109

def RemovedBody380_111 : StackLang.HolProg 64 :=
.seq RemovedBody380_105 RemovedBody380_110

def RemovedBody380_112 : StackLang.HolProg 64 :=
.seq RemovedBody380_104 RemovedBody380_111

def RemovedBody380_113 : StackLang.HolProg 64 :=
.seq RemovedBody380_103 RemovedBody380_112

def RemovedBody380_114 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 24#64))

def RemovedBody380_115 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def RemovedBody380_116 : StackLang.HolProg 64 :=
.seq RemovedBody380_114 RemovedBody380_115

def RemovedBody380_117 : StackLang.HolProg 64 :=
.call (some (RemovedBody380_113, 0, 380, 4)) (Sum.inl 68) (some (RemovedBody380_116, 380, 5))

def RemovedBody380_118 : StackLang.HolProg 64 :=
.seq RemovedBody380_102 RemovedBody380_117

def RemovedBody380_119 : StackLang.HolProg 64 :=
.seq RemovedBody380_101 RemovedBody380_118

def RemovedBody380_120 : StackLang.HolProg 64 :=
.seq RemovedBody380_100 RemovedBody380_119

def RemovedBody380_121 : StackLang.HolProg 64 :=
.seq RemovedBody380_71 RemovedBody380_120

def RemovedBody380_122 : StackLang.HolProg 64 :=
.seq RemovedBody380_68 RemovedBody380_121

def RemovedBody380_123 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody380_124 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody380_125 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 1 0
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 1#64)))

def RemovedBody380_126 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody380_127 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 2 64#64)

def RemovedBody380_128 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 3
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 24#64))

def RemovedBody380_129 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody380_130 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1116#64)

def RemovedBody380_131 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody380_132 : StackLang.HolProg 64 :=
.seq RemovedBody380_130 RemovedBody380_131

def RemovedBody380_133 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody380_134 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 2#64)

def RemovedBody380_135 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 1

def RemovedBody380_136 : StackLang.HolProg 64 :=
.seq RemovedBody380_134 RemovedBody380_135

def RemovedBody380_137 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody380_138 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) RemovedBody380_136 RemovedBody380_137

def RemovedBody380_139 : StackLang.HolProg 64 :=
.seq RemovedBody380_133 RemovedBody380_138

def RemovedBody380_140 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def RemovedBody380_141 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody380_142 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 380 7

def RemovedBody380_143 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody380_144 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody380_145 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody380_146 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody380_147 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def RemovedBody380_148 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def RemovedBody380_149 : StackLang.HolProg 64 :=
.seq RemovedBody380_147 RemovedBody380_148

def RemovedBody380_150 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def RemovedBody380_151 : StackLang.HolProg 64 :=
.seq RemovedBody380_149 RemovedBody380_150

def RemovedBody380_152 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody380_153 : StackLang.HolProg 64 :=
.seq RemovedBody380_151 RemovedBody380_152

def RemovedBody380_154 : StackLang.HolProg 64 :=
.seq RemovedBody380_146 RemovedBody380_153

def RemovedBody380_155 : StackLang.HolProg 64 :=
.seq RemovedBody380_145 RemovedBody380_154

def RemovedBody380_156 : StackLang.HolProg 64 :=
.seq RemovedBody380_144 RemovedBody380_155

def RemovedBody380_157 : StackLang.HolProg 64 :=
.seq RemovedBody380_143 RemovedBody380_156

def RemovedBody380_158 : StackLang.HolProg 64 :=
.seq RemovedBody380_142 RemovedBody380_157

def RemovedBody380_159 : StackLang.HolProg 64 :=
.seq RemovedBody380_141 RemovedBody380_158

def RemovedBody380_160 : StackLang.HolProg 64 :=
.seq RemovedBody380_140 RemovedBody380_159

def RemovedBody380_161 : StackLang.HolProg 64 :=
.seq RemovedBody380_139 RemovedBody380_160

def RemovedBody380_162 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody380_163 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody380_164 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody380_165 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody380_166 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody380_167 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody380_168 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 24#64))

def RemovedBody380_169 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 2
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody380_170 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody380_171 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 24#64))

def RemovedBody380_172 : StackLang.HolProg 64 :=
.seq RemovedBody380_170 RemovedBody380_171

def RemovedBody380_173 : StackLang.HolProg 64 :=
.seq RemovedBody380_169 RemovedBody380_172

def RemovedBody380_174 : StackLang.HolProg 64 :=
.seq RemovedBody380_168 RemovedBody380_173

def RemovedBody380_175 : StackLang.HolProg 64 :=
.seq RemovedBody380_167 RemovedBody380_174

def RemovedBody380_176 : StackLang.HolProg 64 :=
.seq RemovedBody380_166 RemovedBody380_175

def RemovedBody380_177 : StackLang.HolProg 64 :=
.seq RemovedBody380_165 RemovedBody380_176

def RemovedBody380_178 : StackLang.HolProg 64 :=
.seq RemovedBody380_164 RemovedBody380_177

def RemovedBody380_179 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 24#64))

def RemovedBody380_180 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 2
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody380_181 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody380_182 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 24#64))

def RemovedBody380_183 : StackLang.HolProg 64 :=
.seq RemovedBody380_181 RemovedBody380_182

def RemovedBody380_184 : StackLang.HolProg 64 :=
.seq RemovedBody380_180 RemovedBody380_183

def RemovedBody380_185 : StackLang.HolProg 64 :=
.seq RemovedBody380_179 RemovedBody380_184

def RemovedBody380_186 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def RemovedBody380_187 : StackLang.HolProg 64 :=
.seq RemovedBody380_185 RemovedBody380_186

def RemovedBody380_188 : StackLang.HolProg 64 :=
.call (some (RemovedBody380_178, 0, 380, 6)) (Sum.inl 158) (some (RemovedBody380_187, 380, 7))

def RemovedBody380_189 : StackLang.HolProg 64 :=
.seq RemovedBody380_163 RemovedBody380_188

def RemovedBody380_190 : StackLang.HolProg 64 :=
.seq RemovedBody380_162 RemovedBody380_189

def RemovedBody380_191 : StackLang.HolProg 64 :=
.seq RemovedBody380_161 RemovedBody380_190

def RemovedBody380_192 : StackLang.HolProg 64 :=
.seq RemovedBody380_132 RemovedBody380_191

def RemovedBody380_193 : StackLang.HolProg 64 :=
.seq RemovedBody380_129 RemovedBody380_192

def RemovedBody380_194 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody380_195 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 1 2
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 2)))

def RemovedBody380_196 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 2 0
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 12#64)))

def RemovedBody380_197 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 3 20#64)

def RemovedBody380_198 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody380_199 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody380_200 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1117#64)

def RemovedBody380_201 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody380_202 : StackLang.HolProg 64 :=
.seq RemovedBody380_200 RemovedBody380_201

def RemovedBody380_203 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody380_204 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 2#64)

def RemovedBody380_205 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 1

def RemovedBody380_206 : StackLang.HolProg 64 :=
.seq RemovedBody380_204 RemovedBody380_205

def RemovedBody380_207 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody380_208 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) RemovedBody380_206 RemovedBody380_207

def RemovedBody380_209 : StackLang.HolProg 64 :=
.seq RemovedBody380_203 RemovedBody380_208

def RemovedBody380_210 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def RemovedBody380_211 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody380_212 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 380 9

def RemovedBody380_213 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody380_214 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody380_215 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody380_216 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody380_217 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def RemovedBody380_218 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def RemovedBody380_219 : StackLang.HolProg 64 :=
.seq RemovedBody380_217 RemovedBody380_218

def RemovedBody380_220 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def RemovedBody380_221 : StackLang.HolProg 64 :=
.seq RemovedBody380_219 RemovedBody380_220

def RemovedBody380_222 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody380_223 : StackLang.HolProg 64 :=
.seq RemovedBody380_221 RemovedBody380_222

def RemovedBody380_224 : StackLang.HolProg 64 :=
.seq RemovedBody380_216 RemovedBody380_223

def RemovedBody380_225 : StackLang.HolProg 64 :=
.seq RemovedBody380_215 RemovedBody380_224

def RemovedBody380_226 : StackLang.HolProg 64 :=
.seq RemovedBody380_214 RemovedBody380_225

def RemovedBody380_227 : StackLang.HolProg 64 :=
.seq RemovedBody380_213 RemovedBody380_226

def RemovedBody380_228 : StackLang.HolProg 64 :=
.seq RemovedBody380_212 RemovedBody380_227

def RemovedBody380_229 : StackLang.HolProg 64 :=
.seq RemovedBody380_211 RemovedBody380_228

def RemovedBody380_230 : StackLang.HolProg 64 :=
.seq RemovedBody380_210 RemovedBody380_229

def RemovedBody380_231 : StackLang.HolProg 64 :=
.seq RemovedBody380_209 RemovedBody380_230

def RemovedBody380_232 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody380_233 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody380_234 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody380_235 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody380_236 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody380_237 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody380_238 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 24#64))

def RemovedBody380_239 : StackLang.HolProg 64 :=
.seq RemovedBody380_237 RemovedBody380_238

def RemovedBody380_240 : StackLang.HolProg 64 :=
.seq RemovedBody380_236 RemovedBody380_239

def RemovedBody380_241 : StackLang.HolProg 64 :=
.seq RemovedBody380_235 RemovedBody380_240

def RemovedBody380_242 : StackLang.HolProg 64 :=
.seq RemovedBody380_234 RemovedBody380_241

def RemovedBody380_243 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 24#64))

def RemovedBody380_244 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def RemovedBody380_245 : StackLang.HolProg 64 :=
.seq RemovedBody380_243 RemovedBody380_244

def RemovedBody380_246 : StackLang.HolProg 64 :=
.call (some (RemovedBody380_242, 0, 380, 8)) (Sum.inl 77) (some (RemovedBody380_245, 380, 9))

def RemovedBody380_247 : StackLang.HolProg 64 :=
.seq RemovedBody380_233 RemovedBody380_246

def RemovedBody380_248 : StackLang.HolProg 64 :=
.seq RemovedBody380_232 RemovedBody380_247

def RemovedBody380_249 : StackLang.HolProg 64 :=
.seq RemovedBody380_231 RemovedBody380_248

def RemovedBody380_250 : StackLang.HolProg 64 :=
.seq RemovedBody380_202 RemovedBody380_249

def RemovedBody380_251 : StackLang.HolProg 64 :=
.seq RemovedBody380_199 RemovedBody380_250

def RemovedBody380_252 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody380_253 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 1 0
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 0)))

def RemovedBody380_254 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody380_255 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1118#64)

def RemovedBody380_256 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody380_257 : StackLang.HolProg 64 :=
.seq RemovedBody380_255 RemovedBody380_256

def RemovedBody380_258 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody380_259 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 2#64)

def RemovedBody380_260 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 1

def RemovedBody380_261 : StackLang.HolProg 64 :=
.seq RemovedBody380_259 RemovedBody380_260

def RemovedBody380_262 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody380_263 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) RemovedBody380_261 RemovedBody380_262

def RemovedBody380_264 : StackLang.HolProg 64 :=
.seq RemovedBody380_258 RemovedBody380_263

def RemovedBody380_265 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def RemovedBody380_266 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody380_267 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 380 11

def RemovedBody380_268 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody380_269 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody380_270 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody380_271 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody380_272 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def RemovedBody380_273 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def RemovedBody380_274 : StackLang.HolProg 64 :=
.seq RemovedBody380_272 RemovedBody380_273

def RemovedBody380_275 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def RemovedBody380_276 : StackLang.HolProg 64 :=
.seq RemovedBody380_274 RemovedBody380_275

def RemovedBody380_277 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody380_278 : StackLang.HolProg 64 :=
.seq RemovedBody380_276 RemovedBody380_277

def RemovedBody380_279 : StackLang.HolProg 64 :=
.seq RemovedBody380_271 RemovedBody380_278

def RemovedBody380_280 : StackLang.HolProg 64 :=
.seq RemovedBody380_270 RemovedBody380_279

def RemovedBody380_281 : StackLang.HolProg 64 :=
.seq RemovedBody380_269 RemovedBody380_280

def RemovedBody380_282 : StackLang.HolProg 64 :=
.seq RemovedBody380_268 RemovedBody380_281

def RemovedBody380_283 : StackLang.HolProg 64 :=
.seq RemovedBody380_267 RemovedBody380_282

def RemovedBody380_284 : StackLang.HolProg 64 :=
.seq RemovedBody380_266 RemovedBody380_283

def RemovedBody380_285 : StackLang.HolProg 64 :=
.seq RemovedBody380_265 RemovedBody380_284

def RemovedBody380_286 : StackLang.HolProg 64 :=
.seq RemovedBody380_264 RemovedBody380_285

def RemovedBody380_287 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody380_288 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody380_289 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody380_290 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody380_291 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody380_292 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody380_293 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 32#64))

def RemovedBody380_294 : StackLang.HolProg 64 :=
.seq RemovedBody380_292 RemovedBody380_293

def RemovedBody380_295 : StackLang.HolProg 64 :=
.seq RemovedBody380_291 RemovedBody380_294

def RemovedBody380_296 : StackLang.HolProg 64 :=
.seq RemovedBody380_290 RemovedBody380_295

def RemovedBody380_297 : StackLang.HolProg 64 :=
.seq RemovedBody380_289 RemovedBody380_296

def RemovedBody380_298 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 32#64))

def RemovedBody380_299 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def RemovedBody380_300 : StackLang.HolProg 64 :=
.seq RemovedBody380_298 RemovedBody380_299

def RemovedBody380_301 : StackLang.HolProg 64 :=
.call (some (RemovedBody380_297, 0, 380, 10)) (Sum.inl 70) (some (RemovedBody380_300, 380, 11))

def RemovedBody380_302 : StackLang.HolProg 64 :=
.seq RemovedBody380_288 RemovedBody380_301

def RemovedBody380_303 : StackLang.HolProg 64 :=
.seq RemovedBody380_287 RemovedBody380_302

def RemovedBody380_304 : StackLang.HolProg 64 :=
.seq RemovedBody380_286 RemovedBody380_303

def RemovedBody380_305 : StackLang.HolProg 64 :=
.seq RemovedBody380_257 RemovedBody380_304

def RemovedBody380_306 : StackLang.HolProg 64 :=
.seq RemovedBody380_254 RemovedBody380_305

def RemovedBody380_307 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody380_308 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 0#64)

def RemovedBody380_309 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody380_310 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 40#64)))

def RemovedBody380_311 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 0

def RemovedBody380_312 : StackLang.HolProg 64 :=
.seq RemovedBody380_310 RemovedBody380_311

def RemovedBody380_313 : StackLang.HolProg 64 :=
.seq RemovedBody380_309 RemovedBody380_312

def RemovedBody380_314 : StackLang.HolProg 64 :=
.seq RemovedBody380_308 RemovedBody380_313

def RemovedBody380_315 : StackLang.HolProg 64 :=
.seq RemovedBody380_307 RemovedBody380_314

def RemovedBody380_316 : StackLang.HolProg 64 :=
.seq RemovedBody380_306 RemovedBody380_315

def RemovedBody380_317 : StackLang.HolProg 64 :=
.seq RemovedBody380_253 RemovedBody380_316

def RemovedBody380_318 : StackLang.HolProg 64 :=
.seq RemovedBody380_252 RemovedBody380_317

def RemovedBody380_319 : StackLang.HolProg 64 :=
.seq RemovedBody380_251 RemovedBody380_318

def RemovedBody380_320 : StackLang.HolProg 64 :=
.seq RemovedBody380_198 RemovedBody380_319

def RemovedBody380_321 : StackLang.HolProg 64 :=
.seq RemovedBody380_197 RemovedBody380_320

def RemovedBody380_322 : StackLang.HolProg 64 :=
.seq RemovedBody380_196 RemovedBody380_321

def RemovedBody380_323 : StackLang.HolProg 64 :=
.seq RemovedBody380_195 RemovedBody380_322

def RemovedBody380_324 : StackLang.HolProg 64 :=
.seq RemovedBody380_194 RemovedBody380_323

def RemovedBody380_325 : StackLang.HolProg 64 :=
.seq RemovedBody380_193 RemovedBody380_324

def RemovedBody380_326 : StackLang.HolProg 64 :=
.seq RemovedBody380_128 RemovedBody380_325

def RemovedBody380_327 : StackLang.HolProg 64 :=
.seq RemovedBody380_127 RemovedBody380_326

def RemovedBody380_328 : StackLang.HolProg 64 :=
.seq RemovedBody380_126 RemovedBody380_327

def RemovedBody380_329 : StackLang.HolProg 64 :=
.seq RemovedBody380_125 RemovedBody380_328

def RemovedBody380_330 : StackLang.HolProg 64 :=
.seq RemovedBody380_124 RemovedBody380_329

def RemovedBody380_331 : StackLang.HolProg 64 :=
.seq RemovedBody380_123 RemovedBody380_330

def RemovedBody380_332 : StackLang.HolProg 64 :=
.seq RemovedBody380_122 RemovedBody380_331

def RemovedBody380_333 : StackLang.HolProg 64 :=
.seq RemovedBody380_67 RemovedBody380_332

def RemovedBody380_334 : StackLang.HolProg 64 :=
.seq RemovedBody380_66 RemovedBody380_333

def RemovedBody380_335 : StackLang.HolProg 64 :=
.seq RemovedBody380_65 RemovedBody380_334

def RemovedBody380_336 : StackLang.HolProg 64 :=
.seq RemovedBody380_64 RemovedBody380_335

def RemovedBody380_337 : StackLang.HolProg 64 :=
.seq RemovedBody380_11 RemovedBody380_336

def RemovedBody380_338 : StackLang.HolProg 64 :=
.seq RemovedBody380_6 RemovedBody380_337

def Removed380 : Nat × StackLang.HolProg 64 := (380, RemovedBody380_338)
theorem Removed380_eq : StackRemove.progComp false riscvConfig.addrOffset (riscvConfig.regCount - (riscvConfig.avoidRegs.length + 3)) Alloc380 = Removed380 := by
  kernel_rfl
#print axioms Removed380_eq
end InitECandidate.Proofs.BackendStages
