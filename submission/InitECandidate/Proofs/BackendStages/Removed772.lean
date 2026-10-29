import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.BackendStages.Alloc772
import Flapjack.Compiler.Backend.Backend
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
namespace InitECandidate.Proofs.BackendStages
def RemovedBody772_0 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 88#64)))

def RemovedBody772_1 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 2#64)

def RemovedBody772_2 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 1

def RemovedBody772_3 : StackLang.HolProg 64 :=
.seq RemovedBody772_1 RemovedBody772_2

def RemovedBody772_4 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody772_5 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) RemovedBody772_3 RemovedBody772_4

def RemovedBody772_6 : StackLang.HolProg 64 :=
.seq RemovedBody772_0 RemovedBody772_5

def RemovedBody772_7 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 72#64))

def RemovedBody772_8 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 4
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 64#64))

def RemovedBody772_9 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 2
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 56#64))

def RemovedBody772_10 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 48#64))

def RemovedBody772_11 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 3
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 40#64))

def RemovedBody772_12 : StackLang.HolProg 64 :=
.seq RemovedBody772_10 RemovedBody772_11

def RemovedBody772_13 : StackLang.HolProg 64 :=
.seq RemovedBody772_9 RemovedBody772_12

def RemovedBody772_14 : StackLang.HolProg 64 :=
.seq RemovedBody772_8 RemovedBody772_13

def RemovedBody772_15 : StackLang.HolProg 64 :=
.seq RemovedBody772_7 RemovedBody772_14

def RemovedBody772_16 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody772_17 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 3511#64)

def RemovedBody772_18 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody772_19 : StackLang.HolProg 64 :=
.seq RemovedBody772_17 RemovedBody772_18

def RemovedBody772_20 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody772_21 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 2#64)

def RemovedBody772_22 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 1

def RemovedBody772_23 : StackLang.HolProg 64 :=
.seq RemovedBody772_21 RemovedBody772_22

def RemovedBody772_24 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody772_25 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) RemovedBody772_23 RemovedBody772_24

def RemovedBody772_26 : StackLang.HolProg 64 :=
.seq RemovedBody772_20 RemovedBody772_25

def RemovedBody772_27 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def RemovedBody772_28 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody772_29 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 772 3

def RemovedBody772_30 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody772_31 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody772_32 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody772_33 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody772_34 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def RemovedBody772_35 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def RemovedBody772_36 : StackLang.HolProg 64 :=
.seq RemovedBody772_34 RemovedBody772_35

def RemovedBody772_37 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def RemovedBody772_38 : StackLang.HolProg 64 :=
.seq RemovedBody772_36 RemovedBody772_37

def RemovedBody772_39 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody772_40 : StackLang.HolProg 64 :=
.seq RemovedBody772_38 RemovedBody772_39

def RemovedBody772_41 : StackLang.HolProg 64 :=
.seq RemovedBody772_33 RemovedBody772_40

def RemovedBody772_42 : StackLang.HolProg 64 :=
.seq RemovedBody772_32 RemovedBody772_41

def RemovedBody772_43 : StackLang.HolProg 64 :=
.seq RemovedBody772_31 RemovedBody772_42

def RemovedBody772_44 : StackLang.HolProg 64 :=
.seq RemovedBody772_30 RemovedBody772_43

def RemovedBody772_45 : StackLang.HolProg 64 :=
.seq RemovedBody772_29 RemovedBody772_44

def RemovedBody772_46 : StackLang.HolProg 64 :=
.seq RemovedBody772_28 RemovedBody772_45

def RemovedBody772_47 : StackLang.HolProg 64 :=
.seq RemovedBody772_27 RemovedBody772_46

def RemovedBody772_48 : StackLang.HolProg 64 :=
.seq RemovedBody772_26 RemovedBody772_47

def RemovedBody772_49 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody772_50 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody772_51 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody772_52 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody772_53 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody772_54 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody772_55 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 0 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def RemovedBody772_56 : StackLang.HolProg 64 :=
.seq RemovedBody772_54 RemovedBody772_55

def RemovedBody772_57 : StackLang.HolProg 64 :=
.seq RemovedBody772_53 RemovedBody772_56

def RemovedBody772_58 : StackLang.HolProg 64 :=
.seq RemovedBody772_52 RemovedBody772_57

def RemovedBody772_59 : StackLang.HolProg 64 :=
.seq RemovedBody772_51 RemovedBody772_58

def RemovedBody772_60 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody772_61 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def RemovedBody772_62 : StackLang.HolProg 64 :=
.seq RemovedBody772_60 RemovedBody772_61

def RemovedBody772_63 : StackLang.HolProg 64 :=
.call (some (RemovedBody772_59, 0, 772, 2)) (Sum.inl 69) (some (RemovedBody772_62, 772, 3))

def RemovedBody772_64 : StackLang.HolProg 64 :=
.seq RemovedBody772_50 RemovedBody772_63

def RemovedBody772_65 : StackLang.HolProg 64 :=
.seq RemovedBody772_49 RemovedBody772_64

def RemovedBody772_66 : StackLang.HolProg 64 :=
.seq RemovedBody772_48 RemovedBody772_65

def RemovedBody772_67 : StackLang.HolProg 64 :=
.seq RemovedBody772_19 RemovedBody772_66

def RemovedBody772_68 : StackLang.HolProg 64 :=
.seq RemovedBody772_16 RemovedBody772_67

def RemovedBody772_69 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody772_70 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 144#64)

def RemovedBody772_71 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 24#64))

def RemovedBody772_72 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody772_73 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 3512#64)

def RemovedBody772_74 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody772_75 : StackLang.HolProg 64 :=
.seq RemovedBody772_73 RemovedBody772_74

def RemovedBody772_76 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody772_77 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 2#64)

def RemovedBody772_78 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 1

def RemovedBody772_79 : StackLang.HolProg 64 :=
.seq RemovedBody772_77 RemovedBody772_78

def RemovedBody772_80 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody772_81 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) RemovedBody772_79 RemovedBody772_80

def RemovedBody772_82 : StackLang.HolProg 64 :=
.seq RemovedBody772_76 RemovedBody772_81

def RemovedBody772_83 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def RemovedBody772_84 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody772_85 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 772 5

def RemovedBody772_86 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody772_87 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody772_88 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody772_89 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody772_90 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def RemovedBody772_91 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def RemovedBody772_92 : StackLang.HolProg 64 :=
.seq RemovedBody772_90 RemovedBody772_91

def RemovedBody772_93 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def RemovedBody772_94 : StackLang.HolProg 64 :=
.seq RemovedBody772_92 RemovedBody772_93

def RemovedBody772_95 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody772_96 : StackLang.HolProg 64 :=
.seq RemovedBody772_94 RemovedBody772_95

def RemovedBody772_97 : StackLang.HolProg 64 :=
.seq RemovedBody772_89 RemovedBody772_96

def RemovedBody772_98 : StackLang.HolProg 64 :=
.seq RemovedBody772_88 RemovedBody772_97

def RemovedBody772_99 : StackLang.HolProg 64 :=
.seq RemovedBody772_87 RemovedBody772_98

def RemovedBody772_100 : StackLang.HolProg 64 :=
.seq RemovedBody772_86 RemovedBody772_99

def RemovedBody772_101 : StackLang.HolProg 64 :=
.seq RemovedBody772_85 RemovedBody772_100

def RemovedBody772_102 : StackLang.HolProg 64 :=
.seq RemovedBody772_84 RemovedBody772_101

def RemovedBody772_103 : StackLang.HolProg 64 :=
.seq RemovedBody772_83 RemovedBody772_102

def RemovedBody772_104 : StackLang.HolProg 64 :=
.seq RemovedBody772_82 RemovedBody772_103

def RemovedBody772_105 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody772_106 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody772_107 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody772_108 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody772_109 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody772_110 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody772_111 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 0 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def RemovedBody772_112 : StackLang.HolProg 64 :=
.seq RemovedBody772_110 RemovedBody772_111

def RemovedBody772_113 : StackLang.HolProg 64 :=
.seq RemovedBody772_109 RemovedBody772_112

def RemovedBody772_114 : StackLang.HolProg 64 :=
.seq RemovedBody772_108 RemovedBody772_113

