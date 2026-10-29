import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.BackendStages.Alloc507
import Flapjack.Compiler.Backend.Backend
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
namespace InitECandidate.Proofs.BackendStages
def RemovedBody507_0 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 80#64)))

def RemovedBody507_1 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 2#64)

def RemovedBody507_2 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 1

def RemovedBody507_3 : StackLang.HolProg 64 :=
.seq RemovedBody507_1 RemovedBody507_2

def RemovedBody507_4 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody507_5 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) RemovedBody507_3 RemovedBody507_4

def RemovedBody507_6 : StackLang.HolProg 64 :=
.seq RemovedBody507_0 RemovedBody507_5

def RemovedBody507_7 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 72#64))

def RemovedBody507_8 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody507_9 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1607#64)

def RemovedBody507_10 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody507_11 : StackLang.HolProg 64 :=
.seq RemovedBody507_9 RemovedBody507_10

def RemovedBody507_12 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody507_13 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 2#64)

def RemovedBody507_14 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 1

def RemovedBody507_15 : StackLang.HolProg 64 :=
.seq RemovedBody507_13 RemovedBody507_14

def RemovedBody507_16 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody507_17 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) RemovedBody507_15 RemovedBody507_16

def RemovedBody507_18 : StackLang.HolProg 64 :=
.seq RemovedBody507_12 RemovedBody507_17

def RemovedBody507_19 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def RemovedBody507_20 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody507_21 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 507 3

def RemovedBody507_22 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody507_23 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody507_24 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody507_25 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody507_26 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def RemovedBody507_27 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def RemovedBody507_28 : StackLang.HolProg 64 :=
.seq RemovedBody507_26 RemovedBody507_27

def RemovedBody507_29 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def RemovedBody507_30 : StackLang.HolProg 64 :=
.seq RemovedBody507_28 RemovedBody507_29

def RemovedBody507_31 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody507_32 : StackLang.HolProg 64 :=
.seq RemovedBody507_30 RemovedBody507_31

def RemovedBody507_33 : StackLang.HolProg 64 :=
.seq RemovedBody507_25 RemovedBody507_32

def RemovedBody507_34 : StackLang.HolProg 64 :=
.seq RemovedBody507_24 RemovedBody507_33

def RemovedBody507_35 : StackLang.HolProg 64 :=
.seq RemovedBody507_23 RemovedBody507_34

def RemovedBody507_36 : StackLang.HolProg 64 :=
.seq RemovedBody507_22 RemovedBody507_35

def RemovedBody507_37 : StackLang.HolProg 64 :=
.seq RemovedBody507_21 RemovedBody507_36

def RemovedBody507_38 : StackLang.HolProg 64 :=
.seq RemovedBody507_20 RemovedBody507_37

def RemovedBody507_39 : StackLang.HolProg 64 :=
.seq RemovedBody507_19 RemovedBody507_38

def RemovedBody507_40 : StackLang.HolProg 64 :=
.seq RemovedBody507_18 RemovedBody507_39

def RemovedBody507_41 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody507_42 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody507_43 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody507_44 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody507_45 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody507_46 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody507_47 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 0 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def RemovedBody507_48 : StackLang.HolProg 64 :=
.seq RemovedBody507_46 RemovedBody507_47

def RemovedBody507_49 : StackLang.HolProg 64 :=
.seq RemovedBody507_45 RemovedBody507_48

def RemovedBody507_50 : StackLang.HolProg 64 :=
.seq RemovedBody507_44 RemovedBody507_49

def RemovedBody507_51 : StackLang.HolProg 64 :=
.seq RemovedBody507_43 RemovedBody507_50

def RemovedBody507_52 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody507_53 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def RemovedBody507_54 : StackLang.HolProg 64 :=
.seq RemovedBody507_52 RemovedBody507_53

def RemovedBody507_55 : StackLang.HolProg 64 :=
.call (some (RemovedBody507_51, 0, 507, 2)) (Sum.inl 475) (some (RemovedBody507_54, 507, 3))

def RemovedBody507_56 : StackLang.HolProg 64 :=
.seq RemovedBody507_42 RemovedBody507_55

def RemovedBody507_57 : StackLang.HolProg 64 :=
.seq RemovedBody507_41 RemovedBody507_56

def RemovedBody507_58 : StackLang.HolProg 64 :=
.seq RemovedBody507_40 RemovedBody507_57

def RemovedBody507_59 : StackLang.HolProg 64 :=
.seq RemovedBody507_11 RemovedBody507_58

def RemovedBody507_60 : StackLang.HolProg 64 :=
.seq RemovedBody507_8 RemovedBody507_59

def RemovedBody507_61 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody507_62 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 4
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 56#64))

def RemovedBody507_63 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 2
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 40#64))

