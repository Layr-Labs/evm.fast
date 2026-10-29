import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.BackendStages.Alloc190
import Flapjack.Compiler.Backend.Backend
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
namespace InitECandidate.Proofs.BackendStages
def RemovedBody190_0 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 32#64)))

def RemovedBody190_1 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 2#64)

def RemovedBody190_2 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 1

def RemovedBody190_3 : StackLang.HolProg 64 :=
.seq RemovedBody190_1 RemovedBody190_2

def RemovedBody190_4 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody190_5 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) RemovedBody190_3 RemovedBody190_4

def RemovedBody190_6 : StackLang.HolProg 64 :=
.seq RemovedBody190_0 RemovedBody190_5

def RemovedBody190_7 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 24#64))

def RemovedBody190_8 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 2
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody190_9 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody190_10 : StackLang.HolProg 64 :=
.seq RemovedBody190_8 RemovedBody190_9

def RemovedBody190_11 : StackLang.HolProg 64 :=
.seq RemovedBody190_7 RemovedBody190_10

def RemovedBody190_12 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody190_13 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 218#64)

def RemovedBody190_14 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody190_15 : StackLang.HolProg 64 :=
.seq RemovedBody190_13 RemovedBody190_14

def RemovedBody190_16 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody190_17 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 2#64)

def RemovedBody190_18 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 1

def RemovedBody190_19 : StackLang.HolProg 64 :=
.seq RemovedBody190_17 RemovedBody190_18

def RemovedBody190_20 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody190_21 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) RemovedBody190_19 RemovedBody190_20

def RemovedBody190_22 : StackLang.HolProg 64 :=
.seq RemovedBody190_16 RemovedBody190_21

def RemovedBody190_23 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def RemovedBody190_24 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody190_25 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 190 3

def RemovedBody190_26 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody190_27 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody190_28 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody190_29 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody190_30 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def RemovedBody190_31 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def RemovedBody190_32 : StackLang.HolProg 64 :=
.seq RemovedBody190_30 RemovedBody190_31

def RemovedBody190_33 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def RemovedBody190_34 : StackLang.HolProg 64 :=
.seq RemovedBody190_32 RemovedBody190_33

def RemovedBody190_35 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody190_36 : StackLang.HolProg 64 :=
.seq RemovedBody190_34 RemovedBody190_35

def RemovedBody190_37 : StackLang.HolProg 64 :=
.seq RemovedBody190_29 RemovedBody190_36

def RemovedBody190_38 : StackLang.HolProg 64 :=
.seq RemovedBody190_28 RemovedBody190_37

def RemovedBody190_39 : StackLang.HolProg 64 :=
.seq RemovedBody190_27 RemovedBody190_38

def RemovedBody190_40 : StackLang.HolProg 64 :=
.seq RemovedBody190_26 RemovedBody190_39

def RemovedBody190_41 : StackLang.HolProg 64 :=
.seq RemovedBody190_25 RemovedBody190_40

def RemovedBody190_42 : StackLang.HolProg 64 :=
.seq RemovedBody190_24 RemovedBody190_41

def RemovedBody190_43 : StackLang.HolProg 64 :=
.seq RemovedBody190_23 RemovedBody190_42

def RemovedBody190_44 : StackLang.HolProg 64 :=
.seq RemovedBody190_22 RemovedBody190_43

def RemovedBody190_45 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody190_46 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody190_47 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody190_48 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody190_49 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody190_50 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody190_51 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 2 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def RemovedBody190_52 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 4
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 24#64))

def RemovedBody190_53 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody190_54 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 3
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody190_55 : StackLang.HolProg 64 :=
.seq RemovedBody190_53 RemovedBody190_54

def RemovedBody190_56 : StackLang.HolProg 64 :=
.seq RemovedBody190_52 RemovedBody190_55

def RemovedBody190_57 : StackLang.HolProg 64 :=
.seq RemovedBody190_51 RemovedBody190_56

def RemovedBody190_58 : StackLang.HolProg 64 :=
.seq RemovedBody190_50 RemovedBody190_57

def RemovedBody190_59 : StackLang.HolProg 64 :=
.seq RemovedBody190_49 RemovedBody190_58

def RemovedBody190_60 : StackLang.HolProg 64 :=
.seq RemovedBody190_48 RemovedBody190_59

def RemovedBody190_61 : StackLang.HolProg 64 :=
.seq RemovedBody190_47 RemovedBody190_60

def RemovedBody190_62 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 4
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 24#64))

def RemovedBody190_63 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody190_64 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 3
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody190_65 : StackLang.HolProg 64 :=
.seq RemovedBody190_63 RemovedBody190_64

def RemovedBody190_66 : StackLang.HolProg 64 :=
.seq RemovedBody190_62 RemovedBody190_65

def RemovedBody190_67 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def RemovedBody190_68 : StackLang.HolProg 64 :=
.seq RemovedBody190_66 RemovedBody190_67

def RemovedBody190_69 : StackLang.HolProg 64 :=
.call (some (RemovedBody190_61, 0, 190, 2)) (Sum.inl 188) (some (RemovedBody190_68, 190, 3))

def RemovedBody190_70 : StackLang.HolProg 64 :=
.seq RemovedBody190_46 RemovedBody190_69

def RemovedBody190_71 : StackLang.HolProg 64 :=
.seq RemovedBody190_45 RemovedBody190_70

