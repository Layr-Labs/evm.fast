import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.BackendStages.Alloc440
import Flapjack.Compiler.Backend.Backend
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
namespace InitECandidate.Proofs.BackendStages
def RemovedBody440_0 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody440_1 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 2#64)

def RemovedBody440_2 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 1

def RemovedBody440_3 : StackLang.HolProg 64 :=
.seq RemovedBody440_1 RemovedBody440_2

def RemovedBody440_4 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody440_5 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) RemovedBody440_3 RemovedBody440_4

def RemovedBody440_6 : StackLang.HolProg 64 :=
.seq RemovedBody440_0 RemovedBody440_5

def RemovedBody440_7 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody440_8 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 9
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 1 8#64))

def RemovedBody440_9 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 8 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def RemovedBody440_10 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 4
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 8 0#64))

def RemovedBody440_11 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 0#64)

def RemovedBody440_12 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody440_13 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 7 0
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 0)))

def RemovedBody440_14 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 3
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody440_15 : StackLang.HolProg 64 :=
.seq RemovedBody440_13 RemovedBody440_14

def RemovedBody440_16 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody440_17 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody440_18 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 0 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def RemovedBody440_19 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 6 2
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 2)))

def RemovedBody440_20 : StackLang.HolProg 64 :=
.seq RemovedBody440_18 RemovedBody440_19

def RemovedBody440_21 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith (Flapjack.Compiler.Encoders.Asm.HolArith.longMul 3 0 0 2))

def RemovedBody440_22 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody440_23 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 0 0
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 4)))

def RemovedBody440_24 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 0 0#64))

def RemovedBody440_25 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 12
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody440_26 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody440_27 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 0 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def RemovedBody440_28 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 2 6
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 6)))

def RemovedBody440_29 : StackLang.HolProg 64 :=
.seq RemovedBody440_27 RemovedBody440_28

def RemovedBody440_30 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith (Flapjack.Compiler.Encoders.Asm.HolArith.longMul 3 0 0 2))

def RemovedBody440_31 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody440_32 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 1 0
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 4)))

def RemovedBody440_33 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody440_34 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody440_35 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 7

def RemovedBody440_36 : StackLang.HolProg 64 :=
.seq RemovedBody440_34 RemovedBody440_35

def RemovedBody440_37 : StackLang.HolProg 64 :=
.seq RemovedBody440_33 RemovedBody440_36

def RemovedBody440_38 : StackLang.HolProg 64 :=
.seq RemovedBody440_32 RemovedBody440_37

def RemovedBody440_39 : StackLang.HolProg 64 :=
.seq RemovedBody440_31 RemovedBody440_38

def RemovedBody440_40 : StackLang.HolProg 64 :=
.seq RemovedBody440_30 RemovedBody440_39

def RemovedBody440_41 : StackLang.HolProg 64 :=
.seq RemovedBody440_29 RemovedBody440_40

def RemovedBody440_42 : StackLang.HolProg 64 :=
.seq RemovedBody440_26 RemovedBody440_41

def RemovedBody440_43 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 5 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def RemovedBody440_44 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 11 6
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 6)))

def RemovedBody440_45 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 10 4
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 4)))

def RemovedBody440_46 : StackLang.HolProg 64 :=
.seq RemovedBody440_44 RemovedBody440_45

def RemovedBody440_47 : StackLang.HolProg 64 :=
.seq RemovedBody440_43 RemovedBody440_46

def RemovedBody440_48 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.equal) 0 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 12) RemovedBody440_42 RemovedBody440_47

def RemovedBody440_49 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody440_50 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody440_51 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody440_52 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 1 5
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 1#64)))

def RemovedBody440_53 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 2 11
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 11)))

def RemovedBody440_54 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 4 10
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 10)))

def RemovedBody440_55 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 12
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody440_56 : StackLang.HolProg 64 :=
.seq RemovedBody440_54 RemovedBody440_55

def RemovedBody440_57 : StackLang.HolProg 64 :=
.seq RemovedBody440_53 RemovedBody440_56

def RemovedBody440_58 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.continue 0

def RemovedBody440_59 : StackLang.HolProg 64 :=
.seq RemovedBody440_57 RemovedBody440_58

def RemovedBody440_60 : StackLang.HolProg 64 :=
.seq RemovedBody440_52 RemovedBody440_59

def RemovedBody440_61 : StackLang.HolProg 64 :=
.seq RemovedBody440_51 RemovedBody440_60

def RemovedBody440_62 : StackLang.HolProg 64 :=
.seq RemovedBody440_50 RemovedBody440_61

