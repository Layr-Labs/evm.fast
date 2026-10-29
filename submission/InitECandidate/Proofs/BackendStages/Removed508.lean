import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.BackendStages.Alloc508
import Flapjack.Compiler.Backend.Backend
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
namespace InitECandidate.Proofs.BackendStages
def RemovedBody508_0 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 80#64)))

def RemovedBody508_1 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 2#64)

def RemovedBody508_2 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 1

def RemovedBody508_3 : StackLang.HolProg 64 :=
.seq RemovedBody508_1 RemovedBody508_2

def RemovedBody508_4 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody508_5 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) RemovedBody508_3 RemovedBody508_4

def RemovedBody508_6 : StackLang.HolProg 64 :=
.seq RemovedBody508_0 RemovedBody508_5

def RemovedBody508_7 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 72#64))

def RemovedBody508_8 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody508_9 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1614#64)

def RemovedBody508_10 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody508_11 : StackLang.HolProg 64 :=
.seq RemovedBody508_9 RemovedBody508_10

def RemovedBody508_12 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody508_13 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 2#64)

def RemovedBody508_14 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 1

def RemovedBody508_15 : StackLang.HolProg 64 :=
.seq RemovedBody508_13 RemovedBody508_14

def RemovedBody508_16 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody508_17 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) RemovedBody508_15 RemovedBody508_16

def RemovedBody508_18 : StackLang.HolProg 64 :=
.seq RemovedBody508_12 RemovedBody508_17

def RemovedBody508_19 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def RemovedBody508_20 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody508_21 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 508 3

def RemovedBody508_22 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody508_23 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody508_24 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody508_25 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody508_26 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def RemovedBody508_27 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def RemovedBody508_28 : StackLang.HolProg 64 :=
.seq RemovedBody508_26 RemovedBody508_27

def RemovedBody508_29 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def RemovedBody508_30 : StackLang.HolProg 64 :=
.seq RemovedBody508_28 RemovedBody508_29

def RemovedBody508_31 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody508_32 : StackLang.HolProg 64 :=
.seq RemovedBody508_30 RemovedBody508_31

def RemovedBody508_33 : StackLang.HolProg 64 :=
.seq RemovedBody508_25 RemovedBody508_32

def RemovedBody508_34 : StackLang.HolProg 64 :=
.seq RemovedBody508_24 RemovedBody508_33

def RemovedBody508_35 : StackLang.HolProg 64 :=
.seq RemovedBody508_23 RemovedBody508_34

def RemovedBody508_36 : StackLang.HolProg 64 :=
.seq RemovedBody508_22 RemovedBody508_35

def RemovedBody508_37 : StackLang.HolProg 64 :=
.seq RemovedBody508_21 RemovedBody508_36

def RemovedBody508_38 : StackLang.HolProg 64 :=
.seq RemovedBody508_20 RemovedBody508_37

def RemovedBody508_39 : StackLang.HolProg 64 :=
.seq RemovedBody508_19 RemovedBody508_38

def RemovedBody508_40 : StackLang.HolProg 64 :=
.seq RemovedBody508_18 RemovedBody508_39

def RemovedBody508_41 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody508_42 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody508_43 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody508_44 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody508_45 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody508_46 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody508_47 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 0 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def RemovedBody508_48 : StackLang.HolProg 64 :=
.seq RemovedBody508_46 RemovedBody508_47

def RemovedBody508_49 : StackLang.HolProg 64 :=
.seq RemovedBody508_45 RemovedBody508_48

def RemovedBody508_50 : StackLang.HolProg 64 :=
.seq RemovedBody508_44 RemovedBody508_49

def RemovedBody508_51 : StackLang.HolProg 64 :=
.seq RemovedBody508_43 RemovedBody508_50

def RemovedBody508_52 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody508_53 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def RemovedBody508_54 : StackLang.HolProg 64 :=
.seq RemovedBody508_52 RemovedBody508_53

