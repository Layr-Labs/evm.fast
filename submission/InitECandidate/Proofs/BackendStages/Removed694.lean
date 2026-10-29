import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.BackendStages.Alloc694
import Flapjack.Compiler.Backend.Backend
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
namespace InitECandidate.Proofs.BackendStages
def RemovedBody694_0 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 72#64)))

def RemovedBody694_1 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 2#64)

def RemovedBody694_2 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 1

def RemovedBody694_3 : StackLang.HolProg 64 :=
.seq RemovedBody694_1 RemovedBody694_2

def RemovedBody694_4 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody694_5 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) RemovedBody694_3 RemovedBody694_4

def RemovedBody694_6 : StackLang.HolProg 64 :=
.seq RemovedBody694_0 RemovedBody694_5

def RemovedBody694_7 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 64#64))

def RemovedBody694_8 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 2
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 56#64))

def RemovedBody694_9 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody694_10 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 3
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 48#64))

def RemovedBody694_11 : StackLang.HolProg 64 :=
.seq RemovedBody694_9 RemovedBody694_10

def RemovedBody694_12 : StackLang.HolProg 64 :=
.seq RemovedBody694_8 RemovedBody694_11

def RemovedBody694_13 : StackLang.HolProg 64 :=
.seq RemovedBody694_7 RemovedBody694_12

def RemovedBody694_14 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody694_15 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 3013#64)

def RemovedBody694_16 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody694_17 : StackLang.HolProg 64 :=
.seq RemovedBody694_15 RemovedBody694_16

def RemovedBody694_18 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody694_19 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 2#64)

def RemovedBody694_20 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 1

def RemovedBody694_21 : StackLang.HolProg 64 :=
.seq RemovedBody694_19 RemovedBody694_20

def RemovedBody694_22 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody694_23 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) RemovedBody694_21 RemovedBody694_22

def RemovedBody694_24 : StackLang.HolProg 64 :=
.seq RemovedBody694_18 RemovedBody694_23

def RemovedBody694_25 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def RemovedBody694_26 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody694_27 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 694 3

def RemovedBody694_28 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody694_29 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody694_30 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody694_31 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody694_32 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def RemovedBody694_33 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def RemovedBody694_34 : StackLang.HolProg 64 :=
.seq RemovedBody694_32 RemovedBody694_33

def RemovedBody694_35 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def RemovedBody694_36 : StackLang.HolProg 64 :=
.seq RemovedBody694_34 RemovedBody694_35

def RemovedBody694_37 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody694_38 : StackLang.HolProg 64 :=
.seq RemovedBody694_36 RemovedBody694_37

def RemovedBody694_39 : StackLang.HolProg 64 :=
.seq RemovedBody694_31 RemovedBody694_38

def RemovedBody694_40 : StackLang.HolProg 64 :=
.seq RemovedBody694_30 RemovedBody694_39

def RemovedBody694_41 : StackLang.HolProg 64 :=
.seq RemovedBody694_29 RemovedBody694_40

def RemovedBody694_42 : StackLang.HolProg 64 :=
.seq RemovedBody694_28 RemovedBody694_41

def RemovedBody694_43 : StackLang.HolProg 64 :=
.seq RemovedBody694_27 RemovedBody694_42

def RemovedBody694_44 : StackLang.HolProg 64 :=
.seq RemovedBody694_26 RemovedBody694_43

def RemovedBody694_45 : StackLang.HolProg 64 :=
.seq RemovedBody694_25 RemovedBody694_44

def RemovedBody694_46 : StackLang.HolProg 64 :=
.seq RemovedBody694_24 RemovedBody694_45

def RemovedBody694_47 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody694_48 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody694_49 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody694_50 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody694_51 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody694_52 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody694_53 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 2
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 56#64))

def RemovedBody694_54 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 48#64))

def RemovedBody694_55 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 56#64))

def RemovedBody694_56 : StackLang.HolProg 64 :=
.seq RemovedBody694_54 RemovedBody694_55

def RemovedBody694_57 : StackLang.HolProg 64 :=
.seq RemovedBody694_53 RemovedBody694_56

def RemovedBody694_58 : StackLang.HolProg 64 :=
.seq RemovedBody694_52 RemovedBody694_57

def RemovedBody694_59 : StackLang.HolProg 64 :=
.seq RemovedBody694_51 RemovedBody694_58

def RemovedBody694_60 : StackLang.HolProg 64 :=
.seq RemovedBody694_50 RemovedBody694_59

def RemovedBody694_61 : StackLang.HolProg 64 :=
.seq RemovedBody694_49 RemovedBody694_60

def RemovedBody694_62 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 2
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 56#64))

def RemovedBody694_63 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 48#64))

def RemovedBody694_64 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 56#64))

def RemovedBody694_65 : StackLang.HolProg 64 :=
.seq RemovedBody694_63 RemovedBody694_64

def RemovedBody694_66 : StackLang.HolProg 64 :=
.seq RemovedBody694_62 RemovedBody694_65

def RemovedBody694_67 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def RemovedBody694_68 : StackLang.HolProg 64 :=
.seq RemovedBody694_66 RemovedBody694_67

def RemovedBody694_69 : StackLang.HolProg 64 :=
.call (some (RemovedBody694_61, 0, 694, 2)) (Sum.inl 657) (some (RemovedBody694_68, 694, 3))

def RemovedBody694_70 : StackLang.HolProg 64 :=
.seq RemovedBody694_48 RemovedBody694_69

def RemovedBody694_71 : StackLang.HolProg 64 :=
.seq RemovedBody694_47 RemovedBody694_70

def RemovedBody694_72 : StackLang.HolProg 64 :=
.seq RemovedBody694_46 RemovedBody694_71

def RemovedBody694_73 : StackLang.HolProg 64 :=
.seq RemovedBody694_17 RemovedBody694_72

def RemovedBody694_74 : StackLang.HolProg 64 :=
.seq RemovedBody694_14 RemovedBody694_73

def RemovedBody694_75 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody694_76 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody694_77 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 2#64)

def RemovedBody694_78 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 2
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 40#64))

def RemovedBody694_79 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody694_80 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 3014#64)

def RemovedBody694_81 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody694_82 : StackLang.HolProg 64 :=
.seq RemovedBody694_80 RemovedBody694_81

def RemovedBody694_83 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody694_84 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 2#64)

def RemovedBody694_85 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 1

def RemovedBody694_86 : StackLang.HolProg 64 :=
.seq RemovedBody694_84 RemovedBody694_85

def RemovedBody694_87 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody694_88 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) RemovedBody694_86 RemovedBody694_87

def RemovedBody694_89 : StackLang.HolProg 64 :=
.seq RemovedBody694_83 RemovedBody694_88

def RemovedBody694_90 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def RemovedBody694_91 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody694_92 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 694 5

def RemovedBody694_93 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody694_94 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody694_95 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody694_96 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody694_97 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def RemovedBody694_98 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def RemovedBody694_99 : StackLang.HolProg 64 :=
.seq RemovedBody694_97 RemovedBody694_98

def RemovedBody694_100 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def RemovedBody694_101 : StackLang.HolProg 64 :=
.seq RemovedBody694_99 RemovedBody694_100

def RemovedBody694_102 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody694_103 : StackLang.HolProg 64 :=
.seq RemovedBody694_101 RemovedBody694_102

def RemovedBody694_104 : StackLang.HolProg 64 :=
.seq RemovedBody694_96 RemovedBody694_103

def RemovedBody694_105 : StackLang.HolProg 64 :=
.seq RemovedBody694_95 RemovedBody694_104

def RemovedBody694_106 : StackLang.HolProg 64 :=
.seq RemovedBody694_94 RemovedBody694_105

def RemovedBody694_107 : StackLang.HolProg 64 :=
.seq RemovedBody694_93 RemovedBody694_106

def RemovedBody694_108 : StackLang.HolProg 64 :=
.seq RemovedBody694_92 RemovedBody694_107

def RemovedBody694_109 : StackLang.HolProg 64 :=
.seq RemovedBody694_91 RemovedBody694_108

def RemovedBody694_110 : StackLang.HolProg 64 :=
.seq RemovedBody694_90 RemovedBody694_109

def RemovedBody694_111 : StackLang.HolProg 64 :=
.seq RemovedBody694_89 RemovedBody694_110

def RemovedBody694_112 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody694_113 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody694_114 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody694_115 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody694_116 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody694_117 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody694_118 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 0 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def RemovedBody694_119 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 2
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 56#64))

def RemovedBody694_120 : StackLang.HolProg 64 :=
.seq RemovedBody694_118 RemovedBody694_119

def RemovedBody694_121 : StackLang.HolProg 64 :=
.seq RemovedBody694_117 RemovedBody694_120

def RemovedBody694_122 : StackLang.HolProg 64 :=
.seq RemovedBody694_116 RemovedBody694_121

def RemovedBody694_123 : StackLang.HolProg 64 :=
.seq RemovedBody694_115 RemovedBody694_122

def RemovedBody694_124 : StackLang.HolProg 64 :=
.seq RemovedBody694_114 RemovedBody694_123

def RemovedBody694_125 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 2
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 56#64))

def RemovedBody694_126 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def RemovedBody694_127 : StackLang.HolProg 64 :=
.seq RemovedBody694_125 RemovedBody694_126

def RemovedBody694_128 : StackLang.HolProg 64 :=
.call (some (RemovedBody694_124, 0, 694, 4)) (Sum.inl 681) (some (RemovedBody694_127, 694, 5))

def RemovedBody694_129 : StackLang.HolProg 64 :=
.seq RemovedBody694_113 RemovedBody694_128

def RemovedBody694_130 : StackLang.HolProg 64 :=
.seq RemovedBody694_112 RemovedBody694_129

def RemovedBody694_131 : StackLang.HolProg 64 :=
.seq RemovedBody694_111 RemovedBody694_130

def RemovedBody694_132 : StackLang.HolProg 64 :=
.seq RemovedBody694_82 RemovedBody694_131

def RemovedBody694_133 : StackLang.HolProg 64 :=
.seq RemovedBody694_79 RemovedBody694_132

def RemovedBody694_134 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody694_135 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody694_136 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 1#64)

def RemovedBody694_137 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 56#64))

def RemovedBody694_138 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 2
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody694_139 : StackLang.HolProg 64 :=
.seq RemovedBody694_137 RemovedBody694_138

def RemovedBody694_140 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody694_141 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 3015#64)

def RemovedBody694_142 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody694_143 : StackLang.HolProg 64 :=
.seq RemovedBody694_141 RemovedBody694_142

