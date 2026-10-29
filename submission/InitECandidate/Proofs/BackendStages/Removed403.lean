import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.BackendStages.Alloc403
import Flapjack.Compiler.Backend.Backend
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
namespace InitECandidate.Proofs.BackendStages
def RemovedBody403_0 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 16#64)))

def RemovedBody403_1 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 2#64)

def RemovedBody403_2 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 1

def RemovedBody403_3 : StackLang.HolProg 64 :=
.seq RemovedBody403_1 RemovedBody403_2

def RemovedBody403_4 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody403_5 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) RemovedBody403_3 RemovedBody403_4

def RemovedBody403_6 : StackLang.HolProg 64 :=
.seq RemovedBody403_0 RemovedBody403_5

def RemovedBody403_7 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody403_8 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody403_9 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1200#64)

def RemovedBody403_10 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody403_11 : StackLang.HolProg 64 :=
.seq RemovedBody403_9 RemovedBody403_10

def RemovedBody403_12 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody403_13 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 2#64)

def RemovedBody403_14 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 1

def RemovedBody403_15 : StackLang.HolProg 64 :=
.seq RemovedBody403_13 RemovedBody403_14

def RemovedBody403_16 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody403_17 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) RemovedBody403_15 RemovedBody403_16

def RemovedBody403_18 : StackLang.HolProg 64 :=
.seq RemovedBody403_12 RemovedBody403_17

def RemovedBody403_19 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def RemovedBody403_20 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody403_21 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 403 3

def RemovedBody403_22 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody403_23 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody403_24 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody403_25 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody403_26 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def RemovedBody403_27 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def RemovedBody403_28 : StackLang.HolProg 64 :=
.seq RemovedBody403_26 RemovedBody403_27

def RemovedBody403_29 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def RemovedBody403_30 : StackLang.HolProg 64 :=
.seq RemovedBody403_28 RemovedBody403_29

def RemovedBody403_31 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody403_32 : StackLang.HolProg 64 :=
.seq RemovedBody403_30 RemovedBody403_31

def RemovedBody403_33 : StackLang.HolProg 64 :=
.seq RemovedBody403_25 RemovedBody403_32

def RemovedBody403_34 : StackLang.HolProg 64 :=
.seq RemovedBody403_24 RemovedBody403_33

def RemovedBody403_35 : StackLang.HolProg 64 :=
.seq RemovedBody403_23 RemovedBody403_34

def RemovedBody403_36 : StackLang.HolProg 64 :=
.seq RemovedBody403_22 RemovedBody403_35

def RemovedBody403_37 : StackLang.HolProg 64 :=
.seq RemovedBody403_21 RemovedBody403_36

def RemovedBody403_38 : StackLang.HolProg 64 :=
.seq RemovedBody403_20 RemovedBody403_37

def RemovedBody403_39 : StackLang.HolProg 64 :=
.seq RemovedBody403_19 RemovedBody403_38

def RemovedBody403_40 : StackLang.HolProg 64 :=
.seq RemovedBody403_18 RemovedBody403_39

def RemovedBody403_41 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody403_42 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody403_43 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody403_44 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody403_45 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody403_46 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody403_47 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 0 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def RemovedBody403_48 : StackLang.HolProg 64 :=
.seq RemovedBody403_46 RemovedBody403_47

def RemovedBody403_49 : StackLang.HolProg 64 :=
.seq RemovedBody403_45 RemovedBody403_48

def RemovedBody403_50 : StackLang.HolProg 64 :=
.seq RemovedBody403_44 RemovedBody403_49

def RemovedBody403_51 : StackLang.HolProg 64 :=
.seq RemovedBody403_43 RemovedBody403_50

def RemovedBody403_52 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody403_53 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def RemovedBody403_54 : StackLang.HolProg 64 :=
.seq RemovedBody403_52 RemovedBody403_53

def RemovedBody403_55 : StackLang.HolProg 64 :=
.call (some (RemovedBody403_51, 0, 403, 2)) (Sum.inl 399) (some (RemovedBody403_54, 403, 3))

def RemovedBody403_56 : StackLang.HolProg 64 :=
.seq RemovedBody403_42 RemovedBody403_55

def RemovedBody403_57 : StackLang.HolProg 64 :=
.seq RemovedBody403_41 RemovedBody403_56

def RemovedBody403_58 : StackLang.HolProg 64 :=
.seq RemovedBody403_40 RemovedBody403_57