def RemovedBody440_63 : StackLang.HolProg 64 :=
.seq RemovedBody440_49 RemovedBody440_62

def RemovedBody440_64 : StackLang.HolProg 64 :=
.seq RemovedBody440_48 RemovedBody440_63

def RemovedBody440_65 : StackLang.HolProg 64 :=
.seq RemovedBody440_25 RemovedBody440_64

def RemovedBody440_66 : StackLang.HolProg 64 :=
.seq RemovedBody440_24 RemovedBody440_65

def RemovedBody440_67 : StackLang.HolProg 64 :=
.seq RemovedBody440_23 RemovedBody440_66

def RemovedBody440_68 : StackLang.HolProg 64 :=
.seq RemovedBody440_22 RemovedBody440_67

def RemovedBody440_69 : StackLang.HolProg 64 :=
.seq RemovedBody440_21 RemovedBody440_68

def RemovedBody440_70 : StackLang.HolProg 64 :=
.seq RemovedBody440_20 RemovedBody440_69

def RemovedBody440_71 : StackLang.HolProg 64 :=
.seq RemovedBody440_17 RemovedBody440_70

def RemovedBody440_72 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody440_73 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.break 0

def RemovedBody440_74 : StackLang.HolProg 64 :=
.seq RemovedBody440_72 RemovedBody440_73

def RemovedBody440_75 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.less) 1 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 9) RemovedBody440_71 RemovedBody440_74

def RemovedBody440_76 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody440_77 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody440_78 : StackLang.HolProg 64 :=
.seq RemovedBody440_76 RemovedBody440_77

def RemovedBody440_79 : StackLang.HolProg 64 :=
.seq RemovedBody440_75 RemovedBody440_78

def RemovedBody440_80 : StackLang.HolProg 64 :=
.seq RemovedBody440_16 RemovedBody440_79

def RemovedBody440_81 : StackLang.HolProg 64 :=
.loop RemovedBody440_80

def RemovedBody440_82 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody440_83 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 1 8
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 8)))

def RemovedBody440_84 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 7
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody440_85 : StackLang.HolProg 64 :=
.seq RemovedBody440_83 RemovedBody440_84

def RemovedBody440_86 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody440_87 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1331#64)

def RemovedBody440_88 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody440_89 : StackLang.HolProg 64 :=
.seq RemovedBody440_87 RemovedBody440_88

def RemovedBody440_90 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody440_91 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 2#64)

def RemovedBody440_92 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 1

def RemovedBody440_93 : StackLang.HolProg 64 :=
.seq RemovedBody440_91 RemovedBody440_92

def RemovedBody440_94 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody440_95 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) RemovedBody440_93 RemovedBody440_94

def RemovedBody440_96 : StackLang.HolProg 64 :=
.seq RemovedBody440_90 RemovedBody440_95

def RemovedBody440_97 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def RemovedBody440_98 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody440_99 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 440 3

def RemovedBody440_100 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody440_101 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody440_102 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody440_103 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody440_104 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def RemovedBody440_105 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def RemovedBody440_106 : StackLang.HolProg 64 :=
.seq RemovedBody440_104 RemovedBody440_105

def RemovedBody440_107 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def RemovedBody440_108 : StackLang.HolProg 64 :=
.seq RemovedBody440_106 RemovedBody440_107

def RemovedBody440_109 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody440_110 : StackLang.HolProg 64 :=
.seq RemovedBody440_108 RemovedBody440_109

def RemovedBody440_111 : StackLang.HolProg 64 :=
.seq RemovedBody440_103 RemovedBody440_110

def RemovedBody440_112 : StackLang.HolProg 64 :=
.seq RemovedBody440_102 RemovedBody440_111

def RemovedBody440_113 : StackLang.HolProg 64 :=
.seq RemovedBody440_101 RemovedBody440_112

def RemovedBody440_114 : StackLang.HolProg 64 :=
.seq RemovedBody440_100 RemovedBody440_113

def RemovedBody440_115 : StackLang.HolProg 64 :=
.seq RemovedBody440_99 RemovedBody440_114

def RemovedBody440_116 : StackLang.HolProg 64 :=
.seq RemovedBody440_98 RemovedBody440_115

def RemovedBody440_117 : StackLang.HolProg 64 :=
.seq RemovedBody440_97 RemovedBody440_116

def RemovedBody440_118 : StackLang.HolProg 64 :=
.seq RemovedBody440_96 RemovedBody440_117

def RemovedBody440_119 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody440_120 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody440_121 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody440_122 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody440_123 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody440_124 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody440_125 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 0 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def RemovedBody440_126 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 3
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody440_127 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 2
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody440_128 : StackLang.HolProg 64 :=
.seq RemovedBody440_126 RemovedBody440_127