def RemovedBody508_55 : StackLang.HolProg 64 :=
.call (some (RemovedBody508_51, 0, 508, 2)) (Sum.inl 475) (some (RemovedBody508_54, 508, 3))

def RemovedBody508_56 : StackLang.HolProg 64 :=
.seq RemovedBody508_42 RemovedBody508_55

def RemovedBody508_57 : StackLang.HolProg 64 :=
.seq RemovedBody508_41 RemovedBody508_56

def RemovedBody508_58 : StackLang.HolProg 64 :=
.seq RemovedBody508_40 RemovedBody508_57

def RemovedBody508_59 : StackLang.HolProg 64 :=
.seq RemovedBody508_11 RemovedBody508_58

def RemovedBody508_60 : StackLang.HolProg 64 :=
.seq RemovedBody508_8 RemovedBody508_59

def RemovedBody508_61 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody508_62 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 4
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 48#64))

def RemovedBody508_63 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 2
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 32#64))

def RemovedBody508_64 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 24#64))

def RemovedBody508_65 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 3
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody508_66 : StackLang.HolProg 64 :=
.seq RemovedBody508_64 RemovedBody508_65

def RemovedBody508_67 : StackLang.HolProg 64 :=
.seq RemovedBody508_63 RemovedBody508_66

def RemovedBody508_68 : StackLang.HolProg 64 :=
.seq RemovedBody508_62 RemovedBody508_67

def RemovedBody508_69 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody508_70 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1615#64)

def RemovedBody508_71 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody508_72 : StackLang.HolProg 64 :=
.seq RemovedBody508_70 RemovedBody508_71

def RemovedBody508_73 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody508_74 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 2#64)

def RemovedBody508_75 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 1

def RemovedBody508_76 : StackLang.HolProg 64 :=
.seq RemovedBody508_74 RemovedBody508_75

def RemovedBody508_77 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody508_78 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) RemovedBody508_76 RemovedBody508_77

def RemovedBody508_79 : StackLang.HolProg 64 :=
.seq RemovedBody508_73 RemovedBody508_78

def RemovedBody508_80 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def RemovedBody508_81 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody508_82 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 508 5

def RemovedBody508_83 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody508_84 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody508_85 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody508_86 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody508_87 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def RemovedBody508_88 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def RemovedBody508_89 : StackLang.HolProg 64 :=
.seq RemovedBody508_87 RemovedBody508_88

def RemovedBody508_90 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def RemovedBody508_91 : StackLang.HolProg 64 :=
.seq RemovedBody508_89 RemovedBody508_90

def RemovedBody508_92 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody508_93 : StackLang.HolProg 64 :=
.seq RemovedBody508_91 RemovedBody508_92

def RemovedBody508_94 : StackLang.HolProg 64 :=
.seq RemovedBody508_86 RemovedBody508_93

def RemovedBody508_95 : StackLang.HolProg 64 :=
.seq RemovedBody508_85 RemovedBody508_94

def RemovedBody508_96 : StackLang.HolProg 64 :=
.seq RemovedBody508_84 RemovedBody508_95

def RemovedBody508_97 : StackLang.HolProg 64 :=
.seq RemovedBody508_83 RemovedBody508_96

def RemovedBody508_98 : StackLang.HolProg 64 :=
.seq RemovedBody508_82 RemovedBody508_97

def RemovedBody508_99 : StackLang.HolProg 64 :=
.seq RemovedBody508_81 RemovedBody508_98

def RemovedBody508_100 : StackLang.HolProg 64 :=
.seq RemovedBody508_80 RemovedBody508_99

def RemovedBody508_101 : StackLang.HolProg 64 :=
.seq RemovedBody508_79 RemovedBody508_100

def RemovedBody508_102 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody508_103 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody508_104 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody508_105 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody508_106 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody508_107 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody508_108 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 0 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def RemovedBody508_109 : StackLang.HolProg 64 :=
.seq RemovedBody508_107 RemovedBody508_108

def RemovedBody508_110 : StackLang.HolProg 64 :=
.seq RemovedBody508_106 RemovedBody508_109