def RemovedBody772_115 : StackLang.HolProg 64 :=
.seq RemovedBody772_107 RemovedBody772_114

def RemovedBody772_116 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody772_117 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def RemovedBody772_118 : StackLang.HolProg 64 :=
.seq RemovedBody772_116 RemovedBody772_117

def RemovedBody772_119 : StackLang.HolProg 64 :=
.call (some (RemovedBody772_115, 0, 772, 4)) (Sum.inl 68) (some (RemovedBody772_118, 772, 5))

def RemovedBody772_120 : StackLang.HolProg 64 :=
.seq RemovedBody772_106 RemovedBody772_119

def RemovedBody772_121 : StackLang.HolProg 64 :=
.seq RemovedBody772_105 RemovedBody772_120

def RemovedBody772_122 : StackLang.HolProg 64 :=
.seq RemovedBody772_104 RemovedBody772_121

def RemovedBody772_123 : StackLang.HolProg 64 :=
.seq RemovedBody772_75 RemovedBody772_122

def RemovedBody772_124 : StackLang.HolProg 64 :=
.seq RemovedBody772_72 RemovedBody772_123

def RemovedBody772_125 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody772_126 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 144#64)

def RemovedBody772_127 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 80#64))

def RemovedBody772_128 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody772_129 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 3513#64)

def RemovedBody772_130 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody772_131 : StackLang.HolProg 64 :=
.seq RemovedBody772_129 RemovedBody772_130

def RemovedBody772_132 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody772_133 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 2#64)

def RemovedBody772_134 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 1

def RemovedBody772_135 : StackLang.HolProg 64 :=
.seq RemovedBody772_133 RemovedBody772_134

def RemovedBody772_136 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody772_137 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) RemovedBody772_135 RemovedBody772_136

def RemovedBody772_138 : StackLang.HolProg 64 :=
.seq RemovedBody772_132 RemovedBody772_137

def RemovedBody772_139 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def RemovedBody772_140 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody772_141 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 772 7

def RemovedBody772_142 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody772_143 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody772_144 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody772_145 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody772_146 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def RemovedBody772_147 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def RemovedBody772_148 : StackLang.HolProg 64 :=
.seq RemovedBody772_146 RemovedBody772_147

def RemovedBody772_149 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def RemovedBody772_150 : StackLang.HolProg 64 :=
.seq RemovedBody772_148 RemovedBody772_149

def RemovedBody772_151 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody772_152 : StackLang.HolProg 64 :=
.seq RemovedBody772_150 RemovedBody772_151

def RemovedBody772_153 : StackLang.HolProg 64 :=
.seq RemovedBody772_145 RemovedBody772_152

def RemovedBody772_154 : StackLang.HolProg 64 :=
.seq RemovedBody772_144 RemovedBody772_153

def RemovedBody772_155 : StackLang.HolProg 64 :=
.seq RemovedBody772_143 RemovedBody772_154

def RemovedBody772_156 : StackLang.HolProg 64 :=
.seq RemovedBody772_142 RemovedBody772_155

def RemovedBody772_157 : StackLang.HolProg 64 :=
.seq RemovedBody772_141 RemovedBody772_156

def RemovedBody772_158 : StackLang.HolProg 64 :=
.seq RemovedBody772_140 RemovedBody772_157

def RemovedBody772_159 : StackLang.HolProg 64 :=
.seq RemovedBody772_139 RemovedBody772_158

def RemovedBody772_160 : StackLang.HolProg 64 :=
.seq RemovedBody772_138 RemovedBody772_159

def RemovedBody772_161 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody772_162 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody772_163 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody772_164 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody772_165 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody772_166 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody772_167 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 0 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def RemovedBody772_168 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 2
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 56#64))

def RemovedBody772_169 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 48#64))

def RemovedBody772_170 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 56#64))

def RemovedBody772_171 : StackLang.HolProg 64 :=
.seq RemovedBody772_169 RemovedBody772_170

def RemovedBody772_172 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 40#64))

def RemovedBody772_173 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 48#64))

def RemovedBody772_174 : StackLang.HolProg 64 :=
.seq RemovedBody772_172 RemovedBody772_173

def RemovedBody772_175 : StackLang.HolProg 64 :=
.seq RemovedBody772_171 RemovedBody772_174

def RemovedBody772_176 : StackLang.HolProg 64 :=
.seq RemovedBody772_168 RemovedBody772_175

def RemovedBody772_177 : StackLang.HolProg 64 :=
.seq RemovedBody772_167 RemovedBody772_176

def RemovedBody772_178 : StackLang.HolProg 64 :=
.seq RemovedBody772_166 RemovedBody772_177

def RemovedBody772_179 : StackLang.HolProg 64 :=
.seq RemovedBody772_165 RemovedBody772_178

def RemovedBody772_180 : StackLang.HolProg 64 :=
.seq RemovedBody772_164 RemovedBody772_179

def RemovedBody772_181 : StackLang.HolProg 64 :=
.seq RemovedBody772_163 RemovedBody772_180

def RemovedBody772_182 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 2
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 56#64))

def RemovedBody772_183 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 48#64))

def RemovedBody772_184 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 56#64))

def RemovedBody772_185 : StackLang.HolProg 64 :=
.seq RemovedBody772_183 RemovedBody772_184

def RemovedBody772_186 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 40#64))

def RemovedBody772_187 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 48#64))

def RemovedBody772_188 : StackLang.HolProg 64 :=
.seq RemovedBody772_186 RemovedBody772_187

def RemovedBody772_189 : StackLang.HolProg 64 :=
.seq RemovedBody772_185 RemovedBody772_188

def RemovedBody772_190 : StackLang.HolProg 64 :=
.seq RemovedBody772_182 RemovedBody772_189

def RemovedBody772_191 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def RemovedBody772_192 : StackLang.HolProg 64 :=
.seq RemovedBody772_190 RemovedBody772_191

def RemovedBody772_193 : StackLang.HolProg 64 :=
.call (some (RemovedBody772_181, 0, 772, 6)) (Sum.inl 68) (some (RemovedBody772_192, 772, 7))

def RemovedBody772_194 : StackLang.HolProg 64 :=
.seq RemovedBody772_162 RemovedBody772_193

def RemovedBody772_195 : StackLang.HolProg 64 :=
.seq RemovedBody772_161 RemovedBody772_194

def RemovedBody772_196 : StackLang.HolProg 64 :=
.seq RemovedBody772_160 RemovedBody772_195

def RemovedBody772_197 : StackLang.HolProg 64 :=
.seq RemovedBody772_131 RemovedBody772_196

def RemovedBody772_198 : StackLang.HolProg 64 :=
.seq RemovedBody772_128 RemovedBody772_197

def RemovedBody772_199 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody772_200 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 1 0
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 0)))

def RemovedBody772_201 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 2
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 32#64))

def RemovedBody772_202 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 40#64))

def RemovedBody772_203 : StackLang.HolProg 64 :=
.seq RemovedBody772_201 RemovedBody772_202

def RemovedBody772_204 : StackLang.HolProg 64 :=
.seq RemovedBody772_200 RemovedBody772_203

def RemovedBody772_205 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody772_206 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 3514#64)

def RemovedBody772_207 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody772_208 : StackLang.HolProg 64 :=
.seq RemovedBody772_206 RemovedBody772_207

def RemovedBody772_209 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody772_210 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 2#64)

def RemovedBody772_211 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 1

def RemovedBody772_212 : StackLang.HolProg 64 :=
.seq RemovedBody772_210 RemovedBody772_211

def RemovedBody772_213 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody772_214 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) RemovedBody772_212 RemovedBody772_213

def RemovedBody772_215 : StackLang.HolProg 64 :=
.seq RemovedBody772_209 RemovedBody772_214

def RemovedBody772_216 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def RemovedBody772_217 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody772_218 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 772 9

def RemovedBody772_219 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody772_220 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody772_221 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody772_222 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody772_223 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def RemovedBody772_224 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def RemovedBody772_225 : StackLang.HolProg 64 :=
.seq RemovedBody772_223 RemovedBody772_224

def RemovedBody772_226 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def RemovedBody772_227 : StackLang.HolProg 64 :=
.seq RemovedBody772_225 RemovedBody772_226

