import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.BackendStages.Alloc516
import Flapjack.Compiler.Backend.Backend
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
namespace InitECandidate.Proofs.BackendStages
def RemovedBody516_0 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 80#64)))

def RemovedBody516_1 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 2#64)

def RemovedBody516_2 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 1

def RemovedBody516_3 : StackLang.HolProg 64 :=
.seq RemovedBody516_1 RemovedBody516_2

def RemovedBody516_4 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody516_5 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) RemovedBody516_3 RemovedBody516_4

def RemovedBody516_6 : StackLang.HolProg 64 :=
.seq RemovedBody516_0 RemovedBody516_5

def RemovedBody516_7 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 72#64))

def RemovedBody516_8 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody516_9 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1659#64)

def RemovedBody516_10 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody516_11 : StackLang.HolProg 64 :=
.seq RemovedBody516_9 RemovedBody516_10

def RemovedBody516_12 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody516_13 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 2#64)

def RemovedBody516_14 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 1

def RemovedBody516_15 : StackLang.HolProg 64 :=
.seq RemovedBody516_13 RemovedBody516_14

def RemovedBody516_16 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody516_17 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) RemovedBody516_15 RemovedBody516_16

def RemovedBody516_18 : StackLang.HolProg 64 :=
.seq RemovedBody516_12 RemovedBody516_17

def RemovedBody516_19 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def RemovedBody516_20 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody516_21 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 516 3

def RemovedBody516_22 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody516_23 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody516_24 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody516_25 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody516_26 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def RemovedBody516_27 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def RemovedBody516_28 : StackLang.HolProg 64 :=
.seq RemovedBody516_26 RemovedBody516_27

def RemovedBody516_29 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def RemovedBody516_30 : StackLang.HolProg 64 :=
.seq RemovedBody516_28 RemovedBody516_29

def RemovedBody516_31 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody516_32 : StackLang.HolProg 64 :=
.seq RemovedBody516_30 RemovedBody516_31

def RemovedBody516_33 : StackLang.HolProg 64 :=
.seq RemovedBody516_25 RemovedBody516_32

def RemovedBody516_34 : StackLang.HolProg 64 :=
.seq RemovedBody516_24 RemovedBody516_33

def RemovedBody516_35 : StackLang.HolProg 64 :=
.seq RemovedBody516_23 RemovedBody516_34

def RemovedBody516_36 : StackLang.HolProg 64 :=
.seq RemovedBody516_22 RemovedBody516_35

def RemovedBody516_37 : StackLang.HolProg 64 :=
.seq RemovedBody516_21 RemovedBody516_36

def RemovedBody516_38 : StackLang.HolProg 64 :=
.seq RemovedBody516_20 RemovedBody516_37

def RemovedBody516_39 : StackLang.HolProg 64 :=
.seq RemovedBody516_19 RemovedBody516_38

def RemovedBody516_40 : StackLang.HolProg 64 :=
.seq RemovedBody516_18 RemovedBody516_39

def RemovedBody516_41 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody516_42 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody516_43 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody516_44 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody516_45 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody516_46 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody516_47 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 0 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def RemovedBody516_48 : StackLang.HolProg 64 :=
.seq RemovedBody516_46 RemovedBody516_47

def RemovedBody516_49 : StackLang.HolProg 64 :=
.seq RemovedBody516_45 RemovedBody516_48

def RemovedBody516_50 : StackLang.HolProg 64 :=
.seq RemovedBody516_44 RemovedBody516_49

def RemovedBody516_51 : StackLang.HolProg 64 :=
.seq RemovedBody516_43 RemovedBody516_50

def RemovedBody516_52 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody516_53 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def RemovedBody516_54 : StackLang.HolProg 64 :=
.seq RemovedBody516_52 RemovedBody516_53

def RemovedBody516_55 : StackLang.HolProg 64 :=
.call (some (RemovedBody516_51, 0, 516, 2)) (Sum.inl 475) (some (RemovedBody516_54, 516, 3))

def RemovedBody516_56 : StackLang.HolProg 64 :=
.seq RemovedBody516_42 RemovedBody516_55

