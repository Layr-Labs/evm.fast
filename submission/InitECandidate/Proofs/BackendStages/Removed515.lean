import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.BackendStages.Alloc515
import Flapjack.Compiler.Backend.Backend
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
namespace InitECandidate.Proofs.BackendStages
def RemovedBody515_0 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 80#64)))

def RemovedBody515_1 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 2#64)

def RemovedBody515_2 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 1

def RemovedBody515_3 : StackLang.HolProg 64 :=
.seq RemovedBody515_1 RemovedBody515_2

def RemovedBody515_4 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody515_5 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) RemovedBody515_3 RemovedBody515_4

def RemovedBody515_6 : StackLang.HolProg 64 :=
.seq RemovedBody515_0 RemovedBody515_5

def RemovedBody515_7 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 72#64))

def RemovedBody515_8 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody515_9 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1654#64)

def RemovedBody515_10 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody515_11 : StackLang.HolProg 64 :=
.seq RemovedBody515_9 RemovedBody515_10

def RemovedBody515_12 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody515_13 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 2#64)

def RemovedBody515_14 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 1

def RemovedBody515_15 : StackLang.HolProg 64 :=
.seq RemovedBody515_13 RemovedBody515_14

def RemovedBody515_16 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody515_17 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) RemovedBody515_15 RemovedBody515_16

def RemovedBody515_18 : StackLang.HolProg 64 :=
.seq RemovedBody515_12 RemovedBody515_17

def RemovedBody515_19 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def RemovedBody515_20 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody515_21 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 515 3

def RemovedBody515_22 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody515_23 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody515_24 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody515_25 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody515_26 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def RemovedBody515_27 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def RemovedBody515_28 : StackLang.HolProg 64 :=
.seq RemovedBody515_26 RemovedBody515_27

def RemovedBody515_29 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def RemovedBody515_30 : StackLang.HolProg 64 :=
.seq RemovedBody515_28 RemovedBody515_29

def RemovedBody515_31 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody515_32 : StackLang.HolProg 64 :=
.seq RemovedBody515_30 RemovedBody515_31

def RemovedBody515_33 : StackLang.HolProg 64 :=
.seq RemovedBody515_25 RemovedBody515_32

def RemovedBody515_34 : StackLang.HolProg 64 :=
.seq RemovedBody515_24 RemovedBody515_33

def RemovedBody515_35 : StackLang.HolProg 64 :=
.seq RemovedBody515_23 RemovedBody515_34

def RemovedBody515_36 : StackLang.HolProg 64 :=
.seq RemovedBody515_22 RemovedBody515_35

def RemovedBody515_37 : StackLang.HolProg 64 :=
.seq RemovedBody515_21 RemovedBody515_36

def RemovedBody515_38 : StackLang.HolProg 64 :=
.seq RemovedBody515_20 RemovedBody515_37

def RemovedBody515_39 : StackLang.HolProg 64 :=
.seq RemovedBody515_19 RemovedBody515_38

def RemovedBody515_40 : StackLang.HolProg 64 :=
.seq RemovedBody515_18 RemovedBody515_39

def RemovedBody515_41 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody515_42 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody515_43 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody515_44 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody515_45 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody515_46 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody515_47 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 0 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def RemovedBody515_48 : StackLang.HolProg 64 :=
.seq RemovedBody515_46 RemovedBody515_47

def RemovedBody515_49 : StackLang.HolProg 64 :=
.seq RemovedBody515_45 RemovedBody515_48

def RemovedBody515_50 : StackLang.HolProg 64 :=
.seq RemovedBody515_44 RemovedBody515_49

def RemovedBody515_51 : StackLang.HolProg 64 :=
.seq RemovedBody515_43 RemovedBody515_50

def RemovedBody515_52 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody515_53 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def RemovedBody515_54 : StackLang.HolProg 64 :=
.seq RemovedBody515_52 RemovedBody515_53

def RemovedBody515_55 : StackLang.HolProg 64 :=
.call (some (RemovedBody515_51, 0, 515, 2)) (Sum.inl 475) (some (RemovedBody515_54, 515, 3))

