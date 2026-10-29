import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.BackendStages.Alloc794
import Flapjack.Compiler.Backend.Backend
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
namespace InitECandidate.Proofs.BackendStages
def RemovedBody794_0 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 64#64)))

def RemovedBody794_1 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 2#64)

def RemovedBody794_2 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 1

def RemovedBody794_3 : StackLang.HolProg 64 :=
.seq RemovedBody794_1 RemovedBody794_2

def RemovedBody794_4 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody794_5 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) RemovedBody794_3 RemovedBody794_4

def RemovedBody794_6 : StackLang.HolProg 64 :=
.seq RemovedBody794_0 RemovedBody794_5

def RemovedBody794_7 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 32#64))

def RemovedBody794_8 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 1 2
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 2)))

def RemovedBody794_9 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 56#64))

def RemovedBody794_10 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 2
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 48#64))

def RemovedBody794_11 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 3
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 40#64))

def RemovedBody794_12 : StackLang.HolProg 64 :=
.seq RemovedBody794_10 RemovedBody794_11

def RemovedBody794_13 : StackLang.HolProg 64 :=
.seq RemovedBody794_9 RemovedBody794_12

def RemovedBody794_14 : StackLang.HolProg 64 :=
.seq RemovedBody794_8 RemovedBody794_13

def RemovedBody794_15 : StackLang.HolProg 64 :=
.seq RemovedBody794_7 RemovedBody794_14

def RemovedBody794_16 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody794_17 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 3770#64)

def RemovedBody794_18 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody794_19 : StackLang.HolProg 64 :=
.seq RemovedBody794_17 RemovedBody794_18

def RemovedBody794_20 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody794_21 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 2#64)

def RemovedBody794_22 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 1

def RemovedBody794_23 : StackLang.HolProg 64 :=
.seq RemovedBody794_21 RemovedBody794_22

def RemovedBody794_24 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody794_25 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) RemovedBody794_23 RemovedBody794_24

def RemovedBody794_26 : StackLang.HolProg 64 :=
.seq RemovedBody794_20 RemovedBody794_25

def RemovedBody794_27 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def RemovedBody794_28 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody794_29 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 794 3

def RemovedBody794_30 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody794_31 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody794_32 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody794_33 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody794_34 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def RemovedBody794_35 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def RemovedBody794_36 : StackLang.HolProg 64 :=
.seq RemovedBody794_34 RemovedBody794_35

def RemovedBody794_37 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def RemovedBody794_38 : StackLang.HolProg 64 :=
.seq RemovedBody794_36 RemovedBody794_37

def RemovedBody794_39 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody794_40 : StackLang.HolProg 64 :=
.seq RemovedBody794_38 RemovedBody794_39

def RemovedBody794_41 : StackLang.HolProg 64 :=
.seq RemovedBody794_33 RemovedBody794_40

def RemovedBody794_42 : StackLang.HolProg 64 :=
.seq RemovedBody794_32 RemovedBody794_41

def RemovedBody794_43 : StackLang.HolProg 64 :=
.seq RemovedBody794_31 RemovedBody794_42

def RemovedBody794_44 : StackLang.HolProg 64 :=
.seq RemovedBody794_30 RemovedBody794_43

def RemovedBody794_45 : StackLang.HolProg 64 :=
.seq RemovedBody794_29 RemovedBody794_44

def RemovedBody794_46 : StackLang.HolProg 64 :=
.seq RemovedBody794_28 RemovedBody794_45

def RemovedBody794_47 : StackLang.HolProg 64 :=
.seq RemovedBody794_27 RemovedBody794_46

def RemovedBody794_48 : StackLang.HolProg 64 :=
.seq RemovedBody794_26 RemovedBody794_47

def RemovedBody794_49 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody794_50 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody794_51 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody794_52 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody794_53 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody794_54 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody794_55 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 0 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def RemovedBody794_56 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 3
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 56#64))

def RemovedBody794_57 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 2
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 40#64))

def RemovedBody794_58 : StackLang.HolProg 64 :=
.seq RemovedBody794_56 RemovedBody794_57

def RemovedBody794_59 : StackLang.HolProg 64 :=
.seq RemovedBody794_55 RemovedBody794_58

def RemovedBody794_60 : StackLang.HolProg 64 :=
.seq RemovedBody794_54 RemovedBody794_59

def RemovedBody794_61 : StackLang.HolProg 64 :=
.seq RemovedBody794_53 RemovedBody794_60

def RemovedBody794_62 : StackLang.HolProg 64 :=
.seq RemovedBody794_52 RemovedBody794_61

def RemovedBody794_63 : StackLang.HolProg 64 :=
.seq RemovedBody794_51 RemovedBody794_62

def RemovedBody794_64 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 3
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 56#64))

def RemovedBody794_65 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 2
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 40#64))

def RemovedBody794_66 : StackLang.HolProg 64 :=
.seq RemovedBody794_64 RemovedBody794_65

def RemovedBody794_67 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def RemovedBody794_68 : StackLang.HolProg 64 :=
.seq RemovedBody794_66 RemovedBody794_67

def RemovedBody794_69 : StackLang.HolProg 64 :=
.call (some (RemovedBody794_63, 0, 794, 2)) (Sum.inl 767) (some (RemovedBody794_68, 794, 3))

def RemovedBody794_70 : StackLang.HolProg 64 :=
.seq RemovedBody794_50 RemovedBody794_69

def RemovedBody794_71 : StackLang.HolProg 64 :=
.seq RemovedBody794_49 RemovedBody794_70

def RemovedBody794_72 : StackLang.HolProg 64 :=
.seq RemovedBody794_48 RemovedBody794_71

def RemovedBody794_73 : StackLang.HolProg 64 :=
.seq RemovedBody794_19 RemovedBody794_72

def RemovedBody794_74 : StackLang.HolProg 64 :=
.seq RemovedBody794_16 RemovedBody794_73

def RemovedBody794_75 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody794_76 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody794_77 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 1#64)

def RemovedBody794_78 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody794_79 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 0#64)

def RemovedBody794_80 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody794_81 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 64#64)))

def RemovedBody794_82 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 3

def RemovedBody794_83 : StackLang.HolProg 64 :=
.seq RemovedBody794_81 RemovedBody794_82

def RemovedBody794_84 : StackLang.HolProg 64 :=
.seq RemovedBody794_80 RemovedBody794_83

def RemovedBody794_85 : StackLang.HolProg 64 :=
.seq RemovedBody794_79 RemovedBody794_84

def RemovedBody794_86 : StackLang.HolProg 64 :=
.seq RemovedBody794_78 RemovedBody794_85

def RemovedBody794_87 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody794_88 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.equal) 0 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1) RemovedBody794_86 RemovedBody794_87

def RemovedBody794_89 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody794_90 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody794_91 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 1 2
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 2)))

def RemovedBody794_92 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 3
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 56#64))

def RemovedBody794_93 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 2
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody794_94 : StackLang.HolProg 64 :=
.seq RemovedBody794_92 RemovedBody794_93

def RemovedBody794_95 : StackLang.HolProg 64 :=
.seq RemovedBody794_91 RemovedBody794_94

def RemovedBody794_96 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody794_97 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 3771#64)

def RemovedBody794_98 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody794_99 : StackLang.HolProg 64 :=
.seq RemovedBody794_97 RemovedBody794_98

def RemovedBody794_100 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody794_101 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 2#64)

def RemovedBody794_102 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 1

def RemovedBody794_103 : StackLang.HolProg 64 :=
.seq RemovedBody794_101 RemovedBody794_102

def RemovedBody794_104 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody794_105 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) RemovedBody794_103 RemovedBody794_104

def RemovedBody794_106 : StackLang.HolProg 64 :=
.seq RemovedBody794_100 RemovedBody794_105

def RemovedBody794_107 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def RemovedBody794_108 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody794_109 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 794 5

def RemovedBody794_110 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody794_111 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody794_112 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody794_113 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody794_114 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def RemovedBody794_115 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def RemovedBody794_116 : StackLang.HolProg 64 :=
.seq RemovedBody794_114 RemovedBody794_115

def RemovedBody794_117 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def RemovedBody794_118 : StackLang.HolProg 64 :=
.seq RemovedBody794_116 RemovedBody794_117

