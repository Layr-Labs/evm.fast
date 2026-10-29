import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.BackendStages.Alloc342
import Flapjack.Compiler.Backend.Backend
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
namespace InitECandidate.Proofs.BackendStages
def RemovedBody342_0 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 168#64)))

def RemovedBody342_1 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 2#64)

def RemovedBody342_2 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 1

def RemovedBody342_3 : StackLang.HolProg 64 :=
.seq RemovedBody342_1 RemovedBody342_2

def RemovedBody342_4 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody342_5 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) RemovedBody342_3 RemovedBody342_4

def RemovedBody342_6 : StackLang.HolProg 64 :=
.seq RemovedBody342_0 RemovedBody342_5

def RemovedBody342_7 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 160#64))

def RemovedBody342_8 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 2
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 136#64))

def RemovedBody342_9 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 144#64))

def RemovedBody342_10 : StackLang.HolProg 64 :=
.seq RemovedBody342_8 RemovedBody342_9

def RemovedBody342_11 : StackLang.HolProg 64 :=
.seq RemovedBody342_7 RemovedBody342_10

def RemovedBody342_12 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody342_13 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 976#64)

def RemovedBody342_14 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody342_15 : StackLang.HolProg 64 :=
.seq RemovedBody342_13 RemovedBody342_14

def RemovedBody342_16 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody342_17 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 2#64)

def RemovedBody342_18 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 1

def RemovedBody342_19 : StackLang.HolProg 64 :=
.seq RemovedBody342_17 RemovedBody342_18

def RemovedBody342_20 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody342_21 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) RemovedBody342_19 RemovedBody342_20

def RemovedBody342_22 : StackLang.HolProg 64 :=
.seq RemovedBody342_16 RemovedBody342_21

def RemovedBody342_23 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def RemovedBody342_24 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody342_25 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 342 3

def RemovedBody342_26 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody342_27 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody342_28 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody342_29 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody342_30 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def RemovedBody342_31 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def RemovedBody342_32 : StackLang.HolProg 64 :=
.seq RemovedBody342_30 RemovedBody342_31

def RemovedBody342_33 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def RemovedBody342_34 : StackLang.HolProg 64 :=
.seq RemovedBody342_32 RemovedBody342_33

def RemovedBody342_35 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody342_36 : StackLang.HolProg 64 :=
.seq RemovedBody342_34 RemovedBody342_35

def RemovedBody342_37 : StackLang.HolProg 64 :=
.seq RemovedBody342_29 RemovedBody342_36

def RemovedBody342_38 : StackLang.HolProg 64 :=
.seq RemovedBody342_28 RemovedBody342_37

def RemovedBody342_39 : StackLang.HolProg 64 :=
.seq RemovedBody342_27 RemovedBody342_38

def RemovedBody342_40 : StackLang.HolProg 64 :=
.seq RemovedBody342_26 RemovedBody342_39

def RemovedBody342_41 : StackLang.HolProg 64 :=
.seq RemovedBody342_25 RemovedBody342_40

def RemovedBody342_42 : StackLang.HolProg 64 :=
.seq RemovedBody342_24 RemovedBody342_41

def RemovedBody342_43 : StackLang.HolProg 64 :=
.seq RemovedBody342_23 RemovedBody342_42

def RemovedBody342_44 : StackLang.HolProg 64 :=
.seq RemovedBody342_22 RemovedBody342_43

def RemovedBody342_45 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody342_46 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody342_47 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody342_48 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody342_49 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody342_50 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody342_51 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 4 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def RemovedBody342_52 : StackLang.HolProg 64 :=
.seq RemovedBody342_50 RemovedBody342_51

def RemovedBody342_53 : StackLang.HolProg 64 :=
.seq RemovedBody342_49 RemovedBody342_52

def RemovedBody342_54 : StackLang.HolProg 64 :=
.seq RemovedBody342_48 RemovedBody342_53

def RemovedBody342_55 : StackLang.HolProg 64 :=
.seq RemovedBody342_47 RemovedBody342_54

def RemovedBody342_56 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody342_57 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def RemovedBody342_58 : StackLang.HolProg 64 :=
.seq RemovedBody342_56 RemovedBody342_57

def RemovedBody342_59 : StackLang.HolProg 64 :=
.call (some (RemovedBody342_55, 0, 342, 2)) (Sum.inl 169) (some (RemovedBody342_58, 342, 3))

def RemovedBody342_60 : StackLang.HolProg 64 :=
.seq RemovedBody342_46 RemovedBody342_59

def RemovedBody342_61 : StackLang.HolProg 64 :=
.seq RemovedBody342_45 RemovedBody342_60

def RemovedBody342_62 : StackLang.HolProg 64 :=
.seq RemovedBody342_44 RemovedBody342_61

def RemovedBody342_63 : StackLang.HolProg 64 :=
.seq RemovedBody342_15 RemovedBody342_62

def RemovedBody342_64 : StackLang.HolProg 64 :=
.seq RemovedBody342_12 RemovedBody342_63

def RemovedBody342_65 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody342_66 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 1 2
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 2)))

def RemovedBody342_67 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 2 24#64)

def RemovedBody342_68 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 0 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def RemovedBody342_69 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith (Flapjack.Compiler.Encoders.Asm.HolArith.longMul 3 0 0 2))

def RemovedBody342_70 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 152#64))

def RemovedBody342_71 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 1 0
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 0)))

def RemovedBody342_72 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 4
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 128#64))

def RemovedBody342_73 : StackLang.HolProg 64 :=
.seq RemovedBody342_71 RemovedBody342_72

def RemovedBody342_74 : StackLang.HolProg 64 :=
.seq RemovedBody342_70 RemovedBody342_73

def RemovedBody342_75 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody342_76 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 977#64)

def RemovedBody342_77 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody342_78 : StackLang.HolProg 64 :=
.seq RemovedBody342_76 RemovedBody342_77

def RemovedBody342_79 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody342_80 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 2#64)

def RemovedBody342_81 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 1

def RemovedBody342_82 : StackLang.HolProg 64 :=
.seq RemovedBody342_80 RemovedBody342_81

def RemovedBody342_83 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody342_84 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) RemovedBody342_82 RemovedBody342_83

def RemovedBody342_85 : StackLang.HolProg 64 :=
.seq RemovedBody342_79 RemovedBody342_84

def RemovedBody342_86 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def RemovedBody342_87 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody342_88 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 342 5

def RemovedBody342_89 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody342_90 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody342_91 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody342_92 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody342_93 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def RemovedBody342_94 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def RemovedBody342_95 : StackLang.HolProg 64 :=
.seq RemovedBody342_93 RemovedBody342_94

def RemovedBody342_96 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def RemovedBody342_97 : StackLang.HolProg 64 :=
.seq RemovedBody342_95 RemovedBody342_96

def RemovedBody342_98 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody342_99 : StackLang.HolProg 64 :=
.seq RemovedBody342_97 RemovedBody342_98

def RemovedBody342_100 : StackLang.HolProg 64 :=
.seq RemovedBody342_92 RemovedBody342_99

def RemovedBody342_101 : StackLang.HolProg 64 :=
.seq RemovedBody342_91 RemovedBody342_100

def RemovedBody342_102 : StackLang.HolProg 64 :=
.seq RemovedBody342_90 RemovedBody342_101

def RemovedBody342_103 : StackLang.HolProg 64 :=
.seq RemovedBody342_89 RemovedBody342_102

def RemovedBody342_104 : StackLang.HolProg 64 :=
.seq RemovedBody342_88 RemovedBody342_103

def RemovedBody342_105 : StackLang.HolProg 64 :=
.seq RemovedBody342_87 RemovedBody342_104

def RemovedBody342_106 : StackLang.HolProg 64 :=
.seq RemovedBody342_86 RemovedBody342_105

def RemovedBody342_107 : StackLang.HolProg 64 :=
.seq RemovedBody342_85 RemovedBody342_106

def RemovedBody342_108 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody342_109 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody342_110 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody342_111 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody342_112 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody342_113 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody342_114 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 4 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def RemovedBody342_115 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 152#64))

def RemovedBody342_116 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 3
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 128#64))

def RemovedBody342_117 : StackLang.HolProg 64 :=
.seq RemovedBody342_115 RemovedBody342_116

def RemovedBody342_118 : StackLang.HolProg 64 :=
.seq RemovedBody342_114 RemovedBody342_117

def RemovedBody342_119 : StackLang.HolProg 64 :=
.seq RemovedBody342_113 RemovedBody342_118

def RemovedBody342_120 : StackLang.HolProg 64 :=
.seq RemovedBody342_112 RemovedBody342_119

def RemovedBody342_121 : StackLang.HolProg 64 :=
.seq RemovedBody342_111 RemovedBody342_120

def RemovedBody342_122 : StackLang.HolProg 64 :=
.seq RemovedBody342_110 RemovedBody342_121

def RemovedBody342_123 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 152#64))

def RemovedBody342_124 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 3
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 128#64))

def RemovedBody342_125 : StackLang.HolProg 64 :=
.seq RemovedBody342_123 RemovedBody342_124

def RemovedBody342_126 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def RemovedBody342_127 : StackLang.HolProg 64 :=
.seq RemovedBody342_125 RemovedBody342_126

def RemovedBody342_128 : StackLang.HolProg 64 :=
.call (some (RemovedBody342_122, 0, 342, 4)) (Sum.inl 68) (some (RemovedBody342_127, 342, 5))

def RemovedBody342_129 : StackLang.HolProg 64 :=
.seq RemovedBody342_109 RemovedBody342_128

def RemovedBody342_130 : StackLang.HolProg 64 :=
.seq RemovedBody342_108 RemovedBody342_129

def RemovedBody342_131 : StackLang.HolProg 64 :=
.seq RemovedBody342_107 RemovedBody342_130

def RemovedBody342_132 : StackLang.HolProg 64 :=
.seq RemovedBody342_78 RemovedBody342_131

def RemovedBody342_133 : StackLang.HolProg 64 :=
.seq RemovedBody342_75 RemovedBody342_132

def RemovedBody342_134 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody342_135 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 2 0#64)

def RemovedBody342_136 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody342_137 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 4
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 152#64))

def RemovedBody342_138 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody342_139 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody342_140 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody342_141 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsl 1 2
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 4#64)))

def RemovedBody342_142 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody342_143 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 4 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 3)))

def RemovedBody342_144 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 4 0#64))

def RemovedBody342_145 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 3
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 128#64))

def RemovedBody342_146 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 2
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 96#64))