def RemovedBody508_111 : StackLang.HolProg 64 :=
.seq RemovedBody508_105 RemovedBody508_110

def RemovedBody508_112 : StackLang.HolProg 64 :=
.seq RemovedBody508_104 RemovedBody508_111

def RemovedBody508_113 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody508_114 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def RemovedBody508_115 : StackLang.HolProg 64 :=
.seq RemovedBody508_113 RemovedBody508_114

def RemovedBody508_116 : StackLang.HolProg 64 :=
.call (some (RemovedBody508_112, 0, 508, 4)) (Sum.inl 475) (some (RemovedBody508_115, 508, 5))

def RemovedBody508_117 : StackLang.HolProg 64 :=
.seq RemovedBody508_103 RemovedBody508_116

def RemovedBody508_118 : StackLang.HolProg 64 :=
.seq RemovedBody508_102 RemovedBody508_117

def RemovedBody508_119 : StackLang.HolProg 64 :=
.seq RemovedBody508_101 RemovedBody508_118

def RemovedBody508_120 : StackLang.HolProg 64 :=
.seq RemovedBody508_72 RemovedBody508_119

def RemovedBody508_121 : StackLang.HolProg 64 :=
.seq RemovedBody508_69 RemovedBody508_120

def RemovedBody508_122 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody508_123 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 3#64)

def RemovedBody508_124 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 2
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 64#64))

def RemovedBody508_125 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 56#64))

def RemovedBody508_126 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 3
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 40#64))

def RemovedBody508_127 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 4
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody508_128 : StackLang.HolProg 64 :=
.seq RemovedBody508_126 RemovedBody508_127

def RemovedBody508_129 : StackLang.HolProg 64 :=
.seq RemovedBody508_125 RemovedBody508_128

def RemovedBody508_130 : StackLang.HolProg 64 :=
.seq RemovedBody508_124 RemovedBody508_129

def RemovedBody508_131 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody508_132 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1616#64)

def RemovedBody508_133 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody508_134 : StackLang.HolProg 64 :=
.seq RemovedBody508_132 RemovedBody508_133

def RemovedBody508_135 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody508_136 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 2#64)

def RemovedBody508_137 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 1

def RemovedBody508_138 : StackLang.HolProg 64 :=
.seq RemovedBody508_136 RemovedBody508_137

def RemovedBody508_139 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody508_140 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) RemovedBody508_138 RemovedBody508_139

def RemovedBody508_141 : StackLang.HolProg 64 :=
.seq RemovedBody508_135 RemovedBody508_140

def RemovedBody508_142 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def RemovedBody508_143 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody508_144 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 508 7

def RemovedBody508_145 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody508_146 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody508_147 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody508_148 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody508_149 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def RemovedBody508_150 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def RemovedBody508_151 : StackLang.HolProg 64 :=
.seq RemovedBody508_149 RemovedBody508_150

def RemovedBody508_152 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def RemovedBody508_153 : StackLang.HolProg 64 :=
.seq RemovedBody508_151 RemovedBody508_152

def RemovedBody508_154 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody508_155 : StackLang.HolProg 64 :=
.seq RemovedBody508_153 RemovedBody508_154

def RemovedBody508_156 : StackLang.HolProg 64 :=
.seq RemovedBody508_148 RemovedBody508_155

def RemovedBody508_157 : StackLang.HolProg 64 :=
.seq RemovedBody508_147 RemovedBody508_156

def RemovedBody508_158 : StackLang.HolProg 64 :=
.seq RemovedBody508_146 RemovedBody508_157

def RemovedBody508_159 : StackLang.HolProg 64 :=
.seq RemovedBody508_145 RemovedBody508_158

def RemovedBody508_160 : StackLang.HolProg 64 :=
.seq RemovedBody508_144 RemovedBody508_159

def RemovedBody508_161 : StackLang.HolProg 64 :=
.seq RemovedBody508_143 RemovedBody508_160