def RemovedBody794_119 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody794_120 : StackLang.HolProg 64 :=
.seq RemovedBody794_118 RemovedBody794_119

def RemovedBody794_121 : StackLang.HolProg 64 :=
.seq RemovedBody794_113 RemovedBody794_120

def RemovedBody794_122 : StackLang.HolProg 64 :=
.seq RemovedBody794_112 RemovedBody794_121

def RemovedBody794_123 : StackLang.HolProg 64 :=
.seq RemovedBody794_111 RemovedBody794_122

def RemovedBody794_124 : StackLang.HolProg 64 :=
.seq RemovedBody794_110 RemovedBody794_123

def RemovedBody794_125 : StackLang.HolProg 64 :=
.seq RemovedBody794_109 RemovedBody794_124

def RemovedBody794_126 : StackLang.HolProg 64 :=
.seq RemovedBody794_108 RemovedBody794_125

def RemovedBody794_127 : StackLang.HolProg 64 :=
.seq RemovedBody794_107 RemovedBody794_126

def RemovedBody794_128 : StackLang.HolProg 64 :=
.seq RemovedBody794_106 RemovedBody794_127

def RemovedBody794_129 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody794_130 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody794_131 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody794_132 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody794_133 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody794_134 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody794_135 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 0 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def RemovedBody794_136 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 2
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 56#64))

def RemovedBody794_137 : StackLang.HolProg 64 :=
.seq RemovedBody794_135 RemovedBody794_136

def RemovedBody794_138 : StackLang.HolProg 64 :=
.seq RemovedBody794_134 RemovedBody794_137

def RemovedBody794_139 : StackLang.HolProg 64 :=
.seq RemovedBody794_133 RemovedBody794_138

def RemovedBody794_140 : StackLang.HolProg 64 :=
.seq RemovedBody794_132 RemovedBody794_139

def RemovedBody794_141 : StackLang.HolProg 64 :=
.seq RemovedBody794_131 RemovedBody794_140

def RemovedBody794_142 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 2
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 56#64))

def RemovedBody794_143 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def RemovedBody794_144 : StackLang.HolProg 64 :=
.seq RemovedBody794_142 RemovedBody794_143

def RemovedBody794_145 : StackLang.HolProg 64 :=
.call (some (RemovedBody794_141, 0, 794, 4)) (Sum.inl 779) (some (RemovedBody794_144, 794, 5))

def RemovedBody794_146 : StackLang.HolProg 64 :=
.seq RemovedBody794_130 RemovedBody794_145

def RemovedBody794_147 : StackLang.HolProg 64 :=
.seq RemovedBody794_129 RemovedBody794_146

def RemovedBody794_148 : StackLang.HolProg 64 :=
.seq RemovedBody794_128 RemovedBody794_147

def RemovedBody794_149 : StackLang.HolProg 64 :=
.seq RemovedBody794_99 RemovedBody794_148

def RemovedBody794_150 : StackLang.HolProg 64 :=
.seq RemovedBody794_96 RemovedBody794_149

def RemovedBody794_151 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody794_152 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody794_153 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 1#64)

def RemovedBody794_154 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody794_155 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 0#64)

def RemovedBody794_156 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody794_157 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 64#64)))

def RemovedBody794_158 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 2

def RemovedBody794_159 : StackLang.HolProg 64 :=
.seq RemovedBody794_157 RemovedBody794_158

def RemovedBody794_160 : StackLang.HolProg 64 :=
.seq RemovedBody794_156 RemovedBody794_159

def RemovedBody794_161 : StackLang.HolProg 64 :=
.seq RemovedBody794_155 RemovedBody794_160

def RemovedBody794_162 : StackLang.HolProg 64 :=
.seq RemovedBody794_154 RemovedBody794_161

def RemovedBody794_163 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody794_164 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.equal) 0 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1) RemovedBody794_162 RemovedBody794_163

def RemovedBody794_165 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody794_166 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody794_167 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 2
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 56#64))

def RemovedBody794_168 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody794_169 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 3772#64)

def RemovedBody794_170 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody794_171 : StackLang.HolProg 64 :=
.seq RemovedBody794_169 RemovedBody794_170

def RemovedBody794_172 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody794_173 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 2#64)

def RemovedBody794_174 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 1

def RemovedBody794_175 : StackLang.HolProg 64 :=
.seq RemovedBody794_173 RemovedBody794_174

def RemovedBody794_176 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody794_177 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) RemovedBody794_175 RemovedBody794_176

def RemovedBody794_178 : StackLang.HolProg 64 :=
.seq RemovedBody794_172 RemovedBody794_177

def RemovedBody794_179 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def RemovedBody794_180 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody794_181 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 794 7

def RemovedBody794_182 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody794_183 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody794_184 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody794_185 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody794_186 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def RemovedBody794_187 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def RemovedBody794_188 : StackLang.HolProg 64 :=
.seq RemovedBody794_186 RemovedBody794_187

def RemovedBody794_189 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def RemovedBody794_190 : StackLang.HolProg 64 :=
.seq RemovedBody794_188 RemovedBody794_189

def RemovedBody794_191 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody794_192 : StackLang.HolProg 64 :=
.seq RemovedBody794_190 RemovedBody794_191

def RemovedBody794_193 : StackLang.HolProg 64 :=
.seq RemovedBody794_185 RemovedBody794_192

def RemovedBody794_194 : StackLang.HolProg 64 :=
.seq RemovedBody794_184 RemovedBody794_193

def RemovedBody794_195 : StackLang.HolProg 64 :=
.seq RemovedBody794_183 RemovedBody794_194

def RemovedBody794_196 : StackLang.HolProg 64 :=
.seq RemovedBody794_182 RemovedBody794_195

def RemovedBody794_197 : StackLang.HolProg 64 :=
.seq RemovedBody794_181 RemovedBody794_196

def RemovedBody794_198 : StackLang.HolProg 64 :=
.seq RemovedBody794_180 RemovedBody794_197

def RemovedBody794_199 : StackLang.HolProg 64 :=
.seq RemovedBody794_179 RemovedBody794_198

def RemovedBody794_200 : StackLang.HolProg 64 :=
.seq RemovedBody794_178 RemovedBody794_199

def RemovedBody794_201 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody794_202 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody794_203 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody794_204 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody794_205 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody794_206 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody794_207 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 0 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def RemovedBody794_208 : StackLang.HolProg 64 :=
.seq RemovedBody794_206 RemovedBody794_207

def RemovedBody794_209 : StackLang.HolProg 64 :=
.seq RemovedBody794_205 RemovedBody794_208

def RemovedBody794_210 : StackLang.HolProg 64 :=
.seq RemovedBody794_204 RemovedBody794_209

def RemovedBody794_211 : StackLang.HolProg 64 :=
.seq RemovedBody794_203 RemovedBody794_210

def RemovedBody794_212 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody794_213 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def RemovedBody794_214 : StackLang.HolProg 64 :=
.seq RemovedBody794_212 RemovedBody794_213

def RemovedBody794_215 : StackLang.HolProg 64 :=
.call (some (RemovedBody794_211, 0, 794, 6)) (Sum.inl 69) (some (RemovedBody794_214, 794, 7))

def RemovedBody794_216 : StackLang.HolProg 64 :=
.seq RemovedBody794_202 RemovedBody794_215

def RemovedBody794_217 : StackLang.HolProg 64 :=
.seq RemovedBody794_201 RemovedBody794_216

def RemovedBody794_218 : StackLang.HolProg 64 :=
.seq RemovedBody794_200 RemovedBody794_217

def RemovedBody794_219 : StackLang.HolProg 64 :=
.seq RemovedBody794_171 RemovedBody794_218

def RemovedBody794_220 : StackLang.HolProg 64 :=
.seq RemovedBody794_168 RemovedBody794_219

def RemovedBody794_221 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody794_222 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 96#64)

def RemovedBody794_223 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody794_224 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody794_225 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 3773#64)

def RemovedBody794_226 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody794_227 : StackLang.HolProg 64 :=
.seq RemovedBody794_225 RemovedBody794_226

def RemovedBody794_228 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody794_229 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 2#64)

def RemovedBody794_230 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 1

def RemovedBody794_231 : StackLang.HolProg 64 :=
.seq RemovedBody794_229 RemovedBody794_230

