import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.BackendStages.Alloc268
import Flapjack.Compiler.Backend.Backend
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
namespace InitECandidate.Proofs.BackendStages
def RemovedBody268_0 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 48#64)))

def RemovedBody268_1 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 2#64)

def RemovedBody268_2 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 1

def RemovedBody268_3 : StackLang.HolProg 64 :=
.seq RemovedBody268_1 RemovedBody268_2

def RemovedBody268_4 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody268_5 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) RemovedBody268_3 RemovedBody268_4

def RemovedBody268_6 : StackLang.HolProg 64 :=
.seq RemovedBody268_0 RemovedBody268_5

def RemovedBody268_7 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 6 3
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 3)))

def RemovedBody268_8 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 3 32#64)

def RemovedBody268_9 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 40#64))

def RemovedBody268_10 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 4
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 32#64))

def RemovedBody268_11 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 24#64))

def RemovedBody268_12 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 5
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody268_13 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 6
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody268_14 : StackLang.HolProg 64 :=
.seq RemovedBody268_12 RemovedBody268_13

def RemovedBody268_15 : StackLang.HolProg 64 :=
.seq RemovedBody268_11 RemovedBody268_14

def RemovedBody268_16 : StackLang.HolProg 64 :=
.seq RemovedBody268_10 RemovedBody268_15

def RemovedBody268_17 : StackLang.HolProg 64 :=
.seq RemovedBody268_9 RemovedBody268_16

def RemovedBody268_18 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody268_19 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 653#64)

def RemovedBody268_20 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody268_21 : StackLang.HolProg 64 :=
.seq RemovedBody268_19 RemovedBody268_20

def RemovedBody268_22 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody268_23 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 2#64)

def RemovedBody268_24 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 1

def RemovedBody268_25 : StackLang.HolProg 64 :=
.seq RemovedBody268_23 RemovedBody268_24

def RemovedBody268_26 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody268_27 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) RemovedBody268_25 RemovedBody268_26

def RemovedBody268_28 : StackLang.HolProg 64 :=
.seq RemovedBody268_22 RemovedBody268_27

def RemovedBody268_29 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def RemovedBody268_30 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody268_31 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 268 3

def RemovedBody268_32 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody268_33 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody268_34 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody268_35 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody268_36 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def RemovedBody268_37 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def RemovedBody268_38 : StackLang.HolProg 64 :=
.seq RemovedBody268_36 RemovedBody268_37

def RemovedBody268_39 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def RemovedBody268_40 : StackLang.HolProg 64 :=
.seq RemovedBody268_38 RemovedBody268_39

def RemovedBody268_41 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody268_42 : StackLang.HolProg 64 :=
.seq RemovedBody268_40 RemovedBody268_41

def RemovedBody268_43 : StackLang.HolProg 64 :=
.seq RemovedBody268_35 RemovedBody268_42

def RemovedBody268_44 : StackLang.HolProg 64 :=
.seq RemovedBody268_34 RemovedBody268_43

def RemovedBody268_45 : StackLang.HolProg 64 :=
.seq RemovedBody268_33 RemovedBody268_44

def RemovedBody268_46 : StackLang.HolProg 64 :=
.seq RemovedBody268_32 RemovedBody268_45

def RemovedBody268_47 : StackLang.HolProg 64 :=
.seq RemovedBody268_31 RemovedBody268_46

def RemovedBody268_48 : StackLang.HolProg 64 :=
.seq RemovedBody268_30 RemovedBody268_47

def RemovedBody268_49 : StackLang.HolProg 64 :=
.seq RemovedBody268_29 RemovedBody268_48

def RemovedBody268_50 : StackLang.HolProg 64 :=
.seq RemovedBody268_28 RemovedBody268_49

def RemovedBody268_51 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody268_52 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody268_53 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody268_54 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody268_55 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody268_56 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody268_57 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 2
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 32#64))

def RemovedBody268_58 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 24#64))

def RemovedBody268_59 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody268_60 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 24#64))