def RemovedBody694_144 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody694_145 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 2#64)

def RemovedBody694_146 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 1

def RemovedBody694_147 : StackLang.HolProg 64 :=
.seq RemovedBody694_145 RemovedBody694_146

def RemovedBody694_148 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody694_149 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) RemovedBody694_147 RemovedBody694_148

def RemovedBody694_150 : StackLang.HolProg 64 :=
.seq RemovedBody694_144 RemovedBody694_149

def RemovedBody694_151 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def RemovedBody694_152 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody694_153 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 694 7

def RemovedBody694_154 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody694_155 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody694_156 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody694_157 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody694_158 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def RemovedBody694_159 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def RemovedBody694_160 : StackLang.HolProg 64 :=
.seq RemovedBody694_158 RemovedBody694_159

def RemovedBody694_161 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def RemovedBody694_162 : StackLang.HolProg 64 :=
.seq RemovedBody694_160 RemovedBody694_161

def RemovedBody694_163 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody694_164 : StackLang.HolProg 64 :=
.seq RemovedBody694_162 RemovedBody694_163

def RemovedBody694_165 : StackLang.HolProg 64 :=
.seq RemovedBody694_157 RemovedBody694_164

def RemovedBody694_166 : StackLang.HolProg 64 :=
.seq RemovedBody694_156 RemovedBody694_165

def RemovedBody694_167 : StackLang.HolProg 64 :=
.seq RemovedBody694_155 RemovedBody694_166

def RemovedBody694_168 : StackLang.HolProg 64 :=
.seq RemovedBody694_154 RemovedBody694_167

def RemovedBody694_169 : StackLang.HolProg 64 :=
.seq RemovedBody694_153 RemovedBody694_168

def RemovedBody694_170 : StackLang.HolProg 64 :=
.seq RemovedBody694_152 RemovedBody694_169

def RemovedBody694_171 : StackLang.HolProg 64 :=
.seq RemovedBody694_151 RemovedBody694_170

def RemovedBody694_172 : StackLang.HolProg 64 :=
.seq RemovedBody694_150 RemovedBody694_171

def RemovedBody694_173 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody694_174 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody694_175 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody694_176 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody694_177 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody694_178 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody694_179 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 0 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def RemovedBody694_180 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 2
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 56#64))

def RemovedBody694_181 : StackLang.HolProg 64 :=
.seq RemovedBody694_179 RemovedBody694_180

def RemovedBody694_182 : StackLang.HolProg 64 :=
.seq RemovedBody694_178 RemovedBody694_181

def RemovedBody694_183 : StackLang.HolProg 64 :=
.seq RemovedBody694_177 RemovedBody694_182

def RemovedBody694_184 : StackLang.HolProg 64 :=
.seq RemovedBody694_176 RemovedBody694_183

def RemovedBody694_185 : StackLang.HolProg 64 :=
.seq RemovedBody694_175 RemovedBody694_184

def RemovedBody694_186 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 2
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 56#64))

def RemovedBody694_187 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def RemovedBody694_188 : StackLang.HolProg 64 :=
.seq RemovedBody694_186 RemovedBody694_187

def RemovedBody694_189 : StackLang.HolProg 64 :=
.call (some (RemovedBody694_185, 0, 694, 6)) (Sum.inl 681) (some (RemovedBody694_188, 694, 7))

def RemovedBody694_190 : StackLang.HolProg 64 :=
.seq RemovedBody694_174 RemovedBody694_189

def RemovedBody694_191 : StackLang.HolProg 64 :=
.seq RemovedBody694_173 RemovedBody694_190

def RemovedBody694_192 : StackLang.HolProg 64 :=
.seq RemovedBody694_172 RemovedBody694_191

def RemovedBody694_193 : StackLang.HolProg 64 :=
.seq RemovedBody694_143 RemovedBody694_192

def RemovedBody694_194 : StackLang.HolProg 64 :=
.seq RemovedBody694_140 RemovedBody694_193

def RemovedBody694_195 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody694_196 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody694_197 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 0 0
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 2)))

def RemovedBody694_198 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 1#64)

def RemovedBody694_199 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody694_200 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 2
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody694_201 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 12#64)

def RemovedBody694_202 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 64#64))

def RemovedBody694_203 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 56#64))

def RemovedBody694_204 : StackLang.HolProg 64 :=
.seq RemovedBody694_202 RemovedBody694_203

def RemovedBody694_205 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody694_206 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 3016#64)

def RemovedBody694_207 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody694_208 : StackLang.HolProg 64 :=
.seq RemovedBody694_206 RemovedBody694_207

def RemovedBody694_209 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody694_210 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 2#64)

def RemovedBody694_211 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 1

def RemovedBody694_212 : StackLang.HolProg 64 :=
.seq RemovedBody694_210 RemovedBody694_211

def RemovedBody694_213 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody694_214 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) RemovedBody694_212 RemovedBody694_213

def RemovedBody694_215 : StackLang.HolProg 64 :=
.seq RemovedBody694_209 RemovedBody694_214

def RemovedBody694_216 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def RemovedBody694_217 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody694_218 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 694 9

def RemovedBody694_219 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody694_220 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody694_221 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody694_222 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody694_223 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def RemovedBody694_224 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def RemovedBody694_225 : StackLang.HolProg 64 :=
.seq RemovedBody694_223 RemovedBody694_224

def RemovedBody694_226 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def RemovedBody694_227 : StackLang.HolProg 64 :=
.seq RemovedBody694_225 RemovedBody694_226

def RemovedBody694_228 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody694_229 : StackLang.HolProg 64 :=
.seq RemovedBody694_227 RemovedBody694_228

def RemovedBody694_230 : StackLang.HolProg 64 :=
.seq RemovedBody694_222 RemovedBody694_229

def RemovedBody694_231 : StackLang.HolProg 64 :=
.seq RemovedBody694_221 RemovedBody694_230

def RemovedBody694_232 : StackLang.HolProg 64 :=
.seq RemovedBody694_220 RemovedBody694_231

def RemovedBody694_233 : StackLang.HolProg 64 :=
.seq RemovedBody694_219 RemovedBody694_232

def RemovedBody694_234 : StackLang.HolProg 64 :=
.seq RemovedBody694_218 RemovedBody694_233

def RemovedBody694_235 : StackLang.HolProg 64 :=
.seq RemovedBody694_217 RemovedBody694_234

def RemovedBody694_236 : StackLang.HolProg 64 :=
.seq RemovedBody694_216 RemovedBody694_235

def RemovedBody694_237 : StackLang.HolProg 64 :=
.seq RemovedBody694_215 RemovedBody694_236

def RemovedBody694_238 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody694_239 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody694_240 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody694_241 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody694_242 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody694_243 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody694_244 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 56#64))

def RemovedBody694_245 : StackLang.HolProg 64 :=
.seq RemovedBody694_243 RemovedBody694_244

def RemovedBody694_246 : StackLang.HolProg 64 :=
.seq RemovedBody694_242 RemovedBody694_245

def RemovedBody694_247 : StackLang.HolProg 64 :=
.seq RemovedBody694_241 RemovedBody694_246

def RemovedBody694_248 : StackLang.HolProg 64 :=
.seq RemovedBody694_240 RemovedBody694_247

def RemovedBody694_249 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 56#64))

def RemovedBody694_250 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def RemovedBody694_251 : StackLang.HolProg 64 :=
.seq RemovedBody694_249 RemovedBody694_250

def RemovedBody694_252 : StackLang.HolProg 64 :=
.call (some (RemovedBody694_248, 0, 694, 8)) (Sum.inl 679) (some (RemovedBody694_251, 694, 9))

def RemovedBody694_253 : StackLang.HolProg 64 :=
.seq RemovedBody694_239 RemovedBody694_252

def RemovedBody694_254 : StackLang.HolProg 64 :=
.seq RemovedBody694_238 RemovedBody694_253

def RemovedBody694_255 : StackLang.HolProg 64 :=
.seq RemovedBody694_237 RemovedBody694_254

def RemovedBody694_256 : StackLang.HolProg 64 :=
.seq RemovedBody694_208 RemovedBody694_255

def RemovedBody694_257 : StackLang.HolProg 64 :=
.seq RemovedBody694_205 RemovedBody694_256

def RemovedBody694_258 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody694_259 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 0#64)

def RemovedBody694_260 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody694_261 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 72#64)))

def RemovedBody694_262 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 0

def RemovedBody694_263 : StackLang.HolProg 64 :=
.seq RemovedBody694_261 RemovedBody694_262

def RemovedBody694_264 : StackLang.HolProg 64 :=
.seq RemovedBody694_260 RemovedBody694_263

def RemovedBody694_265 : StackLang.HolProg 64 :=
.seq RemovedBody694_259 RemovedBody694_264

def RemovedBody694_266 : StackLang.HolProg 64 :=
.seq RemovedBody694_258 RemovedBody694_265

def RemovedBody694_267 : StackLang.HolProg 64 :=
.seq RemovedBody694_257 RemovedBody694_266

def RemovedBody694_268 : StackLang.HolProg 64 :=
.seq RemovedBody694_204 RemovedBody694_267

def RemovedBody694_269 : StackLang.HolProg 64 :=
.seq RemovedBody694_201 RemovedBody694_268

def RemovedBody694_270 : StackLang.HolProg 64 :=
.seq RemovedBody694_200 RemovedBody694_269

def RemovedBody694_271 : StackLang.HolProg 64 :=
.seq RemovedBody694_199 RemovedBody694_270

def RemovedBody694_272 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody694_273 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.equal) 0 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1) RemovedBody694_271 RemovedBody694_272

def RemovedBody694_274 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody694_275 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody694_276 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody694_277 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody694_278 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 3017#64)

def RemovedBody694_279 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody694_280 : StackLang.HolProg 64 :=
.seq RemovedBody694_278 RemovedBody694_279

def RemovedBody694_281 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody694_282 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 2#64)

def RemovedBody694_283 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 1

def RemovedBody694_284 : StackLang.HolProg 64 :=
.seq RemovedBody694_282 RemovedBody694_283

def RemovedBody694_285 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody694_286 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) RemovedBody694_284 RemovedBody694_285

def RemovedBody694_287 : StackLang.HolProg 64 :=
.seq RemovedBody694_281 RemovedBody694_286

def RemovedBody694_288 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def RemovedBody694_289 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody694_290 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 694 11

def RemovedBody694_291 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody694_292 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody694_293 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody694_294 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody694_295 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def RemovedBody694_296 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def RemovedBody694_297 : StackLang.HolProg 64 :=
.seq RemovedBody694_295 RemovedBody694_296

