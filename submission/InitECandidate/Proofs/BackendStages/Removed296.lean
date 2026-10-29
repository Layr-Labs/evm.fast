import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.BackendStages.Alloc296
import Flapjack.Compiler.Backend.Backend
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
namespace InitECandidate.Proofs.BackendStages
def RemovedBody296_0 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 48#64)))

def RemovedBody296_1 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 2#64)

def RemovedBody296_2 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 1

def RemovedBody296_3 : StackLang.HolProg 64 :=
.seq RemovedBody296_1 RemovedBody296_2

def RemovedBody296_4 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody296_5 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) RemovedBody296_3 RemovedBody296_4

def RemovedBody296_6 : StackLang.HolProg 64 :=
.seq RemovedBody296_0 RemovedBody296_5

def RemovedBody296_7 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 5 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def RemovedBody296_8 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 64#64)

def RemovedBody296_9 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 40#64))

def RemovedBody296_10 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 4
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 32#64))

def RemovedBody296_11 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 2
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 24#64))

def RemovedBody296_12 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 5
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody296_13 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 3
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody296_14 : StackLang.HolProg 64 :=
.seq RemovedBody296_12 RemovedBody296_13

def RemovedBody296_15 : StackLang.HolProg 64 :=
.seq RemovedBody296_11 RemovedBody296_14

def RemovedBody296_16 : StackLang.HolProg 64 :=
.seq RemovedBody296_10 RemovedBody296_15

def RemovedBody296_17 : StackLang.HolProg 64 :=
.seq RemovedBody296_9 RemovedBody296_16

def RemovedBody296_18 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody296_19 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 802#64)

def RemovedBody296_20 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody296_21 : StackLang.HolProg 64 :=
.seq RemovedBody296_19 RemovedBody296_20

def RemovedBody296_22 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody296_23 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 2#64)

def RemovedBody296_24 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 1

def RemovedBody296_25 : StackLang.HolProg 64 :=
.seq RemovedBody296_23 RemovedBody296_24

def RemovedBody296_26 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody296_27 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) RemovedBody296_25 RemovedBody296_26

def RemovedBody296_28 : StackLang.HolProg 64 :=
.seq RemovedBody296_22 RemovedBody296_27

def RemovedBody296_29 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def RemovedBody296_30 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody296_31 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 296 3

def RemovedBody296_32 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody296_33 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody296_34 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody296_35 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody296_36 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def RemovedBody296_37 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def RemovedBody296_38 : StackLang.HolProg 64 :=
.seq RemovedBody296_36 RemovedBody296_37

def RemovedBody296_39 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def RemovedBody296_40 : StackLang.HolProg 64 :=
.seq RemovedBody296_38 RemovedBody296_39

def RemovedBody296_41 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody296_42 : StackLang.HolProg 64 :=
.seq RemovedBody296_40 RemovedBody296_41

def RemovedBody296_43 : StackLang.HolProg 64 :=
.seq RemovedBody296_35 RemovedBody296_42

def RemovedBody296_44 : StackLang.HolProg 64 :=
.seq RemovedBody296_34 RemovedBody296_43

def RemovedBody296_45 : StackLang.HolProg 64 :=
.seq RemovedBody296_33 RemovedBody296_44

def RemovedBody296_46 : StackLang.HolProg 64 :=
.seq RemovedBody296_32 RemovedBody296_45

def RemovedBody296_47 : StackLang.HolProg 64 :=
.seq RemovedBody296_31 RemovedBody296_46

def RemovedBody296_48 : StackLang.HolProg 64 :=
.seq RemovedBody296_30 RemovedBody296_47

def RemovedBody296_49 : StackLang.HolProg 64 :=
.seq RemovedBody296_29 RemovedBody296_48

def RemovedBody296_50 : StackLang.HolProg 64 :=
.seq RemovedBody296_28 RemovedBody296_49

def RemovedBody296_51 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody296_52 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody296_53 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody296_54 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody296_55 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody296_56 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody296_57 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 5 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def RemovedBody296_58 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 6
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 40#64))

def RemovedBody296_59 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 32#64))

def RemovedBody296_60 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 2
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 24#64))

def RemovedBody296_61 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 4
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody296_62 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 3
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody296_63 : StackLang.HolProg 64 :=
.seq RemovedBody296_61 RemovedBody296_62

def RemovedBody296_64 : StackLang.HolProg 64 :=
.seq RemovedBody296_60 RemovedBody296_63

def RemovedBody296_65 : StackLang.HolProg 64 :=
.seq RemovedBody296_59 RemovedBody296_64

def RemovedBody296_66 : StackLang.HolProg 64 :=
.seq RemovedBody296_58 RemovedBody296_65

