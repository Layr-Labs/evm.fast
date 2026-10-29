import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.BackendStages.Alloc526
import Flapjack.Compiler.Backend.Backend
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
namespace InitECandidate.Proofs.BackendStages
def RemovedBody526_0 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 80#64)))

def RemovedBody526_1 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 2#64)

def RemovedBody526_2 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 1

def RemovedBody526_3 : StackLang.HolProg 64 :=
.seq RemovedBody526_1 RemovedBody526_2

def RemovedBody526_4 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody526_5 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) RemovedBody526_3 RemovedBody526_4

def RemovedBody526_6 : StackLang.HolProg 64 :=
.seq RemovedBody526_0 RemovedBody526_5

def RemovedBody526_7 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 72#64))

def RemovedBody526_8 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody526_9 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1721#64)

def RemovedBody526_10 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody526_11 : StackLang.HolProg 64 :=
.seq RemovedBody526_9 RemovedBody526_10

def RemovedBody526_12 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody526_13 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 2#64)

def RemovedBody526_14 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 1

def RemovedBody526_15 : StackLang.HolProg 64 :=
.seq RemovedBody526_13 RemovedBody526_14

def RemovedBody526_16 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody526_17 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) RemovedBody526_15 RemovedBody526_16

def RemovedBody526_18 : StackLang.HolProg 64 :=
.seq RemovedBody526_12 RemovedBody526_17

def RemovedBody526_19 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def RemovedBody526_20 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody526_21 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 526 3

def RemovedBody526_22 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody526_23 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody526_24 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody526_25 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody526_26 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def RemovedBody526_27 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def RemovedBody526_28 : StackLang.HolProg 64 :=
.seq RemovedBody526_26 RemovedBody526_27

def RemovedBody526_29 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def RemovedBody526_30 : StackLang.HolProg 64 :=
.seq RemovedBody526_28 RemovedBody526_29

def RemovedBody526_31 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody526_32 : StackLang.HolProg 64 :=
.seq RemovedBody526_30 RemovedBody526_31

def RemovedBody526_33 : StackLang.HolProg 64 :=
.seq RemovedBody526_25 RemovedBody526_32

def RemovedBody526_34 : StackLang.HolProg 64 :=
.seq RemovedBody526_24 RemovedBody526_33

def RemovedBody526_35 : StackLang.HolProg 64 :=
.seq RemovedBody526_23 RemovedBody526_34

def RemovedBody526_36 : StackLang.HolProg 64 :=
.seq RemovedBody526_22 RemovedBody526_35

def RemovedBody526_37 : StackLang.HolProg 64 :=
.seq RemovedBody526_21 RemovedBody526_36

def RemovedBody526_38 : StackLang.HolProg 64 :=
.seq RemovedBody526_20 RemovedBody526_37

def RemovedBody526_39 : StackLang.HolProg 64 :=
.seq RemovedBody526_19 RemovedBody526_38

def RemovedBody526_40 : StackLang.HolProg 64 :=
.seq RemovedBody526_18 RemovedBody526_39

def RemovedBody526_41 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody526_42 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody526_43 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody526_44 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody526_45 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody526_46 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody526_47 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 0 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def RemovedBody526_48 : StackLang.HolProg 64 :=
.seq RemovedBody526_46 RemovedBody526_47

def RemovedBody526_49 : StackLang.HolProg 64 :=
.seq RemovedBody526_45 RemovedBody526_48

def RemovedBody526_50 : StackLang.HolProg 64 :=
.seq RemovedBody526_44 RemovedBody526_49

def RemovedBody526_51 : StackLang.HolProg 64 :=
.seq RemovedBody526_43 RemovedBody526_50

def RemovedBody526_52 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody526_53 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def RemovedBody526_54 : StackLang.HolProg 64 :=
.seq RemovedBody526_52 RemovedBody526_53

def RemovedBody526_55 : StackLang.HolProg 64 :=
.call (some (RemovedBody526_51, 0, 526, 2)) (Sum.inl 475) (some (RemovedBody526_54, 526, 3))

def RemovedBody526_56 : StackLang.HolProg 64 :=
.seq RemovedBody526_42 RemovedBody526_55

def RemovedBody526_57 : StackLang.HolProg 64 :=
.seq RemovedBody526_41 RemovedBody526_56

def RemovedBody526_58 : StackLang.HolProg 64 :=
.seq RemovedBody526_40 RemovedBody526_57

def RemovedBody526_59 : StackLang.HolProg 64 :=
.seq RemovedBody526_11 RemovedBody526_58

def RemovedBody526_60 : StackLang.HolProg 64 :=
.seq RemovedBody526_8 RemovedBody526_59

def RemovedBody526_61 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody526_62 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 56#64))

def RemovedBody526_63 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 3
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 48#64))

def RemovedBody526_64 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 4
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 24#64))

def RemovedBody526_65 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 2
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody526_66 : StackLang.HolProg 64 :=
.seq RemovedBody526_64 RemovedBody526_65