def RemovedBody516_57 : StackLang.HolProg 64 :=
.seq RemovedBody516_41 RemovedBody516_56

def RemovedBody516_58 : StackLang.HolProg 64 :=
.seq RemovedBody516_40 RemovedBody516_57

def RemovedBody516_59 : StackLang.HolProg 64 :=
.seq RemovedBody516_11 RemovedBody516_58

def RemovedBody516_60 : StackLang.HolProg 64 :=
.seq RemovedBody516_8 RemovedBody516_59

def RemovedBody516_61 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody516_62 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 56#64))

def RemovedBody516_63 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 3
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 48#64))

def RemovedBody516_64 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 4
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 24#64))

def RemovedBody516_65 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 2
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody516_66 : StackLang.HolProg 64 :=
.seq RemovedBody516_64 RemovedBody516_65

def RemovedBody516_67 : StackLang.HolProg 64 :=
.seq RemovedBody516_63 RemovedBody516_66

def RemovedBody516_68 : StackLang.HolProg 64 :=
.seq RemovedBody516_62 RemovedBody516_67

def RemovedBody516_69 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody516_70 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1660#64)

def RemovedBody516_71 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody516_72 : StackLang.HolProg 64 :=
.seq RemovedBody516_70 RemovedBody516_71

def RemovedBody516_73 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody516_74 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 2#64)

def RemovedBody516_75 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 1

def RemovedBody516_76 : StackLang.HolProg 64 :=
.seq RemovedBody516_74 RemovedBody516_75

def RemovedBody516_77 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody516_78 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) RemovedBody516_76 RemovedBody516_77

def RemovedBody516_79 : StackLang.HolProg 64 :=
.seq RemovedBody516_73 RemovedBody516_78

def RemovedBody516_80 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def RemovedBody516_81 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody516_82 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 516 5

def RemovedBody516_83 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody516_84 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody516_85 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody516_86 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody516_87 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def RemovedBody516_88 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def RemovedBody516_89 : StackLang.HolProg 64 :=
.seq RemovedBody516_87 RemovedBody516_88

def RemovedBody516_90 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def RemovedBody516_91 : StackLang.HolProg 64 :=
.seq RemovedBody516_89 RemovedBody516_90

def RemovedBody516_92 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody516_93 : StackLang.HolProg 64 :=
.seq RemovedBody516_91 RemovedBody516_92

def RemovedBody516_94 : StackLang.HolProg 64 :=
.seq RemovedBody516_86 RemovedBody516_93

def RemovedBody516_95 : StackLang.HolProg 64 :=
.seq RemovedBody516_85 RemovedBody516_94

def RemovedBody516_96 : StackLang.HolProg 64 :=
.seq RemovedBody516_84 RemovedBody516_95

def RemovedBody516_97 : StackLang.HolProg 64 :=
.seq RemovedBody516_83 RemovedBody516_96

def RemovedBody516_98 : StackLang.HolProg 64 :=
.seq RemovedBody516_82 RemovedBody516_97

def RemovedBody516_99 : StackLang.HolProg 64 :=
.seq RemovedBody516_81 RemovedBody516_98

def RemovedBody516_100 : StackLang.HolProg 64 :=
.seq RemovedBody516_80 RemovedBody516_99

def RemovedBody516_101 : StackLang.HolProg 64 :=
.seq RemovedBody516_79 RemovedBody516_100

def RemovedBody516_102 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody516_103 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody516_104 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody516_105 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody516_106 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody516_107 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody516_108 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 0 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def RemovedBody516_109 : StackLang.HolProg 64 :=
.seq RemovedBody516_107 RemovedBody516_108

def RemovedBody516_110 : StackLang.HolProg 64 :=
.seq RemovedBody516_106 RemovedBody516_109

def RemovedBody516_111 : StackLang.HolProg 64 :=
.seq RemovedBody516_105 RemovedBody516_110

def RemovedBody516_112 : StackLang.HolProg 64 :=
.seq RemovedBody516_104 RemovedBody516_111