def RemovedBody772_228 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody772_229 : StackLang.HolProg 64 :=
.seq RemovedBody772_227 RemovedBody772_228

def RemovedBody772_230 : StackLang.HolProg 64 :=
.seq RemovedBody772_222 RemovedBody772_229

def RemovedBody772_231 : StackLang.HolProg 64 :=
.seq RemovedBody772_221 RemovedBody772_230

def RemovedBody772_232 : StackLang.HolProg 64 :=
.seq RemovedBody772_220 RemovedBody772_231

def RemovedBody772_233 : StackLang.HolProg 64 :=
.seq RemovedBody772_219 RemovedBody772_232

def RemovedBody772_234 : StackLang.HolProg 64 :=
.seq RemovedBody772_218 RemovedBody772_233

def RemovedBody772_235 : StackLang.HolProg 64 :=
.seq RemovedBody772_217 RemovedBody772_234

def RemovedBody772_236 : StackLang.HolProg 64 :=
.seq RemovedBody772_216 RemovedBody772_235

def RemovedBody772_237 : StackLang.HolProg 64 :=
.seq RemovedBody772_215 RemovedBody772_236

def RemovedBody772_238 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody772_239 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody772_240 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody772_241 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody772_242 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody772_243 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody772_244 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 80#64))

def RemovedBody772_245 : StackLang.HolProg 64 :=
.seq RemovedBody772_243 RemovedBody772_244

def RemovedBody772_246 : StackLang.HolProg 64 :=
.seq RemovedBody772_242 RemovedBody772_245

def RemovedBody772_247 : StackLang.HolProg 64 :=
.seq RemovedBody772_241 RemovedBody772_246

def RemovedBody772_248 : StackLang.HolProg 64 :=
.seq RemovedBody772_240 RemovedBody772_247

def RemovedBody772_249 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 80#64))

def RemovedBody772_250 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def RemovedBody772_251 : StackLang.HolProg 64 :=
.seq RemovedBody772_249 RemovedBody772_250

def RemovedBody772_252 : StackLang.HolProg 64 :=
.call (some (RemovedBody772_248, 0, 772, 8)) (Sum.inl 768) (some (RemovedBody772_251, 772, 9))

def RemovedBody772_253 : StackLang.HolProg 64 :=
.seq RemovedBody772_239 RemovedBody772_252

def RemovedBody772_254 : StackLang.HolProg 64 :=
.seq RemovedBody772_238 RemovedBody772_253

def RemovedBody772_255 : StackLang.HolProg 64 :=
.seq RemovedBody772_237 RemovedBody772_254

def RemovedBody772_256 : StackLang.HolProg 64 :=
.seq RemovedBody772_208 RemovedBody772_255

def RemovedBody772_257 : StackLang.HolProg 64 :=
.seq RemovedBody772_205 RemovedBody772_256

def RemovedBody772_258 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody772_259 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 1 0
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 0)))

def RemovedBody772_260 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 80#64))

def RemovedBody772_261 : StackLang.HolProg 64 :=
.seq RemovedBody772_259 RemovedBody772_260

def RemovedBody772_262 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody772_263 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 3515#64)

def RemovedBody772_264 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody772_265 : StackLang.HolProg 64 :=
.seq RemovedBody772_263 RemovedBody772_264

def RemovedBody772_266 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody772_267 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 2#64)

def RemovedBody772_268 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 1

def RemovedBody772_269 : StackLang.HolProg 64 :=
.seq RemovedBody772_267 RemovedBody772_268

def RemovedBody772_270 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody772_271 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) RemovedBody772_269 RemovedBody772_270

def RemovedBody772_272 : StackLang.HolProg 64 :=
.seq RemovedBody772_266 RemovedBody772_271

def RemovedBody772_273 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def RemovedBody772_274 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody772_275 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 772 11

def RemovedBody772_276 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody772_277 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody772_278 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody772_279 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody772_280 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def RemovedBody772_281 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def RemovedBody772_282 : StackLang.HolProg 64 :=
.seq RemovedBody772_280 RemovedBody772_281

def RemovedBody772_283 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def RemovedBody772_284 : StackLang.HolProg 64 :=
.seq RemovedBody772_282 RemovedBody772_283

def RemovedBody772_285 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody772_286 : StackLang.HolProg 64 :=
.seq RemovedBody772_284 RemovedBody772_285

def RemovedBody772_287 : StackLang.HolProg 64 :=
.seq RemovedBody772_279 RemovedBody772_286

def RemovedBody772_288 : StackLang.HolProg 64 :=
.seq RemovedBody772_278 RemovedBody772_287

def RemovedBody772_289 : StackLang.HolProg 64 :=
.seq RemovedBody772_277 RemovedBody772_288

def RemovedBody772_290 : StackLang.HolProg 64 :=
.seq RemovedBody772_276 RemovedBody772_289

def RemovedBody772_291 : StackLang.HolProg 64 :=
.seq RemovedBody772_275 RemovedBody772_290

def RemovedBody772_292 : StackLang.HolProg 64 :=
.seq RemovedBody772_274 RemovedBody772_291

def RemovedBody772_293 : StackLang.HolProg 64 :=
.seq RemovedBody772_273 RemovedBody772_292

def RemovedBody772_294 : StackLang.HolProg 64 :=
.seq RemovedBody772_272 RemovedBody772_293

def RemovedBody772_295 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody772_296 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody772_297 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody772_298 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody772_299 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody772_300 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody772_301 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 2
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 80#64))

def RemovedBody772_302 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 3
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 64#64))

def RemovedBody772_303 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 56#64))

def RemovedBody772_304 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 80#64))

def RemovedBody772_305 : StackLang.HolProg 64 :=
.seq RemovedBody772_303 RemovedBody772_304

def RemovedBody772_306 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 48#64))

def RemovedBody772_307 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 56#64))

def RemovedBody772_308 : StackLang.HolProg 64 :=
.seq RemovedBody772_306 RemovedBody772_307

def RemovedBody772_309 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 24#64))

def RemovedBody772_310 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 64#64))

def RemovedBody772_311 : StackLang.HolProg 64 :=
.seq RemovedBody772_309 RemovedBody772_310

def RemovedBody772_312 : StackLang.HolProg 64 :=
.seq RemovedBody772_308 RemovedBody772_311

def RemovedBody772_313 : StackLang.HolProg 64 :=
.seq RemovedBody772_305 RemovedBody772_312

def RemovedBody772_314 : StackLang.HolProg 64 :=
.seq RemovedBody772_302 RemovedBody772_313

def RemovedBody772_315 : StackLang.HolProg 64 :=
.seq RemovedBody772_301 RemovedBody772_314

def RemovedBody772_316 : StackLang.HolProg 64 :=
.seq RemovedBody772_300 RemovedBody772_315

def RemovedBody772_317 : StackLang.HolProg 64 :=
.seq RemovedBody772_299 RemovedBody772_316

def RemovedBody772_318 : StackLang.HolProg 64 :=
.seq RemovedBody772_298 RemovedBody772_317

def RemovedBody772_319 : StackLang.HolProg 64 :=
.seq RemovedBody772_297 RemovedBody772_318

def RemovedBody772_320 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 2
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 80#64))

def RemovedBody772_321 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 3
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 64#64))

def RemovedBody772_322 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 56#64))

def RemovedBody772_323 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 80#64))

def RemovedBody772_324 : StackLang.HolProg 64 :=
.seq RemovedBody772_322 RemovedBody772_323

def RemovedBody772_325 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 48#64))

def RemovedBody772_326 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 56#64))

def RemovedBody772_327 : StackLang.HolProg 64 :=
.seq RemovedBody772_325 RemovedBody772_326

def RemovedBody772_328 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 24#64))

def RemovedBody772_329 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 64#64))

def RemovedBody772_330 : StackLang.HolProg 64 :=
.seq RemovedBody772_328 RemovedBody772_329

def RemovedBody772_331 : StackLang.HolProg 64 :=
.seq RemovedBody772_327 RemovedBody772_330

def RemovedBody772_332 : StackLang.HolProg 64 :=
.seq RemovedBody772_324 RemovedBody772_331

def RemovedBody772_333 : StackLang.HolProg 64 :=
.seq RemovedBody772_321 RemovedBody772_332

def RemovedBody772_334 : StackLang.HolProg 64 :=
.seq RemovedBody772_320 RemovedBody772_333