def RemovedBody526_67 : StackLang.HolProg 64 :=
.seq RemovedBody526_63 RemovedBody526_66

def RemovedBody526_68 : StackLang.HolProg 64 :=
.seq RemovedBody526_62 RemovedBody526_67

def RemovedBody526_69 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody526_70 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1722#64)

def RemovedBody526_71 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody526_72 : StackLang.HolProg 64 :=
.seq RemovedBody526_70 RemovedBody526_71

def RemovedBody526_73 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody526_74 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 2#64)

def RemovedBody526_75 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 1

def RemovedBody526_76 : StackLang.HolProg 64 :=
.seq RemovedBody526_74 RemovedBody526_75

def RemovedBody526_77 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody526_78 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) RemovedBody526_76 RemovedBody526_77

def RemovedBody526_79 : StackLang.HolProg 64 :=
.seq RemovedBody526_73 RemovedBody526_78

def RemovedBody526_80 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def RemovedBody526_81 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody526_82 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 526 5

def RemovedBody526_83 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody526_84 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody526_85 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody526_86 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody526_87 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def RemovedBody526_88 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def RemovedBody526_89 : StackLang.HolProg 64 :=
.seq RemovedBody526_87 RemovedBody526_88

def RemovedBody526_90 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def RemovedBody526_91 : StackLang.HolProg 64 :=
.seq RemovedBody526_89 RemovedBody526_90

def RemovedBody526_92 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody526_93 : StackLang.HolProg 64 :=
.seq RemovedBody526_91 RemovedBody526_92

def RemovedBody526_94 : StackLang.HolProg 64 :=
.seq RemovedBody526_86 RemovedBody526_93

def RemovedBody526_95 : StackLang.HolProg 64 :=
.seq RemovedBody526_85 RemovedBody526_94

def RemovedBody526_96 : StackLang.HolProg 64 :=
.seq RemovedBody526_84 RemovedBody526_95

def RemovedBody526_97 : StackLang.HolProg 64 :=
.seq RemovedBody526_83 RemovedBody526_96

def RemovedBody526_98 : StackLang.HolProg 64 :=
.seq RemovedBody526_82 RemovedBody526_97

def RemovedBody526_99 : StackLang.HolProg 64 :=
.seq RemovedBody526_81 RemovedBody526_98

def RemovedBody526_100 : StackLang.HolProg 64 :=
.seq RemovedBody526_80 RemovedBody526_99

def RemovedBody526_101 : StackLang.HolProg 64 :=
.seq RemovedBody526_79 RemovedBody526_100

def RemovedBody526_102 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody526_103 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody526_104 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody526_105 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody526_106 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody526_107 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody526_108 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 0 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def RemovedBody526_109 : StackLang.HolProg 64 :=
.seq RemovedBody526_107 RemovedBody526_108

def RemovedBody526_110 : StackLang.HolProg 64 :=
.seq RemovedBody526_106 RemovedBody526_109

def RemovedBody526_111 : StackLang.HolProg 64 :=
.seq RemovedBody526_105 RemovedBody526_110

def RemovedBody526_112 : StackLang.HolProg 64 :=
.seq RemovedBody526_104 RemovedBody526_111

def RemovedBody526_113 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody526_114 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def RemovedBody526_115 : StackLang.HolProg 64 :=
.seq RemovedBody526_113 RemovedBody526_114

def RemovedBody526_116 : StackLang.HolProg 64 :=
.call (some (RemovedBody526_112, 0, 526, 4)) (Sum.inl 475) (some (RemovedBody526_115, 526, 5))

def RemovedBody526_117 : StackLang.HolProg 64 :=
.seq RemovedBody526_103 RemovedBody526_116

def RemovedBody526_118 : StackLang.HolProg 64 :=
.seq RemovedBody526_102 RemovedBody526_117

def RemovedBody526_119 : StackLang.HolProg 64 :=
.seq RemovedBody526_101 RemovedBody526_118

def RemovedBody526_120 : StackLang.HolProg 64 :=
.seq RemovedBody526_72 RemovedBody526_119

def RemovedBody526_121 : StackLang.HolProg 64 :=
.seq RemovedBody526_69 RemovedBody526_120

def RemovedBody526_122 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody526_123 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 10#64)

def RemovedBody526_124 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 4
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 64#64))

def RemovedBody526_125 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 40#64))

def RemovedBody526_126 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 3
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 32#64))

def RemovedBody526_127 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 2
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody526_128 : StackLang.HolProg 64 :=
.seq RemovedBody526_126 RemovedBody526_127

def RemovedBody526_129 : StackLang.HolProg 64 :=
.seq RemovedBody526_125 RemovedBody526_128

def RemovedBody526_130 : StackLang.HolProg 64 :=
.seq RemovedBody526_124 RemovedBody526_129

def RemovedBody526_131 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody526_132 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1723#64)