def RemovedBody794_232 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody794_233 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) RemovedBody794_231 RemovedBody794_232

def RemovedBody794_234 : StackLang.HolProg 64 :=
.seq RemovedBody794_228 RemovedBody794_233

def RemovedBody794_235 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def RemovedBody794_236 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody794_237 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 794 9

def RemovedBody794_238 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody794_239 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody794_240 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody794_241 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody794_242 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def RemovedBody794_243 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def RemovedBody794_244 : StackLang.HolProg 64 :=
.seq RemovedBody794_242 RemovedBody794_243

def RemovedBody794_245 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def RemovedBody794_246 : StackLang.HolProg 64 :=
.seq RemovedBody794_244 RemovedBody794_245

def RemovedBody794_247 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody794_248 : StackLang.HolProg 64 :=
.seq RemovedBody794_246 RemovedBody794_247

def RemovedBody794_249 : StackLang.HolProg 64 :=
.seq RemovedBody794_241 RemovedBody794_248

def RemovedBody794_250 : StackLang.HolProg 64 :=
.seq RemovedBody794_240 RemovedBody794_249

def RemovedBody794_251 : StackLang.HolProg 64 :=
.seq RemovedBody794_239 RemovedBody794_250

def RemovedBody794_252 : StackLang.HolProg 64 :=
.seq RemovedBody794_238 RemovedBody794_251

def RemovedBody794_253 : StackLang.HolProg 64 :=
.seq RemovedBody794_237 RemovedBody794_252

def RemovedBody794_254 : StackLang.HolProg 64 :=
.seq RemovedBody794_236 RemovedBody794_253

def RemovedBody794_255 : StackLang.HolProg 64 :=
.seq RemovedBody794_235 RemovedBody794_254

def RemovedBody794_256 : StackLang.HolProg 64 :=
.seq RemovedBody794_234 RemovedBody794_255

def RemovedBody794_257 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody794_258 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody794_259 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody794_260 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody794_261 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody794_262 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody794_263 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 0 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def RemovedBody794_264 : StackLang.HolProg 64 :=
.seq RemovedBody794_262 RemovedBody794_263

def RemovedBody794_265 : StackLang.HolProg 64 :=
.seq RemovedBody794_261 RemovedBody794_264

def RemovedBody794_266 : StackLang.HolProg 64 :=
.seq RemovedBody794_260 RemovedBody794_265

def RemovedBody794_267 : StackLang.HolProg 64 :=
.seq RemovedBody794_259 RemovedBody794_266

def RemovedBody794_268 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody794_269 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def RemovedBody794_270 : StackLang.HolProg 64 :=
.seq RemovedBody794_268 RemovedBody794_269

def RemovedBody794_271 : StackLang.HolProg 64 :=
.call (some (RemovedBody794_267, 0, 794, 8)) (Sum.inl 68) (some (RemovedBody794_270, 794, 9))

def RemovedBody794_272 : StackLang.HolProg 64 :=
.seq RemovedBody794_258 RemovedBody794_271

def RemovedBody794_273 : StackLang.HolProg 64 :=
.seq RemovedBody794_257 RemovedBody794_272

def RemovedBody794_274 : StackLang.HolProg 64 :=
.seq RemovedBody794_256 RemovedBody794_273

def RemovedBody794_275 : StackLang.HolProg 64 :=
.seq RemovedBody794_227 RemovedBody794_274

def RemovedBody794_276 : StackLang.HolProg 64 :=
.seq RemovedBody794_224 RemovedBody794_275

def RemovedBody794_277 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody794_278 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 192#64)

def RemovedBody794_279 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 24#64))

def RemovedBody794_280 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody794_281 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 3774#64)

def RemovedBody794_282 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody794_283 : StackLang.HolProg 64 :=
.seq RemovedBody794_281 RemovedBody794_282

def RemovedBody794_284 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody794_285 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 2#64)

def RemovedBody794_286 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 1

def RemovedBody794_287 : StackLang.HolProg 64 :=
.seq RemovedBody794_285 RemovedBody794_286

def RemovedBody794_288 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody794_289 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) RemovedBody794_287 RemovedBody794_288

def RemovedBody794_290 : StackLang.HolProg 64 :=
.seq RemovedBody794_284 RemovedBody794_289

def RemovedBody794_291 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def RemovedBody794_292 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody794_293 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 794 11

def RemovedBody794_294 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody794_295 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody794_296 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody794_297 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody794_298 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def RemovedBody794_299 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def RemovedBody794_300 : StackLang.HolProg 64 :=
.seq RemovedBody794_298 RemovedBody794_299

def RemovedBody794_301 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def RemovedBody794_302 : StackLang.HolProg 64 :=
.seq RemovedBody794_300 RemovedBody794_301

def RemovedBody794_303 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody794_304 : StackLang.HolProg 64 :=
.seq RemovedBody794_302 RemovedBody794_303

def RemovedBody794_305 : StackLang.HolProg 64 :=
.seq RemovedBody794_297 RemovedBody794_304

def RemovedBody794_306 : StackLang.HolProg 64 :=
.seq RemovedBody794_296 RemovedBody794_305

def RemovedBody794_307 : StackLang.HolProg 64 :=
.seq RemovedBody794_295 RemovedBody794_306

def RemovedBody794_308 : StackLang.HolProg 64 :=
.seq RemovedBody794_294 RemovedBody794_307

def RemovedBody794_309 : StackLang.HolProg 64 :=
.seq RemovedBody794_293 RemovedBody794_308

def RemovedBody794_310 : StackLang.HolProg 64 :=
.seq RemovedBody794_292 RemovedBody794_309

def RemovedBody794_311 : StackLang.HolProg 64 :=
.seq RemovedBody794_291 RemovedBody794_310

def RemovedBody794_312 : StackLang.HolProg 64 :=
.seq RemovedBody794_290 RemovedBody794_311

def RemovedBody794_313 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody794_314 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody794_315 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody794_316 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody794_317 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody794_318 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody794_319 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 0 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def RemovedBody794_320 : StackLang.HolProg 64 :=
.seq RemovedBody794_318 RemovedBody794_319

def RemovedBody794_321 : StackLang.HolProg 64 :=
.seq RemovedBody794_317 RemovedBody794_320

def RemovedBody794_322 : StackLang.HolProg 64 :=
.seq RemovedBody794_316 RemovedBody794_321

def RemovedBody794_323 : StackLang.HolProg 64 :=
.seq RemovedBody794_315 RemovedBody794_322

def RemovedBody794_324 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody794_325 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def RemovedBody794_326 : StackLang.HolProg 64 :=
.seq RemovedBody794_324 RemovedBody794_325

def RemovedBody794_327 : StackLang.HolProg 64 :=
.call (some (RemovedBody794_323, 0, 794, 10)) (Sum.inl 68) (some (RemovedBody794_326, 794, 11))

def RemovedBody794_328 : StackLang.HolProg 64 :=
.seq RemovedBody794_314 RemovedBody794_327

def RemovedBody794_329 : StackLang.HolProg 64 :=
.seq RemovedBody794_313 RemovedBody794_328

def RemovedBody794_330 : StackLang.HolProg 64 :=
.seq RemovedBody794_312 RemovedBody794_329

def RemovedBody794_331 : StackLang.HolProg 64 :=
.seq RemovedBody794_283 RemovedBody794_330

def RemovedBody794_332 : StackLang.HolProg 64 :=
.seq RemovedBody794_280 RemovedBody794_331

def RemovedBody794_333 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody794_334 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 576#64)

def RemovedBody794_335 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 40#64))

def RemovedBody794_336 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody794_337 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 3775#64)

def RemovedBody794_338 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody794_339 : StackLang.HolProg 64 :=
.seq RemovedBody794_337 RemovedBody794_338

def RemovedBody794_340 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody794_341 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 2#64)

def RemovedBody794_342 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 1

def RemovedBody794_343 : StackLang.HolProg 64 :=
.seq RemovedBody794_341 RemovedBody794_342

def RemovedBody794_344 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody794_345 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) RemovedBody794_343 RemovedBody794_344

def RemovedBody794_346 : StackLang.HolProg 64 :=
.seq RemovedBody794_340 RemovedBody794_345

def RemovedBody794_347 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def RemovedBody794_348 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody794_349 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 794 13