def RemovedBody772_335 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def RemovedBody772_336 : StackLang.HolProg 64 :=
.seq RemovedBody772_334 RemovedBody772_335

def RemovedBody772_337 : StackLang.HolProg 64 :=
.call (some (RemovedBody772_319, 0, 772, 10)) (Sum.inl 766) (some (RemovedBody772_336, 772, 11))

def RemovedBody772_338 : StackLang.HolProg 64 :=
.seq RemovedBody772_296 RemovedBody772_337

def RemovedBody772_339 : StackLang.HolProg 64 :=
.seq RemovedBody772_295 RemovedBody772_338

def RemovedBody772_340 : StackLang.HolProg 64 :=
.seq RemovedBody772_294 RemovedBody772_339

def RemovedBody772_341 : StackLang.HolProg 64 :=
.seq RemovedBody772_265 RemovedBody772_340

def RemovedBody772_342 : StackLang.HolProg 64 :=
.seq RemovedBody772_262 RemovedBody772_341

def RemovedBody772_343 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody772_344 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody772_345 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsl 0 3
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 6#64)))

def RemovedBody772_346 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 5 0#64)

def RemovedBody772_347 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody772_348 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 3
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 48#64))

def RemovedBody772_349 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 0#64)

def RemovedBody772_350 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody772_351 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody772_352 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody772_353 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 0 0
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 18446744073709551615#64)))

def RemovedBody772_354 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 24#64))

def RemovedBody772_355 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 0 1#64)

def RemovedBody772_356 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody772_357 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 1 2
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 2)))

def RemovedBody772_358 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 56#64))

def RemovedBody772_359 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody772_360 : StackLang.HolProg 64 :=
.seq RemovedBody772_358 RemovedBody772_359

def RemovedBody772_361 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 32#64))

def RemovedBody772_362 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 56#64))

def RemovedBody772_363 : StackLang.HolProg 64 :=
.seq RemovedBody772_361 RemovedBody772_362

def RemovedBody772_364 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 80#64))

def RemovedBody772_365 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 32#64))

def RemovedBody772_366 : StackLang.HolProg 64 :=
.seq RemovedBody772_364 RemovedBody772_365

def RemovedBody772_367 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 2
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 80#64))

def RemovedBody772_368 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 64#64))

def RemovedBody772_369 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody772_370 : StackLang.HolProg 64 :=
.seq RemovedBody772_368 RemovedBody772_369

def RemovedBody772_371 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 48#64))

def RemovedBody772_372 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 64#64))

def RemovedBody772_373 : StackLang.HolProg 64 :=
.seq RemovedBody772_371 RemovedBody772_372

def RemovedBody772_374 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 5
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 48#64))

def RemovedBody772_375 : StackLang.HolProg 64 :=
.seq RemovedBody772_373 RemovedBody772_374

def RemovedBody772_376 : StackLang.HolProg 64 :=
.seq RemovedBody772_370 RemovedBody772_375

def RemovedBody772_377 : StackLang.HolProg 64 :=
.seq RemovedBody772_367 RemovedBody772_376

def RemovedBody772_378 : StackLang.HolProg 64 :=
.seq RemovedBody772_366 RemovedBody772_377

def RemovedBody772_379 : StackLang.HolProg 64 :=
.seq RemovedBody772_363 RemovedBody772_378

def RemovedBody772_380 : StackLang.HolProg 64 :=
.seq RemovedBody772_360 RemovedBody772_379

def RemovedBody772_381 : StackLang.HolProg 64 :=
.seq RemovedBody772_357 RemovedBody772_380

def RemovedBody772_382 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody772_383 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 3516#64)

def RemovedBody772_384 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody772_385 : StackLang.HolProg 64 :=
.seq RemovedBody772_383 RemovedBody772_384

def RemovedBody772_386 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody772_387 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 2#64)

def RemovedBody772_388 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 1

def RemovedBody772_389 : StackLang.HolProg 64 :=
.seq RemovedBody772_387 RemovedBody772_388

def RemovedBody772_390 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody772_391 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) RemovedBody772_389 RemovedBody772_390

def RemovedBody772_392 : StackLang.HolProg 64 :=
.seq RemovedBody772_386 RemovedBody772_391

def RemovedBody772_393 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def RemovedBody772_394 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody772_395 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 772 13

def RemovedBody772_396 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody772_397 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody772_398 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody772_399 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody772_400 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def RemovedBody772_401 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def RemovedBody772_402 : StackLang.HolProg 64 :=
.seq RemovedBody772_400 RemovedBody772_401

def RemovedBody772_403 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def RemovedBody772_404 : StackLang.HolProg 64 :=
.seq RemovedBody772_402 RemovedBody772_403

def RemovedBody772_405 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody772_406 : StackLang.HolProg 64 :=
.seq RemovedBody772_404 RemovedBody772_405

def RemovedBody772_407 : StackLang.HolProg 64 :=
.seq RemovedBody772_399 RemovedBody772_406

def RemovedBody772_408 : StackLang.HolProg 64 :=
.seq RemovedBody772_398 RemovedBody772_407

def RemovedBody772_409 : StackLang.HolProg 64 :=
.seq RemovedBody772_397 RemovedBody772_408

def RemovedBody772_410 : StackLang.HolProg 64 :=
.seq RemovedBody772_396 RemovedBody772_409

def RemovedBody772_411 : StackLang.HolProg 64 :=
.seq RemovedBody772_395 RemovedBody772_410

def RemovedBody772_412 : StackLang.HolProg 64 :=
.seq RemovedBody772_394 RemovedBody772_411

def RemovedBody772_413 : StackLang.HolProg 64 :=
.seq RemovedBody772_393 RemovedBody772_412

def RemovedBody772_414 : StackLang.HolProg 64 :=
.seq RemovedBody772_392 RemovedBody772_413

def RemovedBody772_415 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody772_416 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody772_417 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody772_418 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody772_419 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody772_420 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody772_421 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 2
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 80#64))

def RemovedBody772_422 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 5
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 48#64))

def RemovedBody772_423 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 3
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 40#64))

def RemovedBody772_424 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 32#64))

def RemovedBody772_425 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 40#64))

def RemovedBody772_426 : StackLang.HolProg 64 :=
.seq RemovedBody772_424 RemovedBody772_425

def RemovedBody772_427 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 24#64))

def RemovedBody772_428 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 6
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody772_429 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody772_430 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody772_431 : StackLang.HolProg 64 :=
.seq RemovedBody772_429 RemovedBody772_430

def RemovedBody772_432 : StackLang.HolProg 64 :=
.seq RemovedBody772_428 RemovedBody772_431

def RemovedBody772_433 : StackLang.HolProg 64 :=
.seq RemovedBody772_427 RemovedBody772_432

def RemovedBody772_434 : StackLang.HolProg 64 :=
.seq RemovedBody772_426 RemovedBody772_433

def RemovedBody772_435 : StackLang.HolProg 64 :=
.seq RemovedBody772_423 RemovedBody772_434

def RemovedBody772_436 : StackLang.HolProg 64 :=
.seq RemovedBody772_422 RemovedBody772_435

def RemovedBody772_437 : StackLang.HolProg 64 :=
.seq RemovedBody772_421 RemovedBody772_436

def RemovedBody772_438 : StackLang.HolProg 64 :=
.seq RemovedBody772_420 RemovedBody772_437

def RemovedBody772_439 : StackLang.HolProg 64 :=
.seq RemovedBody772_419 RemovedBody772_438

def RemovedBody772_440 : StackLang.HolProg 64 :=
.seq RemovedBody772_418 RemovedBody772_439

def RemovedBody772_441 : StackLang.HolProg 64 :=
.seq RemovedBody772_417 RemovedBody772_440

def RemovedBody772_442 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 2
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 80#64))

def RemovedBody772_443 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 5
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 48#64))

def RemovedBody772_444 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 3
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 40#64))

def RemovedBody772_445 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 32#64))

def RemovedBody772_446 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 40#64))

def RemovedBody772_447 : StackLang.HolProg 64 :=
.seq RemovedBody772_445 RemovedBody772_446

def RemovedBody772_448 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 24#64))

