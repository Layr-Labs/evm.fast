import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.BackendStages.Alloc420
import Flapjack.Compiler.Backend.Backend
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
namespace InitECandidate.Proofs.BackendStages
def RemovedBody420_0 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 72#64)))

def RemovedBody420_1 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 2#64)

def RemovedBody420_2 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 1

def RemovedBody420_3 : StackLang.HolProg 64 :=
.seq RemovedBody420_1 RemovedBody420_2

def RemovedBody420_4 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody420_5 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) RemovedBody420_3 RemovedBody420_4

def RemovedBody420_6 : StackLang.HolProg 64 :=
.seq RemovedBody420_0 RemovedBody420_5

def RemovedBody420_7 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 64#64))

def RemovedBody420_8 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 4
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 48#64))

def RemovedBody420_9 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 2
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 40#64))

def RemovedBody420_10 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 6
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 32#64))

def RemovedBody420_11 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 56#64))

def RemovedBody420_12 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 5
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody420_13 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 3
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody420_14 : StackLang.HolProg 64 :=
.seq RemovedBody420_12 RemovedBody420_13

def RemovedBody420_15 : StackLang.HolProg 64 :=
.seq RemovedBody420_11 RemovedBody420_14

def RemovedBody420_16 : StackLang.HolProg 64 :=
.seq RemovedBody420_10 RemovedBody420_15

def RemovedBody420_17 : StackLang.HolProg 64 :=
.seq RemovedBody420_9 RemovedBody420_16

def RemovedBody420_18 : StackLang.HolProg 64 :=
.seq RemovedBody420_8 RemovedBody420_17

def RemovedBody420_19 : StackLang.HolProg 64 :=
.seq RemovedBody420_7 RemovedBody420_18

def RemovedBody420_20 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody420_21 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1248#64)

def RemovedBody420_22 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody420_23 : StackLang.HolProg 64 :=
.seq RemovedBody420_21 RemovedBody420_22

def RemovedBody420_24 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody420_25 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 2#64)

def RemovedBody420_26 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 1

def RemovedBody420_27 : StackLang.HolProg 64 :=
.seq RemovedBody420_25 RemovedBody420_26

def RemovedBody420_28 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody420_29 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) RemovedBody420_27 RemovedBody420_28

def RemovedBody420_30 : StackLang.HolProg 64 :=
.seq RemovedBody420_24 RemovedBody420_29

def RemovedBody420_31 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def RemovedBody420_32 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody420_33 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 420 3

def RemovedBody420_34 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody420_35 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody420_36 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody420_37 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody420_38 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def RemovedBody420_39 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def RemovedBody420_40 : StackLang.HolProg 64 :=
.seq RemovedBody420_38 RemovedBody420_39

def RemovedBody420_41 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def RemovedBody420_42 : StackLang.HolProg 64 :=
.seq RemovedBody420_40 RemovedBody420_41

def RemovedBody420_43 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody420_44 : StackLang.HolProg 64 :=
.seq RemovedBody420_42 RemovedBody420_43

def RemovedBody420_45 : StackLang.HolProg 64 :=
.seq RemovedBody420_37 RemovedBody420_44

def RemovedBody420_46 : StackLang.HolProg 64 :=
.seq RemovedBody420_36 RemovedBody420_45

def RemovedBody420_47 : StackLang.HolProg 64 :=
.seq RemovedBody420_35 RemovedBody420_46

def RemovedBody420_48 : StackLang.HolProg 64 :=
.seq RemovedBody420_34 RemovedBody420_47

def RemovedBody420_49 : StackLang.HolProg 64 :=
.seq RemovedBody420_33 RemovedBody420_48

def RemovedBody420_50 : StackLang.HolProg 64 :=
.seq RemovedBody420_32 RemovedBody420_49

def RemovedBody420_51 : StackLang.HolProg 64 :=
.seq RemovedBody420_31 RemovedBody420_50

def RemovedBody420_52 : StackLang.HolProg 64 :=
.seq RemovedBody420_30 RemovedBody420_51

def RemovedBody420_53 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody420_54 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody420_55 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody420_56 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody420_57 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody420_58 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody420_59 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 0 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def RemovedBody420_60 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 2
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 56#64))

def RemovedBody420_61 : StackLang.HolProg 64 :=
.seq RemovedBody420_59 RemovedBody420_60

def RemovedBody420_62 : StackLang.HolProg 64 :=
.seq RemovedBody420_58 RemovedBody420_61

def RemovedBody420_63 : StackLang.HolProg 64 :=
.seq RemovedBody420_57 RemovedBody420_62

def RemovedBody420_64 : StackLang.HolProg 64 :=
.seq RemovedBody420_56 RemovedBody420_63

def RemovedBody420_65 : StackLang.HolProg 64 :=
.seq RemovedBody420_55 RemovedBody420_64

def RemovedBody420_66 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 2
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 56#64))

