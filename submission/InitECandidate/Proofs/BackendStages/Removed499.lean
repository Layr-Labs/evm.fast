import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.BackendStages.Alloc499
import Flapjack.Compiler.Backend.Backend
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
namespace InitECandidate.Proofs.BackendStages
def RemovedBody499_0 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 80#64)))

def RemovedBody499_1 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 2#64)

def RemovedBody499_2 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 1

def RemovedBody499_3 : StackLang.HolProg 64 :=
.seq RemovedBody499_1 RemovedBody499_2

def RemovedBody499_4 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody499_5 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) RemovedBody499_3 RemovedBody499_4

def RemovedBody499_6 : StackLang.HolProg 64 :=
.seq RemovedBody499_0 RemovedBody499_5

def RemovedBody499_7 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 72#64))

def RemovedBody499_8 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody499_9 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1556#64)

def RemovedBody499_10 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody499_11 : StackLang.HolProg 64 :=
.seq RemovedBody499_9 RemovedBody499_10

def RemovedBody499_12 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody499_13 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 2#64)

def RemovedBody499_14 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 1

def RemovedBody499_15 : StackLang.HolProg 64 :=
.seq RemovedBody499_13 RemovedBody499_14

def RemovedBody499_16 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody499_17 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) RemovedBody499_15 RemovedBody499_16

def RemovedBody499_18 : StackLang.HolProg 64 :=
.seq RemovedBody499_12 RemovedBody499_17

def RemovedBody499_19 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def RemovedBody499_20 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody499_21 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 499 3

def RemovedBody499_22 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody499_23 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody499_24 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody499_25 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody499_26 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def RemovedBody499_27 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def RemovedBody499_28 : StackLang.HolProg 64 :=
.seq RemovedBody499_26 RemovedBody499_27

def RemovedBody499_29 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def RemovedBody499_30 : StackLang.HolProg 64 :=
.seq RemovedBody499_28 RemovedBody499_29

def RemovedBody499_31 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody499_32 : StackLang.HolProg 64 :=
.seq RemovedBody499_30 RemovedBody499_31

def RemovedBody499_33 : StackLang.HolProg 64 :=
.seq RemovedBody499_25 RemovedBody499_32

def RemovedBody499_34 : StackLang.HolProg 64 :=
.seq RemovedBody499_24 RemovedBody499_33

def RemovedBody499_35 : StackLang.HolProg 64 :=
.seq RemovedBody499_23 RemovedBody499_34

def RemovedBody499_36 : StackLang.HolProg 64 :=
.seq RemovedBody499_22 RemovedBody499_35

def RemovedBody499_37 : StackLang.HolProg 64 :=
.seq RemovedBody499_21 RemovedBody499_36

def RemovedBody499_38 : StackLang.HolProg 64 :=
.seq RemovedBody499_20 RemovedBody499_37

def RemovedBody499_39 : StackLang.HolProg 64 :=
.seq RemovedBody499_19 RemovedBody499_38

def RemovedBody499_40 : StackLang.HolProg 64 :=
.seq RemovedBody499_18 RemovedBody499_39

def RemovedBody499_41 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody499_42 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody499_43 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody499_44 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody499_45 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody499_46 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody499_47 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 0 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def RemovedBody499_48 : StackLang.HolProg 64 :=
.seq RemovedBody499_46 RemovedBody499_47

def RemovedBody499_49 : StackLang.HolProg 64 :=
.seq RemovedBody499_45 RemovedBody499_48

def RemovedBody499_50 : StackLang.HolProg 64 :=
.seq RemovedBody499_44 RemovedBody499_49

def RemovedBody499_51 : StackLang.HolProg 64 :=
.seq RemovedBody499_43 RemovedBody499_50

def RemovedBody499_52 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody499_53 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def RemovedBody499_54 : StackLang.HolProg 64 :=
.seq RemovedBody499_52 RemovedBody499_53