def RemovedBody772_449 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 6
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody772_450 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody772_451 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody772_452 : StackLang.HolProg 64 :=
.seq RemovedBody772_450 RemovedBody772_451

def RemovedBody772_453 : StackLang.HolProg 64 :=
.seq RemovedBody772_449 RemovedBody772_452

def RemovedBody772_454 : StackLang.HolProg 64 :=
.seq RemovedBody772_448 RemovedBody772_453

def RemovedBody772_455 : StackLang.HolProg 64 :=
.seq RemovedBody772_447 RemovedBody772_454

def RemovedBody772_456 : StackLang.HolProg 64 :=
.seq RemovedBody772_444 RemovedBody772_455

def RemovedBody772_457 : StackLang.HolProg 64 :=
.seq RemovedBody772_443 RemovedBody772_456

def RemovedBody772_458 : StackLang.HolProg 64 :=
.seq RemovedBody772_442 RemovedBody772_457

def RemovedBody772_459 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def RemovedBody772_460 : StackLang.HolProg 64 :=
.seq RemovedBody772_458 RemovedBody772_459

def RemovedBody772_461 : StackLang.HolProg 64 :=
.call (some (RemovedBody772_441, 0, 772, 12)) (Sum.inl 770) (some (RemovedBody772_460, 772, 13))

def RemovedBody772_462 : StackLang.HolProg 64 :=
.seq RemovedBody772_416 RemovedBody772_461

def RemovedBody772_463 : StackLang.HolProg 64 :=
.seq RemovedBody772_415 RemovedBody772_462

def RemovedBody772_464 : StackLang.HolProg 64 :=
.seq RemovedBody772_414 RemovedBody772_463

def RemovedBody772_465 : StackLang.HolProg 64 :=
.seq RemovedBody772_385 RemovedBody772_464

def RemovedBody772_466 : StackLang.HolProg 64 :=
.seq RemovedBody772_382 RemovedBody772_465

def RemovedBody772_467 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody772_468 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody772_469 : StackLang.HolProg 64 :=
.seq RemovedBody772_467 RemovedBody772_468

def RemovedBody772_470 : StackLang.HolProg 64 :=
.seq RemovedBody772_466 RemovedBody772_469

def RemovedBody772_471 : StackLang.HolProg 64 :=
.seq RemovedBody772_381 RemovedBody772_470

def RemovedBody772_472 : StackLang.HolProg 64 :=
.seq RemovedBody772_356 RemovedBody772_471

def RemovedBody772_473 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody772_474 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 64#64))

def RemovedBody772_475 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody772_476 : StackLang.HolProg 64 :=
.seq RemovedBody772_474 RemovedBody772_475

def RemovedBody772_477 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 48#64))

def RemovedBody772_478 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 64#64))

def RemovedBody772_479 : StackLang.HolProg 64 :=
.seq RemovedBody772_477 RemovedBody772_478

def RemovedBody772_480 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 6
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 56#64))

def RemovedBody772_481 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 32#64))

def RemovedBody772_482 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 56#64))

def RemovedBody772_483 : StackLang.HolProg 64 :=
.seq RemovedBody772_481 RemovedBody772_482

def RemovedBody772_484 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 3
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 40#64))

def RemovedBody772_485 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 80#64))

def RemovedBody772_486 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 40#64))

def RemovedBody772_487 : StackLang.HolProg 64 :=
.seq RemovedBody772_485 RemovedBody772_486

def RemovedBody772_488 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 24#64))

def RemovedBody772_489 : StackLang.HolProg 64 :=
.seq RemovedBody772_487 RemovedBody772_488

def RemovedBody772_490 : StackLang.HolProg 64 :=
.seq RemovedBody772_484 RemovedBody772_489

def RemovedBody772_491 : StackLang.HolProg 64 :=
.seq RemovedBody772_483 RemovedBody772_490

def RemovedBody772_492 : StackLang.HolProg 64 :=
.seq RemovedBody772_480 RemovedBody772_491

def RemovedBody772_493 : StackLang.HolProg 64 :=
.seq RemovedBody772_479 RemovedBody772_492

def RemovedBody772_494 : StackLang.HolProg 64 :=
.seq RemovedBody772_476 RemovedBody772_493

def RemovedBody772_495 : StackLang.HolProg 64 :=
.seq RemovedBody772_473 RemovedBody772_494

def RemovedBody772_496 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.equal) 5 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 0) RemovedBody772_472 RemovedBody772_495

def RemovedBody772_497 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody772_498 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody772_499 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 1 0
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 6#64)))

def RemovedBody772_500 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsl 1 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def RemovedBody772_501 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody772_502 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 1 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 6)))

def RemovedBody772_503 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 1 0#64))

def RemovedBody772_504 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody772_505 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.and 4 0
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 63#64)))

def RemovedBody772_506 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody772_507 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 1 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 4)))

def RemovedBody772_508 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.and 1 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 1#64)))

def RemovedBody772_509 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody772_510 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 4 1#64)

def RemovedBody772_511 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody772_512 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 1 2
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 2)))

def RemovedBody772_513 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 2
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 80#64))

def RemovedBody772_514 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 3
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 48#64))

def RemovedBody772_515 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 32#64))

def RemovedBody772_516 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 6
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 24#64))

def RemovedBody772_517 : StackLang.HolProg 64 :=
.seq RemovedBody772_515 RemovedBody772_516

def RemovedBody772_518 : StackLang.HolProg 64 :=
.seq RemovedBody772_514 RemovedBody772_517

def RemovedBody772_519 : StackLang.HolProg 64 :=
.seq RemovedBody772_513 RemovedBody772_518

def RemovedBody772_520 : StackLang.HolProg 64 :=
.seq RemovedBody772_512 RemovedBody772_519

def RemovedBody772_521 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody772_522 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 3517#64)

def RemovedBody772_523 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody772_524 : StackLang.HolProg 64 :=
.seq RemovedBody772_522 RemovedBody772_523

def RemovedBody772_525 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody772_526 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 2#64)

def RemovedBody772_527 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 1

def RemovedBody772_528 : StackLang.HolProg 64 :=
.seq RemovedBody772_526 RemovedBody772_527

def RemovedBody772_529 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody772_530 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) RemovedBody772_528 RemovedBody772_529

def RemovedBody772_531 : StackLang.HolProg 64 :=
.seq RemovedBody772_525 RemovedBody772_530

def RemovedBody772_532 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def RemovedBody772_533 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody772_534 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 772 15

def RemovedBody772_535 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody772_536 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody772_537 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody772_538 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody772_539 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def RemovedBody772_540 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def RemovedBody772_541 : StackLang.HolProg 64 :=
.seq RemovedBody772_539 RemovedBody772_540

def RemovedBody772_542 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def RemovedBody772_543 : StackLang.HolProg 64 :=
.seq RemovedBody772_541 RemovedBody772_542

def RemovedBody772_544 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody772_545 : StackLang.HolProg 64 :=
.seq RemovedBody772_543 RemovedBody772_544

def RemovedBody772_546 : StackLang.HolProg 64 :=
.seq RemovedBody772_538 RemovedBody772_545

def RemovedBody772_547 : StackLang.HolProg 64 :=
.seq RemovedBody772_537 RemovedBody772_546

def RemovedBody772_548 : StackLang.HolProg 64 :=
.seq RemovedBody772_536 RemovedBody772_547

def RemovedBody772_549 : StackLang.HolProg 64 :=
.seq RemovedBody772_535 RemovedBody772_548

def RemovedBody772_550 : StackLang.HolProg 64 :=
.seq RemovedBody772_534 RemovedBody772_549

def RemovedBody772_551 : StackLang.HolProg 64 :=
.seq RemovedBody772_533 RemovedBody772_550

def RemovedBody772_552 : StackLang.HolProg 64 :=
.seq RemovedBody772_532 RemovedBody772_551

def RemovedBody772_553 : StackLang.HolProg 64 :=
.seq RemovedBody772_531 RemovedBody772_552

def RemovedBody772_554 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody772_555 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody772_556 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody772_557 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody772_558 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody772_559 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody772_560 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 2
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 80#64))

def RemovedBody772_561 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 4
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 64#64))

def RemovedBody772_562 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 7
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 56#64))

def RemovedBody772_563 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 3
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 48#64))

def RemovedBody772_564 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 8
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 40#64))