def RemovedBody420_67 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def RemovedBody420_68 : StackLang.HolProg 64 :=
.seq RemovedBody420_66 RemovedBody420_67

def RemovedBody420_69 : StackLang.HolProg 64 :=
.call (some (RemovedBody420_65, 0, 420, 2)) (Sum.inl 406) (some (RemovedBody420_68, 420, 3))

def RemovedBody420_70 : StackLang.HolProg 64 :=
.seq RemovedBody420_54 RemovedBody420_69

def RemovedBody420_71 : StackLang.HolProg 64 :=
.seq RemovedBody420_53 RemovedBody420_70

def RemovedBody420_72 : StackLang.HolProg 64 :=
.seq RemovedBody420_52 RemovedBody420_71

def RemovedBody420_73 : StackLang.HolProg 64 :=
.seq RemovedBody420_23 RemovedBody420_72

def RemovedBody420_74 : StackLang.HolProg 64 :=
.seq RemovedBody420_20 RemovedBody420_73

def RemovedBody420_75 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody420_76 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody420_77 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 1#64)

def RemovedBody420_78 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody420_79 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 0 3#64)

def RemovedBody420_80 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody420_81 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551480#64))

def RemovedBody420_82 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 7#64)

def RemovedBody420_83 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody420_84 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def RemovedBody420_85 : StackLang.HolProg 64 :=
.seq RemovedBody420_83 RemovedBody420_84

def RemovedBody420_86 : StackLang.HolProg 64 :=
.seq RemovedBody420_82 RemovedBody420_85

def RemovedBody420_87 : StackLang.HolProg 64 :=
.seq RemovedBody420_81 RemovedBody420_86

def RemovedBody420_88 : StackLang.HolProg 64 :=
.seq RemovedBody420_80 RemovedBody420_87

def RemovedBody420_89 : StackLang.HolProg 64 :=
.seq RemovedBody420_79 RemovedBody420_88

def RemovedBody420_90 : StackLang.HolProg 64 :=
.seq RemovedBody420_78 RemovedBody420_89

def RemovedBody420_91 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody420_92 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.equal) 0 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1) RemovedBody420_90 RemovedBody420_91

def RemovedBody420_93 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody420_94 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody420_95 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551592#64))

def RemovedBody420_96 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsl 0 0
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 1#64)))

def RemovedBody420_97 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 0 0
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 26)))

def RemovedBody420_98 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 0 18446744073709551432#64))

def RemovedBody420_99 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 0 32#64))

def RemovedBody420_100 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 56#64))

def RemovedBody420_101 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 2
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 24#64))

def RemovedBody420_102 : StackLang.HolProg 64 :=
.seq RemovedBody420_100 RemovedBody420_101

def RemovedBody420_103 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody420_104 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1249#64)

def RemovedBody420_105 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody420_106 : StackLang.HolProg 64 :=
.seq RemovedBody420_104 RemovedBody420_105

def RemovedBody420_107 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody420_108 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 2#64)

def RemovedBody420_109 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 1

def RemovedBody420_110 : StackLang.HolProg 64 :=
.seq RemovedBody420_108 RemovedBody420_109

def RemovedBody420_111 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody420_112 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) RemovedBody420_110 RemovedBody420_111

def RemovedBody420_113 : StackLang.HolProg 64 :=
.seq RemovedBody420_107 RemovedBody420_112

def RemovedBody420_114 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def RemovedBody420_115 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody420_116 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 420 5

def RemovedBody420_117 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody420_118 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody420_119 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody420_120 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody420_121 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def RemovedBody420_122 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def RemovedBody420_123 : StackLang.HolProg 64 :=
.seq RemovedBody420_121 RemovedBody420_122

def RemovedBody420_124 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def RemovedBody420_125 : StackLang.HolProg 64 :=
.seq RemovedBody420_123 RemovedBody420_124

def RemovedBody420_126 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody420_127 : StackLang.HolProg 64 :=
.seq RemovedBody420_125 RemovedBody420_126

def RemovedBody420_128 : StackLang.HolProg 64 :=
.seq RemovedBody420_120 RemovedBody420_127

def RemovedBody420_129 : StackLang.HolProg 64 :=
.seq RemovedBody420_119 RemovedBody420_128

def RemovedBody420_130 : StackLang.HolProg 64 :=
.seq RemovedBody420_118 RemovedBody420_129

def RemovedBody420_131 : StackLang.HolProg 64 :=
.seq RemovedBody420_117 RemovedBody420_130

def RemovedBody420_132 : StackLang.HolProg 64 :=
.seq RemovedBody420_116 RemovedBody420_131

def RemovedBody420_133 : StackLang.HolProg 64 :=
.seq RemovedBody420_115 RemovedBody420_132

def RemovedBody420_134 : StackLang.HolProg 64 :=
.seq RemovedBody420_114 RemovedBody420_133

def RemovedBody420_135 : StackLang.HolProg 64 :=
.seq RemovedBody420_113 RemovedBody420_134