def RemovedBody499_55 : StackLang.HolProg 64 :=
.call (some (RemovedBody499_51, 0, 499, 2)) (Sum.inl 475) (some (RemovedBody499_54, 499, 3))

def RemovedBody499_56 : StackLang.HolProg 64 :=
.seq RemovedBody499_42 RemovedBody499_55

def RemovedBody499_57 : StackLang.HolProg 64 :=
.seq RemovedBody499_41 RemovedBody499_56

def RemovedBody499_58 : StackLang.HolProg 64 :=
.seq RemovedBody499_40 RemovedBody499_57

def RemovedBody499_59 : StackLang.HolProg 64 :=
.seq RemovedBody499_11 RemovedBody499_58

def RemovedBody499_60 : StackLang.HolProg 64 :=
.seq RemovedBody499_8 RemovedBody499_59

def RemovedBody499_61 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody499_62 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 2
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 64#64))

def RemovedBody499_63 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 40#64))

def RemovedBody499_64 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 4
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 24#64))

def RemovedBody499_65 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 3
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody499_66 : StackLang.HolProg 64 :=
.seq RemovedBody499_64 RemovedBody499_65

def RemovedBody499_67 : StackLang.HolProg 64 :=
.seq RemovedBody499_63 RemovedBody499_66

def RemovedBody499_68 : StackLang.HolProg 64 :=
.seq RemovedBody499_62 RemovedBody499_67

def RemovedBody499_69 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody499_70 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1557#64)

def RemovedBody499_71 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody499_72 : StackLang.HolProg 64 :=
.seq RemovedBody499_70 RemovedBody499_71

def RemovedBody499_73 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody499_74 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 2#64)

def RemovedBody499_75 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 1

def RemovedBody499_76 : StackLang.HolProg 64 :=
.seq RemovedBody499_74 RemovedBody499_75

def RemovedBody499_77 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody499_78 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) RemovedBody499_76 RemovedBody499_77

def RemovedBody499_79 : StackLang.HolProg 64 :=
.seq RemovedBody499_73 RemovedBody499_78

def RemovedBody499_80 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def RemovedBody499_81 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody499_82 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 499 5

def RemovedBody499_83 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody499_84 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody499_85 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody499_86 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody499_87 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def RemovedBody499_88 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def RemovedBody499_89 : StackLang.HolProg 64 :=
.seq RemovedBody499_87 RemovedBody499_88

def RemovedBody499_90 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def RemovedBody499_91 : StackLang.HolProg 64 :=
.seq RemovedBody499_89 RemovedBody499_90

def RemovedBody499_92 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody499_93 : StackLang.HolProg 64 :=
.seq RemovedBody499_91 RemovedBody499_92

def RemovedBody499_94 : StackLang.HolProg 64 :=
.seq RemovedBody499_86 RemovedBody499_93

def RemovedBody499_95 : StackLang.HolProg 64 :=
.seq RemovedBody499_85 RemovedBody499_94

def RemovedBody499_96 : StackLang.HolProg 64 :=
.seq RemovedBody499_84 RemovedBody499_95

def RemovedBody499_97 : StackLang.HolProg 64 :=
.seq RemovedBody499_83 RemovedBody499_96

def RemovedBody499_98 : StackLang.HolProg 64 :=
.seq RemovedBody499_82 RemovedBody499_97

def RemovedBody499_99 : StackLang.HolProg 64 :=
.seq RemovedBody499_81 RemovedBody499_98

def RemovedBody499_100 : StackLang.HolProg 64 :=
.seq RemovedBody499_80 RemovedBody499_99

def RemovedBody499_101 : StackLang.HolProg 64 :=
.seq RemovedBody499_79 RemovedBody499_100

def RemovedBody499_102 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody499_103 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody499_104 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody499_105 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody499_106 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody499_107 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody499_108 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 0 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def RemovedBody499_109 : StackLang.HolProg 64 :=
.seq RemovedBody499_107 RemovedBody499_108

def RemovedBody499_110 : StackLang.HolProg 64 :=
.seq RemovedBody499_106 RemovedBody499_109