def RemovedBody516_113 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody516_114 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def RemovedBody516_115 : StackLang.HolProg 64 :=
.seq RemovedBody516_113 RemovedBody516_114

def RemovedBody516_116 : StackLang.HolProg 64 :=
.call (some (RemovedBody516_112, 0, 516, 4)) (Sum.inl 475) (some (RemovedBody516_115, 516, 5))

def RemovedBody516_117 : StackLang.HolProg 64 :=
.seq RemovedBody516_103 RemovedBody516_116

def RemovedBody516_118 : StackLang.HolProg 64 :=
.seq RemovedBody516_102 RemovedBody516_117

def RemovedBody516_119 : StackLang.HolProg 64 :=
.seq RemovedBody516_101 RemovedBody516_118

def RemovedBody516_120 : StackLang.HolProg 64 :=
.seq RemovedBody516_72 RemovedBody516_119

def RemovedBody516_121 : StackLang.HolProg 64 :=
.seq RemovedBody516_69 RemovedBody516_120

def RemovedBody516_122 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody516_123 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 3#64)

def RemovedBody516_124 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 4
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 64#64))

def RemovedBody516_125 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 40#64))

def RemovedBody516_126 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 3
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 32#64))

def RemovedBody516_127 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 2
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody516_128 : StackLang.HolProg 64 :=
.seq RemovedBody516_126 RemovedBody516_127

def RemovedBody516_129 : StackLang.HolProg 64 :=
.seq RemovedBody516_125 RemovedBody516_128

def RemovedBody516_130 : StackLang.HolProg 64 :=
.seq RemovedBody516_124 RemovedBody516_129

def RemovedBody516_131 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody516_132 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1661#64)

def RemovedBody516_133 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody516_134 : StackLang.HolProg 64 :=
.seq RemovedBody516_132 RemovedBody516_133

def RemovedBody516_135 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody516_136 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 2#64)

def RemovedBody516_137 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 1

def RemovedBody516_138 : StackLang.HolProg 64 :=
.seq RemovedBody516_136 RemovedBody516_137

def RemovedBody516_139 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody516_140 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) RemovedBody516_138 RemovedBody516_139

def RemovedBody516_141 : StackLang.HolProg 64 :=
.seq RemovedBody516_135 RemovedBody516_140

def RemovedBody516_142 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def RemovedBody516_143 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody516_144 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 516 7

def RemovedBody516_145 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody516_146 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody516_147 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody516_148 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody516_149 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def RemovedBody516_150 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def RemovedBody516_151 : StackLang.HolProg 64 :=
.seq RemovedBody516_149 RemovedBody516_150

def RemovedBody516_152 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def RemovedBody516_153 : StackLang.HolProg 64 :=
.seq RemovedBody516_151 RemovedBody516_152

def RemovedBody516_154 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody516_155 : StackLang.HolProg 64 :=
.seq RemovedBody516_153 RemovedBody516_154

def RemovedBody516_156 : StackLang.HolProg 64 :=
.seq RemovedBody516_148 RemovedBody516_155

def RemovedBody516_157 : StackLang.HolProg 64 :=
.seq RemovedBody516_147 RemovedBody516_156

def RemovedBody516_158 : StackLang.HolProg 64 :=
.seq RemovedBody516_146 RemovedBody516_157

def RemovedBody516_159 : StackLang.HolProg 64 :=
.seq RemovedBody516_145 RemovedBody516_158

def RemovedBody516_160 : StackLang.HolProg 64 :=
.seq RemovedBody516_144 RemovedBody516_159

def RemovedBody516_161 : StackLang.HolProg 64 :=
.seq RemovedBody516_143 RemovedBody516_160

def RemovedBody516_162 : StackLang.HolProg 64 :=
.seq RemovedBody516_142 RemovedBody516_161

def RemovedBody516_163 : StackLang.HolProg 64 :=
.seq RemovedBody516_141 RemovedBody516_162

def RemovedBody516_164 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody516_165 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody516_166 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody516_167 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody516_168 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody516_169 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody516_170 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 64#64))

def RemovedBody516_171 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 8
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 56#64))

def RemovedBody516_172 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 5
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 48#64))