def RemovedBody694_298 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def RemovedBody694_299 : StackLang.HolProg 64 :=
.seq RemovedBody694_297 RemovedBody694_298

def RemovedBody694_300 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody694_301 : StackLang.HolProg 64 :=
.seq RemovedBody694_299 RemovedBody694_300

def RemovedBody694_302 : StackLang.HolProg 64 :=
.seq RemovedBody694_294 RemovedBody694_301

def RemovedBody694_303 : StackLang.HolProg 64 :=
.seq RemovedBody694_293 RemovedBody694_302

def RemovedBody694_304 : StackLang.HolProg 64 :=
.seq RemovedBody694_292 RemovedBody694_303

def RemovedBody694_305 : StackLang.HolProg 64 :=
.seq RemovedBody694_291 RemovedBody694_304

def RemovedBody694_306 : StackLang.HolProg 64 :=
.seq RemovedBody694_290 RemovedBody694_305

def RemovedBody694_307 : StackLang.HolProg 64 :=
.seq RemovedBody694_289 RemovedBody694_306

def RemovedBody694_308 : StackLang.HolProg 64 :=
.seq RemovedBody694_288 RemovedBody694_307

def RemovedBody694_309 : StackLang.HolProg 64 :=
.seq RemovedBody694_287 RemovedBody694_308

def RemovedBody694_310 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody694_311 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody694_312 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody694_313 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody694_314 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody694_315 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody694_316 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 0 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def RemovedBody694_317 : StackLang.HolProg 64 :=
.seq RemovedBody694_315 RemovedBody694_316

def RemovedBody694_318 : StackLang.HolProg 64 :=
.seq RemovedBody694_314 RemovedBody694_317

def RemovedBody694_319 : StackLang.HolProg 64 :=
.seq RemovedBody694_313 RemovedBody694_318

def RemovedBody694_320 : StackLang.HolProg 64 :=
.seq RemovedBody694_312 RemovedBody694_319

def RemovedBody694_321 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody694_322 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def RemovedBody694_323 : StackLang.HolProg 64 :=
.seq RemovedBody694_321 RemovedBody694_322

def RemovedBody694_324 : StackLang.HolProg 64 :=
.call (some (RemovedBody694_320, 0, 694, 10)) (Sum.inl 69) (some (RemovedBody694_323, 694, 11))

def RemovedBody694_325 : StackLang.HolProg 64 :=
.seq RemovedBody694_311 RemovedBody694_324

def RemovedBody694_326 : StackLang.HolProg 64 :=
.seq RemovedBody694_310 RemovedBody694_325

def RemovedBody694_327 : StackLang.HolProg 64 :=
.seq RemovedBody694_309 RemovedBody694_326

def RemovedBody694_328 : StackLang.HolProg 64 :=
.seq RemovedBody694_280 RemovedBody694_327

def RemovedBody694_329 : StackLang.HolProg 64 :=
.seq RemovedBody694_277 RemovedBody694_328

def RemovedBody694_330 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody694_331 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 1152#64)

def RemovedBody694_332 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 56#64))

def RemovedBody694_333 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody694_334 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 3018#64)

def RemovedBody694_335 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody694_336 : StackLang.HolProg 64 :=
.seq RemovedBody694_334 RemovedBody694_335

def RemovedBody694_337 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody694_338 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 2#64)

def RemovedBody694_339 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 1

def RemovedBody694_340 : StackLang.HolProg 64 :=
.seq RemovedBody694_338 RemovedBody694_339

def RemovedBody694_341 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody694_342 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) RemovedBody694_340 RemovedBody694_341

def RemovedBody694_343 : StackLang.HolProg 64 :=
.seq RemovedBody694_337 RemovedBody694_342

def RemovedBody694_344 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def RemovedBody694_345 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody694_346 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 694 13

def RemovedBody694_347 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody694_348 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody694_349 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody694_350 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody694_351 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def RemovedBody694_352 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def RemovedBody694_353 : StackLang.HolProg 64 :=
.seq RemovedBody694_351 RemovedBody694_352

def RemovedBody694_354 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def RemovedBody694_355 : StackLang.HolProg 64 :=
.seq RemovedBody694_353 RemovedBody694_354

def RemovedBody694_356 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody694_357 : StackLang.HolProg 64 :=
.seq RemovedBody694_355 RemovedBody694_356

def RemovedBody694_358 : StackLang.HolProg 64 :=
.seq RemovedBody694_350 RemovedBody694_357

def RemovedBody694_359 : StackLang.HolProg 64 :=
.seq RemovedBody694_349 RemovedBody694_358

def RemovedBody694_360 : StackLang.HolProg 64 :=
.seq RemovedBody694_348 RemovedBody694_359

def RemovedBody694_361 : StackLang.HolProg 64 :=
.seq RemovedBody694_347 RemovedBody694_360

def RemovedBody694_362 : StackLang.HolProg 64 :=
.seq RemovedBody694_346 RemovedBody694_361

def RemovedBody694_363 : StackLang.HolProg 64 :=
.seq RemovedBody694_345 RemovedBody694_362

def RemovedBody694_364 : StackLang.HolProg 64 :=
.seq RemovedBody694_344 RemovedBody694_363

def RemovedBody694_365 : StackLang.HolProg 64 :=
.seq RemovedBody694_343 RemovedBody694_364

def RemovedBody694_366 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody694_367 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody694_368 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody694_369 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody694_370 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody694_371 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody694_372 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 0 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def RemovedBody694_373 : StackLang.HolProg 64 :=
.seq RemovedBody694_371 RemovedBody694_372

def RemovedBody694_374 : StackLang.HolProg 64 :=
.seq RemovedBody694_370 RemovedBody694_373

def RemovedBody694_375 : StackLang.HolProg 64 :=
.seq RemovedBody694_369 RemovedBody694_374

def RemovedBody694_376 : StackLang.HolProg 64 :=
.seq RemovedBody694_368 RemovedBody694_375

def RemovedBody694_377 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody694_378 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def RemovedBody694_379 : StackLang.HolProg 64 :=
.seq RemovedBody694_377 RemovedBody694_378

def RemovedBody694_380 : StackLang.HolProg 64 :=
.call (some (RemovedBody694_376, 0, 694, 12)) (Sum.inl 68) (some (RemovedBody694_379, 694, 13))

def RemovedBody694_381 : StackLang.HolProg 64 :=
.seq RemovedBody694_367 RemovedBody694_380

def RemovedBody694_382 : StackLang.HolProg 64 :=
.seq RemovedBody694_366 RemovedBody694_381

def RemovedBody694_383 : StackLang.HolProg 64 :=
.seq RemovedBody694_365 RemovedBody694_382

def RemovedBody694_384 : StackLang.HolProg 64 :=
.seq RemovedBody694_336 RemovedBody694_383

def RemovedBody694_385 : StackLang.HolProg 64 :=
.seq RemovedBody694_333 RemovedBody694_384

def RemovedBody694_386 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody694_387 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 1152#64)

def RemovedBody694_388 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 24#64))

def RemovedBody694_389 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody694_390 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 3019#64)

def RemovedBody694_391 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody694_392 : StackLang.HolProg 64 :=
.seq RemovedBody694_390 RemovedBody694_391

def RemovedBody694_393 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody694_394 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 2#64)

def RemovedBody694_395 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 1

def RemovedBody694_396 : StackLang.HolProg 64 :=
.seq RemovedBody694_394 RemovedBody694_395

def RemovedBody694_397 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody694_398 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) RemovedBody694_396 RemovedBody694_397

def RemovedBody694_399 : StackLang.HolProg 64 :=
.seq RemovedBody694_393 RemovedBody694_398

def RemovedBody694_400 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def RemovedBody694_401 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody694_402 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 694 15

def RemovedBody694_403 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody694_404 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody694_405 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody694_406 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody694_407 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def RemovedBody694_408 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def RemovedBody694_409 : StackLang.HolProg 64 :=
.seq RemovedBody694_407 RemovedBody694_408

def RemovedBody694_410 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def RemovedBody694_411 : StackLang.HolProg 64 :=
.seq RemovedBody694_409 RemovedBody694_410

def RemovedBody694_412 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody694_413 : StackLang.HolProg 64 :=
.seq RemovedBody694_411 RemovedBody694_412

def RemovedBody694_414 : StackLang.HolProg 64 :=
.seq RemovedBody694_406 RemovedBody694_413

def RemovedBody694_415 : StackLang.HolProg 64 :=
.seq RemovedBody694_405 RemovedBody694_414

def RemovedBody694_416 : StackLang.HolProg 64 :=
.seq RemovedBody694_404 RemovedBody694_415

def RemovedBody694_417 : StackLang.HolProg 64 :=
.seq RemovedBody694_403 RemovedBody694_416

def RemovedBody694_418 : StackLang.HolProg 64 :=
.seq RemovedBody694_402 RemovedBody694_417

def RemovedBody694_419 : StackLang.HolProg 64 :=
.seq RemovedBody694_401 RemovedBody694_418

def RemovedBody694_420 : StackLang.HolProg 64 :=
.seq RemovedBody694_400 RemovedBody694_419

def RemovedBody694_421 : StackLang.HolProg 64 :=
.seq RemovedBody694_399 RemovedBody694_420

def RemovedBody694_422 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody694_423 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody694_424 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody694_425 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody694_426 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody694_427 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody694_428 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 0 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def RemovedBody694_429 : StackLang.HolProg 64 :=
.seq RemovedBody694_427 RemovedBody694_428

def RemovedBody694_430 : StackLang.HolProg 64 :=
.seq RemovedBody694_426 RemovedBody694_429

def RemovedBody694_431 : StackLang.HolProg 64 :=
.seq RemovedBody694_425 RemovedBody694_430

def RemovedBody694_432 : StackLang.HolProg 64 :=
.seq RemovedBody694_424 RemovedBody694_431

def RemovedBody694_433 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody694_434 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def RemovedBody694_435 : StackLang.HolProg 64 :=
.seq RemovedBody694_433 RemovedBody694_434

def RemovedBody694_436 : StackLang.HolProg 64 :=
.call (some (RemovedBody694_432, 0, 694, 14)) (Sum.inl 68) (some (RemovedBody694_435, 694, 15))

def RemovedBody694_437 : StackLang.HolProg 64 :=
.seq RemovedBody694_423 RemovedBody694_436

def RemovedBody694_438 : StackLang.HolProg 64 :=
.seq RemovedBody694_422 RemovedBody694_437