def RemovedBody507_64 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 24#64))

def RemovedBody507_65 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 3
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody507_66 : StackLang.HolProg 64 :=
.seq RemovedBody507_64 RemovedBody507_65

def RemovedBody507_67 : StackLang.HolProg 64 :=
.seq RemovedBody507_63 RemovedBody507_66

def RemovedBody507_68 : StackLang.HolProg 64 :=
.seq RemovedBody507_62 RemovedBody507_67

def RemovedBody507_69 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody507_70 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1608#64)

def RemovedBody507_71 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody507_72 : StackLang.HolProg 64 :=
.seq RemovedBody507_70 RemovedBody507_71

def RemovedBody507_73 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody507_74 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 2#64)

def RemovedBody507_75 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 1

def RemovedBody507_76 : StackLang.HolProg 64 :=
.seq RemovedBody507_74 RemovedBody507_75

def RemovedBody507_77 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody507_78 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) RemovedBody507_76 RemovedBody507_77

def RemovedBody507_79 : StackLang.HolProg 64 :=
.seq RemovedBody507_73 RemovedBody507_78

def RemovedBody507_80 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def RemovedBody507_81 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody507_82 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 507 5

def RemovedBody507_83 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody507_84 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody507_85 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody507_86 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody507_87 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def RemovedBody507_88 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def RemovedBody507_89 : StackLang.HolProg 64 :=
.seq RemovedBody507_87 RemovedBody507_88

def RemovedBody507_90 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def RemovedBody507_91 : StackLang.HolProg 64 :=
.seq RemovedBody507_89 RemovedBody507_90

def RemovedBody507_92 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody507_93 : StackLang.HolProg 64 :=
.seq RemovedBody507_91 RemovedBody507_92

def RemovedBody507_94 : StackLang.HolProg 64 :=
.seq RemovedBody507_86 RemovedBody507_93

def RemovedBody507_95 : StackLang.HolProg 64 :=
.seq RemovedBody507_85 RemovedBody507_94

def RemovedBody507_96 : StackLang.HolProg 64 :=
.seq RemovedBody507_84 RemovedBody507_95

def RemovedBody507_97 : StackLang.HolProg 64 :=
.seq RemovedBody507_83 RemovedBody507_96

def RemovedBody507_98 : StackLang.HolProg 64 :=
.seq RemovedBody507_82 RemovedBody507_97

def RemovedBody507_99 : StackLang.HolProg 64 :=
.seq RemovedBody507_81 RemovedBody507_98

def RemovedBody507_100 : StackLang.HolProg 64 :=
.seq RemovedBody507_80 RemovedBody507_99

def RemovedBody507_101 : StackLang.HolProg 64 :=
.seq RemovedBody507_79 RemovedBody507_100

def RemovedBody507_102 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody507_103 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody507_104 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody507_105 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody507_106 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody507_107 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody507_108 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 0 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def RemovedBody507_109 : StackLang.HolProg 64 :=
.seq RemovedBody507_107 RemovedBody507_108

def RemovedBody507_110 : StackLang.HolProg 64 :=
.seq RemovedBody507_106 RemovedBody507_109

def RemovedBody507_111 : StackLang.HolProg 64 :=
.seq RemovedBody507_105 RemovedBody507_110

def RemovedBody507_112 : StackLang.HolProg 64 :=
.seq RemovedBody507_104 RemovedBody507_111

def RemovedBody507_113 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody507_114 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def RemovedBody507_115 : StackLang.HolProg 64 :=
.seq RemovedBody507_113 RemovedBody507_114

def RemovedBody507_116 : StackLang.HolProg 64 :=
.call (some (RemovedBody507_112, 0, 507, 4)) (Sum.inl 475) (some (RemovedBody507_115, 507, 5))

def RemovedBody507_117 : StackLang.HolProg 64 :=
.seq RemovedBody507_103 RemovedBody507_116

def RemovedBody507_118 : StackLang.HolProg 64 :=
.seq RemovedBody507_102 RemovedBody507_117

def RemovedBody507_119 : StackLang.HolProg 64 :=
.seq RemovedBody507_101 RemovedBody507_118

def RemovedBody507_120 : StackLang.HolProg 64 :=
.seq RemovedBody507_72 RemovedBody507_119

def RemovedBody507_121 : StackLang.HolProg 64 :=
.seq RemovedBody507_69 RemovedBody507_120

def RemovedBody507_122 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody507_123 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 5#64)

def RemovedBody507_124 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 64#64))

def RemovedBody507_125 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 3
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 48#64))

def RemovedBody507_126 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 2
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 32#64))

def RemovedBody507_127 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 4
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody507_128 : StackLang.HolProg 64 :=
.seq RemovedBody507_126 RemovedBody507_127