def RemovedBody772_565 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 32#64))

def RemovedBody772_566 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 6
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 24#64))

def RemovedBody772_567 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody772_568 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 64#64))

def RemovedBody772_569 : StackLang.HolProg 64 :=
.seq RemovedBody772_567 RemovedBody772_568

def RemovedBody772_570 : StackLang.HolProg 64 :=
.seq RemovedBody772_566 RemovedBody772_569

def RemovedBody772_571 : StackLang.HolProg 64 :=
.seq RemovedBody772_565 RemovedBody772_570

def RemovedBody772_572 : StackLang.HolProg 64 :=
.seq RemovedBody772_564 RemovedBody772_571

def RemovedBody772_573 : StackLang.HolProg 64 :=
.seq RemovedBody772_563 RemovedBody772_572

def RemovedBody772_574 : StackLang.HolProg 64 :=
.seq RemovedBody772_562 RemovedBody772_573

def RemovedBody772_575 : StackLang.HolProg 64 :=
.seq RemovedBody772_561 RemovedBody772_574

def RemovedBody772_576 : StackLang.HolProg 64 :=
.seq RemovedBody772_560 RemovedBody772_575

def RemovedBody772_577 : StackLang.HolProg 64 :=
.seq RemovedBody772_559 RemovedBody772_576

def RemovedBody772_578 : StackLang.HolProg 64 :=
.seq RemovedBody772_558 RemovedBody772_577

def RemovedBody772_579 : StackLang.HolProg 64 :=
.seq RemovedBody772_557 RemovedBody772_578

def RemovedBody772_580 : StackLang.HolProg 64 :=
.seq RemovedBody772_556 RemovedBody772_579

def RemovedBody772_581 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 2
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 80#64))

def RemovedBody772_582 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 4
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 64#64))

def RemovedBody772_583 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 7
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 56#64))

def RemovedBody772_584 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 3
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 48#64))

def RemovedBody772_585 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 8
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 40#64))

def RemovedBody772_586 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 32#64))

def RemovedBody772_587 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 6
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 24#64))

def RemovedBody772_588 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody772_589 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 64#64))

def RemovedBody772_590 : StackLang.HolProg 64 :=
.seq RemovedBody772_588 RemovedBody772_589

def RemovedBody772_591 : StackLang.HolProg 64 :=
.seq RemovedBody772_587 RemovedBody772_590

def RemovedBody772_592 : StackLang.HolProg 64 :=
.seq RemovedBody772_586 RemovedBody772_591

def RemovedBody772_593 : StackLang.HolProg 64 :=
.seq RemovedBody772_585 RemovedBody772_592

def RemovedBody772_594 : StackLang.HolProg 64 :=
.seq RemovedBody772_584 RemovedBody772_593

def RemovedBody772_595 : StackLang.HolProg 64 :=
.seq RemovedBody772_583 RemovedBody772_594

def RemovedBody772_596 : StackLang.HolProg 64 :=
.seq RemovedBody772_582 RemovedBody772_595

def RemovedBody772_597 : StackLang.HolProg 64 :=
.seq RemovedBody772_581 RemovedBody772_596

def RemovedBody772_598 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def RemovedBody772_599 : StackLang.HolProg 64 :=
.seq RemovedBody772_597 RemovedBody772_598

def RemovedBody772_600 : StackLang.HolProg 64 :=
.call (some (RemovedBody772_580, 0, 772, 14)) (Sum.inl 771) (some (RemovedBody772_599, 772, 15))

def RemovedBody772_601 : StackLang.HolProg 64 :=
.seq RemovedBody772_555 RemovedBody772_600

def RemovedBody772_602 : StackLang.HolProg 64 :=
.seq RemovedBody772_554 RemovedBody772_601

def RemovedBody772_603 : StackLang.HolProg 64 :=
.seq RemovedBody772_553 RemovedBody772_602

def RemovedBody772_604 : StackLang.HolProg 64 :=
.seq RemovedBody772_524 RemovedBody772_603

def RemovedBody772_605 : StackLang.HolProg 64 :=
.seq RemovedBody772_521 RemovedBody772_604

def RemovedBody772_606 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody772_607 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 5 1#64)

def RemovedBody772_608 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody772_609 : StackLang.HolProg 64 :=
.seq RemovedBody772_607 RemovedBody772_608

def RemovedBody772_610 : StackLang.HolProg 64 :=
.seq RemovedBody772_606 RemovedBody772_609

def RemovedBody772_611 : StackLang.HolProg 64 :=
.seq RemovedBody772_605 RemovedBody772_610

def RemovedBody772_612 : StackLang.HolProg 64 :=
.seq RemovedBody772_520 RemovedBody772_611

def RemovedBody772_613 : StackLang.HolProg 64 :=
.seq RemovedBody772_511 RemovedBody772_612

def RemovedBody772_614 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody772_615 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 4
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 64#64))

def RemovedBody772_616 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 7
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 56#64))

def RemovedBody772_617 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 8
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 40#64))

def RemovedBody772_618 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody772_619 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 64#64))

def RemovedBody772_620 : StackLang.HolProg 64 :=
.seq RemovedBody772_618 RemovedBody772_619

def RemovedBody772_621 : StackLang.HolProg 64 :=
.seq RemovedBody772_617 RemovedBody772_620

def RemovedBody772_622 : StackLang.HolProg 64 :=
.seq RemovedBody772_616 RemovedBody772_621

def RemovedBody772_623 : StackLang.HolProg 64 :=
.seq RemovedBody772_615 RemovedBody772_622

def RemovedBody772_624 : StackLang.HolProg 64 :=
.seq RemovedBody772_614 RemovedBody772_623

def RemovedBody772_625 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.equal) 1 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 4) RemovedBody772_613 RemovedBody772_624

def RemovedBody772_626 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody772_627 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 4
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 48#64))

def RemovedBody772_628 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 7
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 32#64))

def RemovedBody772_629 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 3
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 40#64))

def RemovedBody772_630 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 8
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 80#64))

def RemovedBody772_631 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 6
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 56#64))

def RemovedBody772_632 : StackLang.HolProg 64 :=
.seq RemovedBody772_630 RemovedBody772_631

def RemovedBody772_633 : StackLang.HolProg 64 :=
.seq RemovedBody772_629 RemovedBody772_632

def RemovedBody772_634 : StackLang.HolProg 64 :=
.seq RemovedBody772_628 RemovedBody772_633

def RemovedBody772_635 : StackLang.HolProg 64 :=
.seq RemovedBody772_627 RemovedBody772_634

def RemovedBody772_636 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.continue 0

def RemovedBody772_637 : StackLang.HolProg 64 :=
.seq RemovedBody772_635 RemovedBody772_636

def RemovedBody772_638 : StackLang.HolProg 64 :=
.seq RemovedBody772_626 RemovedBody772_637

def RemovedBody772_639 : StackLang.HolProg 64 :=
.seq RemovedBody772_625 RemovedBody772_638

def RemovedBody772_640 : StackLang.HolProg 64 :=
.seq RemovedBody772_510 RemovedBody772_639

def RemovedBody772_641 : StackLang.HolProg 64 :=
.seq RemovedBody772_509 RemovedBody772_640

def RemovedBody772_642 : StackLang.HolProg 64 :=
.seq RemovedBody772_508 RemovedBody772_641

def RemovedBody772_643 : StackLang.HolProg 64 :=
.seq RemovedBody772_507 RemovedBody772_642

def RemovedBody772_644 : StackLang.HolProg 64 :=
.seq RemovedBody772_506 RemovedBody772_643

def RemovedBody772_645 : StackLang.HolProg 64 :=
.seq RemovedBody772_505 RemovedBody772_644

def RemovedBody772_646 : StackLang.HolProg 64 :=
.seq RemovedBody772_504 RemovedBody772_645

def RemovedBody772_647 : StackLang.HolProg 64 :=
.seq RemovedBody772_503 RemovedBody772_646

def RemovedBody772_648 : StackLang.HolProg 64 :=
.seq RemovedBody772_502 RemovedBody772_647

def RemovedBody772_649 : StackLang.HolProg 64 :=
.seq RemovedBody772_501 RemovedBody772_648

def RemovedBody772_650 : StackLang.HolProg 64 :=
.seq RemovedBody772_500 RemovedBody772_649