def RemovedBody694_439 : StackLang.HolProg 64 :=
.seq RemovedBody694_421 RemovedBody694_438

def RemovedBody694_440 : StackLang.HolProg 64 :=
.seq RemovedBody694_392 RemovedBody694_439

def RemovedBody694_441 : StackLang.HolProg 64 :=
.seq RemovedBody694_389 RemovedBody694_440

def RemovedBody694_442 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody694_443 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 384#64)

def RemovedBody694_444 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 48#64))

def RemovedBody694_445 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody694_446 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 3020#64)

def RemovedBody694_447 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody694_448 : StackLang.HolProg 64 :=
.seq RemovedBody694_446 RemovedBody694_447

def RemovedBody694_449 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody694_450 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 2#64)

def RemovedBody694_451 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 1

def RemovedBody694_452 : StackLang.HolProg 64 :=
.seq RemovedBody694_450 RemovedBody694_451

def RemovedBody694_453 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody694_454 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) RemovedBody694_452 RemovedBody694_453

def RemovedBody694_455 : StackLang.HolProg 64 :=
.seq RemovedBody694_449 RemovedBody694_454

def RemovedBody694_456 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def RemovedBody694_457 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody694_458 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 694 17

def RemovedBody694_459 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody694_460 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody694_461 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody694_462 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody694_463 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def RemovedBody694_464 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def RemovedBody694_465 : StackLang.HolProg 64 :=
.seq RemovedBody694_463 RemovedBody694_464

def RemovedBody694_466 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def RemovedBody694_467 : StackLang.HolProg 64 :=
.seq RemovedBody694_465 RemovedBody694_466

def RemovedBody694_468 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody694_469 : StackLang.HolProg 64 :=
.seq RemovedBody694_467 RemovedBody694_468

def RemovedBody694_470 : StackLang.HolProg 64 :=
.seq RemovedBody694_462 RemovedBody694_469

def RemovedBody694_471 : StackLang.HolProg 64 :=
.seq RemovedBody694_461 RemovedBody694_470

def RemovedBody694_472 : StackLang.HolProg 64 :=
.seq RemovedBody694_460 RemovedBody694_471

def RemovedBody694_473 : StackLang.HolProg 64 :=
.seq RemovedBody694_459 RemovedBody694_472

def RemovedBody694_474 : StackLang.HolProg 64 :=
.seq RemovedBody694_458 RemovedBody694_473

def RemovedBody694_475 : StackLang.HolProg 64 :=
.seq RemovedBody694_457 RemovedBody694_474

def RemovedBody694_476 : StackLang.HolProg 64 :=
.seq RemovedBody694_456 RemovedBody694_475

def RemovedBody694_477 : StackLang.HolProg 64 :=
.seq RemovedBody694_455 RemovedBody694_476

def RemovedBody694_478 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody694_479 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody694_480 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody694_481 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody694_482 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody694_483 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody694_484 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 0 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def RemovedBody694_485 : StackLang.HolProg 64 :=
.seq RemovedBody694_483 RemovedBody694_484

def RemovedBody694_486 : StackLang.HolProg 64 :=
.seq RemovedBody694_482 RemovedBody694_485

def RemovedBody694_487 : StackLang.HolProg 64 :=
.seq RemovedBody694_481 RemovedBody694_486

def RemovedBody694_488 : StackLang.HolProg 64 :=
.seq RemovedBody694_480 RemovedBody694_487

def RemovedBody694_489 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody694_490 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def RemovedBody694_491 : StackLang.HolProg 64 :=
.seq RemovedBody694_489 RemovedBody694_490

def RemovedBody694_492 : StackLang.HolProg 64 :=
.call (some (RemovedBody694_488, 0, 694, 16)) (Sum.inl 68) (some (RemovedBody694_491, 694, 17))

def RemovedBody694_493 : StackLang.HolProg 64 :=
.seq RemovedBody694_479 RemovedBody694_492

def RemovedBody694_494 : StackLang.HolProg 64 :=
.seq RemovedBody694_478 RemovedBody694_493

def RemovedBody694_495 : StackLang.HolProg 64 :=
.seq RemovedBody694_477 RemovedBody694_494

def RemovedBody694_496 : StackLang.HolProg 64 :=
.seq RemovedBody694_448 RemovedBody694_495

def RemovedBody694_497 : StackLang.HolProg 64 :=
.seq RemovedBody694_445 RemovedBody694_496

def RemovedBody694_498 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody694_499 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 384#64)

def RemovedBody694_500 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 32#64))

def RemovedBody694_501 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody694_502 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 3021#64)

def RemovedBody694_503 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody694_504 : StackLang.HolProg 64 :=
.seq RemovedBody694_502 RemovedBody694_503

def RemovedBody694_505 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody694_506 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 2#64)

def RemovedBody694_507 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 1

def RemovedBody694_508 : StackLang.HolProg 64 :=
.seq RemovedBody694_506 RemovedBody694_507

def RemovedBody694_509 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody694_510 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) RemovedBody694_508 RemovedBody694_509

def RemovedBody694_511 : StackLang.HolProg 64 :=
.seq RemovedBody694_505 RemovedBody694_510

def RemovedBody694_512 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def RemovedBody694_513 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody694_514 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 694 19

def RemovedBody694_515 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody694_516 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody694_517 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody694_518 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody694_519 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def RemovedBody694_520 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def RemovedBody694_521 : StackLang.HolProg 64 :=
.seq RemovedBody694_519 RemovedBody694_520

def RemovedBody694_522 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def RemovedBody694_523 : StackLang.HolProg 64 :=
.seq RemovedBody694_521 RemovedBody694_522

def RemovedBody694_524 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody694_525 : StackLang.HolProg 64 :=
.seq RemovedBody694_523 RemovedBody694_524

def RemovedBody694_526 : StackLang.HolProg 64 :=
.seq RemovedBody694_518 RemovedBody694_525

def RemovedBody694_527 : StackLang.HolProg 64 :=
.seq RemovedBody694_517 RemovedBody694_526

def RemovedBody694_528 : StackLang.HolProg 64 :=
.seq RemovedBody694_516 RemovedBody694_527

def RemovedBody694_529 : StackLang.HolProg 64 :=
.seq RemovedBody694_515 RemovedBody694_528

def RemovedBody694_530 : StackLang.HolProg 64 :=
.seq RemovedBody694_514 RemovedBody694_529

def RemovedBody694_531 : StackLang.HolProg 64 :=
.seq RemovedBody694_513 RemovedBody694_530

def RemovedBody694_532 : StackLang.HolProg 64 :=
.seq RemovedBody694_512 RemovedBody694_531

def RemovedBody694_533 : StackLang.HolProg 64 :=
.seq RemovedBody694_511 RemovedBody694_532

def RemovedBody694_534 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody694_535 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody694_536 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody694_537 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody694_538 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody694_539 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody694_540 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 3 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def RemovedBody694_541 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 2
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 40#64))

def RemovedBody694_542 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 32#64))

def RemovedBody694_543 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 40#64))

def RemovedBody694_544 : StackLang.HolProg 64 :=
.seq RemovedBody694_542 RemovedBody694_543

def RemovedBody694_545 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 24#64))

def RemovedBody694_546 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody694_547 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 24#64))

def RemovedBody694_548 : StackLang.HolProg 64 :=
.seq RemovedBody694_546 RemovedBody694_547

def RemovedBody694_549 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody694_550 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody694_551 : StackLang.HolProg 64 :=
.seq RemovedBody694_549 RemovedBody694_550

def RemovedBody694_552 : StackLang.HolProg 64 :=
.seq RemovedBody694_548 RemovedBody694_551

def RemovedBody694_553 : StackLang.HolProg 64 :=
.seq RemovedBody694_545 RemovedBody694_552

def RemovedBody694_554 : StackLang.HolProg 64 :=
.seq RemovedBody694_544 RemovedBody694_553

def RemovedBody694_555 : StackLang.HolProg 64 :=
.seq RemovedBody694_541 RemovedBody694_554

def RemovedBody694_556 : StackLang.HolProg 64 :=
.seq RemovedBody694_540 RemovedBody694_555

def RemovedBody694_557 : StackLang.HolProg 64 :=
.seq RemovedBody694_539 RemovedBody694_556

def RemovedBody694_558 : StackLang.HolProg 64 :=
.seq RemovedBody694_538 RemovedBody694_557

def RemovedBody694_559 : StackLang.HolProg 64 :=
.seq RemovedBody694_537 RemovedBody694_558

def RemovedBody694_560 : StackLang.HolProg 64 :=
.seq RemovedBody694_536 RemovedBody694_559

def RemovedBody694_561 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 2
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 40#64))

def RemovedBody694_562 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 32#64))

def RemovedBody694_563 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 40#64))

def RemovedBody694_564 : StackLang.HolProg 64 :=
.seq RemovedBody694_562 RemovedBody694_563

def RemovedBody694_565 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 24#64))

def RemovedBody694_566 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody694_567 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 24#64))

def RemovedBody694_568 : StackLang.HolProg 64 :=
.seq RemovedBody694_566 RemovedBody694_567

def RemovedBody694_569 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody694_570 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody694_571 : StackLang.HolProg 64 :=
.seq RemovedBody694_569 RemovedBody694_570

def RemovedBody694_572 : StackLang.HolProg 64 :=
.seq RemovedBody694_568 RemovedBody694_571

def RemovedBody694_573 : StackLang.HolProg 64 :=
.seq RemovedBody694_565 RemovedBody694_572

def RemovedBody694_574 : StackLang.HolProg 64 :=
.seq RemovedBody694_564 RemovedBody694_573

def RemovedBody694_575 : StackLang.HolProg 64 :=
.seq RemovedBody694_561 RemovedBody694_574

def RemovedBody694_576 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def RemovedBody694_577 : StackLang.HolProg 64 :=
.seq RemovedBody694_575 RemovedBody694_576

def RemovedBody694_578 : StackLang.HolProg 64 :=
.call (some (RemovedBody694_560, 0, 694, 18)) (Sum.inl 68) (some (RemovedBody694_577, 694, 19))

def RemovedBody694_579 : StackLang.HolProg 64 :=
.seq RemovedBody694_535 RemovedBody694_578

def RemovedBody694_580 : StackLang.HolProg 64 :=
.seq RemovedBody694_534 RemovedBody694_579

def RemovedBody694_581 : StackLang.HolProg 64 :=
.seq RemovedBody694_533 RemovedBody694_580

def RemovedBody694_582 : StackLang.HolProg 64 :=
.seq RemovedBody694_504 RemovedBody694_581