def RemovedBody507_129 : StackLang.HolProg 64 :=
.seq RemovedBody507_125 RemovedBody507_128

def RemovedBody507_130 : StackLang.HolProg 64 :=
.seq RemovedBody507_124 RemovedBody507_129

def RemovedBody507_131 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody507_132 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1609#64)

def RemovedBody507_133 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody507_134 : StackLang.HolProg 64 :=
.seq RemovedBody507_132 RemovedBody507_133

def RemovedBody507_135 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody507_136 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 2#64)

def RemovedBody507_137 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 1

def RemovedBody507_138 : StackLang.HolProg 64 :=
.seq RemovedBody507_136 RemovedBody507_137

def RemovedBody507_139 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody507_140 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) RemovedBody507_138 RemovedBody507_139

def RemovedBody507_141 : StackLang.HolProg 64 :=
.seq RemovedBody507_135 RemovedBody507_140

def RemovedBody507_142 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def RemovedBody507_143 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody507_144 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 507 7

def RemovedBody507_145 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody507_146 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody507_147 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody507_148 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody507_149 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def RemovedBody507_150 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def RemovedBody507_151 : StackLang.HolProg 64 :=
.seq RemovedBody507_149 RemovedBody507_150

def RemovedBody507_152 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def RemovedBody507_153 : StackLang.HolProg 64 :=
.seq RemovedBody507_151 RemovedBody507_152

def RemovedBody507_154 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody507_155 : StackLang.HolProg 64 :=
.seq RemovedBody507_153 RemovedBody507_154

def RemovedBody507_156 : StackLang.HolProg 64 :=
.seq RemovedBody507_148 RemovedBody507_155

def RemovedBody507_157 : StackLang.HolProg 64 :=
.seq RemovedBody507_147 RemovedBody507_156

def RemovedBody507_158 : StackLang.HolProg 64 :=
.seq RemovedBody507_146 RemovedBody507_157

def RemovedBody507_159 : StackLang.HolProg 64 :=
.seq RemovedBody507_145 RemovedBody507_158

def RemovedBody507_160 : StackLang.HolProg 64 :=
.seq RemovedBody507_144 RemovedBody507_159

def RemovedBody507_161 : StackLang.HolProg 64 :=
.seq RemovedBody507_143 RemovedBody507_160

def RemovedBody507_162 : StackLang.HolProg 64 :=
.seq RemovedBody507_142 RemovedBody507_161

def RemovedBody507_163 : StackLang.HolProg 64 :=
.seq RemovedBody507_141 RemovedBody507_162

def RemovedBody507_164 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody507_165 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody507_166 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody507_167 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody507_168 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody507_169 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody507_170 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 4
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 56#64))

def RemovedBody507_171 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 48#64))

def RemovedBody507_172 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 56#64))

def RemovedBody507_173 : StackLang.HolProg 64 :=
.seq RemovedBody507_171 RemovedBody507_172

def RemovedBody507_174 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 2
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 40#64))

def RemovedBody507_175 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 32#64))

def RemovedBody507_176 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 48#64))

def RemovedBody507_177 : StackLang.HolProg 64 :=
.seq RemovedBody507_175 RemovedBody507_176

def RemovedBody507_178 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 24#64))

def RemovedBody507_179 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 3
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody507_180 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody507_181 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 40#64))

def RemovedBody507_182 : StackLang.HolProg 64 :=
.seq RemovedBody507_180 RemovedBody507_181

def RemovedBody507_183 : StackLang.HolProg 64 :=
.seq RemovedBody507_179 RemovedBody507_182

def RemovedBody507_184 : StackLang.HolProg 64 :=
.seq RemovedBody507_178 RemovedBody507_183

def RemovedBody507_185 : StackLang.HolProg 64 :=
.seq RemovedBody507_177 RemovedBody507_184

def RemovedBody507_186 : StackLang.HolProg 64 :=
.seq RemovedBody507_174 RemovedBody507_185

def RemovedBody507_187 : StackLang.HolProg 64 :=
.seq RemovedBody507_173 RemovedBody507_186

def RemovedBody507_188 : StackLang.HolProg 64 :=
.seq RemovedBody507_170 RemovedBody507_187

def RemovedBody507_189 : StackLang.HolProg 64 :=
.seq RemovedBody507_169 RemovedBody507_188

def RemovedBody507_190 : StackLang.HolProg 64 :=
.seq RemovedBody507_168 RemovedBody507_189

def RemovedBody507_191 : StackLang.HolProg 64 :=
.seq RemovedBody507_167 RemovedBody507_190

def RemovedBody507_192 : StackLang.HolProg 64 :=
.seq RemovedBody507_166 RemovedBody507_191

def RemovedBody507_193 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 4
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 56#64))