def RemovedBody420_136 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody420_137 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody420_138 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody420_139 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody420_140 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody420_141 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody420_142 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 0 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def RemovedBody420_143 : StackLang.HolProg 64 :=
.seq RemovedBody420_141 RemovedBody420_142

def RemovedBody420_144 : StackLang.HolProg 64 :=
.seq RemovedBody420_140 RemovedBody420_143

def RemovedBody420_145 : StackLang.HolProg 64 :=
.seq RemovedBody420_139 RemovedBody420_144

def RemovedBody420_146 : StackLang.HolProg 64 :=
.seq RemovedBody420_138 RemovedBody420_145

def RemovedBody420_147 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody420_148 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def RemovedBody420_149 : StackLang.HolProg 64 :=
.seq RemovedBody420_147 RemovedBody420_148

def RemovedBody420_150 : StackLang.HolProg 64 :=
.call (some (RemovedBody420_146, 0, 420, 4)) (Sum.inl 186) (some (RemovedBody420_149, 420, 5))

def RemovedBody420_151 : StackLang.HolProg 64 :=
.seq RemovedBody420_137 RemovedBody420_150

def RemovedBody420_152 : StackLang.HolProg 64 :=
.seq RemovedBody420_136 RemovedBody420_151

def RemovedBody420_153 : StackLang.HolProg 64 :=
.seq RemovedBody420_135 RemovedBody420_152

def RemovedBody420_154 : StackLang.HolProg 64 :=
.seq RemovedBody420_106 RemovedBody420_153

def RemovedBody420_155 : StackLang.HolProg 64 :=
.seq RemovedBody420_103 RemovedBody420_154

def RemovedBody420_156 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody420_157 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody420_158 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 0#64)

def RemovedBody420_159 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody420_160 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 2 8#64)

def RemovedBody420_161 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 32#64)

def RemovedBody420_162 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody420_163 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody420_164 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1250#64)

def RemovedBody420_165 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody420_166 : StackLang.HolProg 64 :=
.seq RemovedBody420_164 RemovedBody420_165

def RemovedBody420_167 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody420_168 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 2#64)

def RemovedBody420_169 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 1

def RemovedBody420_170 : StackLang.HolProg 64 :=
.seq RemovedBody420_168 RemovedBody420_169

def RemovedBody420_171 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody420_172 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) RemovedBody420_170 RemovedBody420_171

def RemovedBody420_173 : StackLang.HolProg 64 :=
.seq RemovedBody420_167 RemovedBody420_172

def RemovedBody420_174 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def RemovedBody420_175 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody420_176 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 420 7

def RemovedBody420_177 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody420_178 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody420_179 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody420_180 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody420_181 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def RemovedBody420_182 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def RemovedBody420_183 : StackLang.HolProg 64 :=
.seq RemovedBody420_181 RemovedBody420_182

def RemovedBody420_184 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def RemovedBody420_185 : StackLang.HolProg 64 :=
.seq RemovedBody420_183 RemovedBody420_184

def RemovedBody420_186 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody420_187 : StackLang.HolProg 64 :=
.seq RemovedBody420_185 RemovedBody420_186

def RemovedBody420_188 : StackLang.HolProg 64 :=
.seq RemovedBody420_180 RemovedBody420_187

def RemovedBody420_189 : StackLang.HolProg 64 :=
.seq RemovedBody420_179 RemovedBody420_188

def RemovedBody420_190 : StackLang.HolProg 64 :=
.seq RemovedBody420_178 RemovedBody420_189

def RemovedBody420_191 : StackLang.HolProg 64 :=
.seq RemovedBody420_177 RemovedBody420_190

def RemovedBody420_192 : StackLang.HolProg 64 :=
.seq RemovedBody420_176 RemovedBody420_191

def RemovedBody420_193 : StackLang.HolProg 64 :=
.seq RemovedBody420_175 RemovedBody420_192

def RemovedBody420_194 : StackLang.HolProg 64 :=
.seq RemovedBody420_174 RemovedBody420_193

def RemovedBody420_195 : StackLang.HolProg 64 :=
.seq RemovedBody420_173 RemovedBody420_194

def RemovedBody420_196 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody420_197 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody420_198 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody420_199 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody420_200 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody420_201 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody420_202 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 3 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def RemovedBody420_203 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 56#64))

def RemovedBody420_204 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 2
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 24#64))

def RemovedBody420_205 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody420_206 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 24#64))

def RemovedBody420_207 : StackLang.HolProg 64 :=
.seq RemovedBody420_205 RemovedBody420_206

def RemovedBody420_208 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody420_209 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody420_210 : StackLang.HolProg 64 :=
.seq RemovedBody420_208 RemovedBody420_209

def RemovedBody420_211 : StackLang.HolProg 64 :=
.seq RemovedBody420_207 RemovedBody420_210