def RemovedBody794_350 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody794_351 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody794_352 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody794_353 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody794_354 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def RemovedBody794_355 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def RemovedBody794_356 : StackLang.HolProg 64 :=
.seq RemovedBody794_354 RemovedBody794_355

def RemovedBody794_357 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def RemovedBody794_358 : StackLang.HolProg 64 :=
.seq RemovedBody794_356 RemovedBody794_357

def RemovedBody794_359 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody794_360 : StackLang.HolProg 64 :=
.seq RemovedBody794_358 RemovedBody794_359

def RemovedBody794_361 : StackLang.HolProg 64 :=
.seq RemovedBody794_353 RemovedBody794_360

def RemovedBody794_362 : StackLang.HolProg 64 :=
.seq RemovedBody794_352 RemovedBody794_361

def RemovedBody794_363 : StackLang.HolProg 64 :=
.seq RemovedBody794_351 RemovedBody794_362

def RemovedBody794_364 : StackLang.HolProg 64 :=
.seq RemovedBody794_350 RemovedBody794_363

def RemovedBody794_365 : StackLang.HolProg 64 :=
.seq RemovedBody794_349 RemovedBody794_364

def RemovedBody794_366 : StackLang.HolProg 64 :=
.seq RemovedBody794_348 RemovedBody794_365

def RemovedBody794_367 : StackLang.HolProg 64 :=
.seq RemovedBody794_347 RemovedBody794_366

def RemovedBody794_368 : StackLang.HolProg 64 :=
.seq RemovedBody794_346 RemovedBody794_367

def RemovedBody794_369 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody794_370 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody794_371 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody794_372 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody794_373 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody794_374 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody794_375 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 3 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def RemovedBody794_376 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 2
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 48#64))

def RemovedBody794_377 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 40#64))

def RemovedBody794_378 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 48#64))

def RemovedBody794_379 : StackLang.HolProg 64 :=
.seq RemovedBody794_377 RemovedBody794_378

def RemovedBody794_380 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 32#64))

def RemovedBody794_381 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 40#64))

def RemovedBody794_382 : StackLang.HolProg 64 :=
.seq RemovedBody794_380 RemovedBody794_381

def RemovedBody794_383 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 24#64))

def RemovedBody794_384 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody794_385 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 24#64))

def RemovedBody794_386 : StackLang.HolProg 64 :=
.seq RemovedBody794_384 RemovedBody794_385

def RemovedBody794_387 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody794_388 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody794_389 : StackLang.HolProg 64 :=
.seq RemovedBody794_387 RemovedBody794_388

def RemovedBody794_390 : StackLang.HolProg 64 :=
.seq RemovedBody794_386 RemovedBody794_389

def RemovedBody794_391 : StackLang.HolProg 64 :=
.seq RemovedBody794_383 RemovedBody794_390

def RemovedBody794_392 : StackLang.HolProg 64 :=
.seq RemovedBody794_382 RemovedBody794_391

def RemovedBody794_393 : StackLang.HolProg 64 :=
.seq RemovedBody794_379 RemovedBody794_392

def RemovedBody794_394 : StackLang.HolProg 64 :=
.seq RemovedBody794_376 RemovedBody794_393

def RemovedBody794_395 : StackLang.HolProg 64 :=
.seq RemovedBody794_375 RemovedBody794_394

def RemovedBody794_396 : StackLang.HolProg 64 :=
.seq RemovedBody794_374 RemovedBody794_395

def RemovedBody794_397 : StackLang.HolProg 64 :=
.seq RemovedBody794_373 RemovedBody794_396

def RemovedBody794_398 : StackLang.HolProg 64 :=
.seq RemovedBody794_372 RemovedBody794_397

def RemovedBody794_399 : StackLang.HolProg 64 :=
.seq RemovedBody794_371 RemovedBody794_398

def RemovedBody794_400 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 2
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 48#64))

def RemovedBody794_401 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 40#64))

def RemovedBody794_402 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 48#64))

def RemovedBody794_403 : StackLang.HolProg 64 :=
.seq RemovedBody794_401 RemovedBody794_402

def RemovedBody794_404 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 32#64))

def RemovedBody794_405 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 40#64))

def RemovedBody794_406 : StackLang.HolProg 64 :=
.seq RemovedBody794_404 RemovedBody794_405

def RemovedBody794_407 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 24#64))

def RemovedBody794_408 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody794_409 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 24#64))

def RemovedBody794_410 : StackLang.HolProg 64 :=
.seq RemovedBody794_408 RemovedBody794_409

def RemovedBody794_411 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody794_412 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody794_413 : StackLang.HolProg 64 :=
.seq RemovedBody794_411 RemovedBody794_412

def RemovedBody794_414 : StackLang.HolProg 64 :=
.seq RemovedBody794_410 RemovedBody794_413

def RemovedBody794_415 : StackLang.HolProg 64 :=
.seq RemovedBody794_407 RemovedBody794_414

def RemovedBody794_416 : StackLang.HolProg 64 :=
.seq RemovedBody794_406 RemovedBody794_415

def RemovedBody794_417 : StackLang.HolProg 64 :=
.seq RemovedBody794_403 RemovedBody794_416

def RemovedBody794_418 : StackLang.HolProg 64 :=
.seq RemovedBody794_400 RemovedBody794_417

def RemovedBody794_419 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def RemovedBody794_420 : StackLang.HolProg 64 :=
.seq RemovedBody794_418 RemovedBody794_419

def RemovedBody794_421 : StackLang.HolProg 64 :=
.call (some (RemovedBody794_399, 0, 794, 12)) (Sum.inl 68) (some (RemovedBody794_420, 794, 13))

def RemovedBody794_422 : StackLang.HolProg 64 :=
.seq RemovedBody794_370 RemovedBody794_421

def RemovedBody794_423 : StackLang.HolProg 64 :=
.seq RemovedBody794_369 RemovedBody794_422

def RemovedBody794_424 : StackLang.HolProg 64 :=
.seq RemovedBody794_368 RemovedBody794_423

def RemovedBody794_425 : StackLang.HolProg 64 :=
.seq RemovedBody794_339 RemovedBody794_424

def RemovedBody794_426 : StackLang.HolProg 64 :=
.seq RemovedBody794_336 RemovedBody794_425

def RemovedBody794_427 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody794_428 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 1 0
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 0)))

def RemovedBody794_429 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 32#64))

def RemovedBody794_430 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 3
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody794_431 : StackLang.HolProg 64 :=
.seq RemovedBody794_429 RemovedBody794_430

def RemovedBody794_432 : StackLang.HolProg 64 :=
.seq RemovedBody794_428 RemovedBody794_431

def RemovedBody794_433 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody794_434 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 3776#64)

def RemovedBody794_435 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody794_436 : StackLang.HolProg 64 :=
.seq RemovedBody794_434 RemovedBody794_435

def RemovedBody794_437 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody794_438 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 2#64)

def RemovedBody794_439 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 1

def RemovedBody794_440 : StackLang.HolProg 64 :=
.seq RemovedBody794_438 RemovedBody794_439

def RemovedBody794_441 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody794_442 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) RemovedBody794_440 RemovedBody794_441

def RemovedBody794_443 : StackLang.HolProg 64 :=
.seq RemovedBody794_437 RemovedBody794_442

def RemovedBody794_444 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def RemovedBody794_445 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody794_446 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 794 15

def RemovedBody794_447 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody794_448 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody794_449 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody794_450 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody794_451 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def RemovedBody794_452 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def RemovedBody794_453 : StackLang.HolProg 64 :=
.seq RemovedBody794_451 RemovedBody794_452

def RemovedBody794_454 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def RemovedBody794_455 : StackLang.HolProg 64 :=
.seq RemovedBody794_453 RemovedBody794_454

def RemovedBody794_456 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody794_457 : StackLang.HolProg 64 :=
.seq RemovedBody794_455 RemovedBody794_456

def RemovedBody794_458 : StackLang.HolProg 64 :=
.seq RemovedBody794_450 RemovedBody794_457

def RemovedBody794_459 : StackLang.HolProg 64 :=
.seq RemovedBody794_449 RemovedBody794_458

def RemovedBody794_460 : StackLang.HolProg 64 :=
.seq RemovedBody794_448 RemovedBody794_459