def RemovedBody403_59 : StackLang.HolProg 64 :=
.seq RemovedBody403_11 RemovedBody403_58

def RemovedBody403_60 : StackLang.HolProg 64 :=
.seq RemovedBody403_8 RemovedBody403_59

def RemovedBody403_61 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody403_62 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 1 0
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 0)))

def RemovedBody403_63 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551592#64))

def RemovedBody403_64 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsl 0 0
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 1#64)))

def RemovedBody403_65 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 0 0
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 26)))

def RemovedBody403_66 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 2
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 0 18446744073709551488#64))

def RemovedBody403_67 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 3 32#64)

def RemovedBody403_68 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody403_69 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody403_70 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1201#64)

def RemovedBody403_71 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody403_72 : StackLang.HolProg 64 :=
.seq RemovedBody403_70 RemovedBody403_71

def RemovedBody403_73 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody403_74 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 2#64)

def RemovedBody403_75 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 1

def RemovedBody403_76 : StackLang.HolProg 64 :=
.seq RemovedBody403_74 RemovedBody403_75

def RemovedBody403_77 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody403_78 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) RemovedBody403_76 RemovedBody403_77

def RemovedBody403_79 : StackLang.HolProg 64 :=
.seq RemovedBody403_73 RemovedBody403_78

def RemovedBody403_80 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def RemovedBody403_81 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody403_82 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 403 5

def RemovedBody403_83 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody403_84 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody403_85 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody403_86 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody403_87 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def RemovedBody403_88 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def RemovedBody403_89 : StackLang.HolProg 64 :=
.seq RemovedBody403_87 RemovedBody403_88

def RemovedBody403_90 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def RemovedBody403_91 : StackLang.HolProg 64 :=
.seq RemovedBody403_89 RemovedBody403_90

def RemovedBody403_92 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody403_93 : StackLang.HolProg 64 :=
.seq RemovedBody403_91 RemovedBody403_92

def RemovedBody403_94 : StackLang.HolProg 64 :=
.seq RemovedBody403_86 RemovedBody403_93

def RemovedBody403_95 : StackLang.HolProg 64 :=
.seq RemovedBody403_85 RemovedBody403_94

def RemovedBody403_96 : StackLang.HolProg 64 :=
.seq RemovedBody403_84 RemovedBody403_95

def RemovedBody403_97 : StackLang.HolProg 64 :=
.seq RemovedBody403_83 RemovedBody403_96

def RemovedBody403_98 : StackLang.HolProg 64 :=
.seq RemovedBody403_82 RemovedBody403_97

def RemovedBody403_99 : StackLang.HolProg 64 :=
.seq RemovedBody403_81 RemovedBody403_98

def RemovedBody403_100 : StackLang.HolProg 64 :=
.seq RemovedBody403_80 RemovedBody403_99

def RemovedBody403_101 : StackLang.HolProg 64 :=
.seq RemovedBody403_79 RemovedBody403_100

def RemovedBody403_102 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody403_103 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody403_104 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody403_105 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody403_106 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody403_107 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody403_108 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 0 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def RemovedBody403_109 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 2
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody403_110 : StackLang.HolProg 64 :=
.seq RemovedBody403_108 RemovedBody403_109

def RemovedBody403_111 : StackLang.HolProg 64 :=
.seq RemovedBody403_107 RemovedBody403_110

def RemovedBody403_112 : StackLang.HolProg 64 :=
.seq RemovedBody403_106 RemovedBody403_111

def RemovedBody403_113 : StackLang.HolProg 64 :=
.seq RemovedBody403_105 RemovedBody403_112

def RemovedBody403_114 : StackLang.HolProg 64 :=
.seq RemovedBody403_104 RemovedBody403_113

def RemovedBody403_115 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 2
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody403_116 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def RemovedBody403_117 : StackLang.HolProg 64 :=
.seq RemovedBody403_115 RemovedBody403_116

def RemovedBody403_118 : StackLang.HolProg 64 :=
.call (some (RemovedBody403_114, 0, 403, 4)) (Sum.inl 79) (some (RemovedBody403_117, 403, 5))

def RemovedBody403_119 : StackLang.HolProg 64 :=
.seq RemovedBody403_103 RemovedBody403_118

def RemovedBody403_120 : StackLang.HolProg 64 :=
.seq RemovedBody403_102 RemovedBody403_119