def RemovedBody420_212 : StackLang.HolProg 64 :=
.seq RemovedBody420_204 RemovedBody420_211

def RemovedBody420_213 : StackLang.HolProg 64 :=
.seq RemovedBody420_203 RemovedBody420_212

def RemovedBody420_214 : StackLang.HolProg 64 :=
.seq RemovedBody420_202 RemovedBody420_213

def RemovedBody420_215 : StackLang.HolProg 64 :=
.seq RemovedBody420_201 RemovedBody420_214

def RemovedBody420_216 : StackLang.HolProg 64 :=
.seq RemovedBody420_200 RemovedBody420_215

def RemovedBody420_217 : StackLang.HolProg 64 :=
.seq RemovedBody420_199 RemovedBody420_216

def RemovedBody420_218 : StackLang.HolProg 64 :=
.seq RemovedBody420_198 RemovedBody420_217

def RemovedBody420_219 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 56#64))

def RemovedBody420_220 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 2
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 24#64))

def RemovedBody420_221 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody420_222 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 24#64))

def RemovedBody420_223 : StackLang.HolProg 64 :=
.seq RemovedBody420_221 RemovedBody420_222

def RemovedBody420_224 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody420_225 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody420_226 : StackLang.HolProg 64 :=
.seq RemovedBody420_224 RemovedBody420_225

def RemovedBody420_227 : StackLang.HolProg 64 :=
.seq RemovedBody420_223 RemovedBody420_226

def RemovedBody420_228 : StackLang.HolProg 64 :=
.seq RemovedBody420_220 RemovedBody420_227

def RemovedBody420_229 : StackLang.HolProg 64 :=
.seq RemovedBody420_219 RemovedBody420_228

def RemovedBody420_230 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def RemovedBody420_231 : StackLang.HolProg 64 :=
.seq RemovedBody420_229 RemovedBody420_230

def RemovedBody420_232 : StackLang.HolProg 64 :=
.call (some (RemovedBody420_218, 0, 420, 6)) (Sum.inl 182) (some (RemovedBody420_231, 420, 7))

def RemovedBody420_233 : StackLang.HolProg 64 :=
.seq RemovedBody420_197 RemovedBody420_232

def RemovedBody420_234 : StackLang.HolProg 64 :=
.seq RemovedBody420_196 RemovedBody420_233

def RemovedBody420_235 : StackLang.HolProg 64 :=
.seq RemovedBody420_195 RemovedBody420_234

def RemovedBody420_236 : StackLang.HolProg 64 :=
.seq RemovedBody420_166 RemovedBody420_235

def RemovedBody420_237 : StackLang.HolProg 64 :=
.seq RemovedBody420_163 RemovedBody420_236

def RemovedBody420_238 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody420_239 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 1 0
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 0)))

def RemovedBody420_240 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 3
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 56#64))

def RemovedBody420_241 : StackLang.HolProg 64 :=
.seq RemovedBody420_239 RemovedBody420_240

def RemovedBody420_242 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody420_243 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1251#64)

def RemovedBody420_244 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody420_245 : StackLang.HolProg 64 :=
.seq RemovedBody420_243 RemovedBody420_244

def RemovedBody420_246 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody420_247 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 2#64)

def RemovedBody420_248 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 1

def RemovedBody420_249 : StackLang.HolProg 64 :=
.seq RemovedBody420_247 RemovedBody420_248

def RemovedBody420_250 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody420_251 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) RemovedBody420_249 RemovedBody420_250

def RemovedBody420_252 : StackLang.HolProg 64 :=
.seq RemovedBody420_246 RemovedBody420_251

def RemovedBody420_253 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def RemovedBody420_254 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody420_255 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 420 9

def RemovedBody420_256 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody420_257 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody420_258 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody420_259 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody420_260 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def RemovedBody420_261 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def RemovedBody420_262 : StackLang.HolProg 64 :=
.seq RemovedBody420_260 RemovedBody420_261

def RemovedBody420_263 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def RemovedBody420_264 : StackLang.HolProg 64 :=
.seq RemovedBody420_262 RemovedBody420_263

def RemovedBody420_265 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody420_266 : StackLang.HolProg 64 :=
.seq RemovedBody420_264 RemovedBody420_265

def RemovedBody420_267 : StackLang.HolProg 64 :=
.seq RemovedBody420_259 RemovedBody420_266

def RemovedBody420_268 : StackLang.HolProg 64 :=
.seq RemovedBody420_258 RemovedBody420_267

def RemovedBody420_269 : StackLang.HolProg 64 :=
.seq RemovedBody420_257 RemovedBody420_268

def RemovedBody420_270 : StackLang.HolProg 64 :=
.seq RemovedBody420_256 RemovedBody420_269

def RemovedBody420_271 : StackLang.HolProg 64 :=
.seq RemovedBody420_255 RemovedBody420_270

def RemovedBody420_272 : StackLang.HolProg 64 :=
.seq RemovedBody420_254 RemovedBody420_271