def RemovedBody342_147 : StackLang.HolProg 64 :=
.seq RemovedBody342_145 RemovedBody342_146

def RemovedBody342_148 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 2
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 4 8#64))

def RemovedBody342_149 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 152#64))

def RemovedBody342_150 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 104#64))

def RemovedBody342_151 : StackLang.HolProg 64 :=
.seq RemovedBody342_149 RemovedBody342_150

def RemovedBody342_152 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 152#64))

def RemovedBody342_153 : StackLang.HolProg 64 :=
.seq RemovedBody342_151 RemovedBody342_152

def RemovedBody342_154 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody342_155 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 978#64)

def RemovedBody342_156 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody342_157 : StackLang.HolProg 64 :=
.seq RemovedBody342_155 RemovedBody342_156

def RemovedBody342_158 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody342_159 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 2#64)

def RemovedBody342_160 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 1

def RemovedBody342_161 : StackLang.HolProg 64 :=
.seq RemovedBody342_159 RemovedBody342_160

def RemovedBody342_162 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody342_163 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) RemovedBody342_161 RemovedBody342_162

def RemovedBody342_164 : StackLang.HolProg 64 :=
.seq RemovedBody342_158 RemovedBody342_163

def RemovedBody342_165 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def RemovedBody342_166 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody342_167 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 342 7

def RemovedBody342_168 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody342_169 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody342_170 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody342_171 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody342_172 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def RemovedBody342_173 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def RemovedBody342_174 : StackLang.HolProg 64 :=
.seq RemovedBody342_172 RemovedBody342_173

def RemovedBody342_175 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def RemovedBody342_176 : StackLang.HolProg 64 :=
.seq RemovedBody342_174 RemovedBody342_175

def RemovedBody342_177 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody342_178 : StackLang.HolProg 64 :=
.seq RemovedBody342_176 RemovedBody342_177

def RemovedBody342_179 : StackLang.HolProg 64 :=
.seq RemovedBody342_171 RemovedBody342_178

def RemovedBody342_180 : StackLang.HolProg 64 :=
.seq RemovedBody342_170 RemovedBody342_179

def RemovedBody342_181 : StackLang.HolProg 64 :=
.seq RemovedBody342_169 RemovedBody342_180

def RemovedBody342_182 : StackLang.HolProg 64 :=
.seq RemovedBody342_168 RemovedBody342_181

def RemovedBody342_183 : StackLang.HolProg 64 :=
.seq RemovedBody342_167 RemovedBody342_182

def RemovedBody342_184 : StackLang.HolProg 64 :=
.seq RemovedBody342_166 RemovedBody342_183

def RemovedBody342_185 : StackLang.HolProg 64 :=
.seq RemovedBody342_165 RemovedBody342_184

def RemovedBody342_186 : StackLang.HolProg 64 :=
.seq RemovedBody342_164 RemovedBody342_185

def RemovedBody342_187 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody342_188 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody342_189 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody342_190 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody342_191 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody342_192 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody342_193 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 0 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def RemovedBody342_194 : StackLang.HolProg 64 :=
.seq RemovedBody342_192 RemovedBody342_193

def RemovedBody342_195 : StackLang.HolProg 64 :=
.seq RemovedBody342_191 RemovedBody342_194

def RemovedBody342_196 : StackLang.HolProg 64 :=
.seq RemovedBody342_190 RemovedBody342_195

def RemovedBody342_197 : StackLang.HolProg 64 :=
.seq RemovedBody342_189 RemovedBody342_196

def RemovedBody342_198 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody342_199 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def RemovedBody342_200 : StackLang.HolProg 64 :=
.seq RemovedBody342_198 RemovedBody342_199

def RemovedBody342_201 : StackLang.HolProg 64 :=
.call (some (RemovedBody342_197, 0, 342, 6)) (Sum.inl 161) (some (RemovedBody342_200, 342, 7))

def RemovedBody342_202 : StackLang.HolProg 64 :=
.seq RemovedBody342_188 RemovedBody342_201

def RemovedBody342_203 : StackLang.HolProg 64 :=
.seq RemovedBody342_187 RemovedBody342_202

def RemovedBody342_204 : StackLang.HolProg 64 :=
.seq RemovedBody342_186 RemovedBody342_203

def RemovedBody342_205 : StackLang.HolProg 64 :=
.seq RemovedBody342_157 RemovedBody342_204

def RemovedBody342_206 : StackLang.HolProg 64 :=
.seq RemovedBody342_154 RemovedBody342_205

def RemovedBody342_207 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody342_208 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody342_209 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 1#64)

def RemovedBody342_210 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody342_211 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 19#64)

def RemovedBody342_212 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody342_213 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551480#64))

def RemovedBody342_214 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 6#64)

def RemovedBody342_215 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody342_216 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def RemovedBody342_217 : StackLang.HolProg 64 :=
.seq RemovedBody342_215 RemovedBody342_216

def RemovedBody342_218 : StackLang.HolProg 64 :=
.seq RemovedBody342_214 RemovedBody342_217

def RemovedBody342_219 : StackLang.HolProg 64 :=
.seq RemovedBody342_213 RemovedBody342_218

def RemovedBody342_220 : StackLang.HolProg 64 :=
.seq RemovedBody342_212 RemovedBody342_219

def RemovedBody342_221 : StackLang.HolProg 64 :=
.seq RemovedBody342_211 RemovedBody342_220

def RemovedBody342_222 : StackLang.HolProg 64 :=
.seq RemovedBody342_210 RemovedBody342_221

def RemovedBody342_223 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody342_224 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.notEqual) 0 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1) RemovedBody342_222 RemovedBody342_223

def RemovedBody342_225 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody342_226 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody342_227 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 1 2
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 2)))

def RemovedBody342_228 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 2
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 64#64))

def RemovedBody342_229 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 2 3
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 3)))

def RemovedBody342_230 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 3
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 32#64))

def RemovedBody342_231 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 56#64))

def RemovedBody342_232 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 4
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 40#64))

def RemovedBody342_233 : StackLang.HolProg 64 :=
.seq RemovedBody342_231 RemovedBody342_232

def RemovedBody342_234 : StackLang.HolProg 64 :=
.seq RemovedBody342_230 RemovedBody342_233

def RemovedBody342_235 : StackLang.HolProg 64 :=
.seq RemovedBody342_229 RemovedBody342_234

def RemovedBody342_236 : StackLang.HolProg 64 :=
.seq RemovedBody342_228 RemovedBody342_235

def RemovedBody342_237 : StackLang.HolProg 64 :=
.seq RemovedBody342_227 RemovedBody342_236

def RemovedBody342_238 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody342_239 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 979#64)

def RemovedBody342_240 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody342_241 : StackLang.HolProg 64 :=
.seq RemovedBody342_239 RemovedBody342_240

def RemovedBody342_242 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody342_243 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 2#64)

def RemovedBody342_244 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 1

def RemovedBody342_245 : StackLang.HolProg 64 :=
.seq RemovedBody342_243 RemovedBody342_244

def RemovedBody342_246 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody342_247 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) RemovedBody342_245 RemovedBody342_246

def RemovedBody342_248 : StackLang.HolProg 64 :=
.seq RemovedBody342_242 RemovedBody342_247

def RemovedBody342_249 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def RemovedBody342_250 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody342_251 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 342 9

def RemovedBody342_252 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody342_253 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody342_254 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody342_255 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody342_256 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def RemovedBody342_257 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def RemovedBody342_258 : StackLang.HolProg 64 :=
.seq RemovedBody342_256 RemovedBody342_257

def RemovedBody342_259 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def RemovedBody342_260 : StackLang.HolProg 64 :=
.seq RemovedBody342_258 RemovedBody342_259

def RemovedBody342_261 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody342_262 : StackLang.HolProg 64 :=
.seq RemovedBody342_260 RemovedBody342_261

def RemovedBody342_263 : StackLang.HolProg 64 :=
.seq RemovedBody342_255 RemovedBody342_262

def RemovedBody342_264 : StackLang.HolProg 64 :=
.seq RemovedBody342_254 RemovedBody342_263

def RemovedBody342_265 : StackLang.HolProg 64 :=
.seq RemovedBody342_253 RemovedBody342_264

def RemovedBody342_266 : StackLang.HolProg 64 :=
.seq RemovedBody342_252 RemovedBody342_265

def RemovedBody342_267 : StackLang.HolProg 64 :=
.seq RemovedBody342_251 RemovedBody342_266

def RemovedBody342_268 : StackLang.HolProg 64 :=
.seq RemovedBody342_250 RemovedBody342_267

def RemovedBody342_269 : StackLang.HolProg 64 :=
.seq RemovedBody342_249 RemovedBody342_268

def RemovedBody342_270 : StackLang.HolProg 64 :=
.seq RemovedBody342_248 RemovedBody342_269

def RemovedBody342_271 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody342_272 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody342_273 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody342_274 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody342_275 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody342_276 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody342_277 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 3 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def RemovedBody342_278 : StackLang.HolProg 64 :=
.seq RemovedBody342_276 RemovedBody342_277

def RemovedBody342_279 : StackLang.HolProg 64 :=
.seq RemovedBody342_275 RemovedBody342_278

def RemovedBody342_280 : StackLang.HolProg 64 :=
.seq RemovedBody342_274 RemovedBody342_279

def RemovedBody342_281 : StackLang.HolProg 64 :=
.seq RemovedBody342_273 RemovedBody342_280

def RemovedBody342_282 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody342_283 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def RemovedBody342_284 : StackLang.HolProg 64 :=
.seq RemovedBody342_282 RemovedBody342_283

def RemovedBody342_285 : StackLang.HolProg 64 :=
.call (some (RemovedBody342_281, 0, 342, 8)) (Sum.inl 169) (some (RemovedBody342_284, 342, 9))

def RemovedBody342_286 : StackLang.HolProg 64 :=
.seq RemovedBody342_272 RemovedBody342_285

def RemovedBody342_287 : StackLang.HolProg 64 :=
.seq RemovedBody342_271 RemovedBody342_286

def RemovedBody342_288 : StackLang.HolProg 64 :=
.seq RemovedBody342_270 RemovedBody342_287

def RemovedBody342_289 : StackLang.HolProg 64 :=
.seq RemovedBody342_241 RemovedBody342_288

def RemovedBody342_290 : StackLang.HolProg 64 :=
.seq RemovedBody342_238 RemovedBody342_289

def RemovedBody342_291 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody342_292 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 0 2
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 2)))

def RemovedBody342_293 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 2#64)

def RemovedBody342_294 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody342_295 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 19#64)

def RemovedBody342_296 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody342_297 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551480#64))