def RemovedBody268_61 : StackLang.HolProg 64 :=
.seq RemovedBody268_59 RemovedBody268_60

def RemovedBody268_62 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 3
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody268_63 : StackLang.HolProg 64 :=
.seq RemovedBody268_61 RemovedBody268_62

def RemovedBody268_64 : StackLang.HolProg 64 :=
.seq RemovedBody268_58 RemovedBody268_63

def RemovedBody268_65 : StackLang.HolProg 64 :=
.seq RemovedBody268_57 RemovedBody268_64

def RemovedBody268_66 : StackLang.HolProg 64 :=
.seq RemovedBody268_56 RemovedBody268_65

def RemovedBody268_67 : StackLang.HolProg 64 :=
.seq RemovedBody268_55 RemovedBody268_66

def RemovedBody268_68 : StackLang.HolProg 64 :=
.seq RemovedBody268_54 RemovedBody268_67

def RemovedBody268_69 : StackLang.HolProg 64 :=
.seq RemovedBody268_53 RemovedBody268_68

def RemovedBody268_70 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 2
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 32#64))

def RemovedBody268_71 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 24#64))

def RemovedBody268_72 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody268_73 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 24#64))

def RemovedBody268_74 : StackLang.HolProg 64 :=
.seq RemovedBody268_72 RemovedBody268_73

def RemovedBody268_75 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 3
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody268_76 : StackLang.HolProg 64 :=
.seq RemovedBody268_74 RemovedBody268_75

def RemovedBody268_77 : StackLang.HolProg 64 :=
.seq RemovedBody268_71 RemovedBody268_76

def RemovedBody268_78 : StackLang.HolProg 64 :=
.seq RemovedBody268_70 RemovedBody268_77

def RemovedBody268_79 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def RemovedBody268_80 : StackLang.HolProg 64 :=
.seq RemovedBody268_78 RemovedBody268_79

def RemovedBody268_81 : StackLang.HolProg 64 :=
.call (some (RemovedBody268_69, 0, 268, 2)) (Sum.inl 77) (some (RemovedBody268_80, 268, 3))

def RemovedBody268_82 : StackLang.HolProg 64 :=
.seq RemovedBody268_52 RemovedBody268_81

def RemovedBody268_83 : StackLang.HolProg 64 :=
.seq RemovedBody268_51 RemovedBody268_82

def RemovedBody268_84 : StackLang.HolProg 64 :=
.seq RemovedBody268_50 RemovedBody268_83

def RemovedBody268_85 : StackLang.HolProg 64 :=
.seq RemovedBody268_21 RemovedBody268_84

def RemovedBody268_86 : StackLang.HolProg 64 :=
.seq RemovedBody268_18 RemovedBody268_85

def RemovedBody268_87 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody268_88 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody268_89 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 1 0
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 32#64)))

def RemovedBody268_90 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody268_91 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store8 3
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 1 0#64))

def RemovedBody268_92 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody268_93 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 1 0
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 33#64)))

def RemovedBody268_94 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 32#64))

def RemovedBody268_95 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody268_96 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 654#64)

def RemovedBody268_97 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody268_98 : StackLang.HolProg 64 :=
.seq RemovedBody268_96 RemovedBody268_97

def RemovedBody268_99 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody268_100 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 2#64)

def RemovedBody268_101 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 1

def RemovedBody268_102 : StackLang.HolProg 64 :=
.seq RemovedBody268_100 RemovedBody268_101

def RemovedBody268_103 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody268_104 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) RemovedBody268_102 RemovedBody268_103

def RemovedBody268_105 : StackLang.HolProg 64 :=
.seq RemovedBody268_99 RemovedBody268_104

def RemovedBody268_106 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def RemovedBody268_107 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody268_108 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 268 5

def RemovedBody268_109 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody268_110 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody268_111 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody268_112 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody268_113 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def RemovedBody268_114 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def RemovedBody268_115 : StackLang.HolProg 64 :=
.seq RemovedBody268_113 RemovedBody268_114

def RemovedBody268_116 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def RemovedBody268_117 : StackLang.HolProg 64 :=
.seq RemovedBody268_115 RemovedBody268_116