def RemovedBody515_56 : StackLang.HolProg 64 :=
.seq RemovedBody515_42 RemovedBody515_55

def RemovedBody515_57 : StackLang.HolProg 64 :=
.seq RemovedBody515_41 RemovedBody515_56

def RemovedBody515_58 : StackLang.HolProg 64 :=
.seq RemovedBody515_40 RemovedBody515_57

def RemovedBody515_59 : StackLang.HolProg 64 :=
.seq RemovedBody515_11 RemovedBody515_58

def RemovedBody515_60 : StackLang.HolProg 64 :=
.seq RemovedBody515_8 RemovedBody515_59

def RemovedBody515_61 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody515_62 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 56#64))

def RemovedBody515_63 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 3
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 48#64))

def RemovedBody515_64 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 4
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 24#64))

def RemovedBody515_65 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 2
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody515_66 : StackLang.HolProg 64 :=
.seq RemovedBody515_64 RemovedBody515_65

def RemovedBody515_67 : StackLang.HolProg 64 :=
.seq RemovedBody515_63 RemovedBody515_66

def RemovedBody515_68 : StackLang.HolProg 64 :=
.seq RemovedBody515_62 RemovedBody515_67

def RemovedBody515_69 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody515_70 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1655#64)

def RemovedBody515_71 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody515_72 : StackLang.HolProg 64 :=
.seq RemovedBody515_70 RemovedBody515_71

def RemovedBody515_73 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody515_74 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 2#64)

def RemovedBody515_75 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 1

def RemovedBody515_76 : StackLang.HolProg 64 :=
.seq RemovedBody515_74 RemovedBody515_75

def RemovedBody515_77 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody515_78 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) RemovedBody515_76 RemovedBody515_77

def RemovedBody515_79 : StackLang.HolProg 64 :=
.seq RemovedBody515_73 RemovedBody515_78

def RemovedBody515_80 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def RemovedBody515_81 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody515_82 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 515 5

def RemovedBody515_83 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody515_84 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody515_85 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody515_86 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody515_87 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def RemovedBody515_88 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def RemovedBody515_89 : StackLang.HolProg 64 :=
.seq RemovedBody515_87 RemovedBody515_88

def RemovedBody515_90 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def RemovedBody515_91 : StackLang.HolProg 64 :=
.seq RemovedBody515_89 RemovedBody515_90

def RemovedBody515_92 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody515_93 : StackLang.HolProg 64 :=
.seq RemovedBody515_91 RemovedBody515_92

def RemovedBody515_94 : StackLang.HolProg 64 :=
.seq RemovedBody515_86 RemovedBody515_93

def RemovedBody515_95 : StackLang.HolProg 64 :=
.seq RemovedBody515_85 RemovedBody515_94

def RemovedBody515_96 : StackLang.HolProg 64 :=
.seq RemovedBody515_84 RemovedBody515_95

def RemovedBody515_97 : StackLang.HolProg 64 :=
.seq RemovedBody515_83 RemovedBody515_96

def RemovedBody515_98 : StackLang.HolProg 64 :=
.seq RemovedBody515_82 RemovedBody515_97

def RemovedBody515_99 : StackLang.HolProg 64 :=
.seq RemovedBody515_81 RemovedBody515_98

def RemovedBody515_100 : StackLang.HolProg 64 :=
.seq RemovedBody515_80 RemovedBody515_99

def RemovedBody515_101 : StackLang.HolProg 64 :=
.seq RemovedBody515_79 RemovedBody515_100

def RemovedBody515_102 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody515_103 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody515_104 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody515_105 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody515_106 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody515_107 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody515_108 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 0 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def RemovedBody515_109 : StackLang.HolProg 64 :=
.seq RemovedBody515_107 RemovedBody515_108

def RemovedBody515_110 : StackLang.HolProg 64 :=
.seq RemovedBody515_106 RemovedBody515_109

def RemovedBody515_111 : StackLang.HolProg 64 :=
.seq RemovedBody515_105 RemovedBody515_110

def RemovedBody515_112 : StackLang.HolProg 64 :=
.seq RemovedBody515_104 RemovedBody515_111