def RemovedBody342_298 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 6#64)

def RemovedBody342_299 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody342_300 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def RemovedBody342_301 : StackLang.HolProg 64 :=
.seq RemovedBody342_299 RemovedBody342_300

def RemovedBody342_302 : StackLang.HolProg 64 :=
.seq RemovedBody342_298 RemovedBody342_301

def RemovedBody342_303 : StackLang.HolProg 64 :=
.seq RemovedBody342_297 RemovedBody342_302

def RemovedBody342_304 : StackLang.HolProg 64 :=
.seq RemovedBody342_296 RemovedBody342_303

def RemovedBody342_305 : StackLang.HolProg 64 :=
.seq RemovedBody342_295 RemovedBody342_304

def RemovedBody342_306 : StackLang.HolProg 64 :=
.seq RemovedBody342_294 RemovedBody342_305

def RemovedBody342_307 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody342_308 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.notEqual) 0 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1) RemovedBody342_306 RemovedBody342_307

def RemovedBody342_309 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody342_310 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody342_311 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 1 3
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 3)))

def RemovedBody342_312 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 3 20#64)

def RemovedBody342_313 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 2 0#64)

def RemovedBody342_314 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 88#64))

def RemovedBody342_315 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 120#64))

def RemovedBody342_316 : StackLang.HolProg 64 :=
.seq RemovedBody342_314 RemovedBody342_315

def RemovedBody342_317 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody342_318 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 980#64)

def RemovedBody342_319 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody342_320 : StackLang.HolProg 64 :=
.seq RemovedBody342_318 RemovedBody342_319

def RemovedBody342_321 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody342_322 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 2#64)

def RemovedBody342_323 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 1

def RemovedBody342_324 : StackLang.HolProg 64 :=
.seq RemovedBody342_322 RemovedBody342_323

def RemovedBody342_325 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody342_326 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) RemovedBody342_324 RemovedBody342_325

def RemovedBody342_327 : StackLang.HolProg 64 :=
.seq RemovedBody342_321 RemovedBody342_326

def RemovedBody342_328 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def RemovedBody342_329 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody342_330 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 342 11

def RemovedBody342_331 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody342_332 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody342_333 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody342_334 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody342_335 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def RemovedBody342_336 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def RemovedBody342_337 : StackLang.HolProg 64 :=
.seq RemovedBody342_335 RemovedBody342_336

def RemovedBody342_338 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def RemovedBody342_339 : StackLang.HolProg 64 :=
.seq RemovedBody342_337 RemovedBody342_338

def RemovedBody342_340 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody342_341 : StackLang.HolProg 64 :=
.seq RemovedBody342_339 RemovedBody342_340

def RemovedBody342_342 : StackLang.HolProg 64 :=
.seq RemovedBody342_334 RemovedBody342_341

def RemovedBody342_343 : StackLang.HolProg 64 :=
.seq RemovedBody342_333 RemovedBody342_342

def RemovedBody342_344 : StackLang.HolProg 64 :=
.seq RemovedBody342_332 RemovedBody342_343

def RemovedBody342_345 : StackLang.HolProg 64 :=
.seq RemovedBody342_331 RemovedBody342_344

def RemovedBody342_346 : StackLang.HolProg 64 :=
.seq RemovedBody342_330 RemovedBody342_345

def RemovedBody342_347 : StackLang.HolProg 64 :=
.seq RemovedBody342_329 RemovedBody342_346

def RemovedBody342_348 : StackLang.HolProg 64 :=
.seq RemovedBody342_328 RemovedBody342_347

def RemovedBody342_349 : StackLang.HolProg 64 :=
.seq RemovedBody342_327 RemovedBody342_348

def RemovedBody342_350 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody342_351 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody342_352 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody342_353 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody342_354 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody342_355 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody342_356 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 3 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def RemovedBody342_357 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 120#64))

def RemovedBody342_358 : StackLang.HolProg 64 :=
.seq RemovedBody342_356 RemovedBody342_357

def RemovedBody342_359 : StackLang.HolProg 64 :=
.seq RemovedBody342_355 RemovedBody342_358

def RemovedBody342_360 : StackLang.HolProg 64 :=
.seq RemovedBody342_354 RemovedBody342_359

def RemovedBody342_361 : StackLang.HolProg 64 :=
.seq RemovedBody342_353 RemovedBody342_360

def RemovedBody342_362 : StackLang.HolProg 64 :=
.seq RemovedBody342_352 RemovedBody342_361

def RemovedBody342_363 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 120#64))

def RemovedBody342_364 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def RemovedBody342_365 : StackLang.HolProg 64 :=
.seq RemovedBody342_363 RemovedBody342_364

def RemovedBody342_366 : StackLang.HolProg 64 :=
.call (some (RemovedBody342_362, 0, 342, 10)) (Sum.inl 339) (some (RemovedBody342_365, 342, 11))

def RemovedBody342_367 : StackLang.HolProg 64 :=
.seq RemovedBody342_351 RemovedBody342_366

def RemovedBody342_368 : StackLang.HolProg 64 :=
.seq RemovedBody342_350 RemovedBody342_367

def RemovedBody342_369 : StackLang.HolProg 64 :=
.seq RemovedBody342_349 RemovedBody342_368

def RemovedBody342_370 : StackLang.HolProg 64 :=
.seq RemovedBody342_320 RemovedBody342_369

def RemovedBody342_371 : StackLang.HolProg 64 :=
.seq RemovedBody342_317 RemovedBody342_370

def RemovedBody342_372 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody342_373 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 1 0
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 0)))

def RemovedBody342_374 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 2 1#64)

def RemovedBody342_375 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 3
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 112#64))

def RemovedBody342_376 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 80#64))

def RemovedBody342_377 : StackLang.HolProg 64 :=
.seq RemovedBody342_375 RemovedBody342_376

def RemovedBody342_378 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody342_379 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 981#64)

def RemovedBody342_380 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody342_381 : StackLang.HolProg 64 :=
.seq RemovedBody342_379 RemovedBody342_380

def RemovedBody342_382 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody342_383 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 2#64)

def RemovedBody342_384 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 1

def RemovedBody342_385 : StackLang.HolProg 64 :=
.seq RemovedBody342_383 RemovedBody342_384

def RemovedBody342_386 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody342_387 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) RemovedBody342_385 RemovedBody342_386

def RemovedBody342_388 : StackLang.HolProg 64 :=
.seq RemovedBody342_382 RemovedBody342_387

def RemovedBody342_389 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def RemovedBody342_390 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody342_391 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 342 13

def RemovedBody342_392 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody342_393 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody342_394 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody342_395 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody342_396 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def RemovedBody342_397 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def RemovedBody342_398 : StackLang.HolProg 64 :=
.seq RemovedBody342_396 RemovedBody342_397

def RemovedBody342_399 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def RemovedBody342_400 : StackLang.HolProg 64 :=
.seq RemovedBody342_398 RemovedBody342_399

def RemovedBody342_401 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody342_402 : StackLang.HolProg 64 :=
.seq RemovedBody342_400 RemovedBody342_401

def RemovedBody342_403 : StackLang.HolProg 64 :=
.seq RemovedBody342_395 RemovedBody342_402

def RemovedBody342_404 : StackLang.HolProg 64 :=
.seq RemovedBody342_394 RemovedBody342_403

def RemovedBody342_405 : StackLang.HolProg 64 :=
.seq RemovedBody342_393 RemovedBody342_404

def RemovedBody342_406 : StackLang.HolProg 64 :=
.seq RemovedBody342_392 RemovedBody342_405

def RemovedBody342_407 : StackLang.HolProg 64 :=
.seq RemovedBody342_391 RemovedBody342_406

def RemovedBody342_408 : StackLang.HolProg 64 :=
.seq RemovedBody342_390 RemovedBody342_407

def RemovedBody342_409 : StackLang.HolProg 64 :=
.seq RemovedBody342_389 RemovedBody342_408

def RemovedBody342_410 : StackLang.HolProg 64 :=
.seq RemovedBody342_388 RemovedBody342_409

def RemovedBody342_411 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody342_412 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody342_413 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody342_414 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody342_415 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody342_416 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody342_417 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 0 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def RemovedBody342_418 : StackLang.HolProg 64 :=
.seq RemovedBody342_416 RemovedBody342_417

def RemovedBody342_419 : StackLang.HolProg 64 :=
.seq RemovedBody342_415 RemovedBody342_418

def RemovedBody342_420 : StackLang.HolProg 64 :=
.seq RemovedBody342_414 RemovedBody342_419

def RemovedBody342_421 : StackLang.HolProg 64 :=
.seq RemovedBody342_413 RemovedBody342_420

def RemovedBody342_422 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody342_423 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def RemovedBody342_424 : StackLang.HolProg 64 :=
.seq RemovedBody342_422 RemovedBody342_423

def RemovedBody342_425 : StackLang.HolProg 64 :=
.call (some (RemovedBody342_421, 0, 342, 12)) (Sum.inl 341) (some (RemovedBody342_424, 342, 13))

def RemovedBody342_426 : StackLang.HolProg 64 :=
.seq RemovedBody342_412 RemovedBody342_425

def RemovedBody342_427 : StackLang.HolProg 64 :=
.seq RemovedBody342_411 RemovedBody342_426

def RemovedBody342_428 : StackLang.HolProg 64 :=
.seq RemovedBody342_410 RemovedBody342_427

def RemovedBody342_429 : StackLang.HolProg 64 :=
.seq RemovedBody342_381 RemovedBody342_428

def RemovedBody342_430 : StackLang.HolProg 64 :=
.seq RemovedBody342_378 RemovedBody342_429

def RemovedBody342_431 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody342_432 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 1 0
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 0)))

def RemovedBody342_433 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 2
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 72#64))

def RemovedBody342_434 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 48#64))

def RemovedBody342_435 : StackLang.HolProg 64 :=
.seq RemovedBody342_433 RemovedBody342_434

def RemovedBody342_436 : StackLang.HolProg 64 :=
.seq RemovedBody342_432 RemovedBody342_435

def RemovedBody342_437 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody342_438 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 982#64)

def RemovedBody342_439 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody342_440 : StackLang.HolProg 64 :=
.seq RemovedBody342_438 RemovedBody342_439

def RemovedBody342_441 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody342_442 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 2#64)

def RemovedBody342_443 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 1

def RemovedBody342_444 : StackLang.HolProg 64 :=
.seq RemovedBody342_442 RemovedBody342_443

def RemovedBody342_445 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody342_446 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) RemovedBody342_444 RemovedBody342_445