def RemovedBody694_583 : StackLang.HolProg 64 :=
.seq RemovedBody694_501 RemovedBody694_582

def RemovedBody694_584 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody694_585 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 1 0
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 0)))

def RemovedBody694_586 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 32#64))

def RemovedBody694_587 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 3
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody694_588 : StackLang.HolProg 64 :=
.seq RemovedBody694_586 RemovedBody694_587

def RemovedBody694_589 : StackLang.HolProg 64 :=
.seq RemovedBody694_585 RemovedBody694_588

def RemovedBody694_590 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody694_591 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 3022#64)

def RemovedBody694_592 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody694_593 : StackLang.HolProg 64 :=
.seq RemovedBody694_591 RemovedBody694_592

def RemovedBody694_594 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody694_595 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 2#64)

def RemovedBody694_596 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 1

def RemovedBody694_597 : StackLang.HolProg 64 :=
.seq RemovedBody694_595 RemovedBody694_596

def RemovedBody694_598 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody694_599 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) RemovedBody694_597 RemovedBody694_598

def RemovedBody694_600 : StackLang.HolProg 64 :=
.seq RemovedBody694_594 RemovedBody694_599

def RemovedBody694_601 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def RemovedBody694_602 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody694_603 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 694 21

def RemovedBody694_604 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody694_605 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody694_606 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody694_607 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody694_608 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def RemovedBody694_609 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def RemovedBody694_610 : StackLang.HolProg 64 :=
.seq RemovedBody694_608 RemovedBody694_609

def RemovedBody694_611 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def RemovedBody694_612 : StackLang.HolProg 64 :=
.seq RemovedBody694_610 RemovedBody694_611

def RemovedBody694_613 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody694_614 : StackLang.HolProg 64 :=
.seq RemovedBody694_612 RemovedBody694_613

def RemovedBody694_615 : StackLang.HolProg 64 :=
.seq RemovedBody694_607 RemovedBody694_614

def RemovedBody694_616 : StackLang.HolProg 64 :=
.seq RemovedBody694_606 RemovedBody694_615

def RemovedBody694_617 : StackLang.HolProg 64 :=
.seq RemovedBody694_605 RemovedBody694_616

def RemovedBody694_618 : StackLang.HolProg 64 :=
.seq RemovedBody694_604 RemovedBody694_617

def RemovedBody694_619 : StackLang.HolProg 64 :=
.seq RemovedBody694_603 RemovedBody694_618

def RemovedBody694_620 : StackLang.HolProg 64 :=
.seq RemovedBody694_602 RemovedBody694_619

def RemovedBody694_621 : StackLang.HolProg 64 :=
.seq RemovedBody694_601 RemovedBody694_620

def RemovedBody694_622 : StackLang.HolProg 64 :=
.seq RemovedBody694_600 RemovedBody694_621

def RemovedBody694_623 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody694_624 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody694_625 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody694_626 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody694_627 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody694_628 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody694_629 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 48#64))

def RemovedBody694_630 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 2
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody694_631 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody694_632 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody694_633 : StackLang.HolProg 64 :=
.seq RemovedBody694_631 RemovedBody694_632

def RemovedBody694_634 : StackLang.HolProg 64 :=
.seq RemovedBody694_630 RemovedBody694_633

def RemovedBody694_635 : StackLang.HolProg 64 :=
.seq RemovedBody694_629 RemovedBody694_634

def RemovedBody694_636 : StackLang.HolProg 64 :=
.seq RemovedBody694_628 RemovedBody694_635

def RemovedBody694_637 : StackLang.HolProg 64 :=
.seq RemovedBody694_627 RemovedBody694_636

def RemovedBody694_638 : StackLang.HolProg 64 :=
.seq RemovedBody694_626 RemovedBody694_637

def RemovedBody694_639 : StackLang.HolProg 64 :=
.seq RemovedBody694_625 RemovedBody694_638

def RemovedBody694_640 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 48#64))

def RemovedBody694_641 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 2
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody694_642 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody694_643 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody694_644 : StackLang.HolProg 64 :=
.seq RemovedBody694_642 RemovedBody694_643

def RemovedBody694_645 : StackLang.HolProg 64 :=
.seq RemovedBody694_641 RemovedBody694_644

def RemovedBody694_646 : StackLang.HolProg 64 :=
.seq RemovedBody694_640 RemovedBody694_645

def RemovedBody694_647 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def RemovedBody694_648 : StackLang.HolProg 64 :=
.seq RemovedBody694_646 RemovedBody694_647

def RemovedBody694_649 : StackLang.HolProg 64 :=
.call (some (RemovedBody694_639, 0, 694, 20)) (Sum.inl 686) (some (RemovedBody694_648, 694, 21))

def RemovedBody694_650 : StackLang.HolProg 64 :=
.seq RemovedBody694_624 RemovedBody694_649

def RemovedBody694_651 : StackLang.HolProg 64 :=
.seq RemovedBody694_623 RemovedBody694_650

def RemovedBody694_652 : StackLang.HolProg 64 :=
.seq RemovedBody694_622 RemovedBody694_651

def RemovedBody694_653 : StackLang.HolProg 64 :=
.seq RemovedBody694_593 RemovedBody694_652

def RemovedBody694_654 : StackLang.HolProg 64 :=
.seq RemovedBody694_590 RemovedBody694_653

def RemovedBody694_655 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody694_656 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 1 0
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 0)))

def RemovedBody694_657 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 48#64))

def RemovedBody694_658 : StackLang.HolProg 64 :=
.seq RemovedBody694_656 RemovedBody694_657

def RemovedBody694_659 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody694_660 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 3023#64)

def RemovedBody694_661 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody694_662 : StackLang.HolProg 64 :=
.seq RemovedBody694_660 RemovedBody694_661

def RemovedBody694_663 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody694_664 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 2#64)

def RemovedBody694_665 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 1

def RemovedBody694_666 : StackLang.HolProg 64 :=
.seq RemovedBody694_664 RemovedBody694_665

def RemovedBody694_667 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody694_668 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) RemovedBody694_666 RemovedBody694_667

def RemovedBody694_669 : StackLang.HolProg 64 :=
.seq RemovedBody694_663 RemovedBody694_668

def RemovedBody694_670 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def RemovedBody694_671 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody694_672 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 694 23

def RemovedBody694_673 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody694_674 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody694_675 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody694_676 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody694_677 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def RemovedBody694_678 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def RemovedBody694_679 : StackLang.HolProg 64 :=
.seq RemovedBody694_677 RemovedBody694_678

def RemovedBody694_680 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def RemovedBody694_681 : StackLang.HolProg 64 :=
.seq RemovedBody694_679 RemovedBody694_680

def RemovedBody694_682 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody694_683 : StackLang.HolProg 64 :=
.seq RemovedBody694_681 RemovedBody694_682

def RemovedBody694_684 : StackLang.HolProg 64 :=
.seq RemovedBody694_676 RemovedBody694_683

def RemovedBody694_685 : StackLang.HolProg 64 :=
.seq RemovedBody694_675 RemovedBody694_684

def RemovedBody694_686 : StackLang.HolProg 64 :=
.seq RemovedBody694_674 RemovedBody694_685

def RemovedBody694_687 : StackLang.HolProg 64 :=
.seq RemovedBody694_673 RemovedBody694_686

def RemovedBody694_688 : StackLang.HolProg 64 :=
.seq RemovedBody694_672 RemovedBody694_687

def RemovedBody694_689 : StackLang.HolProg 64 :=
.seq RemovedBody694_671 RemovedBody694_688

def RemovedBody694_690 : StackLang.HolProg 64 :=
.seq RemovedBody694_670 RemovedBody694_689

def RemovedBody694_691 : StackLang.HolProg 64 :=
.seq RemovedBody694_669 RemovedBody694_690

def RemovedBody694_692 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody694_693 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody694_694 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody694_695 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody694_696 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody694_697 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody694_698 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 4
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 48#64))

def RemovedBody694_699 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 40#64))

def RemovedBody694_700 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 3
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 32#64))

def RemovedBody694_701 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 24#64))

def RemovedBody694_702 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 40#64))

def RemovedBody694_703 : StackLang.HolProg 64 :=
.seq RemovedBody694_701 RemovedBody694_702

def RemovedBody694_704 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 2
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody694_705 : StackLang.HolProg 64 :=
.seq RemovedBody694_703 RemovedBody694_704

def RemovedBody694_706 : StackLang.HolProg 64 :=
.seq RemovedBody694_700 RemovedBody694_705

def RemovedBody694_707 : StackLang.HolProg 64 :=
.seq RemovedBody694_699 RemovedBody694_706

def RemovedBody694_708 : StackLang.HolProg 64 :=
.seq RemovedBody694_698 RemovedBody694_707

def RemovedBody694_709 : StackLang.HolProg 64 :=
.seq RemovedBody694_697 RemovedBody694_708

def RemovedBody694_710 : StackLang.HolProg 64 :=
.seq RemovedBody694_696 RemovedBody694_709

def RemovedBody694_711 : StackLang.HolProg 64 :=
.seq RemovedBody694_695 RemovedBody694_710

def RemovedBody694_712 : StackLang.HolProg 64 :=
.seq RemovedBody694_694 RemovedBody694_711

def RemovedBody694_713 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 4
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 48#64))

def RemovedBody694_714 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 40#64))

def RemovedBody694_715 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 3
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 32#64))

def RemovedBody694_716 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 24#64))

def RemovedBody694_717 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 40#64))

def RemovedBody694_718 : StackLang.HolProg 64 :=
.seq RemovedBody694_716 RemovedBody694_717

def RemovedBody694_719 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 2
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody694_720 : StackLang.HolProg 64 :=
.seq RemovedBody694_718 RemovedBody694_719

def RemovedBody694_721 : StackLang.HolProg 64 :=
.seq RemovedBody694_715 RemovedBody694_720

def RemovedBody694_722 : StackLang.HolProg 64 :=
.seq RemovedBody694_714 RemovedBody694_721

def RemovedBody694_723 : StackLang.HolProg 64 :=
.seq RemovedBody694_713 RemovedBody694_722

def RemovedBody694_724 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def RemovedBody694_725 : StackLang.HolProg 64 :=
.seq RemovedBody694_723 RemovedBody694_724

def RemovedBody694_726 : StackLang.HolProg 64 :=
.call (some (RemovedBody694_712, 0, 694, 22)) (Sum.inl 687) (some (RemovedBody694_725, 694, 23))

def RemovedBody694_727 : StackLang.HolProg 64 :=
.seq RemovedBody694_693 RemovedBody694_726