def RemovedBody526_133 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody526_134 : StackLang.HolProg 64 :=
.seq RemovedBody526_132 RemovedBody526_133

def RemovedBody526_135 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody526_136 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 2#64)

def RemovedBody526_137 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 1

def RemovedBody526_138 : StackLang.HolProg 64 :=
.seq RemovedBody526_136 RemovedBody526_137

def RemovedBody526_139 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody526_140 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) RemovedBody526_138 RemovedBody526_139

def RemovedBody526_141 : StackLang.HolProg 64 :=
.seq RemovedBody526_135 RemovedBody526_140

def RemovedBody526_142 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def RemovedBody526_143 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody526_144 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 526 7

def RemovedBody526_145 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody526_146 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody526_147 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody526_148 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody526_149 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def RemovedBody526_150 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def RemovedBody526_151 : StackLang.HolProg 64 :=
.seq RemovedBody526_149 RemovedBody526_150

def RemovedBody526_152 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def RemovedBody526_153 : StackLang.HolProg 64 :=
.seq RemovedBody526_151 RemovedBody526_152

def RemovedBody526_154 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody526_155 : StackLang.HolProg 64 :=
.seq RemovedBody526_153 RemovedBody526_154

def RemovedBody526_156 : StackLang.HolProg 64 :=
.seq RemovedBody526_148 RemovedBody526_155

def RemovedBody526_157 : StackLang.HolProg 64 :=
.seq RemovedBody526_147 RemovedBody526_156

def RemovedBody526_158 : StackLang.HolProg 64 :=
.seq RemovedBody526_146 RemovedBody526_157

def RemovedBody526_159 : StackLang.HolProg 64 :=
.seq RemovedBody526_145 RemovedBody526_158

def RemovedBody526_160 : StackLang.HolProg 64 :=
.seq RemovedBody526_144 RemovedBody526_159

def RemovedBody526_161 : StackLang.HolProg 64 :=
.seq RemovedBody526_143 RemovedBody526_160

def RemovedBody526_162 : StackLang.HolProg 64 :=
.seq RemovedBody526_142 RemovedBody526_161

def RemovedBody526_163 : StackLang.HolProg 64 :=
.seq RemovedBody526_141 RemovedBody526_162

def RemovedBody526_164 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody526_165 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody526_166 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody526_167 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody526_168 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody526_169 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody526_170 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 4
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 64#64))

def RemovedBody526_171 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 56#64))

def RemovedBody526_172 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 64#64))

def RemovedBody526_173 : StackLang.HolProg 64 :=
.seq RemovedBody526_171 RemovedBody526_172

def RemovedBody526_174 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 48#64))

def RemovedBody526_175 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 56#64))

def RemovedBody526_176 : StackLang.HolProg 64 :=
.seq RemovedBody526_174 RemovedBody526_175

def RemovedBody526_177 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 40#64))

def RemovedBody526_178 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 3
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 32#64))

def RemovedBody526_179 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 24#64))

def RemovedBody526_180 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 48#64))

def RemovedBody526_181 : StackLang.HolProg 64 :=
.seq RemovedBody526_179 RemovedBody526_180

def RemovedBody526_182 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 2
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody526_183 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody526_184 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 40#64))

def RemovedBody526_185 : StackLang.HolProg 64 :=
.seq RemovedBody526_183 RemovedBody526_184

def RemovedBody526_186 : StackLang.HolProg 64 :=
.seq RemovedBody526_182 RemovedBody526_185

def RemovedBody526_187 : StackLang.HolProg 64 :=
.seq RemovedBody526_181 RemovedBody526_186

def RemovedBody526_188 : StackLang.HolProg 64 :=
.seq RemovedBody526_178 RemovedBody526_187

def RemovedBody526_189 : StackLang.HolProg 64 :=
.seq RemovedBody526_177 RemovedBody526_188

def RemovedBody526_190 : StackLang.HolProg 64 :=
.seq RemovedBody526_176 RemovedBody526_189

def RemovedBody526_191 : StackLang.HolProg 64 :=
.seq RemovedBody526_173 RemovedBody526_190

def RemovedBody526_192 : StackLang.HolProg 64 :=
.seq RemovedBody526_170 RemovedBody526_191

def RemovedBody526_193 : StackLang.HolProg 64 :=
.seq RemovedBody526_169 RemovedBody526_192

def RemovedBody526_194 : StackLang.HolProg 64 :=
.seq RemovedBody526_168 RemovedBody526_193

def RemovedBody526_195 : StackLang.HolProg 64 :=
.seq RemovedBody526_167 RemovedBody526_194

def RemovedBody526_196 : StackLang.HolProg 64 :=
.seq RemovedBody526_166 RemovedBody526_195

def RemovedBody526_197 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 4
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 64#64))

def RemovedBody526_198 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 56#64))

def RemovedBody526_199 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 64#64))

def RemovedBody526_200 : StackLang.HolProg 64 :=
.seq RemovedBody526_198 RemovedBody526_199