def RemovedBody342_447 : StackLang.HolProg 64 :=
.seq RemovedBody342_441 RemovedBody342_446

def RemovedBody342_448 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def RemovedBody342_449 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody342_450 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 342 15

def RemovedBody342_451 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody342_452 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody342_453 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody342_454 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody342_455 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def RemovedBody342_456 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def RemovedBody342_457 : StackLang.HolProg 64 :=
.seq RemovedBody342_455 RemovedBody342_456

def RemovedBody342_458 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def RemovedBody342_459 : StackLang.HolProg 64 :=
.seq RemovedBody342_457 RemovedBody342_458

def RemovedBody342_460 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody342_461 : StackLang.HolProg 64 :=
.seq RemovedBody342_459 RemovedBody342_460

def RemovedBody342_462 : StackLang.HolProg 64 :=
.seq RemovedBody342_454 RemovedBody342_461

def RemovedBody342_463 : StackLang.HolProg 64 :=
.seq RemovedBody342_453 RemovedBody342_462

def RemovedBody342_464 : StackLang.HolProg 64 :=
.seq RemovedBody342_452 RemovedBody342_463

def RemovedBody342_465 : StackLang.HolProg 64 :=
.seq RemovedBody342_451 RemovedBody342_464

def RemovedBody342_466 : StackLang.HolProg 64 :=
.seq RemovedBody342_450 RemovedBody342_465

def RemovedBody342_467 : StackLang.HolProg 64 :=
.seq RemovedBody342_449 RemovedBody342_466

def RemovedBody342_468 : StackLang.HolProg 64 :=
.seq RemovedBody342_448 RemovedBody342_467

def RemovedBody342_469 : StackLang.HolProg 64 :=
.seq RemovedBody342_447 RemovedBody342_468

def RemovedBody342_470 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody342_471 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody342_472 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody342_473 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody342_474 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody342_475 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody342_476 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 0 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def RemovedBody342_477 : StackLang.HolProg 64 :=
.seq RemovedBody342_475 RemovedBody342_476

def RemovedBody342_478 : StackLang.HolProg 64 :=
.seq RemovedBody342_474 RemovedBody342_477

def RemovedBody342_479 : StackLang.HolProg 64 :=
.seq RemovedBody342_473 RemovedBody342_478

def RemovedBody342_480 : StackLang.HolProg 64 :=
.seq RemovedBody342_472 RemovedBody342_479

def RemovedBody342_481 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody342_482 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def RemovedBody342_483 : StackLang.HolProg 64 :=
.seq RemovedBody342_481 RemovedBody342_482

def RemovedBody342_484 : StackLang.HolProg 64 :=
.call (some (RemovedBody342_480, 0, 342, 14)) (Sum.inl 169) (some (RemovedBody342_483, 342, 15))

def RemovedBody342_485 : StackLang.HolProg 64 :=
.seq RemovedBody342_471 RemovedBody342_484

def RemovedBody342_486 : StackLang.HolProg 64 :=
.seq RemovedBody342_470 RemovedBody342_485

def RemovedBody342_487 : StackLang.HolProg 64 :=
.seq RemovedBody342_469 RemovedBody342_486

def RemovedBody342_488 : StackLang.HolProg 64 :=
.seq RemovedBody342_440 RemovedBody342_487

def RemovedBody342_489 : StackLang.HolProg 64 :=
.seq RemovedBody342_437 RemovedBody342_488

def RemovedBody342_490 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody342_491 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody342_492 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsl 1 2
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 5#64)))

def RemovedBody342_493 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 120#64))

def RemovedBody342_494 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 2
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 24#64))

def RemovedBody342_495 : StackLang.HolProg 64 :=
.seq RemovedBody342_493 RemovedBody342_494

def RemovedBody342_496 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody342_497 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 983#64)

def RemovedBody342_498 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody342_499 : StackLang.HolProg 64 :=
.seq RemovedBody342_497 RemovedBody342_498

def RemovedBody342_500 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody342_501 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 2#64)

def RemovedBody342_502 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 1

def RemovedBody342_503 : StackLang.HolProg 64 :=
.seq RemovedBody342_501 RemovedBody342_502

def RemovedBody342_504 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody342_505 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) RemovedBody342_503 RemovedBody342_504

def RemovedBody342_506 : StackLang.HolProg 64 :=
.seq RemovedBody342_500 RemovedBody342_505

def RemovedBody342_507 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def RemovedBody342_508 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody342_509 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 342 17

def RemovedBody342_510 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody342_511 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody342_512 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody342_513 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody342_514 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def RemovedBody342_515 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def RemovedBody342_516 : StackLang.HolProg 64 :=
.seq RemovedBody342_514 RemovedBody342_515

def RemovedBody342_517 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def RemovedBody342_518 : StackLang.HolProg 64 :=
.seq RemovedBody342_516 RemovedBody342_517

def RemovedBody342_519 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody342_520 : StackLang.HolProg 64 :=
.seq RemovedBody342_518 RemovedBody342_519

def RemovedBody342_521 : StackLang.HolProg 64 :=
.seq RemovedBody342_513 RemovedBody342_520

def RemovedBody342_522 : StackLang.HolProg 64 :=
.seq RemovedBody342_512 RemovedBody342_521

def RemovedBody342_523 : StackLang.HolProg 64 :=
.seq RemovedBody342_511 RemovedBody342_522

def RemovedBody342_524 : StackLang.HolProg 64 :=
.seq RemovedBody342_510 RemovedBody342_523

def RemovedBody342_525 : StackLang.HolProg 64 :=
.seq RemovedBody342_509 RemovedBody342_524

def RemovedBody342_526 : StackLang.HolProg 64 :=
.seq RemovedBody342_508 RemovedBody342_525

def RemovedBody342_527 : StackLang.HolProg 64 :=
.seq RemovedBody342_507 RemovedBody342_526

def RemovedBody342_528 : StackLang.HolProg 64 :=
.seq RemovedBody342_506 RemovedBody342_527

def RemovedBody342_529 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody342_530 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody342_531 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody342_532 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody342_533 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody342_534 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody342_535 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 3 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def RemovedBody342_536 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 120#64))

def RemovedBody342_537 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 4
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 24#64))

def RemovedBody342_538 : StackLang.HolProg 64 :=
.seq RemovedBody342_536 RemovedBody342_537

def RemovedBody342_539 : StackLang.HolProg 64 :=
.seq RemovedBody342_535 RemovedBody342_538

def RemovedBody342_540 : StackLang.HolProg 64 :=
.seq RemovedBody342_534 RemovedBody342_539

def RemovedBody342_541 : StackLang.HolProg 64 :=
.seq RemovedBody342_533 RemovedBody342_540

def RemovedBody342_542 : StackLang.HolProg 64 :=
.seq RemovedBody342_532 RemovedBody342_541

def RemovedBody342_543 : StackLang.HolProg 64 :=
.seq RemovedBody342_531 RemovedBody342_542

def RemovedBody342_544 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 120#64))

def RemovedBody342_545 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 4
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 24#64))

def RemovedBody342_546 : StackLang.HolProg 64 :=
.seq RemovedBody342_544 RemovedBody342_545

def RemovedBody342_547 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def RemovedBody342_548 : StackLang.HolProg 64 :=
.seq RemovedBody342_546 RemovedBody342_547

def RemovedBody342_549 : StackLang.HolProg 64 :=
.call (some (RemovedBody342_543, 0, 342, 16)) (Sum.inl 68) (some (RemovedBody342_548, 342, 17))

def RemovedBody342_550 : StackLang.HolProg 64 :=
.seq RemovedBody342_530 RemovedBody342_549

def RemovedBody342_551 : StackLang.HolProg 64 :=
.seq RemovedBody342_529 RemovedBody342_550

def RemovedBody342_552 : StackLang.HolProg 64 :=
.seq RemovedBody342_528 RemovedBody342_551

def RemovedBody342_553 : StackLang.HolProg 64 :=
.seq RemovedBody342_499 RemovedBody342_552

def RemovedBody342_554 : StackLang.HolProg 64 :=
.seq RemovedBody342_496 RemovedBody342_553

def RemovedBody342_555 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody342_556 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 2 0#64)

def RemovedBody342_557 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody342_558 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 3
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 120#64))

def RemovedBody342_559 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody342_560 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody342_561 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 1 0
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 0)))

def RemovedBody342_562 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 3 32#64)

def RemovedBody342_563 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 80#64))

def RemovedBody342_564 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody342_565 : StackLang.HolProg 64 :=
.seq RemovedBody342_563 RemovedBody342_564

def RemovedBody342_566 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 72#64))

def RemovedBody342_567 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 80#64))

def RemovedBody342_568 : StackLang.HolProg 64 :=
.seq RemovedBody342_566 RemovedBody342_567

def RemovedBody342_569 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 152#64))

def RemovedBody342_570 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 72#64))

def RemovedBody342_571 : StackLang.HolProg 64 :=
.seq RemovedBody342_569 RemovedBody342_570

def RemovedBody342_572 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 32#64))

def RemovedBody342_573 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 152#64))

def RemovedBody342_574 : StackLang.HolProg 64 :=
.seq RemovedBody342_572 RemovedBody342_573

def RemovedBody342_575 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 23
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 88#64))

def RemovedBody342_576 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 40#64))

def RemovedBody342_577 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 88#64))

def RemovedBody342_578 : StackLang.HolProg 64 :=
.seq RemovedBody342_576 RemovedBody342_577

def RemovedBody342_579 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 120#64))

def RemovedBody342_580 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 40#64))

def RemovedBody342_581 : StackLang.HolProg 64 :=
.seq RemovedBody342_579 RemovedBody342_580

def RemovedBody342_582 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 112#64))

def RemovedBody342_583 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 120#64))

def RemovedBody342_584 : StackLang.HolProg 64 :=
.seq RemovedBody342_582 RemovedBody342_583

def RemovedBody342_585 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 96#64))

def RemovedBody342_586 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 112#64))

def RemovedBody342_587 : StackLang.HolProg 64 :=
.seq RemovedBody342_585 RemovedBody342_586

def RemovedBody342_588 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 104#64))

def RemovedBody342_589 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 96#64))

def RemovedBody342_590 : StackLang.HolProg 64 :=
.seq RemovedBody342_588 RemovedBody342_589

def RemovedBody342_591 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 136#64))

def RemovedBody342_592 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 104#64))

def RemovedBody342_593 : StackLang.HolProg 64 :=
.seq RemovedBody342_591 RemovedBody342_592

def RemovedBody342_594 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 56#64))

def RemovedBody342_595 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 136#64))