def RemovedBody515_113 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody515_114 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def RemovedBody515_115 : StackLang.HolProg 64 :=
.seq RemovedBody515_113 RemovedBody515_114

def RemovedBody515_116 : StackLang.HolProg 64 :=
.call (some (RemovedBody515_112, 0, 515, 4)) (Sum.inl 475) (some (RemovedBody515_115, 515, 5))

def RemovedBody515_117 : StackLang.HolProg 64 :=
.seq RemovedBody515_103 RemovedBody515_116

def RemovedBody515_118 : StackLang.HolProg 64 :=
.seq RemovedBody515_102 RemovedBody515_117

def RemovedBody515_119 : StackLang.HolProg 64 :=
.seq RemovedBody515_101 RemovedBody515_118

def RemovedBody515_120 : StackLang.HolProg 64 :=
.seq RemovedBody515_72 RemovedBody515_119

def RemovedBody515_121 : StackLang.HolProg 64 :=
.seq RemovedBody515_69 RemovedBody515_120

def RemovedBody515_122 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody515_123 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 3#64)

def RemovedBody515_124 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 4
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 64#64))

def RemovedBody515_125 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 40#64))

def RemovedBody515_126 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 3
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 32#64))

def RemovedBody515_127 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 2
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody515_128 : StackLang.HolProg 64 :=
.seq RemovedBody515_126 RemovedBody515_127

def RemovedBody515_129 : StackLang.HolProg 64 :=
.seq RemovedBody515_125 RemovedBody515_128

def RemovedBody515_130 : StackLang.HolProg 64 :=
.seq RemovedBody515_124 RemovedBody515_129

def RemovedBody515_131 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody515_132 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1656#64)

def RemovedBody515_133 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody515_134 : StackLang.HolProg 64 :=
.seq RemovedBody515_132 RemovedBody515_133

def RemovedBody515_135 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody515_136 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 2#64)

def RemovedBody515_137 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 1

def RemovedBody515_138 : StackLang.HolProg 64 :=
.seq RemovedBody515_136 RemovedBody515_137

def RemovedBody515_139 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody515_140 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) RemovedBody515_138 RemovedBody515_139

def RemovedBody515_141 : StackLang.HolProg 64 :=
.seq RemovedBody515_135 RemovedBody515_140

def RemovedBody515_142 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def RemovedBody515_143 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody515_144 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 515 7

def RemovedBody515_145 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody515_146 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody515_147 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody515_148 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody515_149 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def RemovedBody515_150 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def RemovedBody515_151 : StackLang.HolProg 64 :=
.seq RemovedBody515_149 RemovedBody515_150

def RemovedBody515_152 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def RemovedBody515_153 : StackLang.HolProg 64 :=
.seq RemovedBody515_151 RemovedBody515_152

def RemovedBody515_154 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody515_155 : StackLang.HolProg 64 :=
.seq RemovedBody515_153 RemovedBody515_154

def RemovedBody515_156 : StackLang.HolProg 64 :=
.seq RemovedBody515_148 RemovedBody515_155

def RemovedBody515_157 : StackLang.HolProg 64 :=
.seq RemovedBody515_147 RemovedBody515_156

def RemovedBody515_158 : StackLang.HolProg 64 :=
.seq RemovedBody515_146 RemovedBody515_157

def RemovedBody515_159 : StackLang.HolProg 64 :=
.seq RemovedBody515_145 RemovedBody515_158

def RemovedBody515_160 : StackLang.HolProg 64 :=
.seq RemovedBody515_144 RemovedBody515_159

def RemovedBody515_161 : StackLang.HolProg 64 :=
.seq RemovedBody515_143 RemovedBody515_160

def RemovedBody515_162 : StackLang.HolProg 64 :=
.seq RemovedBody515_142 RemovedBody515_161

def RemovedBody515_163 : StackLang.HolProg 64 :=
.seq RemovedBody515_141 RemovedBody515_162

def RemovedBody515_164 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody515_165 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody515_166 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody515_167 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody515_168 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody515_169 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody515_170 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 64#64))