def RemovedBody526_201 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 48#64))

def RemovedBody526_202 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 56#64))

def RemovedBody526_203 : StackLang.HolProg 64 :=
.seq RemovedBody526_201 RemovedBody526_202

def RemovedBody526_204 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 40#64))

def RemovedBody526_205 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 3
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 32#64))

def RemovedBody526_206 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 24#64))

def RemovedBody526_207 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 48#64))

def RemovedBody526_208 : StackLang.HolProg 64 :=
.seq RemovedBody526_206 RemovedBody526_207

def RemovedBody526_209 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 2
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody526_210 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody526_211 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 40#64))

def RemovedBody526_212 : StackLang.HolProg 64 :=
.seq RemovedBody526_210 RemovedBody526_211

def RemovedBody526_213 : StackLang.HolProg 64 :=
.seq RemovedBody526_209 RemovedBody526_212

def RemovedBody526_214 : StackLang.HolProg 64 :=
.seq RemovedBody526_208 RemovedBody526_213

def RemovedBody526_215 : StackLang.HolProg 64 :=
.seq RemovedBody526_205 RemovedBody526_214

def RemovedBody526_216 : StackLang.HolProg 64 :=
.seq RemovedBody526_204 RemovedBody526_215

def RemovedBody526_217 : StackLang.HolProg 64 :=
.seq RemovedBody526_203 RemovedBody526_216

def RemovedBody526_218 : StackLang.HolProg 64 :=
.seq RemovedBody526_200 RemovedBody526_217

def RemovedBody526_219 : StackLang.HolProg 64 :=
.seq RemovedBody526_197 RemovedBody526_218

def RemovedBody526_220 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def RemovedBody526_221 : StackLang.HolProg 64 :=
.seq RemovedBody526_219 RemovedBody526_220

def RemovedBody526_222 : StackLang.HolProg 64 :=
.call (some (RemovedBody526_196, 0, 526, 6)) (Sum.inl 470) (some (RemovedBody526_221, 526, 7))

def RemovedBody526_223 : StackLang.HolProg 64 :=
.seq RemovedBody526_165 RemovedBody526_222

def RemovedBody526_224 : StackLang.HolProg 64 :=
.seq RemovedBody526_164 RemovedBody526_223

def RemovedBody526_225 : StackLang.HolProg 64 :=
.seq RemovedBody526_163 RemovedBody526_224

def RemovedBody526_226 : StackLang.HolProg 64 :=
.seq RemovedBody526_134 RemovedBody526_225

def RemovedBody526_227 : StackLang.HolProg 64 :=
.seq RemovedBody526_131 RemovedBody526_226

def RemovedBody526_228 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody526_229 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 1 0
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 0)))

def RemovedBody526_230 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody526_231 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1724#64)

def RemovedBody526_232 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody526_233 : StackLang.HolProg 64 :=
.seq RemovedBody526_231 RemovedBody526_232

def RemovedBody526_234 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody526_235 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 2#64)

def RemovedBody526_236 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 1

def RemovedBody526_237 : StackLang.HolProg 64 :=
.seq RemovedBody526_235 RemovedBody526_236

def RemovedBody526_238 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody526_239 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) RemovedBody526_237 RemovedBody526_238

def RemovedBody526_240 : StackLang.HolProg 64 :=
.seq RemovedBody526_234 RemovedBody526_239

def RemovedBody526_241 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def RemovedBody526_242 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody526_243 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 526 9

def RemovedBody526_244 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody526_245 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody526_246 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody526_247 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody526_248 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def RemovedBody526_249 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def RemovedBody526_250 : StackLang.HolProg 64 :=
.seq RemovedBody526_248 RemovedBody526_249

def RemovedBody526_251 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def RemovedBody526_252 : StackLang.HolProg 64 :=
.seq RemovedBody526_250 RemovedBody526_251

def RemovedBody526_253 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody526_254 : StackLang.HolProg 64 :=
.seq RemovedBody526_252 RemovedBody526_253

def RemovedBody526_255 : StackLang.HolProg 64 :=
.seq RemovedBody526_247 RemovedBody526_254

def RemovedBody526_256 : StackLang.HolProg 64 :=
.seq RemovedBody526_246 RemovedBody526_255

def RemovedBody526_257 : StackLang.HolProg 64 :=
.seq RemovedBody526_245 RemovedBody526_256

def RemovedBody526_258 : StackLang.HolProg 64 :=
.seq RemovedBody526_244 RemovedBody526_257

def RemovedBody526_259 : StackLang.HolProg 64 :=
.seq RemovedBody526_243 RemovedBody526_258

def RemovedBody526_260 : StackLang.HolProg 64 :=
.seq RemovedBody526_242 RemovedBody526_259

def RemovedBody526_261 : StackLang.HolProg 64 :=
.seq RemovedBody526_241 RemovedBody526_260

def RemovedBody526_262 : StackLang.HolProg 64 :=
.seq RemovedBody526_240 RemovedBody526_261