def RemovedBody507_194 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 48#64))

def RemovedBody507_195 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 56#64))

def RemovedBody507_196 : StackLang.HolProg 64 :=
.seq RemovedBody507_194 RemovedBody507_195

def RemovedBody507_197 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 2
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 40#64))

def RemovedBody507_198 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 32#64))

def RemovedBody507_199 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 48#64))

def RemovedBody507_200 : StackLang.HolProg 64 :=
.seq RemovedBody507_198 RemovedBody507_199

def RemovedBody507_201 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 24#64))

def RemovedBody507_202 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 3
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody507_203 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody507_204 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 40#64))

def RemovedBody507_205 : StackLang.HolProg 64 :=
.seq RemovedBody507_203 RemovedBody507_204

def RemovedBody507_206 : StackLang.HolProg 64 :=
.seq RemovedBody507_202 RemovedBody507_205

def RemovedBody507_207 : StackLang.HolProg 64 :=
.seq RemovedBody507_201 RemovedBody507_206

def RemovedBody507_208 : StackLang.HolProg 64 :=
.seq RemovedBody507_200 RemovedBody507_207

def RemovedBody507_209 : StackLang.HolProg 64 :=
.seq RemovedBody507_197 RemovedBody507_208

def RemovedBody507_210 : StackLang.HolProg 64 :=
.seq RemovedBody507_196 RemovedBody507_209

def RemovedBody507_211 : StackLang.HolProg 64 :=
.seq RemovedBody507_193 RemovedBody507_210

def RemovedBody507_212 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def RemovedBody507_213 : StackLang.HolProg 64 :=
.seq RemovedBody507_211 RemovedBody507_212

def RemovedBody507_214 : StackLang.HolProg 64 :=
.call (some (RemovedBody507_192, 0, 507, 6)) (Sum.inl 470) (some (RemovedBody507_213, 507, 7))

def RemovedBody507_215 : StackLang.HolProg 64 :=
.seq RemovedBody507_165 RemovedBody507_214

def RemovedBody507_216 : StackLang.HolProg 64 :=
.seq RemovedBody507_164 RemovedBody507_215

def RemovedBody507_217 : StackLang.HolProg 64 :=
.seq RemovedBody507_163 RemovedBody507_216

def RemovedBody507_218 : StackLang.HolProg 64 :=
.seq RemovedBody507_134 RemovedBody507_217

def RemovedBody507_219 : StackLang.HolProg 64 :=
.seq RemovedBody507_131 RemovedBody507_218

def RemovedBody507_220 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody507_221 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 1 0
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 0)))

def RemovedBody507_222 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody507_223 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1610#64)

def RemovedBody507_224 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody507_225 : StackLang.HolProg 64 :=
.seq RemovedBody507_223 RemovedBody507_224

def RemovedBody507_226 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody507_227 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 2#64)

def RemovedBody507_228 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 1

def RemovedBody507_229 : StackLang.HolProg 64 :=
.seq RemovedBody507_227 RemovedBody507_228

def RemovedBody507_230 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody507_231 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) RemovedBody507_229 RemovedBody507_230

def RemovedBody507_232 : StackLang.HolProg 64 :=
.seq RemovedBody507_226 RemovedBody507_231

def RemovedBody507_233 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def RemovedBody507_234 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody507_235 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 507 9

def RemovedBody507_236 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody507_237 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody507_238 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody507_239 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody507_240 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def RemovedBody507_241 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def RemovedBody507_242 : StackLang.HolProg 64 :=
.seq RemovedBody507_240 RemovedBody507_241

def RemovedBody507_243 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def RemovedBody507_244 : StackLang.HolProg 64 :=
.seq RemovedBody507_242 RemovedBody507_243

def RemovedBody507_245 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody507_246 : StackLang.HolProg 64 :=
.seq RemovedBody507_244 RemovedBody507_245

def RemovedBody507_247 : StackLang.HolProg 64 :=
.seq RemovedBody507_239 RemovedBody507_246

def RemovedBody507_248 : StackLang.HolProg 64 :=
.seq RemovedBody507_238 RemovedBody507_247

def RemovedBody507_249 : StackLang.HolProg 64 :=
.seq RemovedBody507_237 RemovedBody507_248

def RemovedBody507_250 : StackLang.HolProg 64 :=
.seq RemovedBody507_236 RemovedBody507_249

def RemovedBody507_251 : StackLang.HolProg 64 :=
.seq RemovedBody507_235 RemovedBody507_250

def RemovedBody507_252 : StackLang.HolProg 64 :=
.seq RemovedBody507_234 RemovedBody507_251

def RemovedBody507_253 : StackLang.HolProg 64 :=
.seq RemovedBody507_233 RemovedBody507_252