def RemovedBody499_111 : StackLang.HolProg 64 :=
.seq RemovedBody499_105 RemovedBody499_110

def RemovedBody499_112 : StackLang.HolProg 64 :=
.seq RemovedBody499_104 RemovedBody499_111

def RemovedBody499_113 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody499_114 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def RemovedBody499_115 : StackLang.HolProg 64 :=
.seq RemovedBody499_113 RemovedBody499_114

def RemovedBody499_116 : StackLang.HolProg 64 :=
.call (some (RemovedBody499_112, 0, 499, 4)) (Sum.inl 475) (some (RemovedBody499_115, 499, 5))

def RemovedBody499_117 : StackLang.HolProg 64 :=
.seq RemovedBody499_103 RemovedBody499_116

def RemovedBody499_118 : StackLang.HolProg 64 :=
.seq RemovedBody499_102 RemovedBody499_117

def RemovedBody499_119 : StackLang.HolProg 64 :=
.seq RemovedBody499_101 RemovedBody499_118

def RemovedBody499_120 : StackLang.HolProg 64 :=
.seq RemovedBody499_72 RemovedBody499_119

def RemovedBody499_121 : StackLang.HolProg 64 :=
.seq RemovedBody499_69 RemovedBody499_120

def RemovedBody499_122 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody499_123 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 3#64)

def RemovedBody499_124 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 4
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 56#64))

def RemovedBody499_125 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 3
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 48#64))

def RemovedBody499_126 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 32#64))

def RemovedBody499_127 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 2
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody499_128 : StackLang.HolProg 64 :=
.seq RemovedBody499_126 RemovedBody499_127

def RemovedBody499_129 : StackLang.HolProg 64 :=
.seq RemovedBody499_125 RemovedBody499_128

def RemovedBody499_130 : StackLang.HolProg 64 :=
.seq RemovedBody499_124 RemovedBody499_129

def RemovedBody499_131 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody499_132 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1558#64)

def RemovedBody499_133 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody499_134 : StackLang.HolProg 64 :=
.seq RemovedBody499_132 RemovedBody499_133

def RemovedBody499_135 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody499_136 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 2#64)

def RemovedBody499_137 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 1

def RemovedBody499_138 : StackLang.HolProg 64 :=
.seq RemovedBody499_136 RemovedBody499_137

def RemovedBody499_139 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody499_140 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) RemovedBody499_138 RemovedBody499_139

def RemovedBody499_141 : StackLang.HolProg 64 :=
.seq RemovedBody499_135 RemovedBody499_140

def RemovedBody499_142 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def RemovedBody499_143 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody499_144 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 499 7

def RemovedBody499_145 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody499_146 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody499_147 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody499_148 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody499_149 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def RemovedBody499_150 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def RemovedBody499_151 : StackLang.HolProg 64 :=
.seq RemovedBody499_149 RemovedBody499_150

def RemovedBody499_152 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def RemovedBody499_153 : StackLang.HolProg 64 :=
.seq RemovedBody499_151 RemovedBody499_152

def RemovedBody499_154 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody499_155 : StackLang.HolProg 64 :=
.seq RemovedBody499_153 RemovedBody499_154

def RemovedBody499_156 : StackLang.HolProg 64 :=
.seq RemovedBody499_148 RemovedBody499_155

def RemovedBody499_157 : StackLang.HolProg 64 :=
.seq RemovedBody499_147 RemovedBody499_156

def RemovedBody499_158 : StackLang.HolProg 64 :=
.seq RemovedBody499_146 RemovedBody499_157

def RemovedBody499_159 : StackLang.HolProg 64 :=
.seq RemovedBody499_145 RemovedBody499_158

def RemovedBody499_160 : StackLang.HolProg 64 :=
.seq RemovedBody499_144 RemovedBody499_159

def RemovedBody499_161 : StackLang.HolProg 64 :=
.seq RemovedBody499_143 RemovedBody499_160