def RemovedBody526_263 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody526_264 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody526_265 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody526_266 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody526_267 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody526_268 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody526_269 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 5 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def RemovedBody526_270 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 64#64))

def RemovedBody526_271 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 3
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 56#64))

def RemovedBody526_272 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 4
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 48#64))

def RemovedBody526_273 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 2
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 40#64))

def RemovedBody526_274 : StackLang.HolProg 64 :=
.seq RemovedBody526_272 RemovedBody526_273

def RemovedBody526_275 : StackLang.HolProg 64 :=
.seq RemovedBody526_271 RemovedBody526_274

def RemovedBody526_276 : StackLang.HolProg 64 :=
.seq RemovedBody526_270 RemovedBody526_275

def RemovedBody526_277 : StackLang.HolProg 64 :=
.seq RemovedBody526_269 RemovedBody526_276

def RemovedBody526_278 : StackLang.HolProg 64 :=
.seq RemovedBody526_268 RemovedBody526_277

def RemovedBody526_279 : StackLang.HolProg 64 :=
.seq RemovedBody526_267 RemovedBody526_278

def RemovedBody526_280 : StackLang.HolProg 64 :=
.seq RemovedBody526_266 RemovedBody526_279

def RemovedBody526_281 : StackLang.HolProg 64 :=
.seq RemovedBody526_265 RemovedBody526_280

def RemovedBody526_282 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 64#64))

def RemovedBody526_283 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 3
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 56#64))

def RemovedBody526_284 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 4
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 48#64))

def RemovedBody526_285 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 2
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 40#64))

def RemovedBody526_286 : StackLang.HolProg 64 :=
.seq RemovedBody526_284 RemovedBody526_285

def RemovedBody526_287 : StackLang.HolProg 64 :=
.seq RemovedBody526_283 RemovedBody526_286

def RemovedBody526_288 : StackLang.HolProg 64 :=
.seq RemovedBody526_282 RemovedBody526_287

def RemovedBody526_289 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def RemovedBody526_290 : StackLang.HolProg 64 :=
.seq RemovedBody526_288 RemovedBody526_289

def RemovedBody526_291 : StackLang.HolProg 64 :=
.call (some (RemovedBody526_281, 0, 526, 8)) (Sum.inl 102) (some (RemovedBody526_290, 526, 9))

def RemovedBody526_292 : StackLang.HolProg 64 :=
.seq RemovedBody526_264 RemovedBody526_291

def RemovedBody526_293 : StackLang.HolProg 64 :=
.seq RemovedBody526_263 RemovedBody526_292

def RemovedBody526_294 : StackLang.HolProg 64 :=
.seq RemovedBody526_262 RemovedBody526_293

def RemovedBody526_295 : StackLang.HolProg 64 :=
.seq RemovedBody526_233 RemovedBody526_294

def RemovedBody526_296 : StackLang.HolProg 64 :=
.seq RemovedBody526_230 RemovedBody526_295

def RemovedBody526_297 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody526_298 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody526_299 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 0#64)

def RemovedBody526_300 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody526_301 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 1#64)

def RemovedBody526_302 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 72#64))

def RemovedBody526_303 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 64#64))

def RemovedBody526_304 : StackLang.HolProg 64 :=
.seq RemovedBody526_302 RemovedBody526_303

def RemovedBody526_305 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody526_306 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1725#64)

def RemovedBody526_307 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody526_308 : StackLang.HolProg 64 :=
.seq RemovedBody526_306 RemovedBody526_307

def RemovedBody526_309 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody526_310 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 2#64)

def RemovedBody526_311 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 1

def RemovedBody526_312 : StackLang.HolProg 64 :=
.seq RemovedBody526_310 RemovedBody526_311

def RemovedBody526_313 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody526_314 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) RemovedBody526_312 RemovedBody526_313

def RemovedBody526_315 : StackLang.HolProg 64 :=
.seq RemovedBody526_309 RemovedBody526_314

def RemovedBody526_316 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def RemovedBody526_317 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody526_318 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 526 11

def RemovedBody526_319 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody526_320 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody526_321 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody526_322 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody526_323 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def RemovedBody526_324 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def RemovedBody526_325 : StackLang.HolProg 64 :=
.seq RemovedBody526_323 RemovedBody526_324

def RemovedBody526_326 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def RemovedBody526_327 : StackLang.HolProg 64 :=
.seq RemovedBody526_325 RemovedBody526_326

def RemovedBody526_328 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody526_329 : StackLang.HolProg 64 :=
.seq RemovedBody526_327 RemovedBody526_328

def RemovedBody526_330 : StackLang.HolProg 64 :=
.seq RemovedBody526_322 RemovedBody526_329

def RemovedBody526_331 : StackLang.HolProg 64 :=
.seq RemovedBody526_321 RemovedBody526_330

def RemovedBody526_332 : StackLang.HolProg 64 :=
.seq RemovedBody526_320 RemovedBody526_331