def RemovedBody507_254 : StackLang.HolProg 64 :=
.seq RemovedBody507_232 RemovedBody507_253

def RemovedBody507_255 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody507_256 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody507_257 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody507_258 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody507_259 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody507_260 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody507_261 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 0 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def RemovedBody507_262 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 2
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 64#64))

def RemovedBody507_263 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 4
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 56#64))

def RemovedBody507_264 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 3
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 48#64))

def RemovedBody507_265 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 5
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 40#64))

def RemovedBody507_266 : StackLang.HolProg 64 :=
.seq RemovedBody507_264 RemovedBody507_265

def RemovedBody507_267 : StackLang.HolProg 64 :=
.seq RemovedBody507_263 RemovedBody507_266

def RemovedBody507_268 : StackLang.HolProg 64 :=
.seq RemovedBody507_262 RemovedBody507_267

def RemovedBody507_269 : StackLang.HolProg 64 :=
.seq RemovedBody507_261 RemovedBody507_268

def RemovedBody507_270 : StackLang.HolProg 64 :=
.seq RemovedBody507_260 RemovedBody507_269

def RemovedBody507_271 : StackLang.HolProg 64 :=
.seq RemovedBody507_259 RemovedBody507_270

def RemovedBody507_272 : StackLang.HolProg 64 :=
.seq RemovedBody507_258 RemovedBody507_271

def RemovedBody507_273 : StackLang.HolProg 64 :=
.seq RemovedBody507_257 RemovedBody507_272

def RemovedBody507_274 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 2
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 64#64))

def RemovedBody507_275 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 4
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 56#64))

def RemovedBody507_276 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 3
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 48#64))

def RemovedBody507_277 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 5
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 40#64))

def RemovedBody507_278 : StackLang.HolProg 64 :=
.seq RemovedBody507_276 RemovedBody507_277

def RemovedBody507_279 : StackLang.HolProg 64 :=
.seq RemovedBody507_275 RemovedBody507_278

def RemovedBody507_280 : StackLang.HolProg 64 :=
.seq RemovedBody507_274 RemovedBody507_279

def RemovedBody507_281 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def RemovedBody507_282 : StackLang.HolProg 64 :=
.seq RemovedBody507_280 RemovedBody507_281

def RemovedBody507_283 : StackLang.HolProg 64 :=
.call (some (RemovedBody507_273, 0, 507, 8)) (Sum.inl 462) (some (RemovedBody507_282, 507, 9))

def RemovedBody507_284 : StackLang.HolProg 64 :=
.seq RemovedBody507_256 RemovedBody507_283

def RemovedBody507_285 : StackLang.HolProg 64 :=
.seq RemovedBody507_255 RemovedBody507_284

def RemovedBody507_286 : StackLang.HolProg 64 :=
.seq RemovedBody507_254 RemovedBody507_285

def RemovedBody507_287 : StackLang.HolProg 64 :=
.seq RemovedBody507_225 RemovedBody507_286

def RemovedBody507_288 : StackLang.HolProg 64 :=
.seq RemovedBody507_222 RemovedBody507_287

def RemovedBody507_289 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody507_290 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 1 0
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 0)))

def RemovedBody507_291 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody507_292 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1611#64)

def RemovedBody507_293 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody507_294 : StackLang.HolProg 64 :=
.seq RemovedBody507_292 RemovedBody507_293

def RemovedBody507_295 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody507_296 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 2#64)

def RemovedBody507_297 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 1

def RemovedBody507_298 : StackLang.HolProg 64 :=
.seq RemovedBody507_296 RemovedBody507_297

def RemovedBody507_299 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody507_300 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) RemovedBody507_298 RemovedBody507_299

def RemovedBody507_301 : StackLang.HolProg 64 :=
.seq RemovedBody507_295 RemovedBody507_300

def RemovedBody507_302 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def RemovedBody507_303 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody507_304 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 507 11

def RemovedBody507_305 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody507_306 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody507_307 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody507_308 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody507_309 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def RemovedBody507_310 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def RemovedBody507_311 : StackLang.HolProg 64 :=
.seq RemovedBody507_309 RemovedBody507_310

def RemovedBody507_312 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def RemovedBody507_313 : StackLang.HolProg 64 :=
.seq RemovedBody507_311 RemovedBody507_312

def RemovedBody507_314 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody507_315 : StackLang.HolProg 64 :=
.seq RemovedBody507_313 RemovedBody507_314

def RemovedBody507_316 : StackLang.HolProg 64 :=
.seq RemovedBody507_308 RemovedBody507_315

def RemovedBody507_317 : StackLang.HolProg 64 :=
.seq RemovedBody507_307 RemovedBody507_316

def RemovedBody507_318 : StackLang.HolProg 64 :=
.seq RemovedBody507_306 RemovedBody507_317