def RemovedBody420_273 : StackLang.HolProg 64 :=
.seq RemovedBody420_253 RemovedBody420_272

def RemovedBody420_274 : StackLang.HolProg 64 :=
.seq RemovedBody420_252 RemovedBody420_273

def RemovedBody420_275 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody420_276 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody420_277 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody420_278 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody420_279 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody420_280 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody420_281 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody420_282 : StackLang.HolProg 64 :=
.seq RemovedBody420_280 RemovedBody420_281

def RemovedBody420_283 : StackLang.HolProg 64 :=
.seq RemovedBody420_279 RemovedBody420_282

def RemovedBody420_284 : StackLang.HolProg 64 :=
.seq RemovedBody420_278 RemovedBody420_283

def RemovedBody420_285 : StackLang.HolProg 64 :=
.seq RemovedBody420_277 RemovedBody420_284

def RemovedBody420_286 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody420_287 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def RemovedBody420_288 : StackLang.HolProg 64 :=
.seq RemovedBody420_286 RemovedBody420_287

def RemovedBody420_289 : StackLang.HolProg 64 :=
.call (some (RemovedBody420_285, 0, 420, 8)) (Sum.inl 388) (some (RemovedBody420_288, 420, 9))

def RemovedBody420_290 : StackLang.HolProg 64 :=
.seq RemovedBody420_276 RemovedBody420_289

def RemovedBody420_291 : StackLang.HolProg 64 :=
.seq RemovedBody420_275 RemovedBody420_290

def RemovedBody420_292 : StackLang.HolProg 64 :=
.seq RemovedBody420_274 RemovedBody420_291

def RemovedBody420_293 : StackLang.HolProg 64 :=
.seq RemovedBody420_245 RemovedBody420_292

def RemovedBody420_294 : StackLang.HolProg 64 :=
.seq RemovedBody420_242 RemovedBody420_293

def RemovedBody420_295 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody420_296 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody420_297 : StackLang.HolProg 64 :=
.seq RemovedBody420_295 RemovedBody420_296

def RemovedBody420_298 : StackLang.HolProg 64 :=
.seq RemovedBody420_294 RemovedBody420_297

def RemovedBody420_299 : StackLang.HolProg 64 :=
.seq RemovedBody420_241 RemovedBody420_298

def RemovedBody420_300 : StackLang.HolProg 64 :=
.seq RemovedBody420_238 RemovedBody420_299

def RemovedBody420_301 : StackLang.HolProg 64 :=
.seq RemovedBody420_237 RemovedBody420_300

def RemovedBody420_302 : StackLang.HolProg 64 :=
.seq RemovedBody420_162 RemovedBody420_301

def RemovedBody420_303 : StackLang.HolProg 64 :=
.seq RemovedBody420_161 RemovedBody420_302

def RemovedBody420_304 : StackLang.HolProg 64 :=
.seq RemovedBody420_160 RemovedBody420_303

def RemovedBody420_305 : StackLang.HolProg 64 :=
.seq RemovedBody420_159 RemovedBody420_304

def RemovedBody420_306 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody420_307 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 2
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 56#64))

def RemovedBody420_308 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody420_309 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 24#64))

def RemovedBody420_310 : StackLang.HolProg 64 :=
.seq RemovedBody420_308 RemovedBody420_309

def RemovedBody420_311 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody420_312 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody420_313 : StackLang.HolProg 64 :=
.seq RemovedBody420_311 RemovedBody420_312

def RemovedBody420_314 : StackLang.HolProg 64 :=
.seq RemovedBody420_310 RemovedBody420_313

def RemovedBody420_315 : StackLang.HolProg 64 :=
.seq RemovedBody420_307 RemovedBody420_314

def RemovedBody420_316 : StackLang.HolProg 64 :=
.seq RemovedBody420_306 RemovedBody420_315

def RemovedBody420_317 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.equal) 0 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1) RemovedBody420_305 RemovedBody420_316

def RemovedBody420_318 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody420_319 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 32#64)

def RemovedBody420_320 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody420_321 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody420_322 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1252#64)

def RemovedBody420_323 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody420_324 : StackLang.HolProg 64 :=
.seq RemovedBody420_322 RemovedBody420_323

def RemovedBody420_325 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody420_326 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 2#64)

def RemovedBody420_327 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 1

def RemovedBody420_328 : StackLang.HolProg 64 :=
.seq RemovedBody420_326 RemovedBody420_327

def RemovedBody420_329 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody420_330 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) RemovedBody420_328 RemovedBody420_329

def RemovedBody420_331 : StackLang.HolProg 64 :=
.seq RemovedBody420_325 RemovedBody420_330

def RemovedBody420_332 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def RemovedBody420_333 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody420_334 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 420 11

def RemovedBody420_335 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody420_336 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody420_337 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody420_338 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody420_339 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def RemovedBody420_340 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def RemovedBody420_341 : StackLang.HolProg 64 :=
.seq RemovedBody420_339 RemovedBody420_340

