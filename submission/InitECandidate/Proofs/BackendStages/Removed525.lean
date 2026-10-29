import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.BackendStages.Alloc525
import Flapjack.Compiler.Backend.Backend
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
namespace InitECandidate.Proofs.BackendStages
def RemovedBody525_0 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 48#64)))

def RemovedBody525_1 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 2#64)

def RemovedBody525_2 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 1

def RemovedBody525_3 : StackLang.HolProg 64 :=
.seq RemovedBody525_1 RemovedBody525_2

def RemovedBody525_4 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody525_5 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) RemovedBody525_3 RemovedBody525_4

def RemovedBody525_6 : StackLang.HolProg 64 :=
.seq RemovedBody525_0 RemovedBody525_5

def RemovedBody525_7 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 40#64))

def RemovedBody525_8 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody525_9 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1718#64)

def RemovedBody525_10 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody525_11 : StackLang.HolProg 64 :=
.seq RemovedBody525_9 RemovedBody525_10

def RemovedBody525_12 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody525_13 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 2#64)

def RemovedBody525_14 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 1

def RemovedBody525_15 : StackLang.HolProg 64 :=
.seq RemovedBody525_13 RemovedBody525_14

def RemovedBody525_16 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody525_17 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) RemovedBody525_15 RemovedBody525_16

def RemovedBody525_18 : StackLang.HolProg 64 :=
.seq RemovedBody525_12 RemovedBody525_17

def RemovedBody525_19 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def RemovedBody525_20 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody525_21 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 525 3

def RemovedBody525_22 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody525_23 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody525_24 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody525_25 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody525_26 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def RemovedBody525_27 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def RemovedBody525_28 : StackLang.HolProg 64 :=
.seq RemovedBody525_26 RemovedBody525_27

def RemovedBody525_29 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def RemovedBody525_30 : StackLang.HolProg 64 :=
.seq RemovedBody525_28 RemovedBody525_29

def RemovedBody525_31 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody525_32 : StackLang.HolProg 64 :=
.seq RemovedBody525_30 RemovedBody525_31

def RemovedBody525_33 : StackLang.HolProg 64 :=
.seq RemovedBody525_25 RemovedBody525_32

def RemovedBody525_34 : StackLang.HolProg 64 :=
.seq RemovedBody525_24 RemovedBody525_33

def RemovedBody525_35 : StackLang.HolProg 64 :=
.seq RemovedBody525_23 RemovedBody525_34

def RemovedBody525_36 : StackLang.HolProg 64 :=
.seq RemovedBody525_22 RemovedBody525_35

def RemovedBody525_37 : StackLang.HolProg 64 :=
.seq RemovedBody525_21 RemovedBody525_36

def RemovedBody525_38 : StackLang.HolProg 64 :=
.seq RemovedBody525_20 RemovedBody525_37

def RemovedBody525_39 : StackLang.HolProg 64 :=
.seq RemovedBody525_19 RemovedBody525_38

def RemovedBody525_40 : StackLang.HolProg 64 :=
.seq RemovedBody525_18 RemovedBody525_39

def RemovedBody525_41 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody525_42 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody525_43 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody525_44 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody525_45 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody525_46 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody525_47 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 0 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def RemovedBody525_48 : StackLang.HolProg 64 :=
.seq RemovedBody525_46 RemovedBody525_47

def RemovedBody525_49 : StackLang.HolProg 64 :=
.seq RemovedBody525_45 RemovedBody525_48

def RemovedBody525_50 : StackLang.HolProg 64 :=
.seq RemovedBody525_44 RemovedBody525_49

def RemovedBody525_51 : StackLang.HolProg 64 :=
.seq RemovedBody525_43 RemovedBody525_50

def RemovedBody525_52 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody525_53 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def RemovedBody525_54 : StackLang.HolProg 64 :=
.seq RemovedBody525_52 RemovedBody525_53

def RemovedBody525_55 : StackLang.HolProg 64 :=
.call (some (RemovedBody525_51, 0, 525, 2)) (Sum.inl 475) (some (RemovedBody525_54, 525, 3))