def RemovedBody507_319 : StackLang.HolProg 64 :=
.seq RemovedBody507_305 RemovedBody507_318

def RemovedBody507_320 : StackLang.HolProg 64 :=
.seq RemovedBody507_304 RemovedBody507_319

def RemovedBody507_321 : StackLang.HolProg 64 :=
.seq RemovedBody507_303 RemovedBody507_320

def RemovedBody507_322 : StackLang.HolProg 64 :=
.seq RemovedBody507_302 RemovedBody507_321

def RemovedBody507_323 : StackLang.HolProg 64 :=
.seq RemovedBody507_301 RemovedBody507_322

def RemovedBody507_324 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody507_325 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody507_326 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody507_327 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody507_328 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody507_329 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody507_330 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 0 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def RemovedBody507_331 : StackLang.HolProg 64 :=
.seq RemovedBody507_329 RemovedBody507_330

def RemovedBody507_332 : StackLang.HolProg 64 :=
.seq RemovedBody507_328 RemovedBody507_331

def RemovedBody507_333 : StackLang.HolProg 64 :=
.seq RemovedBody507_327 RemovedBody507_332

def RemovedBody507_334 : StackLang.HolProg 64 :=
.seq RemovedBody507_326 RemovedBody507_333

def RemovedBody507_335 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody507_336 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def RemovedBody507_337 : StackLang.HolProg 64 :=
.seq RemovedBody507_335 RemovedBody507_336

def RemovedBody507_338 : StackLang.HolProg 64 :=
.call (some (RemovedBody507_334, 0, 507, 10)) (Sum.inl 144) (some (RemovedBody507_337, 507, 11))

def RemovedBody507_339 : StackLang.HolProg 64 :=
.seq RemovedBody507_325 RemovedBody507_338

def RemovedBody507_340 : StackLang.HolProg 64 :=
.seq RemovedBody507_324 RemovedBody507_339

def RemovedBody507_341 : StackLang.HolProg 64 :=
.seq RemovedBody507_323 RemovedBody507_340

def RemovedBody507_342 : StackLang.HolProg 64 :=
.seq RemovedBody507_294 RemovedBody507_341

def RemovedBody507_343 : StackLang.HolProg 64 :=
.seq RemovedBody507_291 RemovedBody507_342

def RemovedBody507_344 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody507_345 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 1 0
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 0)))

def RemovedBody507_346 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody507_347 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1612#64)

def RemovedBody507_348 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody507_349 : StackLang.HolProg 64 :=
.seq RemovedBody507_347 RemovedBody507_348

def RemovedBody507_350 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody507_351 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 2#64)

def RemovedBody507_352 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 1

def RemovedBody507_353 : StackLang.HolProg 64 :=
.seq RemovedBody507_351 RemovedBody507_352

def RemovedBody507_354 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody507_355 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) RemovedBody507_353 RemovedBody507_354

def RemovedBody507_356 : StackLang.HolProg 64 :=
.seq RemovedBody507_350 RemovedBody507_355

def RemovedBody507_357 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def RemovedBody507_358 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody507_359 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 507 13

def RemovedBody507_360 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody507_361 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody507_362 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody507_363 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody507_364 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def RemovedBody507_365 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def RemovedBody507_366 : StackLang.HolProg 64 :=
.seq RemovedBody507_364 RemovedBody507_365

def RemovedBody507_367 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def RemovedBody507_368 : StackLang.HolProg 64 :=
.seq RemovedBody507_366 RemovedBody507_367

def RemovedBody507_369 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody507_370 : StackLang.HolProg 64 :=
.seq RemovedBody507_368 RemovedBody507_369

def RemovedBody507_371 : StackLang.HolProg 64 :=
.seq RemovedBody507_363 RemovedBody507_370

def RemovedBody507_372 : StackLang.HolProg 64 :=
.seq RemovedBody507_362 RemovedBody507_371

def RemovedBody507_373 : StackLang.HolProg 64 :=
.seq RemovedBody507_361 RemovedBody507_372

def RemovedBody507_374 : StackLang.HolProg 64 :=
.seq RemovedBody507_360 RemovedBody507_373

def RemovedBody507_375 : StackLang.HolProg 64 :=
.seq RemovedBody507_359 RemovedBody507_374

def RemovedBody507_376 : StackLang.HolProg 64 :=
.seq RemovedBody507_358 RemovedBody507_375

def RemovedBody507_377 : StackLang.HolProg 64 :=
.seq RemovedBody507_357 RemovedBody507_376

def RemovedBody507_378 : StackLang.HolProg 64 :=
.seq RemovedBody507_356 RemovedBody507_377