def RemovedBody526_333 : StackLang.HolProg 64 :=
.seq RemovedBody526_319 RemovedBody526_332

def RemovedBody526_334 : StackLang.HolProg 64 :=
.seq RemovedBody526_318 RemovedBody526_333

def RemovedBody526_335 : StackLang.HolProg 64 :=
.seq RemovedBody526_317 RemovedBody526_334

def RemovedBody526_336 : StackLang.HolProg 64 :=
.seq RemovedBody526_316 RemovedBody526_335

def RemovedBody526_337 : StackLang.HolProg 64 :=
.seq RemovedBody526_315 RemovedBody526_336

def RemovedBody526_338 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody526_339 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody526_340 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody526_341 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody526_342 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody526_343 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody526_344 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 5
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 64#64))

def RemovedBody526_345 : StackLang.HolProg 64 :=
.seq RemovedBody526_343 RemovedBody526_344

def RemovedBody526_346 : StackLang.HolProg 64 :=
.seq RemovedBody526_342 RemovedBody526_345

def RemovedBody526_347 : StackLang.HolProg 64 :=
.seq RemovedBody526_341 RemovedBody526_346

def RemovedBody526_348 : StackLang.HolProg 64 :=
.seq RemovedBody526_340 RemovedBody526_347

def RemovedBody526_349 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 5
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 64#64))

def RemovedBody526_350 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def RemovedBody526_351 : StackLang.HolProg 64 :=
.seq RemovedBody526_349 RemovedBody526_350

def RemovedBody526_352 : StackLang.HolProg 64 :=
.call (some (RemovedBody526_348, 0, 526, 10)) (Sum.inl 490) (some (RemovedBody526_351, 526, 11))

def RemovedBody526_353 : StackLang.HolProg 64 :=
.seq RemovedBody526_339 RemovedBody526_352

def RemovedBody526_354 : StackLang.HolProg 64 :=
.seq RemovedBody526_338 RemovedBody526_353

def RemovedBody526_355 : StackLang.HolProg 64 :=
.seq RemovedBody526_337 RemovedBody526_354

def RemovedBody526_356 : StackLang.HolProg 64 :=
.seq RemovedBody526_308 RemovedBody526_355

def RemovedBody526_357 : StackLang.HolProg 64 :=
.seq RemovedBody526_305 RemovedBody526_356

def RemovedBody526_358 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody526_359 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 0#64)

def RemovedBody526_360 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody526_361 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 80#64)))

def RemovedBody526_362 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 5

def RemovedBody526_363 : StackLang.HolProg 64 :=
.seq RemovedBody526_361 RemovedBody526_362

def RemovedBody526_364 : StackLang.HolProg 64 :=
.seq RemovedBody526_360 RemovedBody526_363

def RemovedBody526_365 : StackLang.HolProg 64 :=
.seq RemovedBody526_359 RemovedBody526_364

def RemovedBody526_366 : StackLang.HolProg 64 :=
.seq RemovedBody526_358 RemovedBody526_365

def RemovedBody526_367 : StackLang.HolProg 64 :=
.seq RemovedBody526_357 RemovedBody526_366

def RemovedBody526_368 : StackLang.HolProg 64 :=
.seq RemovedBody526_304 RemovedBody526_367

def RemovedBody526_369 : StackLang.HolProg 64 :=
.seq RemovedBody526_301 RemovedBody526_368

def RemovedBody526_370 : StackLang.HolProg 64 :=
.seq RemovedBody526_300 RemovedBody526_369

def RemovedBody526_371 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody526_372 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.notEqual) 5 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1) RemovedBody526_370 RemovedBody526_371

def RemovedBody526_373 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody526_374 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody526_375 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 1 0
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 0)))

def RemovedBody526_376 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 64#64))

def RemovedBody526_377 : StackLang.HolProg 64 :=
.seq RemovedBody526_375 RemovedBody526_376

def RemovedBody526_378 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody526_379 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1726#64)

def RemovedBody526_380 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody526_381 : StackLang.HolProg 64 :=
.seq RemovedBody526_379 RemovedBody526_380

def RemovedBody526_382 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody526_383 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 2#64)

def RemovedBody526_384 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 1

def RemovedBody526_385 : StackLang.HolProg 64 :=
.seq RemovedBody526_383 RemovedBody526_384

def RemovedBody526_386 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody526_387 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) RemovedBody526_385 RemovedBody526_386

def RemovedBody526_388 : StackLang.HolProg 64 :=
.seq RemovedBody526_382 RemovedBody526_387

def RemovedBody526_389 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def RemovedBody526_390 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody526_391 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 526 13

def RemovedBody526_392 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody526_393 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody526_394 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody526_395 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody526_396 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def RemovedBody526_397 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def RemovedBody526_398 : StackLang.HolProg 64 :=
.seq RemovedBody526_396 RemovedBody526_397

def RemovedBody526_399 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def RemovedBody526_400 : StackLang.HolProg 64 :=
.seq RemovedBody526_398 RemovedBody526_399