def RemovedBody420_342 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def RemovedBody420_343 : StackLang.HolProg 64 :=
.seq RemovedBody420_341 RemovedBody420_342

def RemovedBody420_344 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody420_345 : StackLang.HolProg 64 :=
.seq RemovedBody420_343 RemovedBody420_344

def RemovedBody420_346 : StackLang.HolProg 64 :=
.seq RemovedBody420_338 RemovedBody420_345

def RemovedBody420_347 : StackLang.HolProg 64 :=
.seq RemovedBody420_337 RemovedBody420_346

def RemovedBody420_348 : StackLang.HolProg 64 :=
.seq RemovedBody420_336 RemovedBody420_347

def RemovedBody420_349 : StackLang.HolProg 64 :=
.seq RemovedBody420_335 RemovedBody420_348

def RemovedBody420_350 : StackLang.HolProg 64 :=
.seq RemovedBody420_334 RemovedBody420_349

def RemovedBody420_351 : StackLang.HolProg 64 :=
.seq RemovedBody420_333 RemovedBody420_350

def RemovedBody420_352 : StackLang.HolProg 64 :=
.seq RemovedBody420_332 RemovedBody420_351

def RemovedBody420_353 : StackLang.HolProg 64 :=
.seq RemovedBody420_331 RemovedBody420_352

def RemovedBody420_354 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody420_355 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody420_356 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody420_357 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody420_358 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody420_359 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody420_360 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 3 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def RemovedBody420_361 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 7
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 56#64))

def RemovedBody420_362 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 5
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 48#64))

def RemovedBody420_363 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 2
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 40#64))

def RemovedBody420_364 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 32#64))

def RemovedBody420_365 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 4
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 24#64))

def RemovedBody420_366 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 6
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody420_367 : StackLang.HolProg 64 :=
.seq RemovedBody420_365 RemovedBody420_366

def RemovedBody420_368 : StackLang.HolProg 64 :=
.seq RemovedBody420_364 RemovedBody420_367

def RemovedBody420_369 : StackLang.HolProg 64 :=
.seq RemovedBody420_363 RemovedBody420_368

def RemovedBody420_370 : StackLang.HolProg 64 :=
.seq RemovedBody420_362 RemovedBody420_369

def RemovedBody420_371 : StackLang.HolProg 64 :=
.seq RemovedBody420_361 RemovedBody420_370

def RemovedBody420_372 : StackLang.HolProg 64 :=
.seq RemovedBody420_360 RemovedBody420_371

def RemovedBody420_373 : StackLang.HolProg 64 :=
.seq RemovedBody420_359 RemovedBody420_372

def RemovedBody420_374 : StackLang.HolProg 64 :=
.seq RemovedBody420_358 RemovedBody420_373

def RemovedBody420_375 : StackLang.HolProg 64 :=
.seq RemovedBody420_357 RemovedBody420_374

def RemovedBody420_376 : StackLang.HolProg 64 :=
.seq RemovedBody420_356 RemovedBody420_375

def RemovedBody420_377 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 7
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 56#64))

def RemovedBody420_378 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 5
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 48#64))

def RemovedBody420_379 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 2
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 40#64))

def RemovedBody420_380 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 32#64))

def RemovedBody420_381 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 4
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 24#64))

def RemovedBody420_382 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 6
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody420_383 : StackLang.HolProg 64 :=
.seq RemovedBody420_381 RemovedBody420_382

def RemovedBody420_384 : StackLang.HolProg 64 :=
.seq RemovedBody420_380 RemovedBody420_383

def RemovedBody420_385 : StackLang.HolProg 64 :=
.seq RemovedBody420_379 RemovedBody420_384

def RemovedBody420_386 : StackLang.HolProg 64 :=
.seq RemovedBody420_378 RemovedBody420_385

def RemovedBody420_387 : StackLang.HolProg 64 :=
.seq RemovedBody420_377 RemovedBody420_386

def RemovedBody420_388 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def RemovedBody420_389 : StackLang.HolProg 64 :=
.seq RemovedBody420_387 RemovedBody420_388

def RemovedBody420_390 : StackLang.HolProg 64 :=
.call (some (RemovedBody420_376, 0, 420, 10)) (Sum.inl 68) (some (RemovedBody420_389, 420, 11))

def RemovedBody420_391 : StackLang.HolProg 64 :=
.seq RemovedBody420_355 RemovedBody420_390

def RemovedBody420_392 : StackLang.HolProg 64 :=
.seq RemovedBody420_354 RemovedBody420_391

def RemovedBody420_393 : StackLang.HolProg 64 :=
.seq RemovedBody420_353 RemovedBody420_392

def RemovedBody420_394 : StackLang.HolProg 64 :=
.seq RemovedBody420_324 RemovedBody420_393