def RemovedBody694_728 : StackLang.HolProg 64 :=
.seq RemovedBody694_692 RemovedBody694_727

def RemovedBody694_729 : StackLang.HolProg 64 :=
.seq RemovedBody694_691 RemovedBody694_728

def RemovedBody694_730 : StackLang.HolProg 64 :=
.seq RemovedBody694_662 RemovedBody694_729

def RemovedBody694_731 : StackLang.HolProg 64 :=
.seq RemovedBody694_659 RemovedBody694_730

def RemovedBody694_732 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody694_733 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 1 0
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 0)))

def RemovedBody694_734 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 48#64))

def RemovedBody694_735 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 2
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 32#64))

def RemovedBody694_736 : StackLang.HolProg 64 :=
.seq RemovedBody694_734 RemovedBody694_735

def RemovedBody694_737 : StackLang.HolProg 64 :=
.seq RemovedBody694_733 RemovedBody694_736

def RemovedBody694_738 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody694_739 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 3024#64)

def RemovedBody694_740 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody694_741 : StackLang.HolProg 64 :=
.seq RemovedBody694_739 RemovedBody694_740

def RemovedBody694_742 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody694_743 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 2#64)

def RemovedBody694_744 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 1

def RemovedBody694_745 : StackLang.HolProg 64 :=
.seq RemovedBody694_743 RemovedBody694_744

def RemovedBody694_746 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody694_747 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) RemovedBody694_745 RemovedBody694_746

def RemovedBody694_748 : StackLang.HolProg 64 :=
.seq RemovedBody694_742 RemovedBody694_747

def RemovedBody694_749 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def RemovedBody694_750 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody694_751 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 694 25

def RemovedBody694_752 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody694_753 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody694_754 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody694_755 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody694_756 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def RemovedBody694_757 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def RemovedBody694_758 : StackLang.HolProg 64 :=
.seq RemovedBody694_756 RemovedBody694_757

def RemovedBody694_759 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def RemovedBody694_760 : StackLang.HolProg 64 :=
.seq RemovedBody694_758 RemovedBody694_759

def RemovedBody694_761 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody694_762 : StackLang.HolProg 64 :=
.seq RemovedBody694_760 RemovedBody694_761

def RemovedBody694_763 : StackLang.HolProg 64 :=
.seq RemovedBody694_755 RemovedBody694_762

def RemovedBody694_764 : StackLang.HolProg 64 :=
.seq RemovedBody694_754 RemovedBody694_763

def RemovedBody694_765 : StackLang.HolProg 64 :=
.seq RemovedBody694_753 RemovedBody694_764

def RemovedBody694_766 : StackLang.HolProg 64 :=
.seq RemovedBody694_752 RemovedBody694_765

def RemovedBody694_767 : StackLang.HolProg 64 :=
.seq RemovedBody694_751 RemovedBody694_766

def RemovedBody694_768 : StackLang.HolProg 64 :=
.seq RemovedBody694_750 RemovedBody694_767

def RemovedBody694_769 : StackLang.HolProg 64 :=
.seq RemovedBody694_749 RemovedBody694_768

def RemovedBody694_770 : StackLang.HolProg 64 :=
.seq RemovedBody694_748 RemovedBody694_769

def RemovedBody694_771 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody694_772 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody694_773 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody694_774 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody694_775 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody694_776 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody694_777 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 2
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 32#64))

def RemovedBody694_778 : StackLang.HolProg 64 :=
.seq RemovedBody694_776 RemovedBody694_777

def RemovedBody694_779 : StackLang.HolProg 64 :=
.seq RemovedBody694_775 RemovedBody694_778

def RemovedBody694_780 : StackLang.HolProg 64 :=
.seq RemovedBody694_774 RemovedBody694_779

def RemovedBody694_781 : StackLang.HolProg 64 :=
.seq RemovedBody694_773 RemovedBody694_780

def RemovedBody694_782 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 2
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 32#64))

def RemovedBody694_783 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def RemovedBody694_784 : StackLang.HolProg 64 :=
.seq RemovedBody694_782 RemovedBody694_783

def RemovedBody694_785 : StackLang.HolProg 64 :=
.call (some (RemovedBody694_781, 0, 694, 24)) (Sum.inl 693) (some (RemovedBody694_784, 694, 25))

def RemovedBody694_786 : StackLang.HolProg 64 :=
.seq RemovedBody694_772 RemovedBody694_785

def RemovedBody694_787 : StackLang.HolProg 64 :=
.seq RemovedBody694_771 RemovedBody694_786

def RemovedBody694_788 : StackLang.HolProg 64 :=
.seq RemovedBody694_770 RemovedBody694_787

def RemovedBody694_789 : StackLang.HolProg 64 :=
.seq RemovedBody694_741 RemovedBody694_788

def RemovedBody694_790 : StackLang.HolProg 64 :=
.seq RemovedBody694_738 RemovedBody694_789

def RemovedBody694_791 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody694_792 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 1 2
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 2)))

def RemovedBody694_793 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 2
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 32#64))

def RemovedBody694_794 : StackLang.HolProg 64 :=
.seq RemovedBody694_792 RemovedBody694_793

def RemovedBody694_795 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody694_796 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 3025#64)

def RemovedBody694_797 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody694_798 : StackLang.HolProg 64 :=
.seq RemovedBody694_796 RemovedBody694_797

def RemovedBody694_799 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody694_800 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 2#64)

def RemovedBody694_801 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 1

def RemovedBody694_802 : StackLang.HolProg 64 :=
.seq RemovedBody694_800 RemovedBody694_801

def RemovedBody694_803 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody694_804 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) RemovedBody694_802 RemovedBody694_803

def RemovedBody694_805 : StackLang.HolProg 64 :=
.seq RemovedBody694_799 RemovedBody694_804

def RemovedBody694_806 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def RemovedBody694_807 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody694_808 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 694 27

def RemovedBody694_809 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody694_810 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody694_811 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody694_812 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody694_813 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def RemovedBody694_814 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def RemovedBody694_815 : StackLang.HolProg 64 :=
.seq RemovedBody694_813 RemovedBody694_814

def RemovedBody694_816 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def RemovedBody694_817 : StackLang.HolProg 64 :=
.seq RemovedBody694_815 RemovedBody694_816

def RemovedBody694_818 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody694_819 : StackLang.HolProg 64 :=
.seq RemovedBody694_817 RemovedBody694_818

def RemovedBody694_820 : StackLang.HolProg 64 :=
.seq RemovedBody694_812 RemovedBody694_819

def RemovedBody694_821 : StackLang.HolProg 64 :=
.seq RemovedBody694_811 RemovedBody694_820

def RemovedBody694_822 : StackLang.HolProg 64 :=
.seq RemovedBody694_810 RemovedBody694_821

def RemovedBody694_823 : StackLang.HolProg 64 :=
.seq RemovedBody694_809 RemovedBody694_822

def RemovedBody694_824 : StackLang.HolProg 64 :=
.seq RemovedBody694_808 RemovedBody694_823

def RemovedBody694_825 : StackLang.HolProg 64 :=
.seq RemovedBody694_807 RemovedBody694_824

def RemovedBody694_826 : StackLang.HolProg 64 :=
.seq RemovedBody694_806 RemovedBody694_825

def RemovedBody694_827 : StackLang.HolProg 64 :=
.seq RemovedBody694_805 RemovedBody694_826

def RemovedBody694_828 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody694_829 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody694_830 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody694_831 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody694_832 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody694_833 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody694_834 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 2
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 48#64))

def RemovedBody694_835 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 3
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 32#64))

def RemovedBody694_836 : StackLang.HolProg 64 :=
.seq RemovedBody694_834 RemovedBody694_835

def RemovedBody694_837 : StackLang.HolProg 64 :=
.seq RemovedBody694_833 RemovedBody694_836

def RemovedBody694_838 : StackLang.HolProg 64 :=
.seq RemovedBody694_832 RemovedBody694_837

def RemovedBody694_839 : StackLang.HolProg 64 :=
.seq RemovedBody694_831 RemovedBody694_838

def RemovedBody694_840 : StackLang.HolProg 64 :=
.seq RemovedBody694_830 RemovedBody694_839

def RemovedBody694_841 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 2
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 48#64))

def RemovedBody694_842 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 3
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 32#64))

def RemovedBody694_843 : StackLang.HolProg 64 :=
.seq RemovedBody694_841 RemovedBody694_842

def RemovedBody694_844 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def RemovedBody694_845 : StackLang.HolProg 64 :=
.seq RemovedBody694_843 RemovedBody694_844

def RemovedBody694_846 : StackLang.HolProg 64 :=
.call (some (RemovedBody694_840, 0, 694, 26)) (Sum.inl 691) (some (RemovedBody694_845, 694, 27))

def RemovedBody694_847 : StackLang.HolProg 64 :=
.seq RemovedBody694_829 RemovedBody694_846

def RemovedBody694_848 : StackLang.HolProg 64 :=
.seq RemovedBody694_828 RemovedBody694_847

def RemovedBody694_849 : StackLang.HolProg 64 :=
.seq RemovedBody694_827 RemovedBody694_848

def RemovedBody694_850 : StackLang.HolProg 64 :=
.seq RemovedBody694_798 RemovedBody694_849

def RemovedBody694_851 : StackLang.HolProg 64 :=
.seq RemovedBody694_795 RemovedBody694_850

def RemovedBody694_852 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody694_853 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 1 2
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 2)))

def RemovedBody694_854 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 2
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 48#64))

def RemovedBody694_855 : StackLang.HolProg 64 :=
.seq RemovedBody694_853 RemovedBody694_854

def RemovedBody694_856 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody694_857 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 3026#64)

def RemovedBody694_858 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody694_859 : StackLang.HolProg 64 :=
.seq RemovedBody694_857 RemovedBody694_858

def RemovedBody694_860 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody694_861 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 2#64)

def RemovedBody694_862 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 1

def RemovedBody694_863 : StackLang.HolProg 64 :=
.seq RemovedBody694_861 RemovedBody694_862

def RemovedBody694_864 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody694_865 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) RemovedBody694_863 RemovedBody694_864

def RemovedBody694_866 : StackLang.HolProg 64 :=
.seq RemovedBody694_860 RemovedBody694_865

def RemovedBody694_867 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def RemovedBody694_868 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody694_869 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 694 29

def RemovedBody694_870 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody694_871 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody694_872 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody694_873 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody694_874 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def RemovedBody694_875 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def RemovedBody694_876 : StackLang.HolProg 64 :=
.seq RemovedBody694_874 RemovedBody694_875