def RemovedBody508_162 : StackLang.HolProg 64 :=
.seq RemovedBody508_142 RemovedBody508_161

def RemovedBody508_163 : StackLang.HolProg 64 :=
.seq RemovedBody508_141 RemovedBody508_162

def RemovedBody508_164 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody508_165 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody508_166 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody508_167 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody508_168 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody508_169 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody508_170 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 6
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 64#64))

def RemovedBody508_171 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 5
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 56#64))

def RemovedBody508_172 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 4
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 48#64))

def RemovedBody508_173 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 7
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 40#64))

def RemovedBody508_174 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 2
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 32#64))

def RemovedBody508_175 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 24#64))

def RemovedBody508_176 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 3
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody508_177 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 8
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody508_178 : StackLang.HolProg 64 :=
.seq RemovedBody508_176 RemovedBody508_177

def RemovedBody508_179 : StackLang.HolProg 64 :=
.seq RemovedBody508_175 RemovedBody508_178

def RemovedBody508_180 : StackLang.HolProg 64 :=
.seq RemovedBody508_174 RemovedBody508_179

def RemovedBody508_181 : StackLang.HolProg 64 :=
.seq RemovedBody508_173 RemovedBody508_180

def RemovedBody508_182 : StackLang.HolProg 64 :=
.seq RemovedBody508_172 RemovedBody508_181

def RemovedBody508_183 : StackLang.HolProg 64 :=
.seq RemovedBody508_171 RemovedBody508_182

def RemovedBody508_184 : StackLang.HolProg 64 :=
.seq RemovedBody508_170 RemovedBody508_183

def RemovedBody508_185 : StackLang.HolProg 64 :=
.seq RemovedBody508_169 RemovedBody508_184

def RemovedBody508_186 : StackLang.HolProg 64 :=
.seq RemovedBody508_168 RemovedBody508_185

def RemovedBody508_187 : StackLang.HolProg 64 :=
.seq RemovedBody508_167 RemovedBody508_186

def RemovedBody508_188 : StackLang.HolProg 64 :=
.seq RemovedBody508_166 RemovedBody508_187

def RemovedBody508_189 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 6
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 64#64))

def RemovedBody508_190 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 5
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 56#64))

def RemovedBody508_191 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 4
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 48#64))

def RemovedBody508_192 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 7
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 40#64))

def RemovedBody508_193 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 2
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 32#64))

def RemovedBody508_194 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 24#64))

def RemovedBody508_195 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 3
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody508_196 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 8
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody508_197 : StackLang.HolProg 64 :=
.seq RemovedBody508_195 RemovedBody508_196

def RemovedBody508_198 : StackLang.HolProg 64 :=
.seq RemovedBody508_194 RemovedBody508_197

def RemovedBody508_199 : StackLang.HolProg 64 :=
.seq RemovedBody508_193 RemovedBody508_198

def RemovedBody508_200 : StackLang.HolProg 64 :=
.seq RemovedBody508_192 RemovedBody508_199

def RemovedBody508_201 : StackLang.HolProg 64 :=
.seq RemovedBody508_191 RemovedBody508_200

def RemovedBody508_202 : StackLang.HolProg 64 :=
.seq RemovedBody508_190 RemovedBody508_201

def RemovedBody508_203 : StackLang.HolProg 64 :=
.seq RemovedBody508_189 RemovedBody508_202

def RemovedBody508_204 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def RemovedBody508_205 : StackLang.HolProg 64 :=
.seq RemovedBody508_203 RemovedBody508_204

def RemovedBody508_206 : StackLang.HolProg 64 :=
.call (some (RemovedBody508_188, 0, 508, 6)) (Sum.inl 470) (some (RemovedBody508_205, 508, 7))

def RemovedBody508_207 : StackLang.HolProg 64 :=
.seq RemovedBody508_165 RemovedBody508_206

def RemovedBody508_208 : StackLang.HolProg 64 :=
.seq RemovedBody508_164 RemovedBody508_207