def RemovedBody499_162 : StackLang.HolProg 64 :=
.seq RemovedBody499_142 RemovedBody499_161

def RemovedBody499_163 : StackLang.HolProg 64 :=
.seq RemovedBody499_141 RemovedBody499_162

def RemovedBody499_164 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody499_165 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody499_166 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody499_167 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody499_168 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody499_169 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody499_170 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 2
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 64#64))

def RemovedBody499_171 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 8
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 56#64))

def RemovedBody499_172 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 7
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 48#64))

def RemovedBody499_173 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 40#64))

def RemovedBody499_174 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 5
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 32#64))

def RemovedBody499_175 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 4
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 24#64))

def RemovedBody499_176 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 3
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody499_177 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 6
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody499_178 : StackLang.HolProg 64 :=
.seq RemovedBody499_176 RemovedBody499_177

def RemovedBody499_179 : StackLang.HolProg 64 :=
.seq RemovedBody499_175 RemovedBody499_178

def RemovedBody499_180 : StackLang.HolProg 64 :=
.seq RemovedBody499_174 RemovedBody499_179

def RemovedBody499_181 : StackLang.HolProg 64 :=
.seq RemovedBody499_173 RemovedBody499_180

def RemovedBody499_182 : StackLang.HolProg 64 :=
.seq RemovedBody499_172 RemovedBody499_181

def RemovedBody499_183 : StackLang.HolProg 64 :=
.seq RemovedBody499_171 RemovedBody499_182

def RemovedBody499_184 : StackLang.HolProg 64 :=
.seq RemovedBody499_170 RemovedBody499_183

def RemovedBody499_185 : StackLang.HolProg 64 :=
.seq RemovedBody499_169 RemovedBody499_184

def RemovedBody499_186 : StackLang.HolProg 64 :=
.seq RemovedBody499_168 RemovedBody499_185

def RemovedBody499_187 : StackLang.HolProg 64 :=
.seq RemovedBody499_167 RemovedBody499_186

def RemovedBody499_188 : StackLang.HolProg 64 :=
.seq RemovedBody499_166 RemovedBody499_187

def RemovedBody499_189 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 2
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 64#64))

def RemovedBody499_190 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 8
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 56#64))

def RemovedBody499_191 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 7
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 48#64))

def RemovedBody499_192 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 40#64))

def RemovedBody499_193 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 5
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 32#64))

def RemovedBody499_194 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 4
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 24#64))

def RemovedBody499_195 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 3
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody499_196 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 6
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody499_197 : StackLang.HolProg 64 :=
.seq RemovedBody499_195 RemovedBody499_196

def RemovedBody499_198 : StackLang.HolProg 64 :=
.seq RemovedBody499_194 RemovedBody499_197

def RemovedBody499_199 : StackLang.HolProg 64 :=
.seq RemovedBody499_193 RemovedBody499_198

def RemovedBody499_200 : StackLang.HolProg 64 :=
.seq RemovedBody499_192 RemovedBody499_199

def RemovedBody499_201 : StackLang.HolProg 64 :=
.seq RemovedBody499_191 RemovedBody499_200

def RemovedBody499_202 : StackLang.HolProg 64 :=
.seq RemovedBody499_190 RemovedBody499_201

def RemovedBody499_203 : StackLang.HolProg 64 :=
.seq RemovedBody499_189 RemovedBody499_202

def RemovedBody499_204 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def RemovedBody499_205 : StackLang.HolProg 64 :=
.seq RemovedBody499_203 RemovedBody499_204

def RemovedBody499_206 : StackLang.HolProg 64 :=
.call (some (RemovedBody499_188, 0, 499, 6)) (Sum.inl 470) (some (RemovedBody499_205, 499, 7))

def RemovedBody499_207 : StackLang.HolProg 64 :=
.seq RemovedBody499_165 RemovedBody499_206

def RemovedBody499_208 : StackLang.HolProg 64 :=
.seq RemovedBody499_164 RemovedBody499_207

def RemovedBody499_209 : StackLang.HolProg 64 :=
.seq RemovedBody499_163 RemovedBody499_208