def RemovedBody694_877 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def RemovedBody694_878 : StackLang.HolProg 64 :=
.seq RemovedBody694_876 RemovedBody694_877

def RemovedBody694_879 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody694_880 : StackLang.HolProg 64 :=
.seq RemovedBody694_878 RemovedBody694_879

def RemovedBody694_881 : StackLang.HolProg 64 :=
.seq RemovedBody694_873 RemovedBody694_880

def RemovedBody694_882 : StackLang.HolProg 64 :=
.seq RemovedBody694_872 RemovedBody694_881

def RemovedBody694_883 : StackLang.HolProg 64 :=
.seq RemovedBody694_871 RemovedBody694_882

def RemovedBody694_884 : StackLang.HolProg 64 :=
.seq RemovedBody694_870 RemovedBody694_883

def RemovedBody694_885 : StackLang.HolProg 64 :=
.seq RemovedBody694_869 RemovedBody694_884

def RemovedBody694_886 : StackLang.HolProg 64 :=
.seq RemovedBody694_868 RemovedBody694_885

def RemovedBody694_887 : StackLang.HolProg 64 :=
.seq RemovedBody694_867 RemovedBody694_886

def RemovedBody694_888 : StackLang.HolProg 64 :=
.seq RemovedBody694_866 RemovedBody694_887

def RemovedBody694_889 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody694_890 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody694_891 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody694_892 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody694_893 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody694_894 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody694_895 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 2
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 48#64))

def RemovedBody694_896 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 40#64))

def RemovedBody694_897 : StackLang.HolProg 64 :=
.seq RemovedBody694_895 RemovedBody694_896

def RemovedBody694_898 : StackLang.HolProg 64 :=
.seq RemovedBody694_894 RemovedBody694_897

def RemovedBody694_899 : StackLang.HolProg 64 :=
.seq RemovedBody694_893 RemovedBody694_898

def RemovedBody694_900 : StackLang.HolProg 64 :=
.seq RemovedBody694_892 RemovedBody694_899

def RemovedBody694_901 : StackLang.HolProg 64 :=
.seq RemovedBody694_891 RemovedBody694_900

def RemovedBody694_902 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 2
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 48#64))

def RemovedBody694_903 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 40#64))

def RemovedBody694_904 : StackLang.HolProg 64 :=
.seq RemovedBody694_902 RemovedBody694_903

def RemovedBody694_905 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def RemovedBody694_906 : StackLang.HolProg 64 :=
.seq RemovedBody694_904 RemovedBody694_905

def RemovedBody694_907 : StackLang.HolProg 64 :=
.call (some (RemovedBody694_901, 0, 694, 28)) (Sum.inl 668) (some (RemovedBody694_906, 694, 29))

def RemovedBody694_908 : StackLang.HolProg 64 :=
.seq RemovedBody694_890 RemovedBody694_907

def RemovedBody694_909 : StackLang.HolProg 64 :=
.seq RemovedBody694_889 RemovedBody694_908

def RemovedBody694_910 : StackLang.HolProg 64 :=
.seq RemovedBody694_888 RemovedBody694_909

def RemovedBody694_911 : StackLang.HolProg 64 :=
.seq RemovedBody694_859 RemovedBody694_910

def RemovedBody694_912 : StackLang.HolProg 64 :=
.seq RemovedBody694_856 RemovedBody694_911

def RemovedBody694_913 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody694_914 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 1 0
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 0)))

def RemovedBody694_915 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551592#64))

def RemovedBody694_916 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsl 0 0
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 1#64)))

def RemovedBody694_917 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 0 0
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 26)))

def RemovedBody694_918 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 3
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 0 18446744073709551232#64))

def RemovedBody694_919 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 4 44#64)

def RemovedBody694_920 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody694_921 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody694_922 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 3027#64)

def RemovedBody694_923 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody694_924 : StackLang.HolProg 64 :=
.seq RemovedBody694_922 RemovedBody694_923

def RemovedBody694_925 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody694_926 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 2#64)

def RemovedBody694_927 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 1

def RemovedBody694_928 : StackLang.HolProg 64 :=
.seq RemovedBody694_926 RemovedBody694_927

def RemovedBody694_929 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody694_930 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) RemovedBody694_928 RemovedBody694_929

def RemovedBody694_931 : StackLang.HolProg 64 :=
.seq RemovedBody694_925 RemovedBody694_930

def RemovedBody694_932 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def RemovedBody694_933 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody694_934 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 694 31

def RemovedBody694_935 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody694_936 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody694_937 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody694_938 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody694_939 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def RemovedBody694_940 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def RemovedBody694_941 : StackLang.HolProg 64 :=
.seq RemovedBody694_939 RemovedBody694_940

def RemovedBody694_942 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def RemovedBody694_943 : StackLang.HolProg 64 :=
.seq RemovedBody694_941 RemovedBody694_942

def RemovedBody694_944 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody694_945 : StackLang.HolProg 64 :=
.seq RemovedBody694_943 RemovedBody694_944

def RemovedBody694_946 : StackLang.HolProg 64 :=
.seq RemovedBody694_938 RemovedBody694_945

def RemovedBody694_947 : StackLang.HolProg 64 :=
.seq RemovedBody694_937 RemovedBody694_946

def RemovedBody694_948 : StackLang.HolProg 64 :=
.seq RemovedBody694_936 RemovedBody694_947

def RemovedBody694_949 : StackLang.HolProg 64 :=
.seq RemovedBody694_935 RemovedBody694_948

def RemovedBody694_950 : StackLang.HolProg 64 :=
.seq RemovedBody694_934 RemovedBody694_949

def RemovedBody694_951 : StackLang.HolProg 64 :=
.seq RemovedBody694_933 RemovedBody694_950

def RemovedBody694_952 : StackLang.HolProg 64 :=
.seq RemovedBody694_932 RemovedBody694_951

def RemovedBody694_953 : StackLang.HolProg 64 :=
.seq RemovedBody694_931 RemovedBody694_952

def RemovedBody694_954 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody694_955 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody694_956 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody694_957 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody694_958 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody694_959 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody694_960 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 56#64))

def RemovedBody694_961 : StackLang.HolProg 64 :=
.seq RemovedBody694_959 RemovedBody694_960

def RemovedBody694_962 : StackLang.HolProg 64 :=
.seq RemovedBody694_958 RemovedBody694_961

def RemovedBody694_963 : StackLang.HolProg 64 :=
.seq RemovedBody694_957 RemovedBody694_962

def RemovedBody694_964 : StackLang.HolProg 64 :=
.seq RemovedBody694_956 RemovedBody694_963

def RemovedBody694_965 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 56#64))

def RemovedBody694_966 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def RemovedBody694_967 : StackLang.HolProg 64 :=
.seq RemovedBody694_965 RemovedBody694_966

def RemovedBody694_968 : StackLang.HolProg 64 :=
.call (some (RemovedBody694_964, 0, 694, 30)) (Sum.inl 692) (some (RemovedBody694_967, 694, 31))

def RemovedBody694_969 : StackLang.HolProg 64 :=
.seq RemovedBody694_955 RemovedBody694_968

def RemovedBody694_970 : StackLang.HolProg 64 :=
.seq RemovedBody694_954 RemovedBody694_969

def RemovedBody694_971 : StackLang.HolProg 64 :=
.seq RemovedBody694_953 RemovedBody694_970

def RemovedBody694_972 : StackLang.HolProg 64 :=
.seq RemovedBody694_924 RemovedBody694_971

def RemovedBody694_973 : StackLang.HolProg 64 :=
.seq RemovedBody694_921 RemovedBody694_972

def RemovedBody694_974 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody694_975 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 1 0
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 0)))

def RemovedBody694_976 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody694_977 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 3028#64)

def RemovedBody694_978 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody694_979 : StackLang.HolProg 64 :=
.seq RemovedBody694_977 RemovedBody694_978

def RemovedBody694_980 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody694_981 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 2#64)

def RemovedBody694_982 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 1

def RemovedBody694_983 : StackLang.HolProg 64 :=
.seq RemovedBody694_981 RemovedBody694_982

def RemovedBody694_984 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody694_985 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) RemovedBody694_983 RemovedBody694_984

def RemovedBody694_986 : StackLang.HolProg 64 :=
.seq RemovedBody694_980 RemovedBody694_985

def RemovedBody694_987 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def RemovedBody694_988 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody694_989 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 694 33

def RemovedBody694_990 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody694_991 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody694_992 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody694_993 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody694_994 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def RemovedBody694_995 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def RemovedBody694_996 : StackLang.HolProg 64 :=
.seq RemovedBody694_994 RemovedBody694_995

def RemovedBody694_997 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def RemovedBody694_998 : StackLang.HolProg 64 :=
.seq RemovedBody694_996 RemovedBody694_997

def RemovedBody694_999 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody694_1000 : StackLang.HolProg 64 :=
.seq RemovedBody694_998 RemovedBody694_999

def RemovedBody694_1001 : StackLang.HolProg 64 :=
.seq RemovedBody694_993 RemovedBody694_1000

def RemovedBody694_1002 : StackLang.HolProg 64 :=
.seq RemovedBody694_992 RemovedBody694_1001

def RemovedBody694_1003 : StackLang.HolProg 64 :=
.seq RemovedBody694_991 RemovedBody694_1002

def RemovedBody694_1004 : StackLang.HolProg 64 :=
.seq RemovedBody694_990 RemovedBody694_1003

def RemovedBody694_1005 : StackLang.HolProg 64 :=
.seq RemovedBody694_989 RemovedBody694_1004

def RemovedBody694_1006 : StackLang.HolProg 64 :=
.seq RemovedBody694_988 RemovedBody694_1005

def RemovedBody694_1007 : StackLang.HolProg 64 :=
.seq RemovedBody694_987 RemovedBody694_1006

def RemovedBody694_1008 : StackLang.HolProg 64 :=
.seq RemovedBody694_986 RemovedBody694_1007

def RemovedBody694_1009 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody694_1010 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody694_1011 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody694_1012 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody694_1013 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody694_1014 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody694_1015 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 64#64))

def RemovedBody694_1016 : StackLang.HolProg 64 :=
.seq RemovedBody694_1014 RemovedBody694_1015

def RemovedBody694_1017 : StackLang.HolProg 64 :=
.seq RemovedBody694_1013 RemovedBody694_1016

def RemovedBody694_1018 : StackLang.HolProg 64 :=
.seq RemovedBody694_1012 RemovedBody694_1017