def RemovedBody508_209 : StackLang.HolProg 64 :=
.seq RemovedBody508_163 RemovedBody508_208

def RemovedBody508_210 : StackLang.HolProg 64 :=
.seq RemovedBody508_134 RemovedBody508_209

def RemovedBody508_211 : StackLang.HolProg 64 :=
.seq RemovedBody508_131 RemovedBody508_210

def RemovedBody508_212 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody508_213 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 1 0
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 0)))

def RemovedBody508_214 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody508_215 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1617#64)

def RemovedBody508_216 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody508_217 : StackLang.HolProg 64 :=
.seq RemovedBody508_215 RemovedBody508_216

def RemovedBody508_218 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody508_219 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 2#64)

def RemovedBody508_220 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 1

def RemovedBody508_221 : StackLang.HolProg 64 :=
.seq RemovedBody508_219 RemovedBody508_220

def RemovedBody508_222 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody508_223 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) RemovedBody508_221 RemovedBody508_222

def RemovedBody508_224 : StackLang.HolProg 64 :=
.seq RemovedBody508_218 RemovedBody508_223

def RemovedBody508_225 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def RemovedBody508_226 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody508_227 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 508 9

def RemovedBody508_228 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody508_229 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody508_230 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody508_231 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody508_232 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def RemovedBody508_233 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def RemovedBody508_234 : StackLang.HolProg 64 :=
.seq RemovedBody508_232 RemovedBody508_233

def RemovedBody508_235 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def RemovedBody508_236 : StackLang.HolProg 64 :=
.seq RemovedBody508_234 RemovedBody508_235

def RemovedBody508_237 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody508_238 : StackLang.HolProg 64 :=
.seq RemovedBody508_236 RemovedBody508_237

def RemovedBody508_239 : StackLang.HolProg 64 :=
.seq RemovedBody508_231 RemovedBody508_238

def RemovedBody508_240 : StackLang.HolProg 64 :=
.seq RemovedBody508_230 RemovedBody508_239

def RemovedBody508_241 : StackLang.HolProg 64 :=
.seq RemovedBody508_229 RemovedBody508_240

def RemovedBody508_242 : StackLang.HolProg 64 :=
.seq RemovedBody508_228 RemovedBody508_241

def RemovedBody508_243 : StackLang.HolProg 64 :=
.seq RemovedBody508_227 RemovedBody508_242

def RemovedBody508_244 : StackLang.HolProg 64 :=
.seq RemovedBody508_226 RemovedBody508_243

def RemovedBody508_245 : StackLang.HolProg 64 :=
.seq RemovedBody508_225 RemovedBody508_244

def RemovedBody508_246 : StackLang.HolProg 64 :=
.seq RemovedBody508_224 RemovedBody508_245

def RemovedBody508_247 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody508_248 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody508_249 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody508_250 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody508_251 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody508_252 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody508_253 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 0 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def RemovedBody508_254 : StackLang.HolProg 64 :=
.seq RemovedBody508_252 RemovedBody508_253

def RemovedBody508_255 : StackLang.HolProg 64 :=
.seq RemovedBody508_251 RemovedBody508_254

def RemovedBody508_256 : StackLang.HolProg 64 :=
.seq RemovedBody508_250 RemovedBody508_255

def RemovedBody508_257 : StackLang.HolProg 64 :=
.seq RemovedBody508_249 RemovedBody508_256

def RemovedBody508_258 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody508_259 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def RemovedBody508_260 : StackLang.HolProg 64 :=
.seq RemovedBody508_258 RemovedBody508_259

def RemovedBody508_261 : StackLang.HolProg 64 :=
.call (some (RemovedBody508_257, 0, 508, 8)) (Sum.inl 106) (some (RemovedBody508_260, 508, 9))

def RemovedBody508_262 : StackLang.HolProg 64 :=
.seq RemovedBody508_248 RemovedBody508_261

def RemovedBody508_263 : StackLang.HolProg 64 :=
.seq RemovedBody508_247 RemovedBody508_262