def RemovedBody342_596 : StackLang.HolProg 64 :=
.seq RemovedBody342_594 RemovedBody342_595

def RemovedBody342_597 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 48#64))

def RemovedBody342_598 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 56#64))

def RemovedBody342_599 : StackLang.HolProg 64 :=
.seq RemovedBody342_597 RemovedBody342_598

def RemovedBody342_600 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 144#64))

def RemovedBody342_601 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 48#64))

def RemovedBody342_602 : StackLang.HolProg 64 :=
.seq RemovedBody342_600 RemovedBody342_601

def RemovedBody342_603 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 23
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 144#64))

def RemovedBody342_604 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 128#64))

def RemovedBody342_605 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 32#64))

def RemovedBody342_606 : StackLang.HolProg 64 :=
.seq RemovedBody342_604 RemovedBody342_605

def RemovedBody342_607 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 64#64))

def RemovedBody342_608 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 128#64))

def RemovedBody342_609 : StackLang.HolProg 64 :=
.seq RemovedBody342_607 RemovedBody342_608

def RemovedBody342_610 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 2
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 64#64))

def RemovedBody342_611 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 24#64))

def RemovedBody342_612 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 4
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody342_613 : StackLang.HolProg 64 :=
.seq RemovedBody342_611 RemovedBody342_612

def RemovedBody342_614 : StackLang.HolProg 64 :=
.seq RemovedBody342_610 RemovedBody342_613

def RemovedBody342_615 : StackLang.HolProg 64 :=
.seq RemovedBody342_609 RemovedBody342_614

def RemovedBody342_616 : StackLang.HolProg 64 :=
.seq RemovedBody342_606 RemovedBody342_615

def RemovedBody342_617 : StackLang.HolProg 64 :=
.seq RemovedBody342_603 RemovedBody342_616

def RemovedBody342_618 : StackLang.HolProg 64 :=
.seq RemovedBody342_602 RemovedBody342_617

def RemovedBody342_619 : StackLang.HolProg 64 :=
.seq RemovedBody342_599 RemovedBody342_618

def RemovedBody342_620 : StackLang.HolProg 64 :=
.seq RemovedBody342_596 RemovedBody342_619

def RemovedBody342_621 : StackLang.HolProg 64 :=
.seq RemovedBody342_593 RemovedBody342_620

def RemovedBody342_622 : StackLang.HolProg 64 :=
.seq RemovedBody342_590 RemovedBody342_621

def RemovedBody342_623 : StackLang.HolProg 64 :=
.seq RemovedBody342_587 RemovedBody342_622

def RemovedBody342_624 : StackLang.HolProg 64 :=
.seq RemovedBody342_584 RemovedBody342_623

def RemovedBody342_625 : StackLang.HolProg 64 :=
.seq RemovedBody342_581 RemovedBody342_624

def RemovedBody342_626 : StackLang.HolProg 64 :=
.seq RemovedBody342_578 RemovedBody342_625

def RemovedBody342_627 : StackLang.HolProg 64 :=
.seq RemovedBody342_575 RemovedBody342_626

def RemovedBody342_628 : StackLang.HolProg 64 :=
.seq RemovedBody342_574 RemovedBody342_627

def RemovedBody342_629 : StackLang.HolProg 64 :=
.seq RemovedBody342_571 RemovedBody342_628

def RemovedBody342_630 : StackLang.HolProg 64 :=
.seq RemovedBody342_568 RemovedBody342_629

def RemovedBody342_631 : StackLang.HolProg 64 :=
.seq RemovedBody342_565 RemovedBody342_630

def RemovedBody342_632 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody342_633 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 984#64)

def RemovedBody342_634 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody342_635 : StackLang.HolProg 64 :=
.seq RemovedBody342_633 RemovedBody342_634

def RemovedBody342_636 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody342_637 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 2#64)

def RemovedBody342_638 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 1

def RemovedBody342_639 : StackLang.HolProg 64 :=
.seq RemovedBody342_637 RemovedBody342_638

def RemovedBody342_640 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody342_641 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) RemovedBody342_639 RemovedBody342_640

def RemovedBody342_642 : StackLang.HolProg 64 :=
.seq RemovedBody342_636 RemovedBody342_641

def RemovedBody342_643 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def RemovedBody342_644 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody342_645 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 342 19

def RemovedBody342_646 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody342_647 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody342_648 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody342_649 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody342_650 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def RemovedBody342_651 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def RemovedBody342_652 : StackLang.HolProg 64 :=
.seq RemovedBody342_650 RemovedBody342_651

def RemovedBody342_653 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def RemovedBody342_654 : StackLang.HolProg 64 :=
.seq RemovedBody342_652 RemovedBody342_653

def RemovedBody342_655 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody342_656 : StackLang.HolProg 64 :=
.seq RemovedBody342_654 RemovedBody342_655

def RemovedBody342_657 : StackLang.HolProg 64 :=
.seq RemovedBody342_649 RemovedBody342_656

def RemovedBody342_658 : StackLang.HolProg 64 :=
.seq RemovedBody342_648 RemovedBody342_657

def RemovedBody342_659 : StackLang.HolProg 64 :=
.seq RemovedBody342_647 RemovedBody342_658

def RemovedBody342_660 : StackLang.HolProg 64 :=
.seq RemovedBody342_646 RemovedBody342_659

def RemovedBody342_661 : StackLang.HolProg 64 :=
.seq RemovedBody342_645 RemovedBody342_660

def RemovedBody342_662 : StackLang.HolProg 64 :=
.seq RemovedBody342_644 RemovedBody342_661

def RemovedBody342_663 : StackLang.HolProg 64 :=
.seq RemovedBody342_643 RemovedBody342_662

def RemovedBody342_664 : StackLang.HolProg 64 :=
.seq RemovedBody342_642 RemovedBody342_663

def RemovedBody342_665 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody342_666 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody342_667 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody342_668 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody342_669 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody342_670 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody342_671 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 2 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def RemovedBody342_672 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 64#64))

def RemovedBody342_673 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 4
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 40#64))

def RemovedBody342_674 : StackLang.HolProg 64 :=
.seq RemovedBody342_672 RemovedBody342_673

def RemovedBody342_675 : StackLang.HolProg 64 :=
.seq RemovedBody342_671 RemovedBody342_674

def RemovedBody342_676 : StackLang.HolProg 64 :=
.seq RemovedBody342_670 RemovedBody342_675

def RemovedBody342_677 : StackLang.HolProg 64 :=
.seq RemovedBody342_669 RemovedBody342_676

def RemovedBody342_678 : StackLang.HolProg 64 :=
.seq RemovedBody342_668 RemovedBody342_677

def RemovedBody342_679 : StackLang.HolProg 64 :=
.seq RemovedBody342_667 RemovedBody342_678

def RemovedBody342_680 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 64#64))

def RemovedBody342_681 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 4
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 40#64))

def RemovedBody342_682 : StackLang.HolProg 64 :=
.seq RemovedBody342_680 RemovedBody342_681

def RemovedBody342_683 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def RemovedBody342_684 : StackLang.HolProg 64 :=
.seq RemovedBody342_682 RemovedBody342_683

def RemovedBody342_685 : StackLang.HolProg 64 :=
.call (some (RemovedBody342_679, 0, 342, 18)) (Sum.inl 339) (some (RemovedBody342_684, 342, 19))

def RemovedBody342_686 : StackLang.HolProg 64 :=
.seq RemovedBody342_666 RemovedBody342_685

def RemovedBody342_687 : StackLang.HolProg 64 :=
.seq RemovedBody342_665 RemovedBody342_686

def RemovedBody342_688 : StackLang.HolProg 64 :=
.seq RemovedBody342_664 RemovedBody342_687

def RemovedBody342_689 : StackLang.HolProg 64 :=
.seq RemovedBody342_635 RemovedBody342_688

def RemovedBody342_690 : StackLang.HolProg 64 :=
.seq RemovedBody342_632 RemovedBody342_689

def RemovedBody342_691 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody342_692 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody342_693 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsl 1 0
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 5#64)))

def RemovedBody342_694 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody342_695 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 1 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 4)))

def RemovedBody342_696 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody342_697 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 3 32#64)

def RemovedBody342_698 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 64#64))

def RemovedBody342_699 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 4
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 40#64))

def RemovedBody342_700 : StackLang.HolProg 64 :=
.seq RemovedBody342_698 RemovedBody342_699

def RemovedBody342_701 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody342_702 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 985#64)

def RemovedBody342_703 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody342_704 : StackLang.HolProg 64 :=
.seq RemovedBody342_702 RemovedBody342_703

def RemovedBody342_705 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody342_706 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 2#64)

def RemovedBody342_707 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 1

def RemovedBody342_708 : StackLang.HolProg 64 :=
.seq RemovedBody342_706 RemovedBody342_707

def RemovedBody342_709 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody342_710 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) RemovedBody342_708 RemovedBody342_709

def RemovedBody342_711 : StackLang.HolProg 64 :=
.seq RemovedBody342_705 RemovedBody342_710

def RemovedBody342_712 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def RemovedBody342_713 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody342_714 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 342 21

def RemovedBody342_715 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody342_716 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody342_717 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody342_718 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody342_719 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def RemovedBody342_720 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def RemovedBody342_721 : StackLang.HolProg 64 :=
.seq RemovedBody342_719 RemovedBody342_720

def RemovedBody342_722 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def RemovedBody342_723 : StackLang.HolProg 64 :=
.seq RemovedBody342_721 RemovedBody342_722

def RemovedBody342_724 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody342_725 : StackLang.HolProg 64 :=
.seq RemovedBody342_723 RemovedBody342_724

def RemovedBody342_726 : StackLang.HolProg 64 :=
.seq RemovedBody342_718 RemovedBody342_725

def RemovedBody342_727 : StackLang.HolProg 64 :=
.seq RemovedBody342_717 RemovedBody342_726

def RemovedBody342_728 : StackLang.HolProg 64 :=
.seq RemovedBody342_716 RemovedBody342_727

def RemovedBody342_729 : StackLang.HolProg 64 :=
.seq RemovedBody342_715 RemovedBody342_728

def RemovedBody342_730 : StackLang.HolProg 64 :=
.seq RemovedBody342_714 RemovedBody342_729

def RemovedBody342_731 : StackLang.HolProg 64 :=
.seq RemovedBody342_713 RemovedBody342_730

def RemovedBody342_732 : StackLang.HolProg 64 :=
.seq RemovedBody342_712 RemovedBody342_731

def RemovedBody342_733 : StackLang.HolProg 64 :=
.seq RemovedBody342_711 RemovedBody342_732