def RemovedBody296_67 : StackLang.HolProg 64 :=
.seq RemovedBody296_57 RemovedBody296_66

def RemovedBody296_68 : StackLang.HolProg 64 :=
.seq RemovedBody296_56 RemovedBody296_67

def RemovedBody296_69 : StackLang.HolProg 64 :=
.seq RemovedBody296_55 RemovedBody296_68

def RemovedBody296_70 : StackLang.HolProg 64 :=
.seq RemovedBody296_54 RemovedBody296_69

def RemovedBody296_71 : StackLang.HolProg 64 :=
.seq RemovedBody296_53 RemovedBody296_70

def RemovedBody296_72 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 6
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 40#64))

def RemovedBody296_73 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 32#64))

def RemovedBody296_74 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 2
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 24#64))

def RemovedBody296_75 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 4
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody296_76 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 3
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody296_77 : StackLang.HolProg 64 :=
.seq RemovedBody296_75 RemovedBody296_76

def RemovedBody296_78 : StackLang.HolProg 64 :=
.seq RemovedBody296_74 RemovedBody296_77

def RemovedBody296_79 : StackLang.HolProg 64 :=
.seq RemovedBody296_73 RemovedBody296_78

def RemovedBody296_80 : StackLang.HolProg 64 :=
.seq RemovedBody296_72 RemovedBody296_79

def RemovedBody296_81 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def RemovedBody296_82 : StackLang.HolProg 64 :=
.seq RemovedBody296_80 RemovedBody296_81

def RemovedBody296_83 : StackLang.HolProg 64 :=
.call (some (RemovedBody296_71, 0, 296, 2)) (Sum.inl 68) (some (RemovedBody296_82, 296, 3))

def RemovedBody296_84 : StackLang.HolProg 64 :=
.seq RemovedBody296_52 RemovedBody296_83

def RemovedBody296_85 : StackLang.HolProg 64 :=
.seq RemovedBody296_51 RemovedBody296_84

def RemovedBody296_86 : StackLang.HolProg 64 :=
.seq RemovedBody296_50 RemovedBody296_85

def RemovedBody296_87 : StackLang.HolProg 64 :=
.seq RemovedBody296_21 RemovedBody296_86

def RemovedBody296_88 : StackLang.HolProg 64 :=
.seq RemovedBody296_18 RemovedBody296_87

def RemovedBody296_89 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody296_90 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody296_91 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 1#64)

def RemovedBody296_92 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody296_93 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 5 0#64))

def RemovedBody296_94 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody296_95 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 1 5
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 8#64)))

def RemovedBody296_96 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 7 0#64)

def RemovedBody296_97 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody296_98 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 7
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 1 0#64))

def RemovedBody296_99 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody296_100 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 1 5
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 16#64)))

def RemovedBody296_101 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 7 0#64)

def RemovedBody296_102 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody296_103 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 7
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 1 0#64))

def RemovedBody296_104 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody296_105 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 1 5
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody296_106 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 7 0#64)

def RemovedBody296_107 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody296_108 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 7
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 1 0#64))

def RemovedBody296_109 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody296_110 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 1 5
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 32#64)))

def RemovedBody296_111 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody296_112 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 4
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 1 0#64))

def RemovedBody296_113 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody296_114 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 1 5
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 40#64)))

def RemovedBody296_115 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody296_116 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 2
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 1 0#64))

def RemovedBody296_117 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody296_118 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 1 5
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 48#64)))

def RemovedBody296_119 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody296_120 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 3
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 1 0#64))

def RemovedBody296_121 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody296_122 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 1 5
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 56#64)))

def RemovedBody296_123 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody296_124 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 1 0#64))

def RemovedBody296_125 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 1 5
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 5)))

def RemovedBody296_126 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 48#64)))

def RemovedBody296_127 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 6

def RemovedBody296_128 : StackLang.HolProg 64 :=
.seq RemovedBody296_126 RemovedBody296_127

def RemovedBody296_129 : StackLang.HolProg 64 :=
.seq RemovedBody296_125 RemovedBody296_128

def RemovedBody296_130 : StackLang.HolProg 64 :=
.seq RemovedBody296_124 RemovedBody296_129

def RemovedBody296_131 : StackLang.HolProg 64 :=
.seq RemovedBody296_123 RemovedBody296_130

def RemovedBody296_132 : StackLang.HolProg 64 :=
.seq RemovedBody296_122 RemovedBody296_131

def RemovedBody296_133 : StackLang.HolProg 64 :=
.seq RemovedBody296_121 RemovedBody296_132

def RemovedBody296_134 : StackLang.HolProg 64 :=
.seq RemovedBody296_120 RemovedBody296_133

def RemovedBody296_135 : StackLang.HolProg 64 :=
.seq RemovedBody296_119 RemovedBody296_134