def RemovedBody508_264 : StackLang.HolProg 64 :=
.seq RemovedBody508_246 RemovedBody508_263

def RemovedBody508_265 : StackLang.HolProg 64 :=
.seq RemovedBody508_217 RemovedBody508_264

def RemovedBody508_266 : StackLang.HolProg 64 :=
.seq RemovedBody508_214 RemovedBody508_265

def RemovedBody508_267 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody508_268 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 1 0
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 0)))

def RemovedBody508_269 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody508_270 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1618#64)

def RemovedBody508_271 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody508_272 : StackLang.HolProg 64 :=
.seq RemovedBody508_270 RemovedBody508_271

def RemovedBody508_273 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody508_274 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 2#64)

def RemovedBody508_275 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 1

def RemovedBody508_276 : StackLang.HolProg 64 :=
.seq RemovedBody508_274 RemovedBody508_275

def RemovedBody508_277 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody508_278 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) RemovedBody508_276 RemovedBody508_277

def RemovedBody508_279 : StackLang.HolProg 64 :=
.seq RemovedBody508_273 RemovedBody508_278

def RemovedBody508_280 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def RemovedBody508_281 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody508_282 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 508 11

def RemovedBody508_283 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody508_284 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody508_285 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody508_286 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody508_287 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def RemovedBody508_288 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def RemovedBody508_289 : StackLang.HolProg 64 :=
.seq RemovedBody508_287 RemovedBody508_288

def RemovedBody508_290 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def RemovedBody508_291 : StackLang.HolProg 64 :=
.seq RemovedBody508_289 RemovedBody508_290

def RemovedBody508_292 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody508_293 : StackLang.HolProg 64 :=
.seq RemovedBody508_291 RemovedBody508_292

def RemovedBody508_294 : StackLang.HolProg 64 :=
.seq RemovedBody508_286 RemovedBody508_293

def RemovedBody508_295 : StackLang.HolProg 64 :=
.seq RemovedBody508_285 RemovedBody508_294

def RemovedBody508_296 : StackLang.HolProg 64 :=
.seq RemovedBody508_284 RemovedBody508_295

def RemovedBody508_297 : StackLang.HolProg 64 :=
.seq RemovedBody508_283 RemovedBody508_296

def RemovedBody508_298 : StackLang.HolProg 64 :=
.seq RemovedBody508_282 RemovedBody508_297

def RemovedBody508_299 : StackLang.HolProg 64 :=
.seq RemovedBody508_281 RemovedBody508_298

def RemovedBody508_300 : StackLang.HolProg 64 :=
.seq RemovedBody508_280 RemovedBody508_299

def RemovedBody508_301 : StackLang.HolProg 64 :=
.seq RemovedBody508_279 RemovedBody508_300

def RemovedBody508_302 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody508_303 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody508_304 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody508_305 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody508_306 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody508_307 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody508_308 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody508_309 : StackLang.HolProg 64 :=
.seq RemovedBody508_307 RemovedBody508_308

def RemovedBody508_310 : StackLang.HolProg 64 :=
.seq RemovedBody508_306 RemovedBody508_309

def RemovedBody508_311 : StackLang.HolProg 64 :=
.seq RemovedBody508_305 RemovedBody508_310

def RemovedBody508_312 : StackLang.HolProg 64 :=
.seq RemovedBody508_304 RemovedBody508_311

def RemovedBody508_313 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody508_314 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def RemovedBody508_315 : StackLang.HolProg 64 :=
.seq RemovedBody508_313 RemovedBody508_314

def RemovedBody508_316 : StackLang.HolProg 64 :=
.call (some (RemovedBody508_312, 0, 508, 10)) (Sum.inl 478) (some (RemovedBody508_315, 508, 11))

def RemovedBody508_317 : StackLang.HolProg 64 :=
.seq RemovedBody508_303 RemovedBody508_316

def RemovedBody508_318 : StackLang.HolProg 64 :=
.seq RemovedBody508_302 RemovedBody508_317