def RemovedBody403_121 : StackLang.HolProg 64 :=
.seq RemovedBody403_101 RemovedBody403_120

def RemovedBody403_122 : StackLang.HolProg 64 :=
.seq RemovedBody403_72 RemovedBody403_121

def RemovedBody403_123 : StackLang.HolProg 64 :=
.seq RemovedBody403_69 RemovedBody403_122

def RemovedBody403_124 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody403_125 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody403_126 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 0#64)

def RemovedBody403_127 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody403_128 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 0#64)

def RemovedBody403_129 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody403_130 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 16#64)))

def RemovedBody403_131 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 2

def RemovedBody403_132 : StackLang.HolProg 64 :=
.seq RemovedBody403_130 RemovedBody403_131

def RemovedBody403_133 : StackLang.HolProg 64 :=
.seq RemovedBody403_129 RemovedBody403_132

def RemovedBody403_134 : StackLang.HolProg 64 :=
.seq RemovedBody403_128 RemovedBody403_133

def RemovedBody403_135 : StackLang.HolProg 64 :=
.seq RemovedBody403_127 RemovedBody403_134

def RemovedBody403_136 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody403_137 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.notEqual) 0 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1) RemovedBody403_135 RemovedBody403_136

def RemovedBody403_138 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody403_139 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody403_140 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 1#64)

def RemovedBody403_141 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody403_142 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 16#64)))

def RemovedBody403_143 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 2

def RemovedBody403_144 : StackLang.HolProg 64 :=
.seq RemovedBody403_142 RemovedBody403_143

def RemovedBody403_145 : StackLang.HolProg 64 :=
.seq RemovedBody403_141 RemovedBody403_144

def RemovedBody403_146 : StackLang.HolProg 64 :=
.seq RemovedBody403_140 RemovedBody403_145

def RemovedBody403_147 : StackLang.HolProg 64 :=
.seq RemovedBody403_139 RemovedBody403_146

def RemovedBody403_148 : StackLang.HolProg 64 :=
.seq RemovedBody403_138 RemovedBody403_147

def RemovedBody403_149 : StackLang.HolProg 64 :=
.seq RemovedBody403_137 RemovedBody403_148

def RemovedBody403_150 : StackLang.HolProg 64 :=
.seq RemovedBody403_126 RemovedBody403_149

def RemovedBody403_151 : StackLang.HolProg 64 :=
.seq RemovedBody403_125 RemovedBody403_150

def RemovedBody403_152 : StackLang.HolProg 64 :=
.seq RemovedBody403_124 RemovedBody403_151

def RemovedBody403_153 : StackLang.HolProg 64 :=
.seq RemovedBody403_123 RemovedBody403_152

def RemovedBody403_154 : StackLang.HolProg 64 :=
.seq RemovedBody403_68 RemovedBody403_153

def RemovedBody403_155 : StackLang.HolProg 64 :=
.seq RemovedBody403_67 RemovedBody403_154

def RemovedBody403_156 : StackLang.HolProg 64 :=
.seq RemovedBody403_66 RemovedBody403_155

def RemovedBody403_157 : StackLang.HolProg 64 :=
.seq RemovedBody403_65 RemovedBody403_156

def RemovedBody403_158 : StackLang.HolProg 64 :=
.seq RemovedBody403_64 RemovedBody403_157

def RemovedBody403_159 : StackLang.HolProg 64 :=
.seq RemovedBody403_63 RemovedBody403_158

def RemovedBody403_160 : StackLang.HolProg 64 :=
.seq RemovedBody403_62 RemovedBody403_159

def RemovedBody403_161 : StackLang.HolProg 64 :=
.seq RemovedBody403_61 RemovedBody403_160

def RemovedBody403_162 : StackLang.HolProg 64 :=
.seq RemovedBody403_60 RemovedBody403_161

def RemovedBody403_163 : StackLang.HolProg 64 :=
.seq RemovedBody403_7 RemovedBody403_162

def RemovedBody403_164 : StackLang.HolProg 64 :=
.seq RemovedBody403_6 RemovedBody403_163

def Removed403 : Nat × StackLang.HolProg 64 := (403, RemovedBody403_164)
theorem Removed403_eq : StackRemove.progComp false riscvConfig.addrOffset (riscvConfig.regCount - (riscvConfig.avoidRegs.length + 3)) Alloc403 = Removed403 := by
  kernel_rfl
#print axioms Removed403_eq
end InitECandidate.Proofs.BackendStages