def RemovedBody342_734 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody342_735 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody342_736 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody342_737 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody342_738 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody342_739 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody342_740 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 3
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 160#64))

def RemovedBody342_741 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 5
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 152#64))

def RemovedBody342_742 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 6
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 144#64))

def RemovedBody342_743 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 7
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 136#64))

def RemovedBody342_744 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 8
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 128#64))

def RemovedBody342_745 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 9
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 120#64))

def RemovedBody342_746 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 10
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 112#64))

def RemovedBody342_747 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 11
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 104#64))

def RemovedBody342_748 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 12
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 96#64))

def RemovedBody342_749 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 13
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 88#64))

def RemovedBody342_750 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 14
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 80#64))

def RemovedBody342_751 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 15
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 72#64))

def RemovedBody342_752 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 2
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 64#64))

def RemovedBody342_753 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 16
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 56#64))

def RemovedBody342_754 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 17
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 48#64))

def RemovedBody342_755 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 18
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 40#64))

def RemovedBody342_756 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 19
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 32#64))

def RemovedBody342_757 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 24#64))

def RemovedBody342_758 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 20
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody342_759 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 4
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody342_760 : StackLang.HolProg 64 :=
.seq RemovedBody342_758 RemovedBody342_759

def RemovedBody342_761 : StackLang.HolProg 64 :=
.seq RemovedBody342_757 RemovedBody342_760

def RemovedBody342_762 : StackLang.HolProg 64 :=
.seq RemovedBody342_756 RemovedBody342_761

def RemovedBody342_763 : StackLang.HolProg 64 :=
.seq RemovedBody342_755 RemovedBody342_762

def RemovedBody342_764 : StackLang.HolProg 64 :=
.seq RemovedBody342_754 RemovedBody342_763

def RemovedBody342_765 : StackLang.HolProg 64 :=
.seq RemovedBody342_753 RemovedBody342_764

def RemovedBody342_766 : StackLang.HolProg 64 :=
.seq RemovedBody342_752 RemovedBody342_765

def RemovedBody342_767 : StackLang.HolProg 64 :=
.seq RemovedBody342_751 RemovedBody342_766

def RemovedBody342_768 : StackLang.HolProg 64 :=
.seq RemovedBody342_750 RemovedBody342_767

def RemovedBody342_769 : StackLang.HolProg 64 :=
.seq RemovedBody342_749 RemovedBody342_768

def RemovedBody342_770 : StackLang.HolProg 64 :=
.seq RemovedBody342_748 RemovedBody342_769

def RemovedBody342_771 : StackLang.HolProg 64 :=
.seq RemovedBody342_747 RemovedBody342_770

def RemovedBody342_772 : StackLang.HolProg 64 :=
.seq RemovedBody342_746 RemovedBody342_771

def RemovedBody342_773 : StackLang.HolProg 64 :=
.seq RemovedBody342_745 RemovedBody342_772

def RemovedBody342_774 : StackLang.HolProg 64 :=
.seq RemovedBody342_744 RemovedBody342_773

def RemovedBody342_775 : StackLang.HolProg 64 :=
.seq RemovedBody342_743 RemovedBody342_774

def RemovedBody342_776 : StackLang.HolProg 64 :=
.seq RemovedBody342_742 RemovedBody342_775

def RemovedBody342_777 : StackLang.HolProg 64 :=
.seq RemovedBody342_741 RemovedBody342_776

def RemovedBody342_778 : StackLang.HolProg 64 :=
.seq RemovedBody342_740 RemovedBody342_777

def RemovedBody342_779 : StackLang.HolProg 64 :=
.seq RemovedBody342_739 RemovedBody342_778

def RemovedBody342_780 : StackLang.HolProg 64 :=
.seq RemovedBody342_738 RemovedBody342_779

def RemovedBody342_781 : StackLang.HolProg 64 :=
.seq RemovedBody342_737 RemovedBody342_780

def RemovedBody342_782 : StackLang.HolProg 64 :=
.seq RemovedBody342_736 RemovedBody342_781

def RemovedBody342_783 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 3
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 160#64))

def RemovedBody342_784 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 5
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 152#64))

def RemovedBody342_785 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 6
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 144#64))

def RemovedBody342_786 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 7
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 136#64))

def RemovedBody342_787 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 8
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 128#64))

def RemovedBody342_788 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 9
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 120#64))

def RemovedBody342_789 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 10
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 112#64))

def RemovedBody342_790 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 11
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 104#64))

def RemovedBody342_791 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 12
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 96#64))

def RemovedBody342_792 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 13
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 88#64))

def RemovedBody342_793 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 14
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 80#64))

def RemovedBody342_794 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 15
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 72#64))

def RemovedBody342_795 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 2
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 64#64))

def RemovedBody342_796 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 16
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 56#64))

def RemovedBody342_797 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 17
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 48#64))

def RemovedBody342_798 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 18
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 40#64))

def RemovedBody342_799 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 19
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 32#64))

def RemovedBody342_800 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 24#64))

def RemovedBody342_801 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 20
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody342_802 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 4
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody342_803 : StackLang.HolProg 64 :=
.seq RemovedBody342_801 RemovedBody342_802

def RemovedBody342_804 : StackLang.HolProg 64 :=
.seq RemovedBody342_800 RemovedBody342_803

def RemovedBody342_805 : StackLang.HolProg 64 :=
.seq RemovedBody342_799 RemovedBody342_804

def RemovedBody342_806 : StackLang.HolProg 64 :=
.seq RemovedBody342_798 RemovedBody342_805

def RemovedBody342_807 : StackLang.HolProg 64 :=
.seq RemovedBody342_797 RemovedBody342_806

def RemovedBody342_808 : StackLang.HolProg 64 :=
.seq RemovedBody342_796 RemovedBody342_807

def RemovedBody342_809 : StackLang.HolProg 64 :=
.seq RemovedBody342_795 RemovedBody342_808

def RemovedBody342_810 : StackLang.HolProg 64 :=
.seq RemovedBody342_794 RemovedBody342_809

def RemovedBody342_811 : StackLang.HolProg 64 :=
.seq RemovedBody342_793 RemovedBody342_810

def RemovedBody342_812 : StackLang.HolProg 64 :=
.seq RemovedBody342_792 RemovedBody342_811

def RemovedBody342_813 : StackLang.HolProg 64 :=
.seq RemovedBody342_791 RemovedBody342_812

def RemovedBody342_814 : StackLang.HolProg 64 :=
.seq RemovedBody342_790 RemovedBody342_813

def RemovedBody342_815 : StackLang.HolProg 64 :=
.seq RemovedBody342_789 RemovedBody342_814

def RemovedBody342_816 : StackLang.HolProg 64 :=
.seq RemovedBody342_788 RemovedBody342_815

def RemovedBody342_817 : StackLang.HolProg 64 :=
.seq RemovedBody342_787 RemovedBody342_816

def RemovedBody342_818 : StackLang.HolProg 64 :=
.seq RemovedBody342_786 RemovedBody342_817

def RemovedBody342_819 : StackLang.HolProg 64 :=
.seq RemovedBody342_785 RemovedBody342_818

def RemovedBody342_820 : StackLang.HolProg 64 :=
.seq RemovedBody342_784 RemovedBody342_819

def RemovedBody342_821 : StackLang.HolProg 64 :=
.seq RemovedBody342_783 RemovedBody342_820

def RemovedBody342_822 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def RemovedBody342_823 : StackLang.HolProg 64 :=
.seq RemovedBody342_821 RemovedBody342_822

def RemovedBody342_824 : StackLang.HolProg 64 :=
.call (some (RemovedBody342_782, 0, 342, 20)) (Sum.inl 77) (some (RemovedBody342_823, 342, 21))

def RemovedBody342_825 : StackLang.HolProg 64 :=
.seq RemovedBody342_735 RemovedBody342_824

def RemovedBody342_826 : StackLang.HolProg 64 :=
.seq RemovedBody342_734 RemovedBody342_825

def RemovedBody342_827 : StackLang.HolProg 64 :=
.seq RemovedBody342_733 RemovedBody342_826

def RemovedBody342_828 : StackLang.HolProg 64 :=
.seq RemovedBody342_704 RemovedBody342_827

def RemovedBody342_829 : StackLang.HolProg 64 :=
.seq RemovedBody342_701 RemovedBody342_828

def RemovedBody342_830 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody342_831 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody342_832 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 2 2
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 1#64)))

def RemovedBody342_833 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 3
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 160#64))

def RemovedBody342_834 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 5
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 32#64))

def RemovedBody342_835 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 6
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 88#64))

def RemovedBody342_836 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 7
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 56#64))

def RemovedBody342_837 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 8
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 64#64))

def RemovedBody342_838 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 9
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 112#64))

def RemovedBody342_839 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 10
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 96#64))

def RemovedBody342_840 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 11
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 136#64))

def RemovedBody342_841 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 12
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 104#64))

def RemovedBody342_842 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 13
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 40#64))

def RemovedBody342_843 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 14
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 72#64))

def RemovedBody342_844 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 15
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 152#64))

def RemovedBody342_845 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 16
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 48#64))

def RemovedBody342_846 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 17
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 144#64))

def RemovedBody342_847 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 18
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 120#64))

def RemovedBody342_848 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 19
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 128#64))

def RemovedBody342_849 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 20
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 80#64))

def RemovedBody342_850 : StackLang.HolProg 64 :=
.seq RemovedBody342_848 RemovedBody342_849

def RemovedBody342_851 : StackLang.HolProg 64 :=
.seq RemovedBody342_847 RemovedBody342_850

def RemovedBody342_852 : StackLang.HolProg 64 :=
.seq RemovedBody342_846 RemovedBody342_851

def RemovedBody342_853 : StackLang.HolProg 64 :=
.seq RemovedBody342_845 RemovedBody342_852

def RemovedBody342_854 : StackLang.HolProg 64 :=
.seq RemovedBody342_844 RemovedBody342_853

def RemovedBody342_855 : StackLang.HolProg 64 :=
.seq RemovedBody342_843 RemovedBody342_854

def RemovedBody342_856 : StackLang.HolProg 64 :=
.seq RemovedBody342_842 RemovedBody342_855

def RemovedBody342_857 : StackLang.HolProg 64 :=
.seq RemovedBody342_841 RemovedBody342_856

def RemovedBody342_858 : StackLang.HolProg 64 :=
.seq RemovedBody342_840 RemovedBody342_857

def RemovedBody342_859 : StackLang.HolProg 64 :=
.seq RemovedBody342_839 RemovedBody342_858