def RemovedBody515_171 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 8
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 56#64))

def RemovedBody515_172 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 5
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 48#64))

def RemovedBody515_173 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 7
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 40#64))

def RemovedBody515_174 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 3
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 32#64))

def RemovedBody515_175 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 4
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 24#64))

def RemovedBody515_176 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 2
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody515_177 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 6
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody515_178 : StackLang.HolProg 64 :=
.seq RemovedBody515_176 RemovedBody515_177

def RemovedBody515_179 : StackLang.HolProg 64 :=
.seq RemovedBody515_175 RemovedBody515_178

def RemovedBody515_180 : StackLang.HolProg 64 :=
.seq RemovedBody515_174 RemovedBody515_179

def RemovedBody515_181 : StackLang.HolProg 64 :=
.seq RemovedBody515_173 RemovedBody515_180

def RemovedBody515_182 : StackLang.HolProg 64 :=
.seq RemovedBody515_172 RemovedBody515_181

def RemovedBody515_183 : StackLang.HolProg 64 :=
.seq RemovedBody515_171 RemovedBody515_182

def RemovedBody515_184 : StackLang.HolProg 64 :=
.seq RemovedBody515_170 RemovedBody515_183

def RemovedBody515_185 : StackLang.HolProg 64 :=
.seq RemovedBody515_169 RemovedBody515_184

def RemovedBody515_186 : StackLang.HolProg 64 :=
.seq RemovedBody515_168 RemovedBody515_185

def RemovedBody515_187 : StackLang.HolProg 64 :=
.seq RemovedBody515_167 RemovedBody515_186

def RemovedBody515_188 : StackLang.HolProg 64 :=
.seq RemovedBody515_166 RemovedBody515_187

def RemovedBody515_189 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 64#64))

def RemovedBody515_190 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 8
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 56#64))

def RemovedBody515_191 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 5
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 48#64))

def RemovedBody515_192 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 7
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 40#64))

def RemovedBody515_193 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 3
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 32#64))

def RemovedBody515_194 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 4
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 24#64))

def RemovedBody515_195 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 2
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody515_196 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 6
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody515_197 : StackLang.HolProg 64 :=
.seq RemovedBody515_195 RemovedBody515_196

def RemovedBody515_198 : StackLang.HolProg 64 :=
.seq RemovedBody515_194 RemovedBody515_197

def RemovedBody515_199 : StackLang.HolProg 64 :=
.seq RemovedBody515_193 RemovedBody515_198

def RemovedBody515_200 : StackLang.HolProg 64 :=
.seq RemovedBody515_192 RemovedBody515_199

def RemovedBody515_201 : StackLang.HolProg 64 :=
.seq RemovedBody515_191 RemovedBody515_200

def RemovedBody515_202 : StackLang.HolProg 64 :=
.seq RemovedBody515_190 RemovedBody515_201

def RemovedBody515_203 : StackLang.HolProg 64 :=
.seq RemovedBody515_189 RemovedBody515_202

def RemovedBody515_204 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def RemovedBody515_205 : StackLang.HolProg 64 :=
.seq RemovedBody515_203 RemovedBody515_204

def RemovedBody515_206 : StackLang.HolProg 64 :=
.call (some (RemovedBody515_188, 0, 515, 6)) (Sum.inl 470) (some (RemovedBody515_205, 515, 7))

def RemovedBody515_207 : StackLang.HolProg 64 :=
.seq RemovedBody515_165 RemovedBody515_206

def RemovedBody515_208 : StackLang.HolProg 64 :=
.seq RemovedBody515_164 RemovedBody515_207

def RemovedBody515_209 : StackLang.HolProg 64 :=
.seq RemovedBody515_163 RemovedBody515_208

def RemovedBody515_210 : StackLang.HolProg 64 :=
.seq RemovedBody515_134 RemovedBody515_209

def RemovedBody515_211 : StackLang.HolProg 64 :=
.seq RemovedBody515_131 RemovedBody515_210

def RemovedBody515_212 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody515_213 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody515_214 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 1 7
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 8)))

def RemovedBody515_215 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody515_216 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 2 2
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 6)))