def RemovedBody772_651 : StackLang.HolProg 64 :=
.seq RemovedBody772_499 RemovedBody772_650

def RemovedBody772_652 : StackLang.HolProg 64 :=
.seq RemovedBody772_498 RemovedBody772_651

def RemovedBody772_653 : StackLang.HolProg 64 :=
.seq RemovedBody772_497 RemovedBody772_652

def RemovedBody772_654 : StackLang.HolProg 64 :=
.seq RemovedBody772_496 RemovedBody772_653

def RemovedBody772_655 : StackLang.HolProg 64 :=
.seq RemovedBody772_355 RemovedBody772_654

def RemovedBody772_656 : StackLang.HolProg 64 :=
.seq RemovedBody772_354 RemovedBody772_655

def RemovedBody772_657 : StackLang.HolProg 64 :=
.seq RemovedBody772_353 RemovedBody772_656

def RemovedBody772_658 : StackLang.HolProg 64 :=
.seq RemovedBody772_352 RemovedBody772_657

def RemovedBody772_659 : StackLang.HolProg 64 :=
.seq RemovedBody772_351 RemovedBody772_658

def RemovedBody772_660 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody772_661 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.break 0

def RemovedBody772_662 : StackLang.HolProg 64 :=
.seq RemovedBody772_660 RemovedBody772_661

def RemovedBody772_663 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 1 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 0) RemovedBody772_659 RemovedBody772_662

def RemovedBody772_664 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody772_665 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 72#64))

def RemovedBody772_666 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 3
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 48#64))

def RemovedBody772_667 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 4
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 32#64))

def RemovedBody772_668 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 6
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 40#64))

def RemovedBody772_669 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 7
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 80#64))

def RemovedBody772_670 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 8
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 56#64))

def RemovedBody772_671 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 9
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 64#64))

def RemovedBody772_672 : StackLang.HolProg 64 :=
.seq RemovedBody772_670 RemovedBody772_671

def RemovedBody772_673 : StackLang.HolProg 64 :=
.seq RemovedBody772_669 RemovedBody772_672

def RemovedBody772_674 : StackLang.HolProg 64 :=
.seq RemovedBody772_668 RemovedBody772_673

def RemovedBody772_675 : StackLang.HolProg 64 :=
.seq RemovedBody772_667 RemovedBody772_674

def RemovedBody772_676 : StackLang.HolProg 64 :=
.seq RemovedBody772_666 RemovedBody772_675

def RemovedBody772_677 : StackLang.HolProg 64 :=
.seq RemovedBody772_665 RemovedBody772_676

def RemovedBody772_678 : StackLang.HolProg 64 :=
.seq RemovedBody772_664 RemovedBody772_677

def RemovedBody772_679 : StackLang.HolProg 64 :=
.seq RemovedBody772_663 RemovedBody772_678

def RemovedBody772_680 : StackLang.HolProg 64 :=
.seq RemovedBody772_350 RemovedBody772_679

def RemovedBody772_681 : StackLang.HolProg 64 :=
.seq RemovedBody772_349 RemovedBody772_680

def RemovedBody772_682 : StackLang.HolProg 64 :=
.loop RemovedBody772_681

def RemovedBody772_683 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody772_684 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 80#64))

def RemovedBody772_685 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 72#64))

def RemovedBody772_686 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 80#64))

def RemovedBody772_687 : StackLang.HolProg 64 :=
.seq RemovedBody772_685 RemovedBody772_686

def RemovedBody772_688 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 64#64))

def RemovedBody772_689 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 72#64))

def RemovedBody772_690 : StackLang.HolProg 64 :=
.seq RemovedBody772_688 RemovedBody772_689

def RemovedBody772_691 : StackLang.HolProg 64 :=
.seq RemovedBody772_687 RemovedBody772_690

def RemovedBody772_692 : StackLang.HolProg 64 :=
.seq RemovedBody772_684 RemovedBody772_691

def RemovedBody772_693 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody772_694 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 3518#64)

def RemovedBody772_695 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody772_696 : StackLang.HolProg 64 :=
.seq RemovedBody772_694 RemovedBody772_695

def RemovedBody772_697 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody772_698 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 2#64)

def RemovedBody772_699 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 1

def RemovedBody772_700 : StackLang.HolProg 64 :=
.seq RemovedBody772_698 RemovedBody772_699

def RemovedBody772_701 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody772_702 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) RemovedBody772_700 RemovedBody772_701

def RemovedBody772_703 : StackLang.HolProg 64 :=
.seq RemovedBody772_697 RemovedBody772_702

def RemovedBody772_704 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def RemovedBody772_705 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody772_706 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 772 17

def RemovedBody772_707 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody772_708 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody772_709 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody772_710 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody772_711 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def RemovedBody772_712 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def RemovedBody772_713 : StackLang.HolProg 64 :=
.seq RemovedBody772_711 RemovedBody772_712

def RemovedBody772_714 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def RemovedBody772_715 : StackLang.HolProg 64 :=
.seq RemovedBody772_713 RemovedBody772_714

def RemovedBody772_716 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody772_717 : StackLang.HolProg 64 :=
.seq RemovedBody772_715 RemovedBody772_716

def RemovedBody772_718 : StackLang.HolProg 64 :=
.seq RemovedBody772_710 RemovedBody772_717

def RemovedBody772_719 : StackLang.HolProg 64 :=
.seq RemovedBody772_709 RemovedBody772_718

def RemovedBody772_720 : StackLang.HolProg 64 :=
.seq RemovedBody772_708 RemovedBody772_719

def RemovedBody772_721 : StackLang.HolProg 64 :=
.seq RemovedBody772_707 RemovedBody772_720

def RemovedBody772_722 : StackLang.HolProg 64 :=
.seq RemovedBody772_706 RemovedBody772_721

def RemovedBody772_723 : StackLang.HolProg 64 :=
.seq RemovedBody772_705 RemovedBody772_722

def RemovedBody772_724 : StackLang.HolProg 64 :=
.seq RemovedBody772_704 RemovedBody772_723

def RemovedBody772_725 : StackLang.HolProg 64 :=
.seq RemovedBody772_703 RemovedBody772_724

def RemovedBody772_726 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody772_727 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody772_728 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody772_729 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody772_730 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody772_731 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody772_732 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 72#64))

def RemovedBody772_733 : StackLang.HolProg 64 :=
.seq RemovedBody772_731 RemovedBody772_732

def RemovedBody772_734 : StackLang.HolProg 64 :=
.seq RemovedBody772_730 RemovedBody772_733

def RemovedBody772_735 : StackLang.HolProg 64 :=
.seq RemovedBody772_729 RemovedBody772_734

def RemovedBody772_736 : StackLang.HolProg 64 :=
.seq RemovedBody772_728 RemovedBody772_735

def RemovedBody772_737 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 72#64))

def RemovedBody772_738 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def RemovedBody772_739 : StackLang.HolProg 64 :=
.seq RemovedBody772_737 RemovedBody772_738

def RemovedBody772_740 : StackLang.HolProg 64 :=
.call (some (RemovedBody772_736, 0, 772, 16)) (Sum.inl 768) (some (RemovedBody772_739, 772, 17))

def RemovedBody772_741 : StackLang.HolProg 64 :=
.seq RemovedBody772_727 RemovedBody772_740

def RemovedBody772_742 : StackLang.HolProg 64 :=
.seq RemovedBody772_726 RemovedBody772_741

def RemovedBody772_743 : StackLang.HolProg 64 :=
.seq RemovedBody772_725 RemovedBody772_742

def RemovedBody772_744 : StackLang.HolProg 64 :=
.seq RemovedBody772_696 RemovedBody772_743

def RemovedBody772_745 : StackLang.HolProg 64 :=
.seq RemovedBody772_693 RemovedBody772_744

def RemovedBody772_746 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody772_747 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 1 0
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 0)))

def RemovedBody772_748 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody772_749 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 3519#64)

def RemovedBody772_750 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody772_751 : StackLang.HolProg 64 :=
.seq RemovedBody772_749 RemovedBody772_750

def RemovedBody772_752 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody772_753 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 2#64)

def RemovedBody772_754 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 1

def RemovedBody772_755 : StackLang.HolProg 64 :=
.seq RemovedBody772_753 RemovedBody772_754