def RemovedBody508_319 : StackLang.HolProg 64 :=
.seq RemovedBody508_301 RemovedBody508_318

def RemovedBody508_320 : StackLang.HolProg 64 :=
.seq RemovedBody508_272 RemovedBody508_319

def RemovedBody508_321 : StackLang.HolProg 64 :=
.seq RemovedBody508_269 RemovedBody508_320

def RemovedBody508_322 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody508_323 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 1#64)

def RemovedBody508_324 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody508_325 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody508_326 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1619#64)

def RemovedBody508_327 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody508_328 : StackLang.HolProg 64 :=
.seq RemovedBody508_326 RemovedBody508_327

def RemovedBody508_329 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody508_330 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 2#64)

def RemovedBody508_331 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 1

def RemovedBody508_332 : StackLang.HolProg 64 :=
.seq RemovedBody508_330 RemovedBody508_331

def RemovedBody508_333 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody508_334 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) RemovedBody508_332 RemovedBody508_333

def RemovedBody508_335 : StackLang.HolProg 64 :=
.seq RemovedBody508_329 RemovedBody508_334

def RemovedBody508_336 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def RemovedBody508_337 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody508_338 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 508 13

def RemovedBody508_339 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody508_340 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody508_341 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody508_342 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody508_343 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def RemovedBody508_344 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def RemovedBody508_345 : StackLang.HolProg 64 :=
.seq RemovedBody508_343 RemovedBody508_344

def RemovedBody508_346 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def RemovedBody508_347 : StackLang.HolProg 64 :=
.seq RemovedBody508_345 RemovedBody508_346

def RemovedBody508_348 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody508_349 : StackLang.HolProg 64 :=
.seq RemovedBody508_347 RemovedBody508_348

def RemovedBody508_350 : StackLang.HolProg 64 :=
.seq RemovedBody508_342 RemovedBody508_349

def RemovedBody508_351 : StackLang.HolProg 64 :=
.seq RemovedBody508_341 RemovedBody508_350

def RemovedBody508_352 : StackLang.HolProg 64 :=
.seq RemovedBody508_340 RemovedBody508_351

def RemovedBody508_353 : StackLang.HolProg 64 :=
.seq RemovedBody508_339 RemovedBody508_352

def RemovedBody508_354 : StackLang.HolProg 64 :=
.seq RemovedBody508_338 RemovedBody508_353

def RemovedBody508_355 : StackLang.HolProg 64 :=
.seq RemovedBody508_337 RemovedBody508_354

def RemovedBody508_356 : StackLang.HolProg 64 :=
.seq RemovedBody508_336 RemovedBody508_355

def RemovedBody508_357 : StackLang.HolProg 64 :=
.seq RemovedBody508_335 RemovedBody508_356

def RemovedBody508_358 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody508_359 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody508_360 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody508_361 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody508_362 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody508_363 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody508_364 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 72#64))

def RemovedBody508_365 : StackLang.HolProg 64 :=
.seq RemovedBody508_363 RemovedBody508_364

def RemovedBody508_366 : StackLang.HolProg 64 :=
.seq RemovedBody508_362 RemovedBody508_365

def RemovedBody508_367 : StackLang.HolProg 64 :=
.seq RemovedBody508_361 RemovedBody508_366

def RemovedBody508_368 : StackLang.HolProg 64 :=
.seq RemovedBody508_360 RemovedBody508_367

def RemovedBody508_369 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 72#64))

def RemovedBody508_370 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def RemovedBody508_371 : StackLang.HolProg 64 :=
.seq RemovedBody508_369 RemovedBody508_370

def RemovedBody508_372 : StackLang.HolProg 64 :=
.call (some (RemovedBody508_368, 0, 508, 12)) (Sum.inl 490) (some (RemovedBody508_371, 508, 13))

def RemovedBody508_373 : StackLang.HolProg 64 :=
.seq RemovedBody508_359 RemovedBody508_372

def RemovedBody508_374 : StackLang.HolProg 64 :=
.seq RemovedBody508_358 RemovedBody508_373