def RemovedBody516_173 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 7
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 40#64))

def RemovedBody516_174 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 3
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 32#64))

def RemovedBody516_175 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 4
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 24#64))

def RemovedBody516_176 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 2
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody516_177 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 6
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody516_178 : StackLang.HolProg 64 :=
.seq RemovedBody516_176 RemovedBody516_177

def RemovedBody516_179 : StackLang.HolProg 64 :=
.seq RemovedBody516_175 RemovedBody516_178

def RemovedBody516_180 : StackLang.HolProg 64 :=
.seq RemovedBody516_174 RemovedBody516_179

def RemovedBody516_181 : StackLang.HolProg 64 :=
.seq RemovedBody516_173 RemovedBody516_180

def RemovedBody516_182 : StackLang.HolProg 64 :=
.seq RemovedBody516_172 RemovedBody516_181

def RemovedBody516_183 : StackLang.HolProg 64 :=
.seq RemovedBody516_171 RemovedBody516_182

def RemovedBody516_184 : StackLang.HolProg 64 :=
.seq RemovedBody516_170 RemovedBody516_183

def RemovedBody516_185 : StackLang.HolProg 64 :=
.seq RemovedBody516_169 RemovedBody516_184

def RemovedBody516_186 : StackLang.HolProg 64 :=
.seq RemovedBody516_168 RemovedBody516_185

def RemovedBody516_187 : StackLang.HolProg 64 :=
.seq RemovedBody516_167 RemovedBody516_186

def RemovedBody516_188 : StackLang.HolProg 64 :=
.seq RemovedBody516_166 RemovedBody516_187

def RemovedBody516_189 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 64#64))

def RemovedBody516_190 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 8
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 56#64))

def RemovedBody516_191 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 5
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 48#64))

def RemovedBody516_192 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 7
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 40#64))

def RemovedBody516_193 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 3
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 32#64))

def RemovedBody516_194 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 4
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 24#64))

def RemovedBody516_195 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 2
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody516_196 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 6
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody516_197 : StackLang.HolProg 64 :=
.seq RemovedBody516_195 RemovedBody516_196

def RemovedBody516_198 : StackLang.HolProg 64 :=
.seq RemovedBody516_194 RemovedBody516_197

def RemovedBody516_199 : StackLang.HolProg 64 :=
.seq RemovedBody516_193 RemovedBody516_198

def RemovedBody516_200 : StackLang.HolProg 64 :=
.seq RemovedBody516_192 RemovedBody516_199

def RemovedBody516_201 : StackLang.HolProg 64 :=
.seq RemovedBody516_191 RemovedBody516_200

def RemovedBody516_202 : StackLang.HolProg 64 :=
.seq RemovedBody516_190 RemovedBody516_201

def RemovedBody516_203 : StackLang.HolProg 64 :=
.seq RemovedBody516_189 RemovedBody516_202

def RemovedBody516_204 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def RemovedBody516_205 : StackLang.HolProg 64 :=
.seq RemovedBody516_203 RemovedBody516_204

def RemovedBody516_206 : StackLang.HolProg 64 :=
.call (some (RemovedBody516_188, 0, 516, 6)) (Sum.inl 470) (some (RemovedBody516_205, 516, 7))

def RemovedBody516_207 : StackLang.HolProg 64 :=
.seq RemovedBody516_165 RemovedBody516_206

def RemovedBody516_208 : StackLang.HolProg 64 :=
.seq RemovedBody516_164 RemovedBody516_207

def RemovedBody516_209 : StackLang.HolProg 64 :=
.seq RemovedBody516_163 RemovedBody516_208

def RemovedBody516_210 : StackLang.HolProg 64 :=
.seq RemovedBody516_134 RemovedBody516_209

def RemovedBody516_211 : StackLang.HolProg 64 :=
.seq RemovedBody516_131 RemovedBody516_210

def RemovedBody516_212 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody516_213 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody516_214 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.xor 1 7
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 8)))

def RemovedBody516_215 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody516_216 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.xor 2 2
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 6)))

def RemovedBody516_217 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody516_218 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.xor 3 3
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 5)))