def RemovedBody499_210 : StackLang.HolProg 64 :=
.seq RemovedBody499_134 RemovedBody499_209

def RemovedBody499_211 : StackLang.HolProg 64 :=
.seq RemovedBody499_131 RemovedBody499_210

def RemovedBody499_212 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody499_213 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 1 0
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 0)))

def RemovedBody499_214 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody499_215 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1559#64)

def RemovedBody499_216 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody499_217 : StackLang.HolProg 64 :=
.seq RemovedBody499_215 RemovedBody499_216

def RemovedBody499_218 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody499_219 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 2#64)

def RemovedBody499_220 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 1

def RemovedBody499_221 : StackLang.HolProg 64 :=
.seq RemovedBody499_219 RemovedBody499_220

def RemovedBody499_222 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody499_223 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) RemovedBody499_221 RemovedBody499_222

def RemovedBody499_224 : StackLang.HolProg 64 :=
.seq RemovedBody499_218 RemovedBody499_223

def RemovedBody499_225 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def RemovedBody499_226 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody499_227 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 499 9

def RemovedBody499_228 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody499_229 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody499_230 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody499_231 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody499_232 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def RemovedBody499_233 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def RemovedBody499_234 : StackLang.HolProg 64 :=
.seq RemovedBody499_232 RemovedBody499_233

def RemovedBody499_235 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def RemovedBody499_236 : StackLang.HolProg 64 :=
.seq RemovedBody499_234 RemovedBody499_235

def RemovedBody499_237 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody499_238 : StackLang.HolProg 64 :=
.seq RemovedBody499_236 RemovedBody499_237

def RemovedBody499_239 : StackLang.HolProg 64 :=
.seq RemovedBody499_231 RemovedBody499_238

def RemovedBody499_240 : StackLang.HolProg 64 :=
.seq RemovedBody499_230 RemovedBody499_239

def RemovedBody499_241 : StackLang.HolProg 64 :=
.seq RemovedBody499_229 RemovedBody499_240

def RemovedBody499_242 : StackLang.HolProg 64 :=
.seq RemovedBody499_228 RemovedBody499_241

def RemovedBody499_243 : StackLang.HolProg 64 :=
.seq RemovedBody499_227 RemovedBody499_242

def RemovedBody499_244 : StackLang.HolProg 64 :=
.seq RemovedBody499_226 RemovedBody499_243

def RemovedBody499_245 : StackLang.HolProg 64 :=
.seq RemovedBody499_225 RemovedBody499_244

def RemovedBody499_246 : StackLang.HolProg 64 :=
.seq RemovedBody499_224 RemovedBody499_245

def RemovedBody499_247 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody499_248 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody499_249 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody499_250 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody499_251 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody499_252 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody499_253 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 0 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def RemovedBody499_254 : StackLang.HolProg 64 :=
.seq RemovedBody499_252 RemovedBody499_253

def RemovedBody499_255 : StackLang.HolProg 64 :=
.seq RemovedBody499_251 RemovedBody499_254

def RemovedBody499_256 : StackLang.HolProg 64 :=
.seq RemovedBody499_250 RemovedBody499_255

def RemovedBody499_257 : StackLang.HolProg 64 :=
.seq RemovedBody499_249 RemovedBody499_256

def RemovedBody499_258 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody499_259 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def RemovedBody499_260 : StackLang.HolProg 64 :=
.seq RemovedBody499_258 RemovedBody499_259

def RemovedBody499_261 : StackLang.HolProg 64 :=
.call (some (RemovedBody499_257, 0, 499, 8)) (Sum.inl 117) (some (RemovedBody499_260, 499, 9))

def RemovedBody499_262 : StackLang.HolProg 64 :=
.seq RemovedBody499_248 RemovedBody499_261

def RemovedBody499_263 : StackLang.HolProg 64 :=
.seq RemovedBody499_247 RemovedBody499_262