def RemovedBody526_401 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody526_402 : StackLang.HolProg 64 :=
.seq RemovedBody526_400 RemovedBody526_401

def RemovedBody526_403 : StackLang.HolProg 64 :=
.seq RemovedBody526_395 RemovedBody526_402

def RemovedBody526_404 : StackLang.HolProg 64 :=
.seq RemovedBody526_394 RemovedBody526_403

def RemovedBody526_405 : StackLang.HolProg 64 :=
.seq RemovedBody526_393 RemovedBody526_404

def RemovedBody526_406 : StackLang.HolProg 64 :=
.seq RemovedBody526_392 RemovedBody526_405

def RemovedBody526_407 : StackLang.HolProg 64 :=
.seq RemovedBody526_391 RemovedBody526_406

def RemovedBody526_408 : StackLang.HolProg 64 :=
.seq RemovedBody526_390 RemovedBody526_407

def RemovedBody526_409 : StackLang.HolProg 64 :=
.seq RemovedBody526_389 RemovedBody526_408

def RemovedBody526_410 : StackLang.HolProg 64 :=
.seq RemovedBody526_388 RemovedBody526_409

def RemovedBody526_411 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody526_412 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody526_413 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody526_414 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody526_415 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody526_416 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody526_417 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 2 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def RemovedBody526_418 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 3
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 72#64))

def RemovedBody526_419 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 64#64))

def RemovedBody526_420 : StackLang.HolProg 64 :=
.seq RemovedBody526_418 RemovedBody526_419

def RemovedBody526_421 : StackLang.HolProg 64 :=
.seq RemovedBody526_417 RemovedBody526_420

def RemovedBody526_422 : StackLang.HolProg 64 :=
.seq RemovedBody526_416 RemovedBody526_421

def RemovedBody526_423 : StackLang.HolProg 64 :=
.seq RemovedBody526_415 RemovedBody526_422

def RemovedBody526_424 : StackLang.HolProg 64 :=
.seq RemovedBody526_414 RemovedBody526_423

def RemovedBody526_425 : StackLang.HolProg 64 :=
.seq RemovedBody526_413 RemovedBody526_424

def RemovedBody526_426 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 3
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 72#64))

def RemovedBody526_427 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 64#64))

def RemovedBody526_428 : StackLang.HolProg 64 :=
.seq RemovedBody526_426 RemovedBody526_427

def RemovedBody526_429 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def RemovedBody526_430 : StackLang.HolProg 64 :=
.seq RemovedBody526_428 RemovedBody526_429

def RemovedBody526_431 : StackLang.HolProg 64 :=
.call (some (RemovedBody526_425, 0, 526, 12)) (Sum.inl 486) (some (RemovedBody526_430, 526, 13))

def RemovedBody526_432 : StackLang.HolProg 64 :=
.seq RemovedBody526_412 RemovedBody526_431

def RemovedBody526_433 : StackLang.HolProg 64 :=
.seq RemovedBody526_411 RemovedBody526_432

def RemovedBody526_434 : StackLang.HolProg 64 :=
.seq RemovedBody526_410 RemovedBody526_433

def RemovedBody526_435 : StackLang.HolProg 64 :=
.seq RemovedBody526_381 RemovedBody526_434

def RemovedBody526_436 : StackLang.HolProg 64 :=
.seq RemovedBody526_378 RemovedBody526_435

def RemovedBody526_437 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody526_438 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody526_439 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 0#64)

def RemovedBody526_440 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody526_441 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 6#64)

def RemovedBody526_442 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody526_443 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551480#64))

def RemovedBody526_444 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 8#64)

def RemovedBody526_445 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody526_446 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def RemovedBody526_447 : StackLang.HolProg 64 :=
.seq RemovedBody526_445 RemovedBody526_446

def RemovedBody526_448 : StackLang.HolProg 64 :=
.seq RemovedBody526_444 RemovedBody526_447

def RemovedBody526_449 : StackLang.HolProg 64 :=
.seq RemovedBody526_443 RemovedBody526_448

def RemovedBody526_450 : StackLang.HolProg 64 :=
.seq RemovedBody526_442 RemovedBody526_449

def RemovedBody526_451 : StackLang.HolProg 64 :=
.seq RemovedBody526_441 RemovedBody526_450

def RemovedBody526_452 : StackLang.HolProg 64 :=
.seq RemovedBody526_440 RemovedBody526_451

def RemovedBody526_453 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody526_454 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.equal) 2 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1) RemovedBody526_452 RemovedBody526_453

def RemovedBody526_455 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody526_456 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody526_457 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551592#64))

def RemovedBody526_458 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsl 1 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 1#64)))

def RemovedBody526_459 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 1 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 26)))

def RemovedBody526_460 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 1 18446744073709551360#64))

def RemovedBody526_461 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody526_462 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 1 0#64))

def RemovedBody526_463 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 0#64)

def RemovedBody526_464 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody526_465 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 80#64)))