def RemovedBody694_1019 : StackLang.HolProg 64 :=
.seq RemovedBody694_1011 RemovedBody694_1018

def RemovedBody694_1020 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 64#64))

def RemovedBody694_1021 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def RemovedBody694_1022 : StackLang.HolProg 64 :=
.seq RemovedBody694_1020 RemovedBody694_1021

def RemovedBody694_1023 : StackLang.HolProg 64 :=
.call (some (RemovedBody694_1019, 0, 694, 32)) (Sum.inl 70) (some (RemovedBody694_1022, 694, 33))

def RemovedBody694_1024 : StackLang.HolProg 64 :=
.seq RemovedBody694_1010 RemovedBody694_1023

def RemovedBody694_1025 : StackLang.HolProg 64 :=
.seq RemovedBody694_1009 RemovedBody694_1024

def RemovedBody694_1026 : StackLang.HolProg 64 :=
.seq RemovedBody694_1008 RemovedBody694_1025

def RemovedBody694_1027 : StackLang.HolProg 64 :=
.seq RemovedBody694_979 RemovedBody694_1026

def RemovedBody694_1028 : StackLang.HolProg 64 :=
.seq RemovedBody694_976 RemovedBody694_1027

def RemovedBody694_1029 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody694_1030 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 0#64)

def RemovedBody694_1031 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody694_1032 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 72#64)))

def RemovedBody694_1033 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 0

def RemovedBody694_1034 : StackLang.HolProg 64 :=
.seq RemovedBody694_1032 RemovedBody694_1033

def RemovedBody694_1035 : StackLang.HolProg 64 :=
.seq RemovedBody694_1031 RemovedBody694_1034

def RemovedBody694_1036 : StackLang.HolProg 64 :=
.seq RemovedBody694_1030 RemovedBody694_1035

def RemovedBody694_1037 : StackLang.HolProg 64 :=
.seq RemovedBody694_1029 RemovedBody694_1036

def RemovedBody694_1038 : StackLang.HolProg 64 :=
.seq RemovedBody694_1028 RemovedBody694_1037

def RemovedBody694_1039 : StackLang.HolProg 64 :=
.seq RemovedBody694_975 RemovedBody694_1038

def RemovedBody694_1040 : StackLang.HolProg 64 :=
.seq RemovedBody694_974 RemovedBody694_1039

def RemovedBody694_1041 : StackLang.HolProg 64 :=
.seq RemovedBody694_973 RemovedBody694_1040

def RemovedBody694_1042 : StackLang.HolProg 64 :=
.seq RemovedBody694_920 RemovedBody694_1041

def RemovedBody694_1043 : StackLang.HolProg 64 :=
.seq RemovedBody694_919 RemovedBody694_1042

def RemovedBody694_1044 : StackLang.HolProg 64 :=
.seq RemovedBody694_918 RemovedBody694_1043

def RemovedBody694_1045 : StackLang.HolProg 64 :=
.seq RemovedBody694_917 RemovedBody694_1044

def RemovedBody694_1046 : StackLang.HolProg 64 :=
.seq RemovedBody694_916 RemovedBody694_1045

def RemovedBody694_1047 : StackLang.HolProg 64 :=
.seq RemovedBody694_915 RemovedBody694_1046

def RemovedBody694_1048 : StackLang.HolProg 64 :=
.seq RemovedBody694_914 RemovedBody694_1047

def RemovedBody694_1049 : StackLang.HolProg 64 :=
.seq RemovedBody694_913 RemovedBody694_1048

def RemovedBody694_1050 : StackLang.HolProg 64 :=
.seq RemovedBody694_912 RemovedBody694_1049

def RemovedBody694_1051 : StackLang.HolProg 64 :=
.seq RemovedBody694_855 RemovedBody694_1050

def RemovedBody694_1052 : StackLang.HolProg 64 :=
.seq RemovedBody694_852 RemovedBody694_1051

def RemovedBody694_1053 : StackLang.HolProg 64 :=
.seq RemovedBody694_851 RemovedBody694_1052

def RemovedBody694_1054 : StackLang.HolProg 64 :=
.seq RemovedBody694_794 RemovedBody694_1053

def RemovedBody694_1055 : StackLang.HolProg 64 :=
.seq RemovedBody694_791 RemovedBody694_1054

def RemovedBody694_1056 : StackLang.HolProg 64 :=
.seq RemovedBody694_790 RemovedBody694_1055

def RemovedBody694_1057 : StackLang.HolProg 64 :=
.seq RemovedBody694_737 RemovedBody694_1056

def RemovedBody694_1058 : StackLang.HolProg 64 :=
.seq RemovedBody694_732 RemovedBody694_1057

def RemovedBody694_1059 : StackLang.HolProg 64 :=
.seq RemovedBody694_731 RemovedBody694_1058

def RemovedBody694_1060 : StackLang.HolProg 64 :=
.seq RemovedBody694_658 RemovedBody694_1059

def RemovedBody694_1061 : StackLang.HolProg 64 :=
.seq RemovedBody694_655 RemovedBody694_1060

def RemovedBody694_1062 : StackLang.HolProg 64 :=
.seq RemovedBody694_654 RemovedBody694_1061

def RemovedBody694_1063 : StackLang.HolProg 64 :=
.seq RemovedBody694_589 RemovedBody694_1062

def RemovedBody694_1064 : StackLang.HolProg 64 :=
.seq RemovedBody694_584 RemovedBody694_1063

def RemovedBody694_1065 : StackLang.HolProg 64 :=
.seq RemovedBody694_583 RemovedBody694_1064

def RemovedBody694_1066 : StackLang.HolProg 64 :=
.seq RemovedBody694_500 RemovedBody694_1065

def RemovedBody694_1067 : StackLang.HolProg 64 :=
.seq RemovedBody694_499 RemovedBody694_1066

def RemovedBody694_1068 : StackLang.HolProg 64 :=
.seq RemovedBody694_498 RemovedBody694_1067

def RemovedBody694_1069 : StackLang.HolProg 64 :=
.seq RemovedBody694_497 RemovedBody694_1068

def RemovedBody694_1070 : StackLang.HolProg 64 :=
.seq RemovedBody694_444 RemovedBody694_1069

def RemovedBody694_1071 : StackLang.HolProg 64 :=
.seq RemovedBody694_443 RemovedBody694_1070

def RemovedBody694_1072 : StackLang.HolProg 64 :=
.seq RemovedBody694_442 RemovedBody694_1071

def RemovedBody694_1073 : StackLang.HolProg 64 :=
.seq RemovedBody694_441 RemovedBody694_1072

def RemovedBody694_1074 : StackLang.HolProg 64 :=
.seq RemovedBody694_388 RemovedBody694_1073

def RemovedBody694_1075 : StackLang.HolProg 64 :=
.seq RemovedBody694_387 RemovedBody694_1074

def RemovedBody694_1076 : StackLang.HolProg 64 :=
.seq RemovedBody694_386 RemovedBody694_1075

def RemovedBody694_1077 : StackLang.HolProg 64 :=
.seq RemovedBody694_385 RemovedBody694_1076

def RemovedBody694_1078 : StackLang.HolProg 64 :=
.seq RemovedBody694_332 RemovedBody694_1077

def RemovedBody694_1079 : StackLang.HolProg 64 :=
.seq RemovedBody694_331 RemovedBody694_1078

def RemovedBody694_1080 : StackLang.HolProg 64 :=
.seq RemovedBody694_330 RemovedBody694_1079

def RemovedBody694_1081 : StackLang.HolProg 64 :=
.seq RemovedBody694_329 RemovedBody694_1080

def RemovedBody694_1082 : StackLang.HolProg 64 :=
.seq RemovedBody694_276 RemovedBody694_1081

def RemovedBody694_1083 : StackLang.HolProg 64 :=
.seq RemovedBody694_275 RemovedBody694_1082

def RemovedBody694_1084 : StackLang.HolProg 64 :=
.seq RemovedBody694_274 RemovedBody694_1083

def RemovedBody694_1085 : StackLang.HolProg 64 :=
.seq RemovedBody694_273 RemovedBody694_1084

def RemovedBody694_1086 : StackLang.HolProg 64 :=
.seq RemovedBody694_198 RemovedBody694_1085

def RemovedBody694_1087 : StackLang.HolProg 64 :=
.seq RemovedBody694_197 RemovedBody694_1086

def RemovedBody694_1088 : StackLang.HolProg 64 :=
.seq RemovedBody694_196 RemovedBody694_1087

def RemovedBody694_1089 : StackLang.HolProg 64 :=
.seq RemovedBody694_195 RemovedBody694_1088

def RemovedBody694_1090 : StackLang.HolProg 64 :=
.seq RemovedBody694_194 RemovedBody694_1089

def RemovedBody694_1091 : StackLang.HolProg 64 :=
.seq RemovedBody694_139 RemovedBody694_1090

def RemovedBody694_1092 : StackLang.HolProg 64 :=
.seq RemovedBody694_136 RemovedBody694_1091

def RemovedBody694_1093 : StackLang.HolProg 64 :=
.seq RemovedBody694_135 RemovedBody694_1092

def RemovedBody694_1094 : StackLang.HolProg 64 :=
.seq RemovedBody694_134 RemovedBody694_1093

def RemovedBody694_1095 : StackLang.HolProg 64 :=
.seq RemovedBody694_133 RemovedBody694_1094

def RemovedBody694_1096 : StackLang.HolProg 64 :=
.seq RemovedBody694_78 RemovedBody694_1095

def RemovedBody694_1097 : StackLang.HolProg 64 :=
.seq RemovedBody694_77 RemovedBody694_1096

def RemovedBody694_1098 : StackLang.HolProg 64 :=
.seq RemovedBody694_76 RemovedBody694_1097

def RemovedBody694_1099 : StackLang.HolProg 64 :=
.seq RemovedBody694_75 RemovedBody694_1098

def RemovedBody694_1100 : StackLang.HolProg 64 :=
.seq RemovedBody694_74 RemovedBody694_1099

def RemovedBody694_1101 : StackLang.HolProg 64 :=
.seq RemovedBody694_13 RemovedBody694_1100

def RemovedBody694_1102 : StackLang.HolProg 64 :=
.seq RemovedBody694_6 RemovedBody694_1101

def Removed694 : Nat × StackLang.HolProg 64 := (694, RemovedBody694_1102)
theorem Removed694_eq : StackRemove.progComp false riscvConfig.addrOffset (riscvConfig.regCount - (riscvConfig.avoidRegs.length + 3)) Alloc694 = Removed694 := by
  kernel_rfl
#print axioms Removed694_eq
end InitECandidate.Proofs.BackendStages