def RemovedBody420_395 : StackLang.HolProg 64 :=
.seq RemovedBody420_321 RemovedBody420_394

def RemovedBody420_396 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody420_397 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody420_398 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 6
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 3 0#64))

def RemovedBody420_399 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody420_400 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 5
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 3 8#64))

def RemovedBody420_401 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody420_402 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 4
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 3 16#64))

def RemovedBody420_403 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody420_404 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 3 24#64))

def RemovedBody420_405 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 1 7
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 7)))

def RemovedBody420_406 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody420_407 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1253#64)

def RemovedBody420_408 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody420_409 : StackLang.HolProg 64 :=
.seq RemovedBody420_407 RemovedBody420_408

def RemovedBody420_410 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody420_411 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 2#64)

def RemovedBody420_412 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 1

def RemovedBody420_413 : StackLang.HolProg 64 :=
.seq RemovedBody420_411 RemovedBody420_412

def RemovedBody420_414 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody420_415 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) RemovedBody420_413 RemovedBody420_414

def RemovedBody420_416 : StackLang.HolProg 64 :=
.seq RemovedBody420_410 RemovedBody420_415

def RemovedBody420_417 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def RemovedBody420_418 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody420_419 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 420 13

def RemovedBody420_420 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody420_421 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody420_422 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody420_423 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody420_424 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def RemovedBody420_425 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def RemovedBody420_426 : StackLang.HolProg 64 :=
.seq RemovedBody420_424 RemovedBody420_425

def RemovedBody420_427 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def RemovedBody420_428 : StackLang.HolProg 64 :=
.seq RemovedBody420_426 RemovedBody420_427

def RemovedBody420_429 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody420_430 : StackLang.HolProg 64 :=
.seq RemovedBody420_428 RemovedBody420_429

def RemovedBody420_431 : StackLang.HolProg 64 :=
.seq RemovedBody420_423 RemovedBody420_430

def RemovedBody420_432 : StackLang.HolProg 64 :=
.seq RemovedBody420_422 RemovedBody420_431

def RemovedBody420_433 : StackLang.HolProg 64 :=
.seq RemovedBody420_421 RemovedBody420_432

def RemovedBody420_434 : StackLang.HolProg 64 :=
.seq RemovedBody420_420 RemovedBody420_433

def RemovedBody420_435 : StackLang.HolProg 64 :=
.seq RemovedBody420_419 RemovedBody420_434

def RemovedBody420_436 : StackLang.HolProg 64 :=
.seq RemovedBody420_418 RemovedBody420_435

def RemovedBody420_437 : StackLang.HolProg 64 :=
.seq RemovedBody420_417 RemovedBody420_436

def RemovedBody420_438 : StackLang.HolProg 64 :=
.seq RemovedBody420_416 RemovedBody420_437

def RemovedBody420_439 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody420_440 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody420_441 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody420_442 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody420_443 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody420_444 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody420_445 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 64#64))

def RemovedBody420_446 : StackLang.HolProg 64 :=
.seq RemovedBody420_444 RemovedBody420_445

def RemovedBody420_447 : StackLang.HolProg 64 :=
.seq RemovedBody420_443 RemovedBody420_446

def RemovedBody420_448 : StackLang.HolProg 64 :=
.seq RemovedBody420_442 RemovedBody420_447

def RemovedBody420_449 : StackLang.HolProg 64 :=
.seq RemovedBody420_441 RemovedBody420_448

def RemovedBody420_450 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 64#64))

def RemovedBody420_451 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def RemovedBody420_452 : StackLang.HolProg 64 :=
.seq RemovedBody420_450 RemovedBody420_451

def RemovedBody420_453 : StackLang.HolProg 64 :=
.call (some (RemovedBody420_449, 0, 420, 12)) (Sum.inl 388) (some (RemovedBody420_452, 420, 13))

def RemovedBody420_454 : StackLang.HolProg 64 :=
.seq RemovedBody420_440 RemovedBody420_453

def RemovedBody420_455 : StackLang.HolProg 64 :=
.seq RemovedBody420_439 RemovedBody420_454

def RemovedBody420_456 : StackLang.HolProg 64 :=
.seq RemovedBody420_438 RemovedBody420_455

def RemovedBody420_457 : StackLang.HolProg 64 :=
.seq RemovedBody420_409 RemovedBody420_456

def RemovedBody420_458 : StackLang.HolProg 64 :=
.seq RemovedBody420_406 RemovedBody420_457

def RemovedBody420_459 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody420_460 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 0#64)

def RemovedBody420_461 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody420_462 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 72#64)))

def RemovedBody420_463 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 0

def RemovedBody420_464 : StackLang.HolProg 64 :=
.seq RemovedBody420_462 RemovedBody420_463

def RemovedBody420_465 : StackLang.HolProg 64 :=
.seq RemovedBody420_461 RemovedBody420_464

def RemovedBody420_466 : StackLang.HolProg 64 :=
.seq RemovedBody420_460 RemovedBody420_465