def RemovedBody515_217 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody515_218 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 3 3
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 5)))

def RemovedBody515_219 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody515_220 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 4 0
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 4)))

def RemovedBody515_221 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody515_222 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody515_223 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1657#64)

def RemovedBody515_224 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody515_225 : StackLang.HolProg 64 :=
.seq RemovedBody515_223 RemovedBody515_224

def RemovedBody515_226 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody515_227 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 2#64)

def RemovedBody515_228 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 1

def RemovedBody515_229 : StackLang.HolProg 64 :=
.seq RemovedBody515_227 RemovedBody515_228

def RemovedBody515_230 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody515_231 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) RemovedBody515_229 RemovedBody515_230

def RemovedBody515_232 : StackLang.HolProg 64 :=
.seq RemovedBody515_226 RemovedBody515_231

def RemovedBody515_233 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def RemovedBody515_234 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody515_235 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 515 9

def RemovedBody515_236 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody515_237 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody515_238 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody515_239 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody515_240 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def RemovedBody515_241 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def RemovedBody515_242 : StackLang.HolProg 64 :=
.seq RemovedBody515_240 RemovedBody515_241

def RemovedBody515_243 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def RemovedBody515_244 : StackLang.HolProg 64 :=
.seq RemovedBody515_242 RemovedBody515_243

def RemovedBody515_245 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody515_246 : StackLang.HolProg 64 :=
.seq RemovedBody515_244 RemovedBody515_245

def RemovedBody515_247 : StackLang.HolProg 64 :=
.seq RemovedBody515_239 RemovedBody515_246

def RemovedBody515_248 : StackLang.HolProg 64 :=
.seq RemovedBody515_238 RemovedBody515_247

def RemovedBody515_249 : StackLang.HolProg 64 :=
.seq RemovedBody515_237 RemovedBody515_248

def RemovedBody515_250 : StackLang.HolProg 64 :=
.seq RemovedBody515_236 RemovedBody515_249

def RemovedBody515_251 : StackLang.HolProg 64 :=
.seq RemovedBody515_235 RemovedBody515_250

def RemovedBody515_252 : StackLang.HolProg 64 :=
.seq RemovedBody515_234 RemovedBody515_251

def RemovedBody515_253 : StackLang.HolProg 64 :=
.seq RemovedBody515_233 RemovedBody515_252

def RemovedBody515_254 : StackLang.HolProg 64 :=
.seq RemovedBody515_232 RemovedBody515_253

def RemovedBody515_255 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody515_256 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody515_257 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody515_258 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody515_259 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody515_260 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody515_261 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody515_262 : StackLang.HolProg 64 :=
.seq RemovedBody515_260 RemovedBody515_261

def RemovedBody515_263 : StackLang.HolProg 64 :=
.seq RemovedBody515_259 RemovedBody515_262

def RemovedBody515_264 : StackLang.HolProg 64 :=
.seq RemovedBody515_258 RemovedBody515_263

def RemovedBody515_265 : StackLang.HolProg 64 :=
.seq RemovedBody515_257 RemovedBody515_264

def RemovedBody515_266 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody515_267 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def RemovedBody515_268 : StackLang.HolProg 64 :=
.seq RemovedBody515_266 RemovedBody515_267

def RemovedBody515_269 : StackLang.HolProg 64 :=
.call (some (RemovedBody515_265, 0, 515, 8)) (Sum.inl 476) (some (RemovedBody515_268, 515, 9))

def RemovedBody515_270 : StackLang.HolProg 64 :=
.seq RemovedBody515_256 RemovedBody515_269

def RemovedBody515_271 : StackLang.HolProg 64 :=
.seq RemovedBody515_255 RemovedBody515_270

def RemovedBody515_272 : StackLang.HolProg 64 :=
.seq RemovedBody515_254 RemovedBody515_271

def RemovedBody515_273 : StackLang.HolProg 64 :=
.seq RemovedBody515_225 RemovedBody515_272

def RemovedBody515_274 : StackLang.HolProg 64 :=
.seq RemovedBody515_222 RemovedBody515_273