def RemovedBody525_56 : StackLang.HolProg 64 :=
.seq RemovedBody525_42 RemovedBody525_55

def RemovedBody525_57 : StackLang.HolProg 64 :=
.seq RemovedBody525_41 RemovedBody525_56

def RemovedBody525_58 : StackLang.HolProg 64 :=
.seq RemovedBody525_40 RemovedBody525_57

def RemovedBody525_59 : StackLang.HolProg 64 :=
.seq RemovedBody525_11 RemovedBody525_58

def RemovedBody525_60 : StackLang.HolProg 64 :=
.seq RemovedBody525_8 RemovedBody525_59

def RemovedBody525_61 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody525_62 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 8#64)

def RemovedBody525_63 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 2
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 32#64))

def RemovedBody525_64 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 3
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 24#64))

def RemovedBody525_65 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody525_66 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 4
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody525_67 : StackLang.HolProg 64 :=
.seq RemovedBody525_65 RemovedBody525_66

def RemovedBody525_68 : StackLang.HolProg 64 :=
.seq RemovedBody525_64 RemovedBody525_67

def RemovedBody525_69 : StackLang.HolProg 64 :=
.seq RemovedBody525_63 RemovedBody525_68

def RemovedBody525_70 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody525_71 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1719#64)

def RemovedBody525_72 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody525_73 : StackLang.HolProg 64 :=
.seq RemovedBody525_71 RemovedBody525_72

def RemovedBody525_74 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody525_75 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 2#64)

def RemovedBody525_76 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 1

def RemovedBody525_77 : StackLang.HolProg 64 :=
.seq RemovedBody525_75 RemovedBody525_76

def RemovedBody525_78 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody525_79 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) RemovedBody525_77 RemovedBody525_78

def RemovedBody525_80 : StackLang.HolProg 64 :=
.seq RemovedBody525_74 RemovedBody525_79

def RemovedBody525_81 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def RemovedBody525_82 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody525_83 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 525 5

def RemovedBody525_84 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody525_85 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody525_86 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody525_87 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody525_88 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def RemovedBody525_89 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def RemovedBody525_90 : StackLang.HolProg 64 :=
.seq RemovedBody525_88 RemovedBody525_89

def RemovedBody525_91 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def RemovedBody525_92 : StackLang.HolProg 64 :=
.seq RemovedBody525_90 RemovedBody525_91

def RemovedBody525_93 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody525_94 : StackLang.HolProg 64 :=
.seq RemovedBody525_92 RemovedBody525_93

def RemovedBody525_95 : StackLang.HolProg 64 :=
.seq RemovedBody525_87 RemovedBody525_94

def RemovedBody525_96 : StackLang.HolProg 64 :=
.seq RemovedBody525_86 RemovedBody525_95

def RemovedBody525_97 : StackLang.HolProg 64 :=
.seq RemovedBody525_85 RemovedBody525_96

def RemovedBody525_98 : StackLang.HolProg 64 :=
.seq RemovedBody525_84 RemovedBody525_97

def RemovedBody525_99 : StackLang.HolProg 64 :=
.seq RemovedBody525_83 RemovedBody525_98

def RemovedBody525_100 : StackLang.HolProg 64 :=
.seq RemovedBody525_82 RemovedBody525_99

def RemovedBody525_101 : StackLang.HolProg 64 :=
.seq RemovedBody525_81 RemovedBody525_100

def RemovedBody525_102 : StackLang.HolProg 64 :=
.seq RemovedBody525_80 RemovedBody525_101

def RemovedBody525_103 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody525_104 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody525_105 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody525_106 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody525_107 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody525_108 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody525_109 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 2
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 32#64))

def RemovedBody525_110 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 3
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 24#64))

def RemovedBody525_111 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody525_112 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 4
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody525_113 : StackLang.HolProg 64 :=
.seq RemovedBody525_111 RemovedBody525_112

def RemovedBody525_114 : StackLang.HolProg 64 :=
.seq RemovedBody525_110 RemovedBody525_113