def RemovedBody268_118 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody268_119 : StackLang.HolProg 64 :=
.seq RemovedBody268_117 RemovedBody268_118

def RemovedBody268_120 : StackLang.HolProg 64 :=
.seq RemovedBody268_112 RemovedBody268_119

def RemovedBody268_121 : StackLang.HolProg 64 :=
.seq RemovedBody268_111 RemovedBody268_120

def RemovedBody268_122 : StackLang.HolProg 64 :=
.seq RemovedBody268_110 RemovedBody268_121

def RemovedBody268_123 : StackLang.HolProg 64 :=
.seq RemovedBody268_109 RemovedBody268_122

def RemovedBody268_124 : StackLang.HolProg 64 :=
.seq RemovedBody268_108 RemovedBody268_123

def RemovedBody268_125 : StackLang.HolProg 64 :=
.seq RemovedBody268_107 RemovedBody268_124

def RemovedBody268_126 : StackLang.HolProg 64 :=
.seq RemovedBody268_106 RemovedBody268_125

def RemovedBody268_127 : StackLang.HolProg 64 :=
.seq RemovedBody268_105 RemovedBody268_126

def RemovedBody268_128 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody268_129 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody268_130 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody268_131 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody268_132 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody268_133 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody268_134 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 3
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 40#64))

def RemovedBody268_135 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 2
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 32#64))

def RemovedBody268_136 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 24#64))

def RemovedBody268_137 : StackLang.HolProg 64 :=
.seq RemovedBody268_135 RemovedBody268_136

def RemovedBody268_138 : StackLang.HolProg 64 :=
.seq RemovedBody268_134 RemovedBody268_137

def RemovedBody268_139 : StackLang.HolProg 64 :=
.seq RemovedBody268_133 RemovedBody268_138

def RemovedBody268_140 : StackLang.HolProg 64 :=
.seq RemovedBody268_132 RemovedBody268_139

def RemovedBody268_141 : StackLang.HolProg 64 :=
.seq RemovedBody268_131 RemovedBody268_140

def RemovedBody268_142 : StackLang.HolProg 64 :=
.seq RemovedBody268_130 RemovedBody268_141

def RemovedBody268_143 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 3
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 40#64))

def RemovedBody268_144 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 2
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 32#64))

def RemovedBody268_145 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 24#64))

def RemovedBody268_146 : StackLang.HolProg 64 :=
.seq RemovedBody268_144 RemovedBody268_145

def RemovedBody268_147 : StackLang.HolProg 64 :=
.seq RemovedBody268_143 RemovedBody268_146

def RemovedBody268_148 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def RemovedBody268_149 : StackLang.HolProg 64 :=
.seq RemovedBody268_147 RemovedBody268_148

def RemovedBody268_150 : StackLang.HolProg 64 :=
.call (some (RemovedBody268_142, 0, 268, 4)) (Sum.inl 87) (some (RemovedBody268_149, 268, 5))

def RemovedBody268_151 : StackLang.HolProg 64 :=
.seq RemovedBody268_129 RemovedBody268_150

def RemovedBody268_152 : StackLang.HolProg 64 :=
.seq RemovedBody268_128 RemovedBody268_151

def RemovedBody268_153 : StackLang.HolProg 64 :=
.seq RemovedBody268_127 RemovedBody268_152

def RemovedBody268_154 : StackLang.HolProg 64 :=
.seq RemovedBody268_98 RemovedBody268_153

def RemovedBody268_155 : StackLang.HolProg 64 :=
.seq RemovedBody268_95 RemovedBody268_154

def RemovedBody268_156 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody268_157 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody268_158 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 4 2
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 41#64)))

def RemovedBody268_159 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody268_160 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.and 1 0
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 255#64)))

def RemovedBody268_161 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store8 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 4 0#64))

def RemovedBody268_162 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody268_163 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 1 2
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 42#64)))

def RemovedBody268_164 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody268_165 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 0 0
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 8#64)))

def RemovedBody268_166 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store8 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 1 0#64))