def RemovedBody516_219 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody516_220 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.xor 4 0
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 4)))

def RemovedBody516_221 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody516_222 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody516_223 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1662#64)

def RemovedBody516_224 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody516_225 : StackLang.HolProg 64 :=
.seq RemovedBody516_223 RemovedBody516_224

def RemovedBody516_226 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody516_227 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 2#64)

def RemovedBody516_228 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 1

def RemovedBody516_229 : StackLang.HolProg 64 :=
.seq RemovedBody516_227 RemovedBody516_228

def RemovedBody516_230 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody516_231 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) RemovedBody516_229 RemovedBody516_230

def RemovedBody516_232 : StackLang.HolProg 64 :=
.seq RemovedBody516_226 RemovedBody516_231

def RemovedBody516_233 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def RemovedBody516_234 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody516_235 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 516 9

def RemovedBody516_236 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody516_237 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody516_238 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody516_239 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody516_240 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def RemovedBody516_241 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def RemovedBody516_242 : StackLang.HolProg 64 :=
.seq RemovedBody516_240 RemovedBody516_241

def RemovedBody516_243 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def RemovedBody516_244 : StackLang.HolProg 64 :=
.seq RemovedBody516_242 RemovedBody516_243

def RemovedBody516_245 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody516_246 : StackLang.HolProg 64 :=
.seq RemovedBody516_244 RemovedBody516_245

def RemovedBody516_247 : StackLang.HolProg 64 :=
.seq RemovedBody516_239 RemovedBody516_246

def RemovedBody516_248 : StackLang.HolProg 64 :=
.seq RemovedBody516_238 RemovedBody516_247

def RemovedBody516_249 : StackLang.HolProg 64 :=
.seq RemovedBody516_237 RemovedBody516_248

def RemovedBody516_250 : StackLang.HolProg 64 :=
.seq RemovedBody516_236 RemovedBody516_249

def RemovedBody516_251 : StackLang.HolProg 64 :=
.seq RemovedBody516_235 RemovedBody516_250

def RemovedBody516_252 : StackLang.HolProg 64 :=
.seq RemovedBody516_234 RemovedBody516_251

def RemovedBody516_253 : StackLang.HolProg 64 :=
.seq RemovedBody516_233 RemovedBody516_252

def RemovedBody516_254 : StackLang.HolProg 64 :=
.seq RemovedBody516_232 RemovedBody516_253

def RemovedBody516_255 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody516_256 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody516_257 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody516_258 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody516_259 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody516_260 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody516_261 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody516_262 : StackLang.HolProg 64 :=
.seq RemovedBody516_260 RemovedBody516_261

def RemovedBody516_263 : StackLang.HolProg 64 :=
.seq RemovedBody516_259 RemovedBody516_262

def RemovedBody516_264 : StackLang.HolProg 64 :=
.seq RemovedBody516_258 RemovedBody516_263

def RemovedBody516_265 : StackLang.HolProg 64 :=
.seq RemovedBody516_257 RemovedBody516_264

def RemovedBody516_266 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody516_267 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def RemovedBody516_268 : StackLang.HolProg 64 :=
.seq RemovedBody516_266 RemovedBody516_267

def RemovedBody516_269 : StackLang.HolProg 64 :=
.call (some (RemovedBody516_265, 0, 516, 8)) (Sum.inl 476) (some (RemovedBody516_268, 516, 9))

def RemovedBody516_270 : StackLang.HolProg 64 :=
.seq RemovedBody516_256 RemovedBody516_269

def RemovedBody516_271 : StackLang.HolProg 64 :=
.seq RemovedBody516_255 RemovedBody516_270

def RemovedBody516_272 : StackLang.HolProg 64 :=
.seq RemovedBody516_254 RemovedBody516_271

def RemovedBody516_273 : StackLang.HolProg 64 :=
.seq RemovedBody516_225 RemovedBody516_272

def RemovedBody516_274 : StackLang.HolProg 64 :=
.seq RemovedBody516_222 RemovedBody516_273

def RemovedBody516_275 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody516_276 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 1#64)