def RemovedBody525_115 : StackLang.HolProg 64 :=
.seq RemovedBody525_109 RemovedBody525_114

def RemovedBody525_116 : StackLang.HolProg 64 :=
.seq RemovedBody525_108 RemovedBody525_115

def RemovedBody525_117 : StackLang.HolProg 64 :=
.seq RemovedBody525_107 RemovedBody525_116

def RemovedBody525_118 : StackLang.HolProg 64 :=
.seq RemovedBody525_106 RemovedBody525_117

def RemovedBody525_119 : StackLang.HolProg 64 :=
.seq RemovedBody525_105 RemovedBody525_118

def RemovedBody525_120 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 2
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 32#64))

def RemovedBody525_121 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 3
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 24#64))

def RemovedBody525_122 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody525_123 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 4
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody525_124 : StackLang.HolProg 64 :=
.seq RemovedBody525_122 RemovedBody525_123

def RemovedBody525_125 : StackLang.HolProg 64 :=
.seq RemovedBody525_121 RemovedBody525_124

def RemovedBody525_126 : StackLang.HolProg 64 :=
.seq RemovedBody525_120 RemovedBody525_125

def RemovedBody525_127 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def RemovedBody525_128 : StackLang.HolProg 64 :=
.seq RemovedBody525_126 RemovedBody525_127

def RemovedBody525_129 : StackLang.HolProg 64 :=
.call (some (RemovedBody525_119, 0, 525, 4)) (Sum.inl 470) (some (RemovedBody525_128, 525, 5))

def RemovedBody525_130 : StackLang.HolProg 64 :=
.seq RemovedBody525_104 RemovedBody525_129

def RemovedBody525_131 : StackLang.HolProg 64 :=
.seq RemovedBody525_103 RemovedBody525_130

def RemovedBody525_132 : StackLang.HolProg 64 :=
.seq RemovedBody525_102 RemovedBody525_131

def RemovedBody525_133 : StackLang.HolProg 64 :=
.seq RemovedBody525_73 RemovedBody525_132

def RemovedBody525_134 : StackLang.HolProg 64 :=
.seq RemovedBody525_70 RemovedBody525_133

def RemovedBody525_135 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody525_136 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 1 0
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 0)))

def RemovedBody525_137 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 32#64))

def RemovedBody525_138 : StackLang.HolProg 64 :=
.seq RemovedBody525_136 RemovedBody525_137

def RemovedBody525_139 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody525_140 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1720#64)

def RemovedBody525_141 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody525_142 : StackLang.HolProg 64 :=
.seq RemovedBody525_140 RemovedBody525_141

def RemovedBody525_143 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody525_144 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 2#64)

def RemovedBody525_145 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 1

def RemovedBody525_146 : StackLang.HolProg 64 :=
.seq RemovedBody525_144 RemovedBody525_145

def RemovedBody525_147 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody525_148 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) RemovedBody525_146 RemovedBody525_147

def RemovedBody525_149 : StackLang.HolProg 64 :=
.seq RemovedBody525_143 RemovedBody525_148

def RemovedBody525_150 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def RemovedBody525_151 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody525_152 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 525 7

def RemovedBody525_153 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody525_154 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody525_155 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody525_156 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody525_157 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def RemovedBody525_158 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def RemovedBody525_159 : StackLang.HolProg 64 :=
.seq RemovedBody525_157 RemovedBody525_158

def RemovedBody525_160 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def RemovedBody525_161 : StackLang.HolProg 64 :=
.seq RemovedBody525_159 RemovedBody525_160

def RemovedBody525_162 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody525_163 : StackLang.HolProg 64 :=
.seq RemovedBody525_161 RemovedBody525_162

def RemovedBody525_164 : StackLang.HolProg 64 :=
.seq RemovedBody525_156 RemovedBody525_163

def RemovedBody525_165 : StackLang.HolProg 64 :=
.seq RemovedBody525_155 RemovedBody525_164