def RemovedBody296_136 : StackLang.HolProg 64 :=
.seq RemovedBody296_118 RemovedBody296_135

def RemovedBody296_137 : StackLang.HolProg 64 :=
.seq RemovedBody296_117 RemovedBody296_136

def RemovedBody296_138 : StackLang.HolProg 64 :=
.seq RemovedBody296_116 RemovedBody296_137

def RemovedBody296_139 : StackLang.HolProg 64 :=
.seq RemovedBody296_115 RemovedBody296_138

def RemovedBody296_140 : StackLang.HolProg 64 :=
.seq RemovedBody296_114 RemovedBody296_139

def RemovedBody296_141 : StackLang.HolProg 64 :=
.seq RemovedBody296_113 RemovedBody296_140

def RemovedBody296_142 : StackLang.HolProg 64 :=
.seq RemovedBody296_112 RemovedBody296_141

def RemovedBody296_143 : StackLang.HolProg 64 :=
.seq RemovedBody296_111 RemovedBody296_142

def RemovedBody296_144 : StackLang.HolProg 64 :=
.seq RemovedBody296_110 RemovedBody296_143

def RemovedBody296_145 : StackLang.HolProg 64 :=
.seq RemovedBody296_109 RemovedBody296_144

def RemovedBody296_146 : StackLang.HolProg 64 :=
.seq RemovedBody296_108 RemovedBody296_145

def RemovedBody296_147 : StackLang.HolProg 64 :=
.seq RemovedBody296_107 RemovedBody296_146

def RemovedBody296_148 : StackLang.HolProg 64 :=
.seq RemovedBody296_106 RemovedBody296_147

def RemovedBody296_149 : StackLang.HolProg 64 :=
.seq RemovedBody296_105 RemovedBody296_148

def RemovedBody296_150 : StackLang.HolProg 64 :=
.seq RemovedBody296_104 RemovedBody296_149

def RemovedBody296_151 : StackLang.HolProg 64 :=
.seq RemovedBody296_103 RemovedBody296_150

def RemovedBody296_152 : StackLang.HolProg 64 :=
.seq RemovedBody296_102 RemovedBody296_151

def RemovedBody296_153 : StackLang.HolProg 64 :=
.seq RemovedBody296_101 RemovedBody296_152

def RemovedBody296_154 : StackLang.HolProg 64 :=
.seq RemovedBody296_100 RemovedBody296_153

def RemovedBody296_155 : StackLang.HolProg 64 :=
.seq RemovedBody296_99 RemovedBody296_154

def RemovedBody296_156 : StackLang.HolProg 64 :=
.seq RemovedBody296_98 RemovedBody296_155

def RemovedBody296_157 : StackLang.HolProg 64 :=
.seq RemovedBody296_97 RemovedBody296_156

def RemovedBody296_158 : StackLang.HolProg 64 :=
.seq RemovedBody296_96 RemovedBody296_157

def RemovedBody296_159 : StackLang.HolProg 64 :=
.seq RemovedBody296_95 RemovedBody296_158

def RemovedBody296_160 : StackLang.HolProg 64 :=
.seq RemovedBody296_94 RemovedBody296_159

def RemovedBody296_161 : StackLang.HolProg 64 :=
.seq RemovedBody296_93 RemovedBody296_160

def RemovedBody296_162 : StackLang.HolProg 64 :=
.seq RemovedBody296_92 RemovedBody296_161

def RemovedBody296_163 : StackLang.HolProg 64 :=
.seq RemovedBody296_91 RemovedBody296_162

def RemovedBody296_164 : StackLang.HolProg 64 :=
.seq RemovedBody296_90 RemovedBody296_163

def RemovedBody296_165 : StackLang.HolProg 64 :=
.seq RemovedBody296_89 RemovedBody296_164

def RemovedBody296_166 : StackLang.HolProg 64 :=
.seq RemovedBody296_88 RemovedBody296_165

def RemovedBody296_167 : StackLang.HolProg 64 :=
.seq RemovedBody296_17 RemovedBody296_166

def RemovedBody296_168 : StackLang.HolProg 64 :=
.seq RemovedBody296_8 RemovedBody296_167

def RemovedBody296_169 : StackLang.HolProg 64 :=
.seq RemovedBody296_7 RemovedBody296_168

def RemovedBody296_170 : StackLang.HolProg 64 :=
.seq RemovedBody296_6 RemovedBody296_169

def Removed296 : Nat × StackLang.HolProg 64 := (296, RemovedBody296_170)
theorem Removed296_eq : StackRemove.progComp false riscvConfig.addrOffset (riscvConfig.regCount - (riscvConfig.avoidRegs.length + 3)) Alloc296 = Removed296 := by
  kernel_rfl
#print axioms Removed296_eq
end InitECandidate.Proofs.BackendStages