def RemovedBody342_860 : StackLang.HolProg 64 :=
.seq RemovedBody342_838 RemovedBody342_859

def RemovedBody342_861 : StackLang.HolProg 64 :=
.seq RemovedBody342_837 RemovedBody342_860

def RemovedBody342_862 : StackLang.HolProg 64 :=
.seq RemovedBody342_836 RemovedBody342_861

def RemovedBody342_863 : StackLang.HolProg 64 :=
.seq RemovedBody342_835 RemovedBody342_862

def RemovedBody342_864 : StackLang.HolProg 64 :=
.seq RemovedBody342_834 RemovedBody342_863

def RemovedBody342_865 : StackLang.HolProg 64 :=
.seq RemovedBody342_833 RemovedBody342_864

def RemovedBody342_866 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.continue 0

def RemovedBody342_867 : StackLang.HolProg 64 :=
.seq RemovedBody342_865 RemovedBody342_866

def RemovedBody342_868 : StackLang.HolProg 64 :=
.seq RemovedBody342_832 RemovedBody342_867

def RemovedBody342_869 : StackLang.HolProg 64 :=
.seq RemovedBody342_831 RemovedBody342_868

def RemovedBody342_870 : StackLang.HolProg 64 :=
.seq RemovedBody342_830 RemovedBody342_869

def RemovedBody342_871 : StackLang.HolProg 64 :=
.seq RemovedBody342_829 RemovedBody342_870

def RemovedBody342_872 : StackLang.HolProg 64 :=
.seq RemovedBody342_700 RemovedBody342_871

def RemovedBody342_873 : StackLang.HolProg 64 :=
.seq RemovedBody342_697 RemovedBody342_872

def RemovedBody342_874 : StackLang.HolProg 64 :=
.seq RemovedBody342_696 RemovedBody342_873

def RemovedBody342_875 : StackLang.HolProg 64 :=
.seq RemovedBody342_695 RemovedBody342_874

def RemovedBody342_876 : StackLang.HolProg 64 :=
.seq RemovedBody342_694 RemovedBody342_875

def RemovedBody342_877 : StackLang.HolProg 64 :=
.seq RemovedBody342_693 RemovedBody342_876

def RemovedBody342_878 : StackLang.HolProg 64 :=
.seq RemovedBody342_692 RemovedBody342_877

def RemovedBody342_879 : StackLang.HolProg 64 :=
.seq RemovedBody342_691 RemovedBody342_878

def RemovedBody342_880 : StackLang.HolProg 64 :=
.seq RemovedBody342_690 RemovedBody342_879

def RemovedBody342_881 : StackLang.HolProg 64 :=
.seq RemovedBody342_631 RemovedBody342_880

def RemovedBody342_882 : StackLang.HolProg 64 :=
.seq RemovedBody342_562 RemovedBody342_881

def RemovedBody342_883 : StackLang.HolProg 64 :=
.seq RemovedBody342_561 RemovedBody342_882

def RemovedBody342_884 : StackLang.HolProg 64 :=
.seq RemovedBody342_560 RemovedBody342_883

def RemovedBody342_885 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody342_886 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody342_887 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.break 0

def RemovedBody342_888 : StackLang.HolProg 64 :=
.seq RemovedBody342_886 RemovedBody342_887

def RemovedBody342_889 : StackLang.HolProg 64 :=
.seq RemovedBody342_885 RemovedBody342_888

def RemovedBody342_890 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 2 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 4) RemovedBody342_884 RemovedBody342_889

def RemovedBody342_891 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody342_892 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 160#64))

def RemovedBody342_893 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 3
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 32#64))

def RemovedBody342_894 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 5
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 88#64))

def RemovedBody342_895 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 6
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 56#64))

def RemovedBody342_896 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 7
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 64#64))

def RemovedBody342_897 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 8
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 112#64))

def RemovedBody342_898 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 9
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 96#64))

def RemovedBody342_899 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 10
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 136#64))

def RemovedBody342_900 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 11
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 104#64))

def RemovedBody342_901 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 12
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 40#64))

def RemovedBody342_902 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 13
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 72#64))

def RemovedBody342_903 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 14
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 152#64))

def RemovedBody342_904 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 15
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 48#64))

def RemovedBody342_905 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 16
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 144#64))

def RemovedBody342_906 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 17
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 120#64))

def RemovedBody342_907 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 18
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 128#64))

def RemovedBody342_908 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 19
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 80#64))

def RemovedBody342_909 : StackLang.HolProg 64 :=
.seq RemovedBody342_907 RemovedBody342_908

def RemovedBody342_910 : StackLang.HolProg 64 :=
.seq RemovedBody342_906 RemovedBody342_909

def RemovedBody342_911 : StackLang.HolProg 64 :=
.seq RemovedBody342_905 RemovedBody342_910

def RemovedBody342_912 : StackLang.HolProg 64 :=
.seq RemovedBody342_904 RemovedBody342_911

def RemovedBody342_913 : StackLang.HolProg 64 :=
.seq RemovedBody342_903 RemovedBody342_912

def RemovedBody342_914 : StackLang.HolProg 64 :=
.seq RemovedBody342_902 RemovedBody342_913

def RemovedBody342_915 : StackLang.HolProg 64 :=
.seq RemovedBody342_901 RemovedBody342_914

def RemovedBody342_916 : StackLang.HolProg 64 :=
.seq RemovedBody342_900 RemovedBody342_915

def RemovedBody342_917 : StackLang.HolProg 64 :=
.seq RemovedBody342_899 RemovedBody342_916

def RemovedBody342_918 : StackLang.HolProg 64 :=
.seq RemovedBody342_898 RemovedBody342_917

def RemovedBody342_919 : StackLang.HolProg 64 :=
.seq RemovedBody342_897 RemovedBody342_918

def RemovedBody342_920 : StackLang.HolProg 64 :=
.seq RemovedBody342_896 RemovedBody342_919

def RemovedBody342_921 : StackLang.HolProg 64 :=
.seq RemovedBody342_895 RemovedBody342_920

def RemovedBody342_922 : StackLang.HolProg 64 :=
.seq RemovedBody342_894 RemovedBody342_921

def RemovedBody342_923 : StackLang.HolProg 64 :=
.seq RemovedBody342_893 RemovedBody342_922

def RemovedBody342_924 : StackLang.HolProg 64 :=
.seq RemovedBody342_892 RemovedBody342_923

def RemovedBody342_925 : StackLang.HolProg 64 :=
.seq RemovedBody342_891 RemovedBody342_924

def RemovedBody342_926 : StackLang.HolProg 64 :=
.seq RemovedBody342_890 RemovedBody342_925

def RemovedBody342_927 : StackLang.HolProg 64 :=
.seq RemovedBody342_559 RemovedBody342_926

def RemovedBody342_928 : StackLang.HolProg 64 :=
.loop RemovedBody342_927

def RemovedBody342_929 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody342_930 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 96#64))

def RemovedBody342_931 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 2 24#64)

def RemovedBody342_932 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 0 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def RemovedBody342_933 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith (Flapjack.Compiler.Encoders.Asm.HolArith.longMul 3 0 0 2))

def RemovedBody342_934 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 3
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 104#64))

def RemovedBody342_935 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 0 0
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 3)))

def RemovedBody342_936 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 2
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 112#64))

def RemovedBody342_937 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 2
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 0 0#64))

def RemovedBody342_938 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody342_939 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 2 0
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 8#64)))

def RemovedBody342_940 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 5
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 120#64))

def RemovedBody342_941 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 5
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 2 0#64))

def RemovedBody342_942 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody342_943 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 0 0
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 16#64)))

def RemovedBody342_944 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody342_945 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 4
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 0 0#64))

def RemovedBody342_946 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody342_947 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 2 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 1#64)))

def RemovedBody342_948 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 152#64))

def RemovedBody342_949 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 3
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 152#64))

def RemovedBody342_950 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 3
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 128#64))

def RemovedBody342_951 : StackLang.HolProg 64 :=
.seq RemovedBody342_949 RemovedBody342_950

def RemovedBody342_952 : StackLang.HolProg 64 :=
.seq RemovedBody342_948 RemovedBody342_951

def RemovedBody342_953 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.continue 0

def RemovedBody342_954 : StackLang.HolProg 64 :=
.seq RemovedBody342_952 RemovedBody342_953

def RemovedBody342_955 : StackLang.HolProg 64 :=
.seq RemovedBody342_947 RemovedBody342_954

def RemovedBody342_956 : StackLang.HolProg 64 :=
.seq RemovedBody342_946 RemovedBody342_955

def RemovedBody342_957 : StackLang.HolProg 64 :=
.seq RemovedBody342_945 RemovedBody342_956

def RemovedBody342_958 : StackLang.HolProg 64 :=
.seq RemovedBody342_944 RemovedBody342_957

def RemovedBody342_959 : StackLang.HolProg 64 :=
.seq RemovedBody342_943 RemovedBody342_958

def RemovedBody342_960 : StackLang.HolProg 64 :=
.seq RemovedBody342_942 RemovedBody342_959

def RemovedBody342_961 : StackLang.HolProg 64 :=
.seq RemovedBody342_941 RemovedBody342_960

def RemovedBody342_962 : StackLang.HolProg 64 :=
.seq RemovedBody342_940 RemovedBody342_961

def RemovedBody342_963 : StackLang.HolProg 64 :=
.seq RemovedBody342_939 RemovedBody342_962

def RemovedBody342_964 : StackLang.HolProg 64 :=
.seq RemovedBody342_938 RemovedBody342_963

def RemovedBody342_965 : StackLang.HolProg 64 :=
.seq RemovedBody342_937 RemovedBody342_964

def RemovedBody342_966 : StackLang.HolProg 64 :=
.seq RemovedBody342_936 RemovedBody342_965

def RemovedBody342_967 : StackLang.HolProg 64 :=
.seq RemovedBody342_935 RemovedBody342_966

def RemovedBody342_968 : StackLang.HolProg 64 :=
.seq RemovedBody342_934 RemovedBody342_967

def RemovedBody342_969 : StackLang.HolProg 64 :=
.seq RemovedBody342_933 RemovedBody342_968

def RemovedBody342_970 : StackLang.HolProg 64 :=
.seq RemovedBody342_932 RemovedBody342_969

def RemovedBody342_971 : StackLang.HolProg 64 :=
.seq RemovedBody342_931 RemovedBody342_970

def RemovedBody342_972 : StackLang.HolProg 64 :=
.seq RemovedBody342_930 RemovedBody342_971

def RemovedBody342_973 : StackLang.HolProg 64 :=
.seq RemovedBody342_929 RemovedBody342_972

def RemovedBody342_974 : StackLang.HolProg 64 :=
.seq RemovedBody342_928 RemovedBody342_973