def RemovedBody525_166 : StackLang.HolProg 64 :=
.seq RemovedBody525_154 RemovedBody525_165

def RemovedBody525_167 : StackLang.HolProg 64 :=
.seq RemovedBody525_153 RemovedBody525_166

def RemovedBody525_168 : StackLang.HolProg 64 :=
.seq RemovedBody525_152 RemovedBody525_167

def RemovedBody525_169 : StackLang.HolProg 64 :=
.seq RemovedBody525_151 RemovedBody525_168

def RemovedBody525_170 : StackLang.HolProg 64 :=
.seq RemovedBody525_150 RemovedBody525_169

def RemovedBody525_171 : StackLang.HolProg 64 :=
.seq RemovedBody525_149 RemovedBody525_170

def RemovedBody525_172 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody525_173 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody525_174 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody525_175 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody525_176 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody525_177 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody525_178 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 2 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def RemovedBody525_179 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 3
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 40#64))

def RemovedBody525_180 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 32#64))

def RemovedBody525_181 : StackLang.HolProg 64 :=
.seq RemovedBody525_179 RemovedBody525_180

def RemovedBody525_182 : StackLang.HolProg 64 :=
.seq RemovedBody525_178 RemovedBody525_181

def RemovedBody525_183 : StackLang.HolProg 64 :=
.seq RemovedBody525_177 RemovedBody525_182

def RemovedBody525_184 : StackLang.HolProg 64 :=
.seq RemovedBody525_176 RemovedBody525_183

def RemovedBody525_185 : StackLang.HolProg 64 :=
.seq RemovedBody525_175 RemovedBody525_184

def RemovedBody525_186 : StackLang.HolProg 64 :=
.seq RemovedBody525_174 RemovedBody525_185

def RemovedBody525_187 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 3
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 40#64))

def RemovedBody525_188 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 32#64))

def RemovedBody525_189 : StackLang.HolProg 64 :=
.seq RemovedBody525_187 RemovedBody525_188

def RemovedBody525_190 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def RemovedBody525_191 : StackLang.HolProg 64 :=
.seq RemovedBody525_189 RemovedBody525_190

def RemovedBody525_192 : StackLang.HolProg 64 :=
.call (some (RemovedBody525_186, 0, 525, 6)) (Sum.inl 486) (some (RemovedBody525_191, 525, 7))

def RemovedBody525_193 : StackLang.HolProg 64 :=
.seq RemovedBody525_173 RemovedBody525_192

def RemovedBody525_194 : StackLang.HolProg 64 :=
.seq RemovedBody525_172 RemovedBody525_193

def RemovedBody525_195 : StackLang.HolProg 64 :=
.seq RemovedBody525_171 RemovedBody525_194

def RemovedBody525_196 : StackLang.HolProg 64 :=
.seq RemovedBody525_142 RemovedBody525_195

def RemovedBody525_197 : StackLang.HolProg 64 :=
.seq RemovedBody525_139 RemovedBody525_196

def RemovedBody525_198 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody525_199 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody525_200 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 0#64)

def RemovedBody525_201 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody525_202 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 6#64)

def RemovedBody525_203 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody525_204 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551480#64))

def RemovedBody525_205 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 8#64)

def RemovedBody525_206 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody525_207 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def RemovedBody525_208 : StackLang.HolProg 64 :=
.seq RemovedBody525_206 RemovedBody525_207

def RemovedBody525_209 : StackLang.HolProg 64 :=
.seq RemovedBody525_205 RemovedBody525_208

def RemovedBody525_210 : StackLang.HolProg 64 :=
.seq RemovedBody525_204 RemovedBody525_209

def RemovedBody525_211 : StackLang.HolProg 64 :=
.seq RemovedBody525_203 RemovedBody525_210

def RemovedBody525_212 : StackLang.HolProg 64 :=
.seq RemovedBody525_202 RemovedBody525_211

def RemovedBody525_213 : StackLang.HolProg 64 :=
.seq RemovedBody525_201 RemovedBody525_212

def RemovedBody525_214 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody525_215 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.equal) 2 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1) RemovedBody525_213 RemovedBody525_214