def RemovedBody794_461 : StackLang.HolProg 64 :=
.seq RemovedBody794_447 RemovedBody794_460

def RemovedBody794_462 : StackLang.HolProg 64 :=
.seq RemovedBody794_446 RemovedBody794_461

def RemovedBody794_463 : StackLang.HolProg 64 :=
.seq RemovedBody794_445 RemovedBody794_462

def RemovedBody794_464 : StackLang.HolProg 64 :=
.seq RemovedBody794_444 RemovedBody794_463

def RemovedBody794_465 : StackLang.HolProg 64 :=
.seq RemovedBody794_443 RemovedBody794_464

def RemovedBody794_466 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody794_467 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody794_468 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody794_469 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody794_470 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody794_471 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody794_472 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 48#64))

def RemovedBody794_473 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 2
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody794_474 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody794_475 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody794_476 : StackLang.HolProg 64 :=
.seq RemovedBody794_474 RemovedBody794_475

def RemovedBody794_477 : StackLang.HolProg 64 :=
.seq RemovedBody794_473 RemovedBody794_476

def RemovedBody794_478 : StackLang.HolProg 64 :=
.seq RemovedBody794_472 RemovedBody794_477

def RemovedBody794_479 : StackLang.HolProg 64 :=
.seq RemovedBody794_471 RemovedBody794_478

def RemovedBody794_480 : StackLang.HolProg 64 :=
.seq RemovedBody794_470 RemovedBody794_479

def RemovedBody794_481 : StackLang.HolProg 64 :=
.seq RemovedBody794_469 RemovedBody794_480

def RemovedBody794_482 : StackLang.HolProg 64 :=
.seq RemovedBody794_468 RemovedBody794_481

def RemovedBody794_483 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 48#64))

def RemovedBody794_484 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 2
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody794_485 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody794_486 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody794_487 : StackLang.HolProg 64 :=
.seq RemovedBody794_485 RemovedBody794_486

def RemovedBody794_488 : StackLang.HolProg 64 :=
.seq RemovedBody794_484 RemovedBody794_487

def RemovedBody794_489 : StackLang.HolProg 64 :=
.seq RemovedBody794_483 RemovedBody794_488

def RemovedBody794_490 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def RemovedBody794_491 : StackLang.HolProg 64 :=
.seq RemovedBody794_489 RemovedBody794_490

def RemovedBody794_492 : StackLang.HolProg 64 :=
.call (some (RemovedBody794_482, 0, 794, 14)) (Sum.inl 773) (some (RemovedBody794_491, 794, 15))

def RemovedBody794_493 : StackLang.HolProg 64 :=
.seq RemovedBody794_467 RemovedBody794_492

def RemovedBody794_494 : StackLang.HolProg 64 :=
.seq RemovedBody794_466 RemovedBody794_493

def RemovedBody794_495 : StackLang.HolProg 64 :=
.seq RemovedBody794_465 RemovedBody794_494

def RemovedBody794_496 : StackLang.HolProg 64 :=
.seq RemovedBody794_436 RemovedBody794_495

def RemovedBody794_497 : StackLang.HolProg 64 :=
.seq RemovedBody794_433 RemovedBody794_496

def RemovedBody794_498 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody794_499 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 1 0
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 0)))

def RemovedBody794_500 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 48#64))

def RemovedBody794_501 : StackLang.HolProg 64 :=
.seq RemovedBody794_499 RemovedBody794_500

def RemovedBody794_502 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody794_503 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 3777#64)

def RemovedBody794_504 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody794_505 : StackLang.HolProg 64 :=
.seq RemovedBody794_503 RemovedBody794_504

def RemovedBody794_506 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody794_507 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 2#64)

def RemovedBody794_508 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 1

def RemovedBody794_509 : StackLang.HolProg 64 :=
.seq RemovedBody794_507 RemovedBody794_508

def RemovedBody794_510 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody794_511 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) RemovedBody794_509 RemovedBody794_510

def RemovedBody794_512 : StackLang.HolProg 64 :=
.seq RemovedBody794_506 RemovedBody794_511

def RemovedBody794_513 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def RemovedBody794_514 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody794_515 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 794 17

def RemovedBody794_516 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody794_517 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody794_518 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody794_519 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody794_520 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def RemovedBody794_521 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def RemovedBody794_522 : StackLang.HolProg 64 :=
.seq RemovedBody794_520 RemovedBody794_521

def RemovedBody794_523 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def RemovedBody794_524 : StackLang.HolProg 64 :=
.seq RemovedBody794_522 RemovedBody794_523

def RemovedBody794_525 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody794_526 : StackLang.HolProg 64 :=
.seq RemovedBody794_524 RemovedBody794_525

def RemovedBody794_527 : StackLang.HolProg 64 :=
.seq RemovedBody794_519 RemovedBody794_526

def RemovedBody794_528 : StackLang.HolProg 64 :=
.seq RemovedBody794_518 RemovedBody794_527

def RemovedBody794_529 : StackLang.HolProg 64 :=
.seq RemovedBody794_517 RemovedBody794_528

def RemovedBody794_530 : StackLang.HolProg 64 :=
.seq RemovedBody794_516 RemovedBody794_529

def RemovedBody794_531 : StackLang.HolProg 64 :=
.seq RemovedBody794_515 RemovedBody794_530

def RemovedBody794_532 : StackLang.HolProg 64 :=
.seq RemovedBody794_514 RemovedBody794_531

def RemovedBody794_533 : StackLang.HolProg 64 :=
.seq RemovedBody794_513 RemovedBody794_532

def RemovedBody794_534 : StackLang.HolProg 64 :=
.seq RemovedBody794_512 RemovedBody794_533

def RemovedBody794_535 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody794_536 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody794_537 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody794_538 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody794_539 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody794_540 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody794_541 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 14
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 48#64))

def RemovedBody794_542 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 40#64))

def RemovedBody794_543 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 48#64))

def RemovedBody794_544 : StackLang.HolProg 64 :=
.seq RemovedBody794_542 RemovedBody794_543

def RemovedBody794_545 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 32#64))

def RemovedBody794_546 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 24#64))

def RemovedBody794_547 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 40#64))

def RemovedBody794_548 : StackLang.HolProg 64 :=
.seq RemovedBody794_546 RemovedBody794_547

def RemovedBody794_549 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 15
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody794_550 : StackLang.HolProg 64 :=
.seq RemovedBody794_548 RemovedBody794_549

def RemovedBody794_551 : StackLang.HolProg 64 :=
.seq RemovedBody794_545 RemovedBody794_550

def RemovedBody794_552 : StackLang.HolProg 64 :=
.seq RemovedBody794_544 RemovedBody794_551

def RemovedBody794_553 : StackLang.HolProg 64 :=
.seq RemovedBody794_541 RemovedBody794_552

def RemovedBody794_554 : StackLang.HolProg 64 :=
.seq RemovedBody794_540 RemovedBody794_553

def RemovedBody794_555 : StackLang.HolProg 64 :=
.seq RemovedBody794_539 RemovedBody794_554

def RemovedBody794_556 : StackLang.HolProg 64 :=
.seq RemovedBody794_538 RemovedBody794_555

def RemovedBody794_557 : StackLang.HolProg 64 :=
.seq RemovedBody794_537 RemovedBody794_556

def RemovedBody794_558 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 14
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 48#64))

def RemovedBody794_559 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 40#64))

def RemovedBody794_560 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 48#64))

def RemovedBody794_561 : StackLang.HolProg 64 :=
.seq RemovedBody794_559 RemovedBody794_560

def RemovedBody794_562 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 32#64))

def RemovedBody794_563 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 24#64))

def RemovedBody794_564 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 40#64))

def RemovedBody794_565 : StackLang.HolProg 64 :=
.seq RemovedBody794_563 RemovedBody794_564

def RemovedBody794_566 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 15
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody794_567 : StackLang.HolProg 64 :=
.seq RemovedBody794_565 RemovedBody794_566

def RemovedBody794_568 : StackLang.HolProg 64 :=
.seq RemovedBody794_562 RemovedBody794_567

def RemovedBody794_569 : StackLang.HolProg 64 :=
.seq RemovedBody794_561 RemovedBody794_568