def RemovedBody507_379 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody507_380 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody507_381 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody507_382 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody507_383 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody507_384 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody507_385 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody507_386 : StackLang.HolProg 64 :=
.seq RemovedBody507_384 RemovedBody507_385

def RemovedBody507_387 : StackLang.HolProg 64 :=
.seq RemovedBody507_383 RemovedBody507_386

def RemovedBody507_388 : StackLang.HolProg 64 :=
.seq RemovedBody507_382 RemovedBody507_387

def RemovedBody507_389 : StackLang.HolProg 64 :=
.seq RemovedBody507_381 RemovedBody507_388

def RemovedBody507_390 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody507_391 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def RemovedBody507_392 : StackLang.HolProg 64 :=
.seq RemovedBody507_390 RemovedBody507_391

def RemovedBody507_393 : StackLang.HolProg 64 :=
.call (some (RemovedBody507_389, 0, 507, 12)) (Sum.inl 476) (some (RemovedBody507_392, 507, 13))

def RemovedBody507_394 : StackLang.HolProg 64 :=
.seq RemovedBody507_380 RemovedBody507_393

def RemovedBody507_395 : StackLang.HolProg 64 :=
.seq RemovedBody507_379 RemovedBody507_394

def RemovedBody507_396 : StackLang.HolProg 64 :=
.seq RemovedBody507_378 RemovedBody507_395

def RemovedBody507_397 : StackLang.HolProg 64 :=
.seq RemovedBody507_349 RemovedBody507_396

def RemovedBody507_398 : StackLang.HolProg 64 :=
.seq RemovedBody507_346 RemovedBody507_397

def RemovedBody507_399 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody507_400 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 1#64)

def RemovedBody507_401 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody507_402 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody507_403 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1613#64)

def RemovedBody507_404 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody507_405 : StackLang.HolProg 64 :=
.seq RemovedBody507_403 RemovedBody507_404

def RemovedBody507_406 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody507_407 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 2#64)

def RemovedBody507_408 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 1

def RemovedBody507_409 : StackLang.HolProg 64 :=
.seq RemovedBody507_407 RemovedBody507_408

def RemovedBody507_410 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody507_411 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) RemovedBody507_409 RemovedBody507_410

def RemovedBody507_412 : StackLang.HolProg 64 :=
.seq RemovedBody507_406 RemovedBody507_411

def RemovedBody507_413 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def RemovedBody507_414 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody507_415 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 507 15

def RemovedBody507_416 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody507_417 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody507_418 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody507_419 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody507_420 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def RemovedBody507_421 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def RemovedBody507_422 : StackLang.HolProg 64 :=
.seq RemovedBody507_420 RemovedBody507_421

def RemovedBody507_423 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def RemovedBody507_424 : StackLang.HolProg 64 :=
.seq RemovedBody507_422 RemovedBody507_423

def RemovedBody507_425 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody507_426 : StackLang.HolProg 64 :=
.seq RemovedBody507_424 RemovedBody507_425

def RemovedBody507_427 : StackLang.HolProg 64 :=
.seq RemovedBody507_419 RemovedBody507_426

def RemovedBody507_428 : StackLang.HolProg 64 :=
.seq RemovedBody507_418 RemovedBody507_427

def RemovedBody507_429 : StackLang.HolProg 64 :=
.seq RemovedBody507_417 RemovedBody507_428

def RemovedBody507_430 : StackLang.HolProg 64 :=
.seq RemovedBody507_416 RemovedBody507_429

def RemovedBody507_431 : StackLang.HolProg 64 :=
.seq RemovedBody507_415 RemovedBody507_430

def RemovedBody507_432 : StackLang.HolProg 64 :=
.seq RemovedBody507_414 RemovedBody507_431

def RemovedBody507_433 : StackLang.HolProg 64 :=
.seq RemovedBody507_413 RemovedBody507_432

def RemovedBody507_434 : StackLang.HolProg 64 :=
.seq RemovedBody507_412 RemovedBody507_433

def RemovedBody507_435 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody507_436 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody507_437 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody507_438 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody507_439 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody507_440 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody507_441 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 72#64))

def RemovedBody507_442 : StackLang.HolProg 64 :=
.seq RemovedBody507_440 RemovedBody507_441

def RemovedBody507_443 : StackLang.HolProg 64 :=
.seq RemovedBody507_439 RemovedBody507_442

def RemovedBody507_444 : StackLang.HolProg 64 :=
.seq RemovedBody507_438 RemovedBody507_443

def RemovedBody507_445 : StackLang.HolProg 64 :=
.seq RemovedBody507_437 RemovedBody507_444

def RemovedBody507_446 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 72#64))

def RemovedBody507_447 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def RemovedBody507_448 : StackLang.HolProg 64 :=
.seq RemovedBody507_446 RemovedBody507_447