def RemovedBody516_277 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody516_278 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody516_279 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1663#64)

def RemovedBody516_280 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody516_281 : StackLang.HolProg 64 :=
.seq RemovedBody516_279 RemovedBody516_280

def RemovedBody516_282 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody516_283 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 2#64)

def RemovedBody516_284 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 1

def RemovedBody516_285 : StackLang.HolProg 64 :=
.seq RemovedBody516_283 RemovedBody516_284

def RemovedBody516_286 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody516_287 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) RemovedBody516_285 RemovedBody516_286

def RemovedBody516_288 : StackLang.HolProg 64 :=
.seq RemovedBody516_282 RemovedBody516_287

def RemovedBody516_289 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def RemovedBody516_290 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody516_291 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 516 11

def RemovedBody516_292 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody516_293 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody516_294 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody516_295 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody516_296 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def RemovedBody516_297 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def RemovedBody516_298 : StackLang.HolProg 64 :=
.seq RemovedBody516_296 RemovedBody516_297

def RemovedBody516_299 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def RemovedBody516_300 : StackLang.HolProg 64 :=
.seq RemovedBody516_298 RemovedBody516_299

def RemovedBody516_301 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody516_302 : StackLang.HolProg 64 :=
.seq RemovedBody516_300 RemovedBody516_301

def RemovedBody516_303 : StackLang.HolProg 64 :=
.seq RemovedBody516_295 RemovedBody516_302

def RemovedBody516_304 : StackLang.HolProg 64 :=
.seq RemovedBody516_294 RemovedBody516_303

def RemovedBody516_305 : StackLang.HolProg 64 :=
.seq RemovedBody516_293 RemovedBody516_304

def RemovedBody516_306 : StackLang.HolProg 64 :=
.seq RemovedBody516_292 RemovedBody516_305

def RemovedBody516_307 : StackLang.HolProg 64 :=
.seq RemovedBody516_291 RemovedBody516_306

def RemovedBody516_308 : StackLang.HolProg 64 :=
.seq RemovedBody516_290 RemovedBody516_307

def RemovedBody516_309 : StackLang.HolProg 64 :=
.seq RemovedBody516_289 RemovedBody516_308

def RemovedBody516_310 : StackLang.HolProg 64 :=
.seq RemovedBody516_288 RemovedBody516_309

def RemovedBody516_311 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody516_312 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody516_313 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody516_314 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody516_315 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody516_316 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody516_317 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 72#64))

def RemovedBody516_318 : StackLang.HolProg 64 :=
.seq RemovedBody516_316 RemovedBody516_317

def RemovedBody516_319 : StackLang.HolProg 64 :=
.seq RemovedBody516_315 RemovedBody516_318

def RemovedBody516_320 : StackLang.HolProg 64 :=
.seq RemovedBody516_314 RemovedBody516_319

def RemovedBody516_321 : StackLang.HolProg 64 :=
.seq RemovedBody516_313 RemovedBody516_320

def RemovedBody516_322 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 72#64))

def RemovedBody516_323 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def RemovedBody516_324 : StackLang.HolProg 64 :=
.seq RemovedBody516_322 RemovedBody516_323

def RemovedBody516_325 : StackLang.HolProg 64 :=
.call (some (RemovedBody516_321, 0, 516, 10)) (Sum.inl 490) (some (RemovedBody516_324, 516, 11))

def RemovedBody516_326 : StackLang.HolProg 64 :=
.seq RemovedBody516_312 RemovedBody516_325

def RemovedBody516_327 : StackLang.HolProg 64 :=
.seq RemovedBody516_311 RemovedBody516_326

def RemovedBody516_328 : StackLang.HolProg 64 :=
.seq RemovedBody516_310 RemovedBody516_327

def RemovedBody516_329 : StackLang.HolProg 64 :=
.seq RemovedBody516_281 RemovedBody516_328

def RemovedBody516_330 : StackLang.HolProg 64 :=
.seq RemovedBody516_278 RemovedBody516_329

def RemovedBody516_331 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody516_332 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 0#64)