def RemovedBody794_570 : StackLang.HolProg 64 :=
.seq RemovedBody794_558 RemovedBody794_569

def RemovedBody794_571 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def RemovedBody794_572 : StackLang.HolProg 64 :=
.seq RemovedBody794_570 RemovedBody794_571

def RemovedBody794_573 : StackLang.HolProg 64 :=
.call (some (RemovedBody794_557, 0, 794, 16)) (Sum.inl 785) (some (RemovedBody794_572, 794, 17))

def RemovedBody794_574 : StackLang.HolProg 64 :=
.seq RemovedBody794_536 RemovedBody794_573

def RemovedBody794_575 : StackLang.HolProg 64 :=
.seq RemovedBody794_535 RemovedBody794_574

def RemovedBody794_576 : StackLang.HolProg 64 :=
.seq RemovedBody794_534 RemovedBody794_575

def RemovedBody794_577 : StackLang.HolProg 64 :=
.seq RemovedBody794_505 RemovedBody794_576

def RemovedBody794_578 : StackLang.HolProg 64 :=
.seq RemovedBody794_502 RemovedBody794_577

def RemovedBody794_579 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody794_580 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody794_581 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 2
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 0 0#64))

def RemovedBody794_582 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody794_583 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 3
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 0 8#64))

def RemovedBody794_584 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody794_585 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 4
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 0 16#64))

def RemovedBody794_586 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody794_587 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 5
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 0 24#64))

def RemovedBody794_588 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody794_589 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 6
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 0 32#64))

def RemovedBody794_590 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody794_591 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 7
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 0 40#64))

def RemovedBody794_592 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody794_593 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 8
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 0 48#64))

def RemovedBody794_594 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody794_595 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 9
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 0 56#64))

def RemovedBody794_596 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody794_597 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 10
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 0 64#64))

def RemovedBody794_598 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody794_599 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 11
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 0 72#64))

def RemovedBody794_600 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody794_601 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 12
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 0 80#64))

def RemovedBody794_602 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody794_603 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 13
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 0 88#64))

def RemovedBody794_604 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 1 15
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 15)))

def RemovedBody794_605 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 15
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 32#64))

def RemovedBody794_606 : StackLang.HolProg 64 :=
.seq RemovedBody794_604 RemovedBody794_605

def RemovedBody794_607 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody794_608 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 3778#64)

def RemovedBody794_609 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody794_610 : StackLang.HolProg 64 :=
.seq RemovedBody794_608 RemovedBody794_609

def RemovedBody794_611 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody794_612 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 2#64)

def RemovedBody794_613 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 1

def RemovedBody794_614 : StackLang.HolProg 64 :=
.seq RemovedBody794_612 RemovedBody794_613

def RemovedBody794_615 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody794_616 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) RemovedBody794_614 RemovedBody794_615

def RemovedBody794_617 : StackLang.HolProg 64 :=
.seq RemovedBody794_611 RemovedBody794_616

def RemovedBody794_618 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def RemovedBody794_619 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody794_620 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 794 19

def RemovedBody794_621 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody794_622 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody794_623 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody794_624 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody794_625 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def RemovedBody794_626 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def RemovedBody794_627 : StackLang.HolProg 64 :=
.seq RemovedBody794_625 RemovedBody794_626

def RemovedBody794_628 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def RemovedBody794_629 : StackLang.HolProg 64 :=
.seq RemovedBody794_627 RemovedBody794_628

def RemovedBody794_630 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody794_631 : StackLang.HolProg 64 :=
.seq RemovedBody794_629 RemovedBody794_630

def RemovedBody794_632 : StackLang.HolProg 64 :=
.seq RemovedBody794_624 RemovedBody794_631

def RemovedBody794_633 : StackLang.HolProg 64 :=
.seq RemovedBody794_623 RemovedBody794_632

def RemovedBody794_634 : StackLang.HolProg 64 :=
.seq RemovedBody794_622 RemovedBody794_633

def RemovedBody794_635 : StackLang.HolProg 64 :=
.seq RemovedBody794_621 RemovedBody794_634

def RemovedBody794_636 : StackLang.HolProg 64 :=
.seq RemovedBody794_620 RemovedBody794_635

def RemovedBody794_637 : StackLang.HolProg 64 :=
.seq RemovedBody794_619 RemovedBody794_636

def RemovedBody794_638 : StackLang.HolProg 64 :=
.seq RemovedBody794_618 RemovedBody794_637

def RemovedBody794_639 : StackLang.HolProg 64 :=
.seq RemovedBody794_617 RemovedBody794_638

def RemovedBody794_640 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody794_641 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody794_642 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody794_643 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody794_644 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody794_645 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody794_646 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 2
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 48#64))

def RemovedBody794_647 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 40#64))

def RemovedBody794_648 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 48#64))

def RemovedBody794_649 : StackLang.HolProg 64 :=
.seq RemovedBody794_647 RemovedBody794_648

def RemovedBody794_650 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 3
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 32#64))

def RemovedBody794_651 : StackLang.HolProg 64 :=
.seq RemovedBody794_649 RemovedBody794_650

def RemovedBody794_652 : StackLang.HolProg 64 :=
.seq RemovedBody794_646 RemovedBody794_651

def RemovedBody794_653 : StackLang.HolProg 64 :=
.seq RemovedBody794_645 RemovedBody794_652

def RemovedBody794_654 : StackLang.HolProg 64 :=
.seq RemovedBody794_644 RemovedBody794_653

def RemovedBody794_655 : StackLang.HolProg 64 :=
.seq RemovedBody794_643 RemovedBody794_654

def RemovedBody794_656 : StackLang.HolProg 64 :=
.seq RemovedBody794_642 RemovedBody794_655

def RemovedBody794_657 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 2
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 48#64))

def RemovedBody794_658 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 40#64))

def RemovedBody794_659 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 48#64))

def RemovedBody794_660 : StackLang.HolProg 64 :=
.seq RemovedBody794_658 RemovedBody794_659

def RemovedBody794_661 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 3
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 32#64))

def RemovedBody794_662 : StackLang.HolProg 64 :=
.seq RemovedBody794_660 RemovedBody794_661

def RemovedBody794_663 : StackLang.HolProg 64 :=
.seq RemovedBody794_657 RemovedBody794_662

def RemovedBody794_664 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def RemovedBody794_665 : StackLang.HolProg 64 :=
.seq RemovedBody794_663 RemovedBody794_664

def RemovedBody794_666 : StackLang.HolProg 64 :=
.call (some (RemovedBody794_656, 0, 794, 18)) (Sum.inl 793) (some (RemovedBody794_665, 794, 19))

def RemovedBody794_667 : StackLang.HolProg 64 :=
.seq RemovedBody794_641 RemovedBody794_666

def RemovedBody794_668 : StackLang.HolProg 64 :=
.seq RemovedBody794_640 RemovedBody794_667

def RemovedBody794_669 : StackLang.HolProg 64 :=
.seq RemovedBody794_639 RemovedBody794_668

def RemovedBody794_670 : StackLang.HolProg 64 :=
.seq RemovedBody794_610 RemovedBody794_669

def RemovedBody794_671 : StackLang.HolProg 64 :=
.seq RemovedBody794_607 RemovedBody794_670

def RemovedBody794_672 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody794_673 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 1 2
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 2)))

def RemovedBody794_674 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody794_675 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 3779#64)

def RemovedBody794_676 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody794_677 : StackLang.HolProg 64 :=
.seq RemovedBody794_675 RemovedBody794_676

def RemovedBody794_678 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody794_679 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 2#64)

def RemovedBody794_680 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 1

def RemovedBody794_681 : StackLang.HolProg 64 :=
.seq RemovedBody794_679 RemovedBody794_680

def RemovedBody794_682 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody794_683 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) RemovedBody794_681 RemovedBody794_682

def RemovedBody794_684 : StackLang.HolProg 64 :=
.seq RemovedBody794_678 RemovedBody794_683

def RemovedBody794_685 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def RemovedBody794_686 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody794_687 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 794 21

def RemovedBody794_688 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody794_689 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody794_690 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody794_691 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody794_692 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def RemovedBody794_693 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def RemovedBody794_694 : StackLang.HolProg 64 :=
.seq RemovedBody794_692 RemovedBody794_693