def RemovedBody499_264 : StackLang.HolProg 64 :=
.seq RemovedBody499_246 RemovedBody499_263

def RemovedBody499_265 : StackLang.HolProg 64 :=
.seq RemovedBody499_217 RemovedBody499_264

def RemovedBody499_266 : StackLang.HolProg 64 :=
.seq RemovedBody499_214 RemovedBody499_265

def RemovedBody499_267 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody499_268 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 1 0
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 0)))

def RemovedBody499_269 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody499_270 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1560#64)

def RemovedBody499_271 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody499_272 : StackLang.HolProg 64 :=
.seq RemovedBody499_270 RemovedBody499_271

def RemovedBody499_273 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody499_274 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 2#64)

def RemovedBody499_275 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 1

def RemovedBody499_276 : StackLang.HolProg 64 :=
.seq RemovedBody499_274 RemovedBody499_275

def RemovedBody499_277 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody499_278 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) RemovedBody499_276 RemovedBody499_277

def RemovedBody499_279 : StackLang.HolProg 64 :=
.seq RemovedBody499_273 RemovedBody499_278

def RemovedBody499_280 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def RemovedBody499_281 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody499_282 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 499 11

def RemovedBody499_283 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody499_284 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody499_285 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody499_286 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody499_287 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def RemovedBody499_288 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def RemovedBody499_289 : StackLang.HolProg 64 :=
.seq RemovedBody499_287 RemovedBody499_288

def RemovedBody499_290 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def RemovedBody499_291 : StackLang.HolProg 64 :=
.seq RemovedBody499_289 RemovedBody499_290

def RemovedBody499_292 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody499_293 : StackLang.HolProg 64 :=
.seq RemovedBody499_291 RemovedBody499_292

def RemovedBody499_294 : StackLang.HolProg 64 :=
.seq RemovedBody499_286 RemovedBody499_293

def RemovedBody499_295 : StackLang.HolProg 64 :=
.seq RemovedBody499_285 RemovedBody499_294

def RemovedBody499_296 : StackLang.HolProg 64 :=
.seq RemovedBody499_284 RemovedBody499_295

def RemovedBody499_297 : StackLang.HolProg 64 :=
.seq RemovedBody499_283 RemovedBody499_296

def RemovedBody499_298 : StackLang.HolProg 64 :=
.seq RemovedBody499_282 RemovedBody499_297

def RemovedBody499_299 : StackLang.HolProg 64 :=
.seq RemovedBody499_281 RemovedBody499_298

def RemovedBody499_300 : StackLang.HolProg 64 :=
.seq RemovedBody499_280 RemovedBody499_299

def RemovedBody499_301 : StackLang.HolProg 64 :=
.seq RemovedBody499_279 RemovedBody499_300

def RemovedBody499_302 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody499_303 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody499_304 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody499_305 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody499_306 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody499_307 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody499_308 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody499_309 : StackLang.HolProg 64 :=
.seq RemovedBody499_307 RemovedBody499_308

def RemovedBody499_310 : StackLang.HolProg 64 :=
.seq RemovedBody499_306 RemovedBody499_309

def RemovedBody499_311 : StackLang.HolProg 64 :=
.seq RemovedBody499_305 RemovedBody499_310

def RemovedBody499_312 : StackLang.HolProg 64 :=
.seq RemovedBody499_304 RemovedBody499_311

def RemovedBody499_313 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody499_314 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def RemovedBody499_315 : StackLang.HolProg 64 :=
.seq RemovedBody499_313 RemovedBody499_314

def RemovedBody499_316 : StackLang.HolProg 64 :=
.call (some (RemovedBody499_312, 0, 499, 10)) (Sum.inl 476) (some (RemovedBody499_315, 499, 11))

def RemovedBody499_317 : StackLang.HolProg 64 :=
.seq RemovedBody499_303 RemovedBody499_316

def RemovedBody499_318 : StackLang.HolProg 64 :=
.seq RemovedBody499_302 RemovedBody499_317