def RemovedBody342_975 : StackLang.HolProg 64 :=
.seq RemovedBody342_558 RemovedBody342_974

def RemovedBody342_976 : StackLang.HolProg 64 :=
.seq RemovedBody342_557 RemovedBody342_975

def RemovedBody342_977 : StackLang.HolProg 64 :=
.seq RemovedBody342_556 RemovedBody342_976

def RemovedBody342_978 : StackLang.HolProg 64 :=
.seq RemovedBody342_555 RemovedBody342_977

def RemovedBody342_979 : StackLang.HolProg 64 :=
.seq RemovedBody342_554 RemovedBody342_978

def RemovedBody342_980 : StackLang.HolProg 64 :=
.seq RemovedBody342_495 RemovedBody342_979

def RemovedBody342_981 : StackLang.HolProg 64 :=
.seq RemovedBody342_492 RemovedBody342_980

def RemovedBody342_982 : StackLang.HolProg 64 :=
.seq RemovedBody342_491 RemovedBody342_981

def RemovedBody342_983 : StackLang.HolProg 64 :=
.seq RemovedBody342_490 RemovedBody342_982

def RemovedBody342_984 : StackLang.HolProg 64 :=
.seq RemovedBody342_489 RemovedBody342_983

def RemovedBody342_985 : StackLang.HolProg 64 :=
.seq RemovedBody342_436 RemovedBody342_984

def RemovedBody342_986 : StackLang.HolProg 64 :=
.seq RemovedBody342_431 RemovedBody342_985

def RemovedBody342_987 : StackLang.HolProg 64 :=
.seq RemovedBody342_430 RemovedBody342_986

def RemovedBody342_988 : StackLang.HolProg 64 :=
.seq RemovedBody342_377 RemovedBody342_987

def RemovedBody342_989 : StackLang.HolProg 64 :=
.seq RemovedBody342_374 RemovedBody342_988

def RemovedBody342_990 : StackLang.HolProg 64 :=
.seq RemovedBody342_373 RemovedBody342_989

def RemovedBody342_991 : StackLang.HolProg 64 :=
.seq RemovedBody342_372 RemovedBody342_990

def RemovedBody342_992 : StackLang.HolProg 64 :=
.seq RemovedBody342_371 RemovedBody342_991

def RemovedBody342_993 : StackLang.HolProg 64 :=
.seq RemovedBody342_316 RemovedBody342_992

def RemovedBody342_994 : StackLang.HolProg 64 :=
.seq RemovedBody342_313 RemovedBody342_993

def RemovedBody342_995 : StackLang.HolProg 64 :=
.seq RemovedBody342_312 RemovedBody342_994

def RemovedBody342_996 : StackLang.HolProg 64 :=
.seq RemovedBody342_311 RemovedBody342_995

def RemovedBody342_997 : StackLang.HolProg 64 :=
.seq RemovedBody342_310 RemovedBody342_996

def RemovedBody342_998 : StackLang.HolProg 64 :=
.seq RemovedBody342_309 RemovedBody342_997

def RemovedBody342_999 : StackLang.HolProg 64 :=
.seq RemovedBody342_308 RemovedBody342_998

def RemovedBody342_1000 : StackLang.HolProg 64 :=
.seq RemovedBody342_293 RemovedBody342_999

def RemovedBody342_1001 : StackLang.HolProg 64 :=
.seq RemovedBody342_292 RemovedBody342_1000

def RemovedBody342_1002 : StackLang.HolProg 64 :=
.seq RemovedBody342_291 RemovedBody342_1001

def RemovedBody342_1003 : StackLang.HolProg 64 :=
.seq RemovedBody342_290 RemovedBody342_1002

def RemovedBody342_1004 : StackLang.HolProg 64 :=
.seq RemovedBody342_237 RemovedBody342_1003

def RemovedBody342_1005 : StackLang.HolProg 64 :=
.seq RemovedBody342_226 RemovedBody342_1004

def RemovedBody342_1006 : StackLang.HolProg 64 :=
.seq RemovedBody342_225 RemovedBody342_1005

def RemovedBody342_1007 : StackLang.HolProg 64 :=
.seq RemovedBody342_224 RemovedBody342_1006

def RemovedBody342_1008 : StackLang.HolProg 64 :=
.seq RemovedBody342_209 RemovedBody342_1007

def RemovedBody342_1009 : StackLang.HolProg 64 :=
.seq RemovedBody342_208 RemovedBody342_1008

def RemovedBody342_1010 : StackLang.HolProg 64 :=
.seq RemovedBody342_207 RemovedBody342_1009

def RemovedBody342_1011 : StackLang.HolProg 64 :=
.seq RemovedBody342_206 RemovedBody342_1010

def RemovedBody342_1012 : StackLang.HolProg 64 :=
.seq RemovedBody342_153 RemovedBody342_1011

def RemovedBody342_1013 : StackLang.HolProg 64 :=
.seq RemovedBody342_148 RemovedBody342_1012

def RemovedBody342_1014 : StackLang.HolProg 64 :=
.seq RemovedBody342_147 RemovedBody342_1013

def RemovedBody342_1015 : StackLang.HolProg 64 :=
.seq RemovedBody342_144 RemovedBody342_1014

def RemovedBody342_1016 : StackLang.HolProg 64 :=
.seq RemovedBody342_143 RemovedBody342_1015

def RemovedBody342_1017 : StackLang.HolProg 64 :=
.seq RemovedBody342_142 RemovedBody342_1016

def RemovedBody342_1018 : StackLang.HolProg 64 :=
.seq RemovedBody342_141 RemovedBody342_1017

def RemovedBody342_1019 : StackLang.HolProg 64 :=
.seq RemovedBody342_140 RemovedBody342_1018

def RemovedBody342_1020 : StackLang.HolProg 64 :=
.seq RemovedBody342_139 RemovedBody342_1019

def RemovedBody342_1021 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody342_1022 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody342_1023 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.break 0

def RemovedBody342_1024 : StackLang.HolProg 64 :=
.seq RemovedBody342_1022 RemovedBody342_1023

def RemovedBody342_1025 : StackLang.HolProg 64 :=
.seq RemovedBody342_1021 RemovedBody342_1024

def RemovedBody342_1026 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 2 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 0) RemovedBody342_1020 RemovedBody342_1025

def RemovedBody342_1027 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody342_1028 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 160#64))

def RemovedBody342_1029 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 4
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 136#64))

def RemovedBody342_1030 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 5
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 152#64))

def RemovedBody342_1031 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 6
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 144#64))

def RemovedBody342_1032 : StackLang.HolProg 64 :=
.seq RemovedBody342_1030 RemovedBody342_1031

def RemovedBody342_1033 : StackLang.HolProg 64 :=
.seq RemovedBody342_1029 RemovedBody342_1032

def RemovedBody342_1034 : StackLang.HolProg 64 :=
.seq RemovedBody342_1028 RemovedBody342_1033

def RemovedBody342_1035 : StackLang.HolProg 64 :=
.seq RemovedBody342_1027 RemovedBody342_1034

def RemovedBody342_1036 : StackLang.HolProg 64 :=
.seq RemovedBody342_1026 RemovedBody342_1035

def RemovedBody342_1037 : StackLang.HolProg 64 :=
.seq RemovedBody342_138 RemovedBody342_1036

def RemovedBody342_1038 : StackLang.HolProg 64 :=
.loop RemovedBody342_1037

def RemovedBody342_1039 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody342_1040 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 152#64))

def RemovedBody342_1041 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 2 0
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 0)))

def RemovedBody342_1042 : StackLang.HolProg 64 :=
.seq RemovedBody342_1040 RemovedBody342_1041

def RemovedBody342_1043 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 160#64))

def RemovedBody342_1044 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 168#64)))

def RemovedBody342_1045 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 22

def RemovedBody342_1046 : StackLang.HolProg 64 :=
.seq RemovedBody342_1044 RemovedBody342_1045

def RemovedBody342_1047 : StackLang.HolProg 64 :=
.seq RemovedBody342_1043 RemovedBody342_1046

def RemovedBody342_1048 : StackLang.HolProg 64 :=
.seq RemovedBody342_1042 RemovedBody342_1047

def RemovedBody342_1049 : StackLang.HolProg 64 :=
.seq RemovedBody342_1039 RemovedBody342_1048

def RemovedBody342_1050 : StackLang.HolProg 64 :=
.seq RemovedBody342_1038 RemovedBody342_1049

def RemovedBody342_1051 : StackLang.HolProg 64 :=
.seq RemovedBody342_137 RemovedBody342_1050

def RemovedBody342_1052 : StackLang.HolProg 64 :=
.seq RemovedBody342_136 RemovedBody342_1051

def RemovedBody342_1053 : StackLang.HolProg 64 :=
.seq RemovedBody342_135 RemovedBody342_1052

def RemovedBody342_1054 : StackLang.HolProg 64 :=
.seq RemovedBody342_134 RemovedBody342_1053

def RemovedBody342_1055 : StackLang.HolProg 64 :=
.seq RemovedBody342_133 RemovedBody342_1054

def RemovedBody342_1056 : StackLang.HolProg 64 :=
.seq RemovedBody342_74 RemovedBody342_1055

def RemovedBody342_1057 : StackLang.HolProg 64 :=
.seq RemovedBody342_69 RemovedBody342_1056

def RemovedBody342_1058 : StackLang.HolProg 64 :=
.seq RemovedBody342_68 RemovedBody342_1057

def RemovedBody342_1059 : StackLang.HolProg 64 :=
.seq RemovedBody342_67 RemovedBody342_1058

def RemovedBody342_1060 : StackLang.HolProg 64 :=
.seq RemovedBody342_66 RemovedBody342_1059

def RemovedBody342_1061 : StackLang.HolProg 64 :=
.seq RemovedBody342_65 RemovedBody342_1060

def RemovedBody342_1062 : StackLang.HolProg 64 :=
.seq RemovedBody342_64 RemovedBody342_1061

def RemovedBody342_1063 : StackLang.HolProg 64 :=
.seq RemovedBody342_11 RemovedBody342_1062

def RemovedBody342_1064 : StackLang.HolProg 64 :=
.seq RemovedBody342_6 RemovedBody342_1063

def Removed342 : Nat × StackLang.HolProg 64 := (342, RemovedBody342_1064)
theorem Removed342_eq : StackRemove.progComp false riscvConfig.addrOffset (riscvConfig.regCount - (riscvConfig.avoidRegs.length + 3)) Alloc342 = Removed342 := by
  kernel_rfl
#print axioms Removed342_eq
end InitECandidate.Proofs.BackendStages