def RemovedBody526_466 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 3

def RemovedBody526_467 : StackLang.HolProg 64 :=
.seq RemovedBody526_465 RemovedBody526_466

def RemovedBody526_468 : StackLang.HolProg 64 :=
.seq RemovedBody526_464 RemovedBody526_467

def RemovedBody526_469 : StackLang.HolProg 64 :=
.seq RemovedBody526_463 RemovedBody526_468

def RemovedBody526_470 : StackLang.HolProg 64 :=
.seq RemovedBody526_462 RemovedBody526_469

def RemovedBody526_471 : StackLang.HolProg 64 :=
.seq RemovedBody526_461 RemovedBody526_470

def RemovedBody526_472 : StackLang.HolProg 64 :=
.seq RemovedBody526_460 RemovedBody526_471

def RemovedBody526_473 : StackLang.HolProg 64 :=
.seq RemovedBody526_459 RemovedBody526_472

def RemovedBody526_474 : StackLang.HolProg 64 :=
.seq RemovedBody526_458 RemovedBody526_473

def RemovedBody526_475 : StackLang.HolProg 64 :=
.seq RemovedBody526_457 RemovedBody526_474

def RemovedBody526_476 : StackLang.HolProg 64 :=
.seq RemovedBody526_456 RemovedBody526_475

def RemovedBody526_477 : StackLang.HolProg 64 :=
.seq RemovedBody526_455 RemovedBody526_476

def RemovedBody526_478 : StackLang.HolProg 64 :=
.seq RemovedBody526_454 RemovedBody526_477

def RemovedBody526_479 : StackLang.HolProg 64 :=
.seq RemovedBody526_439 RemovedBody526_478

def RemovedBody526_480 : StackLang.HolProg 64 :=
.seq RemovedBody526_438 RemovedBody526_479

def RemovedBody526_481 : StackLang.HolProg 64 :=
.seq RemovedBody526_437 RemovedBody526_480

def RemovedBody526_482 : StackLang.HolProg 64 :=
.seq RemovedBody526_436 RemovedBody526_481

def RemovedBody526_483 : StackLang.HolProg 64 :=
.seq RemovedBody526_377 RemovedBody526_482

def RemovedBody526_484 : StackLang.HolProg 64 :=
.seq RemovedBody526_374 RemovedBody526_483

def RemovedBody526_485 : StackLang.HolProg 64 :=
.seq RemovedBody526_373 RemovedBody526_484

def RemovedBody526_486 : StackLang.HolProg 64 :=
.seq RemovedBody526_372 RemovedBody526_485

def RemovedBody526_487 : StackLang.HolProg 64 :=
.seq RemovedBody526_299 RemovedBody526_486

def RemovedBody526_488 : StackLang.HolProg 64 :=
.seq RemovedBody526_298 RemovedBody526_487

def RemovedBody526_489 : StackLang.HolProg 64 :=
.seq RemovedBody526_297 RemovedBody526_488

def RemovedBody526_490 : StackLang.HolProg 64 :=
.seq RemovedBody526_296 RemovedBody526_489

def RemovedBody526_491 : StackLang.HolProg 64 :=
.seq RemovedBody526_229 RemovedBody526_490

def RemovedBody526_492 : StackLang.HolProg 64 :=
.seq RemovedBody526_228 RemovedBody526_491

def RemovedBody526_493 : StackLang.HolProg 64 :=
.seq RemovedBody526_227 RemovedBody526_492

def RemovedBody526_494 : StackLang.HolProg 64 :=
.seq RemovedBody526_130 RemovedBody526_493

def RemovedBody526_495 : StackLang.HolProg 64 :=
.seq RemovedBody526_123 RemovedBody526_494

def RemovedBody526_496 : StackLang.HolProg 64 :=
.seq RemovedBody526_122 RemovedBody526_495

def RemovedBody526_497 : StackLang.HolProg 64 :=
.seq RemovedBody526_121 RemovedBody526_496

def RemovedBody526_498 : StackLang.HolProg 64 :=
.seq RemovedBody526_68 RemovedBody526_497

def RemovedBody526_499 : StackLang.HolProg 64 :=
.seq RemovedBody526_61 RemovedBody526_498

def RemovedBody526_500 : StackLang.HolProg 64 :=
.seq RemovedBody526_60 RemovedBody526_499

def RemovedBody526_501 : StackLang.HolProg 64 :=
.seq RemovedBody526_7 RemovedBody526_500

def RemovedBody526_502 : StackLang.HolProg 64 :=
.seq RemovedBody526_6 RemovedBody526_501

def Removed526 : Nat × StackLang.HolProg 64 := (526, RemovedBody526_502)
theorem Removed526_eq : StackRemove.progComp false riscvConfig.addrOffset (riscvConfig.regCount - (riscvConfig.avoidRegs.length + 3)) Alloc526 = Removed526 := by
  kernel_rfl
#print axioms Removed526_eq
end InitECandidate.Proofs.BackendStages