def RemovedBody772_756 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody772_757 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) RemovedBody772_755 RemovedBody772_756

def RemovedBody772_758 : StackLang.HolProg 64 :=
.seq RemovedBody772_752 RemovedBody772_757

def RemovedBody772_759 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def RemovedBody772_760 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody772_761 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 772 19

def RemovedBody772_762 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody772_763 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody772_764 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody772_765 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody772_766 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def RemovedBody772_767 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def RemovedBody772_768 : StackLang.HolProg 64 :=
.seq RemovedBody772_766 RemovedBody772_767

def RemovedBody772_769 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def RemovedBody772_770 : StackLang.HolProg 64 :=
.seq RemovedBody772_768 RemovedBody772_769

def RemovedBody772_771 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody772_772 : StackLang.HolProg 64 :=
.seq RemovedBody772_770 RemovedBody772_771

def RemovedBody772_773 : StackLang.HolProg 64 :=
.seq RemovedBody772_765 RemovedBody772_772

def RemovedBody772_774 : StackLang.HolProg 64 :=
.seq RemovedBody772_764 RemovedBody772_773

def RemovedBody772_775 : StackLang.HolProg 64 :=
.seq RemovedBody772_763 RemovedBody772_774

def RemovedBody772_776 : StackLang.HolProg 64 :=
.seq RemovedBody772_762 RemovedBody772_775

def RemovedBody772_777 : StackLang.HolProg 64 :=
.seq RemovedBody772_761 RemovedBody772_776

def RemovedBody772_778 : StackLang.HolProg 64 :=
.seq RemovedBody772_760 RemovedBody772_777

def RemovedBody772_779 : StackLang.HolProg 64 :=
.seq RemovedBody772_759 RemovedBody772_778

def RemovedBody772_780 : StackLang.HolProg 64 :=
.seq RemovedBody772_758 RemovedBody772_779

def RemovedBody772_781 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody772_782 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody772_783 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody772_784 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody772_785 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody772_786 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody772_787 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 80#64))

def RemovedBody772_788 : StackLang.HolProg 64 :=
.seq RemovedBody772_786 RemovedBody772_787

def RemovedBody772_789 : StackLang.HolProg 64 :=
.seq RemovedBody772_785 RemovedBody772_788

def RemovedBody772_790 : StackLang.HolProg 64 :=
.seq RemovedBody772_784 RemovedBody772_789

def RemovedBody772_791 : StackLang.HolProg 64 :=
.seq RemovedBody772_783 RemovedBody772_790

def RemovedBody772_792 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 80#64))

def RemovedBody772_793 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def RemovedBody772_794 : StackLang.HolProg 64 :=
.seq RemovedBody772_792 RemovedBody772_793

def RemovedBody772_795 : StackLang.HolProg 64 :=
.call (some (RemovedBody772_791, 0, 772, 18)) (Sum.inl 70) (some (RemovedBody772_794, 772, 19))

def RemovedBody772_796 : StackLang.HolProg 64 :=
.seq RemovedBody772_782 RemovedBody772_795

def RemovedBody772_797 : StackLang.HolProg 64 :=
.seq RemovedBody772_781 RemovedBody772_796

def RemovedBody772_798 : StackLang.HolProg 64 :=
.seq RemovedBody772_780 RemovedBody772_797

def RemovedBody772_799 : StackLang.HolProg 64 :=
.seq RemovedBody772_751 RemovedBody772_798

def RemovedBody772_800 : StackLang.HolProg 64 :=
.seq RemovedBody772_748 RemovedBody772_799

def RemovedBody772_801 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody772_802 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 0#64)

def RemovedBody772_803 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody772_804 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 88#64)))

def RemovedBody772_805 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 0

def RemovedBody772_806 : StackLang.HolProg 64 :=
.seq RemovedBody772_804 RemovedBody772_805

def RemovedBody772_807 : StackLang.HolProg 64 :=
.seq RemovedBody772_803 RemovedBody772_806

def RemovedBody772_808 : StackLang.HolProg 64 :=
.seq RemovedBody772_802 RemovedBody772_807

def RemovedBody772_809 : StackLang.HolProg 64 :=
.seq RemovedBody772_801 RemovedBody772_808

def RemovedBody772_810 : StackLang.HolProg 64 :=
.seq RemovedBody772_800 RemovedBody772_809

def RemovedBody772_811 : StackLang.HolProg 64 :=
.seq RemovedBody772_747 RemovedBody772_810

def RemovedBody772_812 : StackLang.HolProg 64 :=
.seq RemovedBody772_746 RemovedBody772_811

def RemovedBody772_813 : StackLang.HolProg 64 :=
.seq RemovedBody772_745 RemovedBody772_812

def RemovedBody772_814 : StackLang.HolProg 64 :=
.seq RemovedBody772_692 RemovedBody772_813

def RemovedBody772_815 : StackLang.HolProg 64 :=
.seq RemovedBody772_683 RemovedBody772_814

def RemovedBody772_816 : StackLang.HolProg 64 :=
.seq RemovedBody772_682 RemovedBody772_815

def RemovedBody772_817 : StackLang.HolProg 64 :=
.seq RemovedBody772_348 RemovedBody772_816

def RemovedBody772_818 : StackLang.HolProg 64 :=
.seq RemovedBody772_347 RemovedBody772_817

def RemovedBody772_819 : StackLang.HolProg 64 :=
.seq RemovedBody772_346 RemovedBody772_818

def RemovedBody772_820 : StackLang.HolProg 64 :=
.seq RemovedBody772_345 RemovedBody772_819

def RemovedBody772_821 : StackLang.HolProg 64 :=
.seq RemovedBody772_344 RemovedBody772_820

def RemovedBody772_822 : StackLang.HolProg 64 :=
.seq RemovedBody772_343 RemovedBody772_821

def RemovedBody772_823 : StackLang.HolProg 64 :=
.seq RemovedBody772_342 RemovedBody772_822

def RemovedBody772_824 : StackLang.HolProg 64 :=
.seq RemovedBody772_261 RemovedBody772_823

def RemovedBody772_825 : StackLang.HolProg 64 :=
.seq RemovedBody772_258 RemovedBody772_824

def RemovedBody772_826 : StackLang.HolProg 64 :=
.seq RemovedBody772_257 RemovedBody772_825

def RemovedBody772_827 : StackLang.HolProg 64 :=
.seq RemovedBody772_204 RemovedBody772_826

def RemovedBody772_828 : StackLang.HolProg 64 :=
.seq RemovedBody772_199 RemovedBody772_827

def RemovedBody772_829 : StackLang.HolProg 64 :=
.seq RemovedBody772_198 RemovedBody772_828

def RemovedBody772_830 : StackLang.HolProg 64 :=
.seq RemovedBody772_127 RemovedBody772_829

def RemovedBody772_831 : StackLang.HolProg 64 :=
.seq RemovedBody772_126 RemovedBody772_830

def RemovedBody772_832 : StackLang.HolProg 64 :=
.seq RemovedBody772_125 RemovedBody772_831

def RemovedBody772_833 : StackLang.HolProg 64 :=
.seq RemovedBody772_124 RemovedBody772_832

def RemovedBody772_834 : StackLang.HolProg 64 :=
.seq RemovedBody772_71 RemovedBody772_833

def RemovedBody772_835 : StackLang.HolProg 64 :=
.seq RemovedBody772_70 RemovedBody772_834

def RemovedBody772_836 : StackLang.HolProg 64 :=
.seq RemovedBody772_69 RemovedBody772_835

def RemovedBody772_837 : StackLang.HolProg 64 :=
.seq RemovedBody772_68 RemovedBody772_836

def RemovedBody772_838 : StackLang.HolProg 64 :=
.seq RemovedBody772_15 RemovedBody772_837

def RemovedBody772_839 : StackLang.HolProg 64 :=
.seq RemovedBody772_6 RemovedBody772_838

def Removed772 : Nat × StackLang.HolProg 64 := (772, RemovedBody772_839)
theorem Removed772_eq : StackRemove.progComp false riscvConfig.addrOffset (riscvConfig.regCount - (riscvConfig.avoidRegs.length + 3)) Alloc772 = Removed772 := by
  kernel_rfl
#print axioms Removed772_eq
end InitECandidate.Proofs.BackendStages