def RemovedBody794_695 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def RemovedBody794_696 : StackLang.HolProg 64 :=
.seq RemovedBody794_694 RemovedBody794_695

def RemovedBody794_697 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody794_698 : StackLang.HolProg 64 :=
.seq RemovedBody794_696 RemovedBody794_697

def RemovedBody794_699 : StackLang.HolProg 64 :=
.seq RemovedBody794_691 RemovedBody794_698

def RemovedBody794_700 : StackLang.HolProg 64 :=
.seq RemovedBody794_690 RemovedBody794_699

def RemovedBody794_701 : StackLang.HolProg 64 :=
.seq RemovedBody794_689 RemovedBody794_700

def RemovedBody794_702 : StackLang.HolProg 64 :=
.seq RemovedBody794_688 RemovedBody794_701

def RemovedBody794_703 : StackLang.HolProg 64 :=
.seq RemovedBody794_687 RemovedBody794_702

def RemovedBody794_704 : StackLang.HolProg 64 :=
.seq RemovedBody794_686 RemovedBody794_703

def RemovedBody794_705 : StackLang.HolProg 64 :=
.seq RemovedBody794_685 RemovedBody794_704

def RemovedBody794_706 : StackLang.HolProg 64 :=
.seq RemovedBody794_684 RemovedBody794_705

def RemovedBody794_707 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody794_708 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody794_709 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody794_710 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody794_711 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody794_712 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody794_713 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 48#64))

def RemovedBody794_714 : StackLang.HolProg 64 :=
.seq RemovedBody794_712 RemovedBody794_713

def RemovedBody794_715 : StackLang.HolProg 64 :=
.seq RemovedBody794_711 RemovedBody794_714

def RemovedBody794_716 : StackLang.HolProg 64 :=
.seq RemovedBody794_710 RemovedBody794_715

def RemovedBody794_717 : StackLang.HolProg 64 :=
.seq RemovedBody794_709 RemovedBody794_716

def RemovedBody794_718 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 48#64))

def RemovedBody794_719 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def RemovedBody794_720 : StackLang.HolProg 64 :=
.seq RemovedBody794_718 RemovedBody794_719

def RemovedBody794_721 : StackLang.HolProg 64 :=
.call (some (RemovedBody794_717, 0, 794, 20)) (Sum.inl 758) (some (RemovedBody794_720, 794, 21))

def RemovedBody794_722 : StackLang.HolProg 64 :=
.seq RemovedBody794_708 RemovedBody794_721

def RemovedBody794_723 : StackLang.HolProg 64 :=
.seq RemovedBody794_707 RemovedBody794_722

def RemovedBody794_724 : StackLang.HolProg 64 :=
.seq RemovedBody794_706 RemovedBody794_723

def RemovedBody794_725 : StackLang.HolProg 64 :=
.seq RemovedBody794_677 RemovedBody794_724

def RemovedBody794_726 : StackLang.HolProg 64 :=
.seq RemovedBody794_674 RemovedBody794_725

def RemovedBody794_727 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody794_728 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 1 0
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 0)))

def RemovedBody794_729 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody794_730 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 3780#64)

def RemovedBody794_731 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody794_732 : StackLang.HolProg 64 :=
.seq RemovedBody794_730 RemovedBody794_731

def RemovedBody794_733 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody794_734 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 2#64)

def RemovedBody794_735 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 1

def RemovedBody794_736 : StackLang.HolProg 64 :=
.seq RemovedBody794_734 RemovedBody794_735

def RemovedBody794_737 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody794_738 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) RemovedBody794_736 RemovedBody794_737

def RemovedBody794_739 : StackLang.HolProg 64 :=
.seq RemovedBody794_733 RemovedBody794_738

def RemovedBody794_740 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def RemovedBody794_741 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody794_742 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 794 23

def RemovedBody794_743 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody794_744 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody794_745 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody794_746 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody794_747 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def RemovedBody794_748 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def RemovedBody794_749 : StackLang.HolProg 64 :=
.seq RemovedBody794_747 RemovedBody794_748

def RemovedBody794_750 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def RemovedBody794_751 : StackLang.HolProg 64 :=
.seq RemovedBody794_749 RemovedBody794_750

def RemovedBody794_752 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody794_753 : StackLang.HolProg 64 :=
.seq RemovedBody794_751 RemovedBody794_752

def RemovedBody794_754 : StackLang.HolProg 64 :=
.seq RemovedBody794_746 RemovedBody794_753

def RemovedBody794_755 : StackLang.HolProg 64 :=
.seq RemovedBody794_745 RemovedBody794_754

def RemovedBody794_756 : StackLang.HolProg 64 :=
.seq RemovedBody794_744 RemovedBody794_755

def RemovedBody794_757 : StackLang.HolProg 64 :=
.seq RemovedBody794_743 RemovedBody794_756

def RemovedBody794_758 : StackLang.HolProg 64 :=
.seq RemovedBody794_742 RemovedBody794_757

def RemovedBody794_759 : StackLang.HolProg 64 :=
.seq RemovedBody794_741 RemovedBody794_758

def RemovedBody794_760 : StackLang.HolProg 64 :=
.seq RemovedBody794_740 RemovedBody794_759

def RemovedBody794_761 : StackLang.HolProg 64 :=
.seq RemovedBody794_739 RemovedBody794_760

def RemovedBody794_762 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody794_763 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody794_764 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody794_765 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody794_766 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody794_767 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody794_768 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 56#64))

def RemovedBody794_769 : StackLang.HolProg 64 :=
.seq RemovedBody794_767 RemovedBody794_768

def RemovedBody794_770 : StackLang.HolProg 64 :=
.seq RemovedBody794_766 RemovedBody794_769

def RemovedBody794_771 : StackLang.HolProg 64 :=
.seq RemovedBody794_765 RemovedBody794_770

def RemovedBody794_772 : StackLang.HolProg 64 :=
.seq RemovedBody794_764 RemovedBody794_771

def RemovedBody794_773 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 56#64))

def RemovedBody794_774 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def RemovedBody794_775 : StackLang.HolProg 64 :=
.seq RemovedBody794_773 RemovedBody794_774

def RemovedBody794_776 : StackLang.HolProg 64 :=
.call (some (RemovedBody794_772, 0, 794, 22)) (Sum.inl 70) (some (RemovedBody794_775, 794, 23))

def RemovedBody794_777 : StackLang.HolProg 64 :=
.seq RemovedBody794_763 RemovedBody794_776

def RemovedBody794_778 : StackLang.HolProg 64 :=
.seq RemovedBody794_762 RemovedBody794_777

def RemovedBody794_779 : StackLang.HolProg 64 :=
.seq RemovedBody794_761 RemovedBody794_778

def RemovedBody794_780 : StackLang.HolProg 64 :=
.seq RemovedBody794_732 RemovedBody794_779

def RemovedBody794_781 : StackLang.HolProg 64 :=
.seq RemovedBody794_729 RemovedBody794_780

def RemovedBody794_782 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody794_783 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 0#64)

def RemovedBody794_784 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody794_785 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 64#64)))

def RemovedBody794_786 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 0

def RemovedBody794_787 : StackLang.HolProg 64 :=
.seq RemovedBody794_785 RemovedBody794_786

def RemovedBody794_788 : StackLang.HolProg 64 :=
.seq RemovedBody794_784 RemovedBody794_787

def RemovedBody794_789 : StackLang.HolProg 64 :=
.seq RemovedBody794_783 RemovedBody794_788

def RemovedBody794_790 : StackLang.HolProg 64 :=
.seq RemovedBody794_782 RemovedBody794_789

def RemovedBody794_791 : StackLang.HolProg 64 :=
.seq RemovedBody794_781 RemovedBody794_790

def RemovedBody794_792 : StackLang.HolProg 64 :=
.seq RemovedBody794_728 RemovedBody794_791

def RemovedBody794_793 : StackLang.HolProg 64 :=
.seq RemovedBody794_727 RemovedBody794_792

def RemovedBody794_794 : StackLang.HolProg 64 :=
.seq RemovedBody794_726 RemovedBody794_793

def RemovedBody794_795 : StackLang.HolProg 64 :=
.seq RemovedBody794_673 RemovedBody794_794

def RemovedBody794_796 : StackLang.HolProg 64 :=
.seq RemovedBody794_672 RemovedBody794_795