def RemovedBody508_375 : StackLang.HolProg 64 :=
.seq RemovedBody508_357 RemovedBody508_374

def RemovedBody508_376 : StackLang.HolProg 64 :=
.seq RemovedBody508_328 RemovedBody508_375

def RemovedBody508_377 : StackLang.HolProg 64 :=
.seq RemovedBody508_325 RemovedBody508_376

def RemovedBody508_378 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody508_379 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 0#64)

def RemovedBody508_380 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody508_381 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 80#64)))

def RemovedBody508_382 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 0

def RemovedBody508_383 : StackLang.HolProg 64 :=
.seq RemovedBody508_381 RemovedBody508_382

def RemovedBody508_384 : StackLang.HolProg 64 :=
.seq RemovedBody508_380 RemovedBody508_383

def RemovedBody508_385 : StackLang.HolProg 64 :=
.seq RemovedBody508_379 RemovedBody508_384

def RemovedBody508_386 : StackLang.HolProg 64 :=
.seq RemovedBody508_378 RemovedBody508_385

def RemovedBody508_387 : StackLang.HolProg 64 :=
.seq RemovedBody508_377 RemovedBody508_386

def RemovedBody508_388 : StackLang.HolProg 64 :=
.seq RemovedBody508_324 RemovedBody508_387

def RemovedBody508_389 : StackLang.HolProg 64 :=
.seq RemovedBody508_323 RemovedBody508_388

def RemovedBody508_390 : StackLang.HolProg 64 :=
.seq RemovedBody508_322 RemovedBody508_389

def RemovedBody508_391 : StackLang.HolProg 64 :=
.seq RemovedBody508_321 RemovedBody508_390

def RemovedBody508_392 : StackLang.HolProg 64 :=
.seq RemovedBody508_268 RemovedBody508_391

def RemovedBody508_393 : StackLang.HolProg 64 :=
.seq RemovedBody508_267 RemovedBody508_392

def RemovedBody508_394 : StackLang.HolProg 64 :=
.seq RemovedBody508_266 RemovedBody508_393

def RemovedBody508_395 : StackLang.HolProg 64 :=
.seq RemovedBody508_213 RemovedBody508_394

def RemovedBody508_396 : StackLang.HolProg 64 :=
.seq RemovedBody508_212 RemovedBody508_395

def RemovedBody508_397 : StackLang.HolProg 64 :=
.seq RemovedBody508_211 RemovedBody508_396

def RemovedBody508_398 : StackLang.HolProg 64 :=
.seq RemovedBody508_130 RemovedBody508_397

def RemovedBody508_399 : StackLang.HolProg 64 :=
.seq RemovedBody508_123 RemovedBody508_398

def RemovedBody508_400 : StackLang.HolProg 64 :=
.seq RemovedBody508_122 RemovedBody508_399

def RemovedBody508_401 : StackLang.HolProg 64 :=
.seq RemovedBody508_121 RemovedBody508_400

def RemovedBody508_402 : StackLang.HolProg 64 :=
.seq RemovedBody508_68 RemovedBody508_401

def RemovedBody508_403 : StackLang.HolProg 64 :=
.seq RemovedBody508_61 RemovedBody508_402

def RemovedBody508_404 : StackLang.HolProg 64 :=
.seq RemovedBody508_60 RemovedBody508_403

def RemovedBody508_405 : StackLang.HolProg 64 :=
.seq RemovedBody508_7 RemovedBody508_404

def RemovedBody508_406 : StackLang.HolProg 64 :=
.seq RemovedBody508_6 RemovedBody508_405

def Removed508 : Nat × StackLang.HolProg 64 := (508, RemovedBody508_406)
theorem Removed508_eq : StackRemove.progComp false riscvConfig.addrOffset (riscvConfig.regCount - (riscvConfig.avoidRegs.length + 3)) Alloc508 = Removed508 := by
  kernel_rfl
#print axioms Removed508_eq
end InitECandidate.Proofs.BackendStages