def RemovedBody515_275 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody515_276 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 1#64)

def RemovedBody515_277 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody515_278 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody515_279 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1658#64)

def RemovedBody515_280 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody515_281 : StackLang.HolProg 64 :=
.seq RemovedBody515_279 RemovedBody515_280

def RemovedBody515_282 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody515_283 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 2#64)

def RemovedBody515_284 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 1

def RemovedBody515_285 : StackLang.HolProg 64 :=
.seq RemovedBody515_283 RemovedBody515_284

def RemovedBody515_286 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody515_287 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) RemovedBody515_285 RemovedBody515_286

def RemovedBody515_288 : StackLang.HolProg 64 :=
.seq RemovedBody515_282 RemovedBody515_287

def RemovedBody515_289 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def RemovedBody515_290 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody515_291 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 515 11

def RemovedBody515_292 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody515_293 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody515_294 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody515_295 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody515_296 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def RemovedBody515_297 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def RemovedBody515_298 : StackLang.HolProg 64 :=
.seq RemovedBody515_296 RemovedBody515_297

def RemovedBody515_299 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def RemovedBody515_300 : StackLang.HolProg 64 :=
.seq RemovedBody515_298 RemovedBody515_299

def RemovedBody515_301 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody515_302 : StackLang.HolProg 64 :=
.seq RemovedBody515_300 RemovedBody515_301

def RemovedBody515_303 : StackLang.HolProg 64 :=
.seq RemovedBody515_295 RemovedBody515_302

def RemovedBody515_304 : StackLang.HolProg 64 :=
.seq RemovedBody515_294 RemovedBody515_303

def RemovedBody515_305 : StackLang.HolProg 64 :=
.seq RemovedBody515_293 RemovedBody515_304

def RemovedBody515_306 : StackLang.HolProg 64 :=
.seq RemovedBody515_292 RemovedBody515_305

def RemovedBody515_307 : StackLang.HolProg 64 :=
.seq RemovedBody515_291 RemovedBody515_306

def RemovedBody515_308 : StackLang.HolProg 64 :=
.seq RemovedBody515_290 RemovedBody515_307

def RemovedBody515_309 : StackLang.HolProg 64 :=
.seq RemovedBody515_289 RemovedBody515_308

def RemovedBody515_310 : StackLang.HolProg 64 :=
.seq RemovedBody515_288 RemovedBody515_309

def RemovedBody515_311 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody515_312 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody515_313 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody515_314 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody515_315 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody515_316 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody515_317 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 72#64))

def RemovedBody515_318 : StackLang.HolProg 64 :=
.seq RemovedBody515_316 RemovedBody515_317

def RemovedBody515_319 : StackLang.HolProg 64 :=
.seq RemovedBody515_315 RemovedBody515_318

def RemovedBody515_320 : StackLang.HolProg 64 :=
.seq RemovedBody515_314 RemovedBody515_319

def RemovedBody515_321 : StackLang.HolProg 64 :=
.seq RemovedBody515_313 RemovedBody515_320

def RemovedBody515_322 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 72#64))

def RemovedBody515_323 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def RemovedBody515_324 : StackLang.HolProg 64 :=
.seq RemovedBody515_322 RemovedBody515_323

def RemovedBody515_325 : StackLang.HolProg 64 :=
.call (some (RemovedBody515_321, 0, 515, 10)) (Sum.inl 490) (some (RemovedBody515_324, 515, 11))

def RemovedBody515_326 : StackLang.HolProg 64 :=
.seq RemovedBody515_312 RemovedBody515_325

def RemovedBody515_327 : StackLang.HolProg 64 :=
.seq RemovedBody515_311 RemovedBody515_326

def RemovedBody515_328 : StackLang.HolProg 64 :=
.seq RemovedBody515_310 RemovedBody515_327

def RemovedBody515_329 : StackLang.HolProg 64 :=
.seq RemovedBody515_281 RemovedBody515_328

def RemovedBody515_330 : StackLang.HolProg 64 :=
.seq RemovedBody515_278 RemovedBody515_329

def RemovedBody515_331 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody515_332 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 0#64)