def RemovedBody525_216 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody525_217 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody525_218 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551592#64))

def RemovedBody525_219 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsl 1 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 1#64)))

def RemovedBody525_220 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 1 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 26)))

def RemovedBody525_221 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 1 18446744073709551360#64))

def RemovedBody525_222 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody525_223 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 1 0#64))

def RemovedBody525_224 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 0#64)

def RemovedBody525_225 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody525_226 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 48#64)))

def RemovedBody525_227 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 3

def RemovedBody525_228 : StackLang.HolProg 64 :=
.seq RemovedBody525_226 RemovedBody525_227

def RemovedBody525_229 : StackLang.HolProg 64 :=
.seq RemovedBody525_225 RemovedBody525_228

def RemovedBody525_230 : StackLang.HolProg 64 :=
.seq RemovedBody525_224 RemovedBody525_229

def RemovedBody525_231 : StackLang.HolProg 64 :=
.seq RemovedBody525_223 RemovedBody525_230

def RemovedBody525_232 : StackLang.HolProg 64 :=
.seq RemovedBody525_222 RemovedBody525_231

def RemovedBody525_233 : StackLang.HolProg 64 :=
.seq RemovedBody525_221 RemovedBody525_232

def RemovedBody525_234 : StackLang.HolProg 64 :=
.seq RemovedBody525_220 RemovedBody525_233

def RemovedBody525_235 : StackLang.HolProg 64 :=
.seq RemovedBody525_219 RemovedBody525_234

def RemovedBody525_236 : StackLang.HolProg 64 :=
.seq RemovedBody525_218 RemovedBody525_235

def RemovedBody525_237 : StackLang.HolProg 64 :=
.seq RemovedBody525_217 RemovedBody525_236

def RemovedBody525_238 : StackLang.HolProg 64 :=
.seq RemovedBody525_216 RemovedBody525_237

def RemovedBody525_239 : StackLang.HolProg 64 :=
.seq RemovedBody525_215 RemovedBody525_238

def RemovedBody525_240 : StackLang.HolProg 64 :=
.seq RemovedBody525_200 RemovedBody525_239

def RemovedBody525_241 : StackLang.HolProg 64 :=
.seq RemovedBody525_199 RemovedBody525_240

def RemovedBody525_242 : StackLang.HolProg 64 :=
.seq RemovedBody525_198 RemovedBody525_241

def RemovedBody525_243 : StackLang.HolProg 64 :=
.seq RemovedBody525_197 RemovedBody525_242

def RemovedBody525_244 : StackLang.HolProg 64 :=
.seq RemovedBody525_138 RemovedBody525_243

def RemovedBody525_245 : StackLang.HolProg 64 :=
.seq RemovedBody525_135 RemovedBody525_244

def RemovedBody525_246 : StackLang.HolProg 64 :=
.seq RemovedBody525_134 RemovedBody525_245

def RemovedBody525_247 : StackLang.HolProg 64 :=
.seq RemovedBody525_69 RemovedBody525_246

def RemovedBody525_248 : StackLang.HolProg 64 :=
.seq RemovedBody525_62 RemovedBody525_247

def RemovedBody525_249 : StackLang.HolProg 64 :=
.seq RemovedBody525_61 RemovedBody525_248

def RemovedBody525_250 : StackLang.HolProg 64 :=
.seq RemovedBody525_60 RemovedBody525_249

def RemovedBody525_251 : StackLang.HolProg 64 :=
.seq RemovedBody525_7 RemovedBody525_250

def RemovedBody525_252 : StackLang.HolProg 64 :=
.seq RemovedBody525_6 RemovedBody525_251

def Removed525 : Nat × StackLang.HolProg 64 := (525, RemovedBody525_252)
theorem Removed525_eq : StackRemove.progComp false riscvConfig.addrOffset (riscvConfig.regCount - (riscvConfig.avoidRegs.length + 3)) Alloc525 = Removed525 := by
  kernel_rfl
#print axioms Removed525_eq
end InitECandidate.Proofs.BackendStages