def RemovedBody516_333 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody516_334 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 80#64)))

def RemovedBody516_335 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 0

def RemovedBody516_336 : StackLang.HolProg 64 :=
.seq RemovedBody516_334 RemovedBody516_335

def RemovedBody516_337 : StackLang.HolProg 64 :=
.seq RemovedBody516_333 RemovedBody516_336

def RemovedBody516_338 : StackLang.HolProg 64 :=
.seq RemovedBody516_332 RemovedBody516_337

def RemovedBody516_339 : StackLang.HolProg 64 :=
.seq RemovedBody516_331 RemovedBody516_338

def RemovedBody516_340 : StackLang.HolProg 64 :=
.seq RemovedBody516_330 RemovedBody516_339

def RemovedBody516_341 : StackLang.HolProg 64 :=
.seq RemovedBody516_277 RemovedBody516_340

def RemovedBody516_342 : StackLang.HolProg 64 :=
.seq RemovedBody516_276 RemovedBody516_341

def RemovedBody516_343 : StackLang.HolProg 64 :=
.seq RemovedBody516_275 RemovedBody516_342

def RemovedBody516_344 : StackLang.HolProg 64 :=
.seq RemovedBody516_274 RemovedBody516_343

def RemovedBody516_345 : StackLang.HolProg 64 :=
.seq RemovedBody516_221 RemovedBody516_344

def RemovedBody516_346 : StackLang.HolProg 64 :=
.seq RemovedBody516_220 RemovedBody516_345

def RemovedBody516_347 : StackLang.HolProg 64 :=
.seq RemovedBody516_219 RemovedBody516_346

def RemovedBody516_348 : StackLang.HolProg 64 :=
.seq RemovedBody516_218 RemovedBody516_347

def RemovedBody516_349 : StackLang.HolProg 64 :=
.seq RemovedBody516_217 RemovedBody516_348

def RemovedBody516_350 : StackLang.HolProg 64 :=
.seq RemovedBody516_216 RemovedBody516_349

def RemovedBody516_351 : StackLang.HolProg 64 :=
.seq RemovedBody516_215 RemovedBody516_350

def RemovedBody516_352 : StackLang.HolProg 64 :=
.seq RemovedBody516_214 RemovedBody516_351

def RemovedBody516_353 : StackLang.HolProg 64 :=
.seq RemovedBody516_213 RemovedBody516_352

def RemovedBody516_354 : StackLang.HolProg 64 :=
.seq RemovedBody516_212 RemovedBody516_353

def RemovedBody516_355 : StackLang.HolProg 64 :=
.seq RemovedBody516_211 RemovedBody516_354

def RemovedBody516_356 : StackLang.HolProg 64 :=
.seq RemovedBody516_130 RemovedBody516_355

def RemovedBody516_357 : StackLang.HolProg 64 :=
.seq RemovedBody516_123 RemovedBody516_356

def RemovedBody516_358 : StackLang.HolProg 64 :=
.seq RemovedBody516_122 RemovedBody516_357

def RemovedBody516_359 : StackLang.HolProg 64 :=
.seq RemovedBody516_121 RemovedBody516_358

def RemovedBody516_360 : StackLang.HolProg 64 :=
.seq RemovedBody516_68 RemovedBody516_359

def RemovedBody516_361 : StackLang.HolProg 64 :=
.seq RemovedBody516_61 RemovedBody516_360

def RemovedBody516_362 : StackLang.HolProg 64 :=
.seq RemovedBody516_60 RemovedBody516_361

def RemovedBody516_363 : StackLang.HolProg 64 :=
.seq RemovedBody516_7 RemovedBody516_362

def RemovedBody516_364 : StackLang.HolProg 64 :=
.seq RemovedBody516_6 RemovedBody516_363

def Removed516 : Nat × StackLang.HolProg 64 := (516, RemovedBody516_364)
theorem Removed516_eq : StackRemove.progComp false riscvConfig.addrOffset (riscvConfig.regCount - (riscvConfig.avoidRegs.length + 3)) Alloc516 = Removed516 := by
  kernel_rfl
#print axioms Removed516_eq
end InitECandidate.Proofs.BackendStages