def RemovedBody268_167 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 43#64)

def RemovedBody268_168 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody268_169 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 48#64)))

def RemovedBody268_170 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 3

def RemovedBody268_171 : StackLang.HolProg 64 :=
.seq RemovedBody268_169 RemovedBody268_170

def RemovedBody268_172 : StackLang.HolProg 64 :=
.seq RemovedBody268_168 RemovedBody268_171

def RemovedBody268_173 : StackLang.HolProg 64 :=
.seq RemovedBody268_167 RemovedBody268_172

def RemovedBody268_174 : StackLang.HolProg 64 :=
.seq RemovedBody268_166 RemovedBody268_173

def RemovedBody268_175 : StackLang.HolProg 64 :=
.seq RemovedBody268_165 RemovedBody268_174

def RemovedBody268_176 : StackLang.HolProg 64 :=
.seq RemovedBody268_164 RemovedBody268_175

def RemovedBody268_177 : StackLang.HolProg 64 :=
.seq RemovedBody268_163 RemovedBody268_176

def RemovedBody268_178 : StackLang.HolProg 64 :=
.seq RemovedBody268_162 RemovedBody268_177

def RemovedBody268_179 : StackLang.HolProg 64 :=
.seq RemovedBody268_161 RemovedBody268_178

def RemovedBody268_180 : StackLang.HolProg 64 :=
.seq RemovedBody268_160 RemovedBody268_179

def RemovedBody268_181 : StackLang.HolProg 64 :=
.seq RemovedBody268_159 RemovedBody268_180

def RemovedBody268_182 : StackLang.HolProg 64 :=
.seq RemovedBody268_158 RemovedBody268_181

def RemovedBody268_183 : StackLang.HolProg 64 :=
.seq RemovedBody268_157 RemovedBody268_182

def RemovedBody268_184 : StackLang.HolProg 64 :=
.seq RemovedBody268_156 RemovedBody268_183

def RemovedBody268_185 : StackLang.HolProg 64 :=
.seq RemovedBody268_155 RemovedBody268_184

def RemovedBody268_186 : StackLang.HolProg 64 :=
.seq RemovedBody268_94 RemovedBody268_185

def RemovedBody268_187 : StackLang.HolProg 64 :=
.seq RemovedBody268_93 RemovedBody268_186

def RemovedBody268_188 : StackLang.HolProg 64 :=
.seq RemovedBody268_92 RemovedBody268_187

def RemovedBody268_189 : StackLang.HolProg 64 :=
.seq RemovedBody268_91 RemovedBody268_188

def RemovedBody268_190 : StackLang.HolProg 64 :=
.seq RemovedBody268_90 RemovedBody268_189

def RemovedBody268_191 : StackLang.HolProg 64 :=
.seq RemovedBody268_89 RemovedBody268_190

def RemovedBody268_192 : StackLang.HolProg 64 :=
.seq RemovedBody268_88 RemovedBody268_191

def RemovedBody268_193 : StackLang.HolProg 64 :=
.seq RemovedBody268_87 RemovedBody268_192

def RemovedBody268_194 : StackLang.HolProg 64 :=
.seq RemovedBody268_86 RemovedBody268_193

def RemovedBody268_195 : StackLang.HolProg 64 :=
.seq RemovedBody268_17 RemovedBody268_194

def RemovedBody268_196 : StackLang.HolProg 64 :=
.seq RemovedBody268_8 RemovedBody268_195

def RemovedBody268_197 : StackLang.HolProg 64 :=
.seq RemovedBody268_7 RemovedBody268_196

def RemovedBody268_198 : StackLang.HolProg 64 :=
.seq RemovedBody268_6 RemovedBody268_197

def Removed268 : Nat × StackLang.HolProg 64 := (268, RemovedBody268_198)
theorem Removed268_eq : StackRemove.progComp false riscvConfig.addrOffset (riscvConfig.regCount - (riscvConfig.avoidRegs.length + 3)) Alloc268 = Removed268 := by
  kernel_rfl
#print axioms Removed268_eq
end InitECandidate.Proofs.BackendStages