def RemovedBody499_319 : StackLang.HolProg 64 :=
.seq RemovedBody499_301 RemovedBody499_318

def RemovedBody499_320 : StackLang.HolProg 64 :=
.seq RemovedBody499_272 RemovedBody499_319

def RemovedBody499_321 : StackLang.HolProg 64 :=
.seq RemovedBody499_269 RemovedBody499_320

def RemovedBody499_322 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody499_323 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 1#64)

def RemovedBody499_324 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody499_325 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody499_326 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1561#64)

def RemovedBody499_327 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody499_328 : StackLang.HolProg 64 :=
.seq RemovedBody499_326 RemovedBody499_327

def RemovedBody499_329 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody499_330 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 2#64)

def RemovedBody499_331 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 1

def RemovedBody499_332 : StackLang.HolProg 64 :=
.seq RemovedBody499_330 RemovedBody499_331

def RemovedBody499_333 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody499_334 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) RemovedBody499_332 RemovedBody499_333

def RemovedBody499_335 : StackLang.HolProg 64 :=
.seq RemovedBody499_329 RemovedBody499_334

def RemovedBody499_336 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def RemovedBody499_337 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody499_338 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 499 13

def RemovedBody499_339 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody499_340 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody499_341 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody499_342 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody499_343 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def RemovedBody499_344 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def RemovedBody499_345 : StackLang.HolProg 64 :=
.seq RemovedBody499_343 RemovedBody499_344

def RemovedBody499_346 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def RemovedBody499_347 : StackLang.HolProg 64 :=
.seq RemovedBody499_345 RemovedBody499_346

def RemovedBody499_348 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody499_349 : StackLang.HolProg 64 :=
.seq RemovedBody499_347 RemovedBody499_348

def RemovedBody499_350 : StackLang.HolProg 64 :=
.seq RemovedBody499_342 RemovedBody499_349

def RemovedBody499_351 : StackLang.HolProg 64 :=
.seq RemovedBody499_341 RemovedBody499_350

def RemovedBody499_352 : StackLang.HolProg 64 :=
.seq RemovedBody499_340 RemovedBody499_351

def RemovedBody499_353 : StackLang.HolProg 64 :=
.seq RemovedBody499_339 RemovedBody499_352

def RemovedBody499_354 : StackLang.HolProg 64 :=
.seq RemovedBody499_338 RemovedBody499_353

def RemovedBody499_355 : StackLang.HolProg 64 :=
.seq RemovedBody499_337 RemovedBody499_354

def RemovedBody499_356 : StackLang.HolProg 64 :=
.seq RemovedBody499_336 RemovedBody499_355

def RemovedBody499_357 : StackLang.HolProg 64 :=
.seq RemovedBody499_335 RemovedBody499_356

def RemovedBody499_358 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody499_359 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody499_360 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody499_361 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody499_362 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody499_363 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody499_364 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 72#64))

def RemovedBody499_365 : StackLang.HolProg 64 :=
.seq RemovedBody499_363 RemovedBody499_364

def RemovedBody499_366 : StackLang.HolProg 64 :=
.seq RemovedBody499_362 RemovedBody499_365

def RemovedBody499_367 : StackLang.HolProg 64 :=
.seq RemovedBody499_361 RemovedBody499_366

def RemovedBody499_368 : StackLang.HolProg 64 :=
.seq RemovedBody499_360 RemovedBody499_367

def RemovedBody499_369 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 72#64))

def RemovedBody499_370 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def RemovedBody499_371 : StackLang.HolProg 64 :=
.seq RemovedBody499_369 RemovedBody499_370

def RemovedBody499_372 : StackLang.HolProg 64 :=
.call (some (RemovedBody499_368, 0, 499, 12)) (Sum.inl 490) (some (RemovedBody499_371, 499, 13))

def RemovedBody499_373 : StackLang.HolProg 64 :=
.seq RemovedBody499_359 RemovedBody499_372

def RemovedBody499_374 : StackLang.HolProg 64 :=
.seq RemovedBody499_358 RemovedBody499_373