def RemovedBody190_72 : StackLang.HolProg 64 :=
.seq RemovedBody190_44 RemovedBody190_71

def RemovedBody190_73 : StackLang.HolProg 64 :=
.seq RemovedBody190_15 RemovedBody190_72

def RemovedBody190_74 : StackLang.HolProg 64 :=
.seq RemovedBody190_12 RemovedBody190_73

def RemovedBody190_75 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody190_76 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody190_77 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 3 40#64))

def RemovedBody190_78 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody190_79 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsl 3 2
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 5#64)))

def RemovedBody190_80 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody190_81 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 1 3
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def RemovedBody190_82 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 3 0#64)

def RemovedBody190_83 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody190_84 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 3
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 1 0#64))

def RemovedBody190_85 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody190_86 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 3 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 8#64)))

def RemovedBody190_87 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 5 0#64)

def RemovedBody190_88 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody190_89 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 5
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 3 0#64))

def RemovedBody190_90 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody190_91 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 3 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 16#64)))

def RemovedBody190_92 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 5 0#64)

def RemovedBody190_93 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody190_94 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 5
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 3 0#64))

def RemovedBody190_95 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody190_96 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 1 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody190_97 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody190_98 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 1 0#64))

def RemovedBody190_99 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 1 2
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 2)))

def RemovedBody190_100 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 32#64)))

def RemovedBody190_101 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 4

def RemovedBody190_102 : StackLang.HolProg 64 :=
.seq RemovedBody190_100 RemovedBody190_101

def RemovedBody190_103 : StackLang.HolProg 64 :=
.seq RemovedBody190_99 RemovedBody190_102

def RemovedBody190_104 : StackLang.HolProg 64 :=
.seq RemovedBody190_98 RemovedBody190_103

def RemovedBody190_105 : StackLang.HolProg 64 :=
.seq RemovedBody190_97 RemovedBody190_104

def RemovedBody190_106 : StackLang.HolProg 64 :=
.seq RemovedBody190_96 RemovedBody190_105

def RemovedBody190_107 : StackLang.HolProg 64 :=
.seq RemovedBody190_95 RemovedBody190_106

def RemovedBody190_108 : StackLang.HolProg 64 :=
.seq RemovedBody190_94 RemovedBody190_107

def RemovedBody190_109 : StackLang.HolProg 64 :=
.seq RemovedBody190_93 RemovedBody190_108

def RemovedBody190_110 : StackLang.HolProg 64 :=
.seq RemovedBody190_92 RemovedBody190_109

def RemovedBody190_111 : StackLang.HolProg 64 :=
.seq RemovedBody190_91 RemovedBody190_110

def RemovedBody190_112 : StackLang.HolProg 64 :=
.seq RemovedBody190_90 RemovedBody190_111

def RemovedBody190_113 : StackLang.HolProg 64 :=
.seq RemovedBody190_89 RemovedBody190_112

def RemovedBody190_114 : StackLang.HolProg 64 :=
.seq RemovedBody190_88 RemovedBody190_113

def RemovedBody190_115 : StackLang.HolProg 64 :=
.seq RemovedBody190_87 RemovedBody190_114

def RemovedBody190_116 : StackLang.HolProg 64 :=
.seq RemovedBody190_86 RemovedBody190_115

def RemovedBody190_117 : StackLang.HolProg 64 :=
.seq RemovedBody190_85 RemovedBody190_116

def RemovedBody190_118 : StackLang.HolProg 64 :=
.seq RemovedBody190_84 RemovedBody190_117

def RemovedBody190_119 : StackLang.HolProg 64 :=
.seq RemovedBody190_83 RemovedBody190_118

def RemovedBody190_120 : StackLang.HolProg 64 :=
.seq RemovedBody190_82 RemovedBody190_119

def RemovedBody190_121 : StackLang.HolProg 64 :=
.seq RemovedBody190_81 RemovedBody190_120

def RemovedBody190_122 : StackLang.HolProg 64 :=
.seq RemovedBody190_80 RemovedBody190_121

def RemovedBody190_123 : StackLang.HolProg 64 :=
.seq RemovedBody190_79 RemovedBody190_122

def RemovedBody190_124 : StackLang.HolProg 64 :=
.seq RemovedBody190_78 RemovedBody190_123

def RemovedBody190_125 : StackLang.HolProg 64 :=
.seq RemovedBody190_77 RemovedBody190_124

def RemovedBody190_126 : StackLang.HolProg 64 :=
.seq RemovedBody190_76 RemovedBody190_125

def RemovedBody190_127 : StackLang.HolProg 64 :=
.seq RemovedBody190_75 RemovedBody190_126

def RemovedBody190_128 : StackLang.HolProg 64 :=
.seq RemovedBody190_74 RemovedBody190_127

def RemovedBody190_129 : StackLang.HolProg 64 :=
.seq RemovedBody190_11 RemovedBody190_128

def RemovedBody190_130 : StackLang.HolProg 64 :=
.seq RemovedBody190_6 RemovedBody190_129

def Removed190 : Nat × StackLang.HolProg 64 := (190, RemovedBody190_130)
theorem Removed190_eq : StackRemove.progComp false riscvConfig.addrOffset (riscvConfig.regCount - (riscvConfig.avoidRegs.length + 3)) Alloc190 = Removed190 := by
  kernel_rfl
#print axioms Removed190_eq
end InitECandidate.Proofs.BackendStages