def RemovedBody794_797 : StackLang.HolProg 64 :=
.seq RemovedBody794_671 RemovedBody794_796

def RemovedBody794_798 : StackLang.HolProg 64 :=
.seq RemovedBody794_606 RemovedBody794_797

def RemovedBody794_799 : StackLang.HolProg 64 :=
.seq RemovedBody794_603 RemovedBody794_798

def RemovedBody794_800 : StackLang.HolProg 64 :=
.seq RemovedBody794_602 RemovedBody794_799

def RemovedBody794_801 : StackLang.HolProg 64 :=
.seq RemovedBody794_601 RemovedBody794_800

def RemovedBody794_802 : StackLang.HolProg 64 :=
.seq RemovedBody794_600 RemovedBody794_801

def RemovedBody794_803 : StackLang.HolProg 64 :=
.seq RemovedBody794_599 RemovedBody794_802

def RemovedBody794_804 : StackLang.HolProg 64 :=
.seq RemovedBody794_598 RemovedBody794_803

def RemovedBody794_805 : StackLang.HolProg 64 :=
.seq RemovedBody794_597 RemovedBody794_804

def RemovedBody794_806 : StackLang.HolProg 64 :=
.seq RemovedBody794_596 RemovedBody794_805

def RemovedBody794_807 : StackLang.HolProg 64 :=
.seq RemovedBody794_595 RemovedBody794_806

def RemovedBody794_808 : StackLang.HolProg 64 :=
.seq RemovedBody794_594 RemovedBody794_807

def RemovedBody794_809 : StackLang.HolProg 64 :=
.seq RemovedBody794_593 RemovedBody794_808

def RemovedBody794_810 : StackLang.HolProg 64 :=
.seq RemovedBody794_592 RemovedBody794_809

def RemovedBody794_811 : StackLang.HolProg 64 :=
.seq RemovedBody794_591 RemovedBody794_810

def RemovedBody794_812 : StackLang.HolProg 64 :=
.seq RemovedBody794_590 RemovedBody794_811

def RemovedBody794_813 : StackLang.HolProg 64 :=
.seq RemovedBody794_589 RemovedBody794_812

def RemovedBody794_814 : StackLang.HolProg 64 :=
.seq RemovedBody794_588 RemovedBody794_813

def RemovedBody794_815 : StackLang.HolProg 64 :=
.seq RemovedBody794_587 RemovedBody794_814

def RemovedBody794_816 : StackLang.HolProg 64 :=
.seq RemovedBody794_586 RemovedBody794_815

def RemovedBody794_817 : StackLang.HolProg 64 :=
.seq RemovedBody794_585 RemovedBody794_816

def RemovedBody794_818 : StackLang.HolProg 64 :=
.seq RemovedBody794_584 RemovedBody794_817

def RemovedBody794_819 : StackLang.HolProg 64 :=
.seq RemovedBody794_583 RemovedBody794_818

def RemovedBody794_820 : StackLang.HolProg 64 :=
.seq RemovedBody794_582 RemovedBody794_819

def RemovedBody794_821 : StackLang.HolProg 64 :=
.seq RemovedBody794_581 RemovedBody794_820

def RemovedBody794_822 : StackLang.HolProg 64 :=
.seq RemovedBody794_580 RemovedBody794_821

def RemovedBody794_823 : StackLang.HolProg 64 :=
.seq RemovedBody794_579 RemovedBody794_822

def RemovedBody794_824 : StackLang.HolProg 64 :=
.seq RemovedBody794_578 RemovedBody794_823

def RemovedBody794_825 : StackLang.HolProg 64 :=
.seq RemovedBody794_501 RemovedBody794_824

def RemovedBody794_826 : StackLang.HolProg 64 :=
.seq RemovedBody794_498 RemovedBody794_825

def RemovedBody794_827 : StackLang.HolProg 64 :=
.seq RemovedBody794_497 RemovedBody794_826

def RemovedBody794_828 : StackLang.HolProg 64 :=
.seq RemovedBody794_432 RemovedBody794_827

def RemovedBody794_829 : StackLang.HolProg 64 :=
.seq RemovedBody794_427 RemovedBody794_828

def RemovedBody794_830 : StackLang.HolProg 64 :=
.seq RemovedBody794_426 RemovedBody794_829

def RemovedBody794_831 : StackLang.HolProg 64 :=
.seq RemovedBody794_335 RemovedBody794_830

def RemovedBody794_832 : StackLang.HolProg 64 :=
.seq RemovedBody794_334 RemovedBody794_831

def RemovedBody794_833 : StackLang.HolProg 64 :=
.seq RemovedBody794_333 RemovedBody794_832

def RemovedBody794_834 : StackLang.HolProg 64 :=
.seq RemovedBody794_332 RemovedBody794_833

def RemovedBody794_835 : StackLang.HolProg 64 :=
.seq RemovedBody794_279 RemovedBody794_834

def RemovedBody794_836 : StackLang.HolProg 64 :=
.seq RemovedBody794_278 RemovedBody794_835

def RemovedBody794_837 : StackLang.HolProg 64 :=
.seq RemovedBody794_277 RemovedBody794_836

def RemovedBody794_838 : StackLang.HolProg 64 :=
.seq RemovedBody794_276 RemovedBody794_837

def RemovedBody794_839 : StackLang.HolProg 64 :=
.seq RemovedBody794_223 RemovedBody794_838

def RemovedBody794_840 : StackLang.HolProg 64 :=
.seq RemovedBody794_222 RemovedBody794_839

def RemovedBody794_841 : StackLang.HolProg 64 :=
.seq RemovedBody794_221 RemovedBody794_840

def RemovedBody794_842 : StackLang.HolProg 64 :=
.seq RemovedBody794_220 RemovedBody794_841

def RemovedBody794_843 : StackLang.HolProg 64 :=
.seq RemovedBody794_167 RemovedBody794_842

def RemovedBody794_844 : StackLang.HolProg 64 :=
.seq RemovedBody794_166 RemovedBody794_843

def RemovedBody794_845 : StackLang.HolProg 64 :=
.seq RemovedBody794_165 RemovedBody794_844

def RemovedBody794_846 : StackLang.HolProg 64 :=
.seq RemovedBody794_164 RemovedBody794_845

def RemovedBody794_847 : StackLang.HolProg 64 :=
.seq RemovedBody794_153 RemovedBody794_846

def RemovedBody794_848 : StackLang.HolProg 64 :=
.seq RemovedBody794_152 RemovedBody794_847

def RemovedBody794_849 : StackLang.HolProg 64 :=
.seq RemovedBody794_151 RemovedBody794_848

def RemovedBody794_850 : StackLang.HolProg 64 :=
.seq RemovedBody794_150 RemovedBody794_849

def RemovedBody794_851 : StackLang.HolProg 64 :=
.seq RemovedBody794_95 RemovedBody794_850

def RemovedBody794_852 : StackLang.HolProg 64 :=
.seq RemovedBody794_90 RemovedBody794_851

def RemovedBody794_853 : StackLang.HolProg 64 :=
.seq RemovedBody794_89 RemovedBody794_852

def RemovedBody794_854 : StackLang.HolProg 64 :=
.seq RemovedBody794_88 RemovedBody794_853

def RemovedBody794_855 : StackLang.HolProg 64 :=
.seq RemovedBody794_77 RemovedBody794_854

def RemovedBody794_856 : StackLang.HolProg 64 :=
.seq RemovedBody794_76 RemovedBody794_855

def RemovedBody794_857 : StackLang.HolProg 64 :=
.seq RemovedBody794_75 RemovedBody794_856

def RemovedBody794_858 : StackLang.HolProg 64 :=
.seq RemovedBody794_74 RemovedBody794_857

def RemovedBody794_859 : StackLang.HolProg 64 :=
.seq RemovedBody794_15 RemovedBody794_858

def RemovedBody794_860 : StackLang.HolProg 64 :=
.seq RemovedBody794_6 RemovedBody794_859

def Removed794 : Nat × StackLang.HolProg 64 := (794, RemovedBody794_860)
theorem Removed794_eq : StackRemove.progComp false riscvConfig.addrOffset (riscvConfig.regCount - (riscvConfig.avoidRegs.length + 3)) Alloc794 = Removed794 := by
  kernel_rfl
#print axioms Removed794_eq
end InitECandidate.Proofs.BackendStages