def RemovedBody420_467 : StackLang.HolProg 64 :=
.seq RemovedBody420_459 RemovedBody420_466

def RemovedBody420_468 : StackLang.HolProg 64 :=
.seq RemovedBody420_458 RemovedBody420_467

def RemovedBody420_469 : StackLang.HolProg 64 :=
.seq RemovedBody420_405 RemovedBody420_468

def RemovedBody420_470 : StackLang.HolProg 64 :=
.seq RemovedBody420_404 RemovedBody420_469

def RemovedBody420_471 : StackLang.HolProg 64 :=
.seq RemovedBody420_403 RemovedBody420_470

def RemovedBody420_472 : StackLang.HolProg 64 :=
.seq RemovedBody420_402 RemovedBody420_471

def RemovedBody420_473 : StackLang.HolProg 64 :=
.seq RemovedBody420_401 RemovedBody420_472

def RemovedBody420_474 : StackLang.HolProg 64 :=
.seq RemovedBody420_400 RemovedBody420_473

def RemovedBody420_475 : StackLang.HolProg 64 :=
.seq RemovedBody420_399 RemovedBody420_474

def RemovedBody420_476 : StackLang.HolProg 64 :=
.seq RemovedBody420_398 RemovedBody420_475

def RemovedBody420_477 : StackLang.HolProg 64 :=
.seq RemovedBody420_397 RemovedBody420_476

def RemovedBody420_478 : StackLang.HolProg 64 :=
.seq RemovedBody420_396 RemovedBody420_477

def RemovedBody420_479 : StackLang.HolProg 64 :=
.seq RemovedBody420_395 RemovedBody420_478

def RemovedBody420_480 : StackLang.HolProg 64 :=
.seq RemovedBody420_320 RemovedBody420_479

def RemovedBody420_481 : StackLang.HolProg 64 :=
.seq RemovedBody420_319 RemovedBody420_480

def RemovedBody420_482 : StackLang.HolProg 64 :=
.seq RemovedBody420_318 RemovedBody420_481

def RemovedBody420_483 : StackLang.HolProg 64 :=
.seq RemovedBody420_317 RemovedBody420_482

def RemovedBody420_484 : StackLang.HolProg 64 :=
.seq RemovedBody420_158 RemovedBody420_483

def RemovedBody420_485 : StackLang.HolProg 64 :=
.seq RemovedBody420_157 RemovedBody420_484

def RemovedBody420_486 : StackLang.HolProg 64 :=
.seq RemovedBody420_156 RemovedBody420_485

def RemovedBody420_487 : StackLang.HolProg 64 :=
.seq RemovedBody420_155 RemovedBody420_486

def RemovedBody420_488 : StackLang.HolProg 64 :=
.seq RemovedBody420_102 RemovedBody420_487

def RemovedBody420_489 : StackLang.HolProg 64 :=
.seq RemovedBody420_99 RemovedBody420_488

def RemovedBody420_490 : StackLang.HolProg 64 :=
.seq RemovedBody420_98 RemovedBody420_489

def RemovedBody420_491 : StackLang.HolProg 64 :=
.seq RemovedBody420_97 RemovedBody420_490

def RemovedBody420_492 : StackLang.HolProg 64 :=
.seq RemovedBody420_96 RemovedBody420_491

def RemovedBody420_493 : StackLang.HolProg 64 :=
.seq RemovedBody420_95 RemovedBody420_492

def RemovedBody420_494 : StackLang.HolProg 64 :=
.seq RemovedBody420_94 RemovedBody420_493

def RemovedBody420_495 : StackLang.HolProg 64 :=
.seq RemovedBody420_93 RemovedBody420_494

def RemovedBody420_496 : StackLang.HolProg 64 :=
.seq RemovedBody420_92 RemovedBody420_495

def RemovedBody420_497 : StackLang.HolProg 64 :=
.seq RemovedBody420_77 RemovedBody420_496

def RemovedBody420_498 : StackLang.HolProg 64 :=
.seq RemovedBody420_76 RemovedBody420_497

def RemovedBody420_499 : StackLang.HolProg 64 :=
.seq RemovedBody420_75 RemovedBody420_498

def RemovedBody420_500 : StackLang.HolProg 64 :=
.seq RemovedBody420_74 RemovedBody420_499

def RemovedBody420_501 : StackLang.HolProg 64 :=
.seq RemovedBody420_19 RemovedBody420_500

def RemovedBody420_502 : StackLang.HolProg 64 :=
.seq RemovedBody420_6 RemovedBody420_501

def Removed420 : Nat × StackLang.HolProg 64 := (420, RemovedBody420_502)
theorem Removed420_eq : StackRemove.progComp false riscvConfig.addrOffset (riscvConfig.regCount - (riscvConfig.avoidRegs.length + 3)) Alloc420 = Removed420 := by
  kernel_rfl
#print axioms Removed420_eq
end InitECandidate.Proofs.BackendStages