def RemovedBody499_375 : StackLang.HolProg 64 :=
.seq RemovedBody499_357 RemovedBody499_374

def RemovedBody499_376 : StackLang.HolProg 64 :=
.seq RemovedBody499_328 RemovedBody499_375

def RemovedBody499_377 : StackLang.HolProg 64 :=
.seq RemovedBody499_325 RemovedBody499_376

def RemovedBody499_378 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody499_379 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 0#64)

def RemovedBody499_380 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody499_381 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 80#64)))

def RemovedBody499_382 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 0

def RemovedBody499_383 : StackLang.HolProg 64 :=
.seq RemovedBody499_381 RemovedBody499_382

def RemovedBody499_384 : StackLang.HolProg 64 :=
.seq RemovedBody499_380 RemovedBody499_383

def RemovedBody499_385 : StackLang.HolProg 64 :=
.seq RemovedBody499_379 RemovedBody499_384

def RemovedBody499_386 : StackLang.HolProg 64 :=
.seq RemovedBody499_378 RemovedBody499_385

def RemovedBody499_387 : StackLang.HolProg 64 :=
.seq RemovedBody499_377 RemovedBody499_386

def RemovedBody499_388 : StackLang.HolProg 64 :=
.seq RemovedBody499_324 RemovedBody499_387

def RemovedBody499_389 : StackLang.HolProg 64 :=
.seq RemovedBody499_323 RemovedBody499_388

def RemovedBody499_390 : StackLang.HolProg 64 :=
.seq RemovedBody499_322 RemovedBody499_389

def RemovedBody499_391 : StackLang.HolProg 64 :=
.seq RemovedBody499_321 RemovedBody499_390

def RemovedBody499_392 : StackLang.HolProg 64 :=
.seq RemovedBody499_268 RemovedBody499_391

def RemovedBody499_393 : StackLang.HolProg 64 :=
.seq RemovedBody499_267 RemovedBody499_392

def RemovedBody499_394 : StackLang.HolProg 64 :=
.seq RemovedBody499_266 RemovedBody499_393

def RemovedBody499_395 : StackLang.HolProg 64 :=
.seq RemovedBody499_213 RemovedBody499_394

def RemovedBody499_396 : StackLang.HolProg 64 :=
.seq RemovedBody499_212 RemovedBody499_395

def RemovedBody499_397 : StackLang.HolProg 64 :=
.seq RemovedBody499_211 RemovedBody499_396

def RemovedBody499_398 : StackLang.HolProg 64 :=
.seq RemovedBody499_130 RemovedBody499_397

def RemovedBody499_399 : StackLang.HolProg 64 :=
.seq RemovedBody499_123 RemovedBody499_398

def RemovedBody499_400 : StackLang.HolProg 64 :=
.seq RemovedBody499_122 RemovedBody499_399

def RemovedBody499_401 : StackLang.HolProg 64 :=
.seq RemovedBody499_121 RemovedBody499_400

def RemovedBody499_402 : StackLang.HolProg 64 :=
.seq RemovedBody499_68 RemovedBody499_401

def RemovedBody499_403 : StackLang.HolProg 64 :=
.seq RemovedBody499_61 RemovedBody499_402

def RemovedBody499_404 : StackLang.HolProg 64 :=
.seq RemovedBody499_60 RemovedBody499_403

def RemovedBody499_405 : StackLang.HolProg 64 :=
.seq RemovedBody499_7 RemovedBody499_404

def RemovedBody499_406 : StackLang.HolProg 64 :=
.seq RemovedBody499_6 RemovedBody499_405

def Removed499 : Nat × StackLang.HolProg 64 := (499, RemovedBody499_406)
theorem Removed499_eq : StackRemove.progComp false riscvConfig.addrOffset (riscvConfig.regCount - (riscvConfig.avoidRegs.length + 3)) Alloc499 = Removed499 := by
  kernel_rfl
#print axioms Removed499_eq
end InitECandidate.Proofs.BackendStages