def RemovedBody507_449 : StackLang.HolProg 64 :=
.call (some (RemovedBody507_445, 0, 507, 14)) (Sum.inl 490) (some (RemovedBody507_448, 507, 15))

def RemovedBody507_450 : StackLang.HolProg 64 :=
.seq RemovedBody507_436 RemovedBody507_449

def RemovedBody507_451 : StackLang.HolProg 64 :=
.seq RemovedBody507_435 RemovedBody507_450

def RemovedBody507_452 : StackLang.HolProg 64 :=
.seq RemovedBody507_434 RemovedBody507_451

def RemovedBody507_453 : StackLang.HolProg 64 :=
.seq RemovedBody507_405 RemovedBody507_452

def RemovedBody507_454 : StackLang.HolProg 64 :=
.seq RemovedBody507_402 RemovedBody507_453

def RemovedBody507_455 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody507_456 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 0#64)

def RemovedBody507_457 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody507_458 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 80#64)))

def RemovedBody507_459 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 0

def RemovedBody507_460 : StackLang.HolProg 64 :=
.seq RemovedBody507_458 RemovedBody507_459

def RemovedBody507_461 : StackLang.HolProg 64 :=
.seq RemovedBody507_457 RemovedBody507_460

def RemovedBody507_462 : StackLang.HolProg 64 :=
.seq RemovedBody507_456 RemovedBody507_461

def RemovedBody507_463 : StackLang.HolProg 64 :=
.seq RemovedBody507_455 RemovedBody507_462

def RemovedBody507_464 : StackLang.HolProg 64 :=
.seq RemovedBody507_454 RemovedBody507_463

def RemovedBody507_465 : StackLang.HolProg 64 :=
.seq RemovedBody507_401 RemovedBody507_464

def RemovedBody507_466 : StackLang.HolProg 64 :=
.seq RemovedBody507_400 RemovedBody507_465

def RemovedBody507_467 : StackLang.HolProg 64 :=
.seq RemovedBody507_399 RemovedBody507_466

def RemovedBody507_468 : StackLang.HolProg 64 :=
.seq RemovedBody507_398 RemovedBody507_467

def RemovedBody507_469 : StackLang.HolProg 64 :=
.seq RemovedBody507_345 RemovedBody507_468

def RemovedBody507_470 : StackLang.HolProg 64 :=
.seq RemovedBody507_344 RemovedBody507_469

def RemovedBody507_471 : StackLang.HolProg 64 :=
.seq RemovedBody507_343 RemovedBody507_470

def RemovedBody507_472 : StackLang.HolProg 64 :=
.seq RemovedBody507_290 RemovedBody507_471

def RemovedBody507_473 : StackLang.HolProg 64 :=
.seq RemovedBody507_289 RemovedBody507_472

def RemovedBody507_474 : StackLang.HolProg 64 :=
.seq RemovedBody507_288 RemovedBody507_473

def RemovedBody507_475 : StackLang.HolProg 64 :=
.seq RemovedBody507_221 RemovedBody507_474

def RemovedBody507_476 : StackLang.HolProg 64 :=
.seq RemovedBody507_220 RemovedBody507_475

def RemovedBody507_477 : StackLang.HolProg 64 :=
.seq RemovedBody507_219 RemovedBody507_476

def RemovedBody507_478 : StackLang.HolProg 64 :=
.seq RemovedBody507_130 RemovedBody507_477

def RemovedBody507_479 : StackLang.HolProg 64 :=
.seq RemovedBody507_123 RemovedBody507_478

def RemovedBody507_480 : StackLang.HolProg 64 :=
.seq RemovedBody507_122 RemovedBody507_479

def RemovedBody507_481 : StackLang.HolProg 64 :=
.seq RemovedBody507_121 RemovedBody507_480

def RemovedBody507_482 : StackLang.HolProg 64 :=
.seq RemovedBody507_68 RemovedBody507_481

def RemovedBody507_483 : StackLang.HolProg 64 :=
.seq RemovedBody507_61 RemovedBody507_482

def RemovedBody507_484 : StackLang.HolProg 64 :=
.seq RemovedBody507_60 RemovedBody507_483

def RemovedBody507_485 : StackLang.HolProg 64 :=
.seq RemovedBody507_7 RemovedBody507_484

def RemovedBody507_486 : StackLang.HolProg 64 :=
.seq RemovedBody507_6 RemovedBody507_485

def Removed507 : Nat × StackLang.HolProg 64 := (507, RemovedBody507_486)
theorem Removed507_eq : StackRemove.progComp false riscvConfig.addrOffset (riscvConfig.regCount - (riscvConfig.avoidRegs.length + 3)) Alloc507 = Removed507 := by
  kernel_rfl
#print axioms Removed507_eq
end InitECandidate.Proofs.BackendStages