def RemovedBody440_129 : StackLang.HolProg 64 :=
.seq RemovedBody440_125 RemovedBody440_128

def RemovedBody440_130 : StackLang.HolProg 64 :=
.seq RemovedBody440_124 RemovedBody440_129

def RemovedBody440_131 : StackLang.HolProg 64 :=
.seq RemovedBody440_123 RemovedBody440_130

def RemovedBody440_132 : StackLang.HolProg 64 :=
.seq RemovedBody440_122 RemovedBody440_131

def RemovedBody440_133 : StackLang.HolProg 64 :=
.seq RemovedBody440_121 RemovedBody440_132

def RemovedBody440_134 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 3
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody440_135 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 2
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody440_136 : StackLang.HolProg 64 :=
.seq RemovedBody440_134 RemovedBody440_135

def RemovedBody440_137 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def RemovedBody440_138 : StackLang.HolProg 64 :=
.seq RemovedBody440_136 RemovedBody440_137

def RemovedBody440_139 : StackLang.HolProg 64 :=
.call (some (RemovedBody440_133, 0, 440, 2)) (Sum.inl 437) (some (RemovedBody440_138, 440, 3))

def RemovedBody440_140 : StackLang.HolProg 64 :=
.seq RemovedBody440_120 RemovedBody440_139

def RemovedBody440_141 : StackLang.HolProg 64 :=
.seq RemovedBody440_119 RemovedBody440_140

def RemovedBody440_142 : StackLang.HolProg 64 :=
.seq RemovedBody440_118 RemovedBody440_141

def RemovedBody440_143 : StackLang.HolProg 64 :=
.seq RemovedBody440_89 RemovedBody440_142

def RemovedBody440_144 : StackLang.HolProg 64 :=
.seq RemovedBody440_86 RemovedBody440_143

def RemovedBody440_145 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody440_146 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody440_147 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 2
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 0 0#64))

def RemovedBody440_148 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 1 0
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 0)))

def RemovedBody440_149 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody440_150 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 3

def RemovedBody440_151 : StackLang.HolProg 64 :=
.seq RemovedBody440_149 RemovedBody440_150

def RemovedBody440_152 : StackLang.HolProg 64 :=
.seq RemovedBody440_148 RemovedBody440_151

def RemovedBody440_153 : StackLang.HolProg 64 :=
.seq RemovedBody440_147 RemovedBody440_152

def RemovedBody440_154 : StackLang.HolProg 64 :=
.seq RemovedBody440_146 RemovedBody440_153

def RemovedBody440_155 : StackLang.HolProg 64 :=
.seq RemovedBody440_145 RemovedBody440_154

def RemovedBody440_156 : StackLang.HolProg 64 :=
.seq RemovedBody440_144 RemovedBody440_155

def RemovedBody440_157 : StackLang.HolProg 64 :=
.seq RemovedBody440_85 RemovedBody440_156

def RemovedBody440_158 : StackLang.HolProg 64 :=
.seq RemovedBody440_82 RemovedBody440_157

def RemovedBody440_159 : StackLang.HolProg 64 :=
.seq RemovedBody440_81 RemovedBody440_158

def RemovedBody440_160 : StackLang.HolProg 64 :=
.seq RemovedBody440_15 RemovedBody440_159

def RemovedBody440_161 : StackLang.HolProg 64 :=
.seq RemovedBody440_12 RemovedBody440_160

def RemovedBody440_162 : StackLang.HolProg 64 :=
.seq RemovedBody440_11 RemovedBody440_161

def RemovedBody440_163 : StackLang.HolProg 64 :=
.seq RemovedBody440_10 RemovedBody440_162

def RemovedBody440_164 : StackLang.HolProg 64 :=
.seq RemovedBody440_9 RemovedBody440_163

def RemovedBody440_165 : StackLang.HolProg 64 :=
.seq RemovedBody440_8 RemovedBody440_164

def RemovedBody440_166 : StackLang.HolProg 64 :=
.seq RemovedBody440_7 RemovedBody440_165

def RemovedBody440_167 : StackLang.HolProg 64 :=
.seq RemovedBody440_6 RemovedBody440_166

def Removed440 : Nat × StackLang.HolProg 64 := (440, RemovedBody440_167)
theorem Removed440_eq : StackRemove.progComp false riscvConfig.addrOffset (riscvConfig.regCount - (riscvConfig.avoidRegs.length + 3)) Alloc440 = Removed440 := by
  kernel_rfl
#print axioms Removed440_eq
end InitECandidate.Proofs.BackendStages