def RemovedBody515_333 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody515_334 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 80#64)))

def RemovedBody515_335 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 0

def RemovedBody515_336 : StackLang.HolProg 64 :=
.seq RemovedBody515_334 RemovedBody515_335

def RemovedBody515_337 : StackLang.HolProg 64 :=
.seq RemovedBody515_333 RemovedBody515_336

def RemovedBody515_338 : StackLang.HolProg 64 :=
.seq RemovedBody515_332 RemovedBody515_337

def RemovedBody515_339 : StackLang.HolProg 64 :=
.seq RemovedBody515_331 RemovedBody515_338

def RemovedBody515_340 : StackLang.HolProg 64 :=
.seq RemovedBody515_330 RemovedBody515_339

def RemovedBody515_341 : StackLang.HolProg 64 :=
.seq RemovedBody515_277 RemovedBody515_340

def RemovedBody515_342 : StackLang.HolProg 64 :=
.seq RemovedBody515_276 RemovedBody515_341

def RemovedBody515_343 : StackLang.HolProg 64 :=
.seq RemovedBody515_275 RemovedBody515_342

def RemovedBody515_344 : StackLang.HolProg 64 :=
.seq RemovedBody515_274 RemovedBody515_343

def RemovedBody515_345 : StackLang.HolProg 64 :=
.seq RemovedBody515_221 RemovedBody515_344

def RemovedBody515_346 : StackLang.HolProg 64 :=
.seq RemovedBody515_220 RemovedBody515_345

def RemovedBody515_347 : StackLang.HolProg 64 :=
.seq RemovedBody515_219 RemovedBody515_346

def RemovedBody515_348 : StackLang.HolProg 64 :=
.seq RemovedBody515_218 RemovedBody515_347

def RemovedBody515_349 : StackLang.HolProg 64 :=
.seq RemovedBody515_217 RemovedBody515_348

def RemovedBody515_350 : StackLang.HolProg 64 :=
.seq RemovedBody515_216 RemovedBody515_349

def RemovedBody515_351 : StackLang.HolProg 64 :=
.seq RemovedBody515_215 RemovedBody515_350

def RemovedBody515_352 : StackLang.HolProg 64 :=
.seq RemovedBody515_214 RemovedBody515_351

def RemovedBody515_353 : StackLang.HolProg 64 :=
.seq RemovedBody515_213 RemovedBody515_352

def RemovedBody515_354 : StackLang.HolProg 64 :=
.seq RemovedBody515_212 RemovedBody515_353

def RemovedBody515_355 : StackLang.HolProg 64 :=
.seq RemovedBody515_211 RemovedBody515_354

def RemovedBody515_356 : StackLang.HolProg 64 :=
.seq RemovedBody515_130 RemovedBody515_355

def RemovedBody515_357 : StackLang.HolProg 64 :=
.seq RemovedBody515_123 RemovedBody515_356

def RemovedBody515_358 : StackLang.HolProg 64 :=
.seq RemovedBody515_122 RemovedBody515_357

def RemovedBody515_359 : StackLang.HolProg 64 :=
.seq RemovedBody515_121 RemovedBody515_358

def RemovedBody515_360 : StackLang.HolProg 64 :=
.seq RemovedBody515_68 RemovedBody515_359

def RemovedBody515_361 : StackLang.HolProg 64 :=
.seq RemovedBody515_61 RemovedBody515_360

def RemovedBody515_362 : StackLang.HolProg 64 :=
.seq RemovedBody515_60 RemovedBody515_361

def RemovedBody515_363 : StackLang.HolProg 64 :=
.seq RemovedBody515_7 RemovedBody515_362

def RemovedBody515_364 : StackLang.HolProg 64 :=
.seq RemovedBody515_6 RemovedBody515_363

def Removed515 : Nat × StackLang.HolProg 64 := (515, RemovedBody515_364)
theorem Removed515_eq : StackRemove.progComp false riscvConfig.addrOffset (riscvConfig.regCount - (riscvConfig.avoidRegs.length + 3)) Alloc515 = Removed515 := by
  kernel_rfl
#print axioms Removed515_eq
end InitECandidate.Proofs.BackendStages
