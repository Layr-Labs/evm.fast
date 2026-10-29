import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.BackendStages.Alloc147
import Flapjack.Compiler.Backend.Backend
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
namespace InitECandidate.Proofs.BackendStages
def RemovedBody147_0 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 56#64)))

def RemovedBody147_1 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 2#64)

def RemovedBody147_2 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 1

def RemovedBody147_3 : StackLang.HolProg 64 :=
.seq RemovedBody147_1 RemovedBody147_2

def RemovedBody147_4 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody147_5 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) RemovedBody147_3 RemovedBody147_4

def RemovedBody147_6 : StackLang.HolProg 64 :=
.seq RemovedBody147_0 RemovedBody147_5

def RemovedBody147_7 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody147_8 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.and 6 5
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 7#64)))

def RemovedBody147_9 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 7 0#64)

def RemovedBody147_10 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody147_11 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 40#64))

def RemovedBody147_12 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 1 4
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 4)))

def RemovedBody147_13 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 24#64))

def RemovedBody147_14 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 2
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 48#64))

def RemovedBody147_15 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 5
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 32#64))

def RemovedBody147_16 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 3
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody147_17 : StackLang.HolProg 64 :=
.seq RemovedBody147_15 RemovedBody147_16

def RemovedBody147_18 : StackLang.HolProg 64 :=
.seq RemovedBody147_14 RemovedBody147_17

def RemovedBody147_19 : StackLang.HolProg 64 :=
.seq RemovedBody147_13 RemovedBody147_18

def RemovedBody147_20 : StackLang.HolProg 64 :=
.seq RemovedBody147_12 RemovedBody147_19

def RemovedBody147_21 : StackLang.HolProg 64 :=
.seq RemovedBody147_11 RemovedBody147_20

def RemovedBody147_22 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody147_23 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 116#64)

def RemovedBody147_24 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody147_25 : StackLang.HolProg 64 :=
.seq RemovedBody147_23 RemovedBody147_24

def RemovedBody147_26 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody147_27 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 2#64)

def RemovedBody147_28 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 1

def RemovedBody147_29 : StackLang.HolProg 64 :=
.seq RemovedBody147_27 RemovedBody147_28

def RemovedBody147_30 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody147_31 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) RemovedBody147_29 RemovedBody147_30

def RemovedBody147_32 : StackLang.HolProg 64 :=
.seq RemovedBody147_26 RemovedBody147_31

def RemovedBody147_33 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def RemovedBody147_34 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody147_35 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 147 3

def RemovedBody147_36 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody147_37 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody147_38 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody147_39 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody147_40 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def RemovedBody147_41 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def RemovedBody147_42 : StackLang.HolProg 64 :=
.seq RemovedBody147_40 RemovedBody147_41

def RemovedBody147_43 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def RemovedBody147_44 : StackLang.HolProg 64 :=
.seq RemovedBody147_42 RemovedBody147_43

def RemovedBody147_45 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody147_46 : StackLang.HolProg 64 :=
.seq RemovedBody147_44 RemovedBody147_45

def RemovedBody147_47 : StackLang.HolProg 64 :=
.seq RemovedBody147_39 RemovedBody147_46

def RemovedBody147_48 : StackLang.HolProg 64 :=
.seq RemovedBody147_38 RemovedBody147_47

def RemovedBody147_49 : StackLang.HolProg 64 :=
.seq RemovedBody147_37 RemovedBody147_48

def RemovedBody147_50 : StackLang.HolProg 64 :=
.seq RemovedBody147_36 RemovedBody147_49

def RemovedBody147_51 : StackLang.HolProg 64 :=
.seq RemovedBody147_35 RemovedBody147_50

def RemovedBody147_52 : StackLang.HolProg 64 :=
.seq RemovedBody147_34 RemovedBody147_51

def RemovedBody147_53 : StackLang.HolProg 64 :=
.seq RemovedBody147_33 RemovedBody147_52

def RemovedBody147_54 : StackLang.HolProg 64 :=
.seq RemovedBody147_32 RemovedBody147_53

def RemovedBody147_55 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody147_56 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody147_57 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody147_58 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody147_59 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody147_60 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody147_61 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 2 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def RemovedBody147_62 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 32#64))

def RemovedBody147_63 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 3
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody147_64 : StackLang.HolProg 64 :=
.seq RemovedBody147_62 RemovedBody147_63

def RemovedBody147_65 : StackLang.HolProg 64 :=
.seq RemovedBody147_61 RemovedBody147_64

def RemovedBody147_66 : StackLang.HolProg 64 :=
.seq RemovedBody147_60 RemovedBody147_65

def RemovedBody147_67 : StackLang.HolProg 64 :=
.seq RemovedBody147_59 RemovedBody147_66

def RemovedBody147_68 : StackLang.HolProg 64 :=
.seq RemovedBody147_58 RemovedBody147_67

def RemovedBody147_69 : StackLang.HolProg 64 :=
.seq RemovedBody147_57 RemovedBody147_68

def RemovedBody147_70 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 32#64))

def RemovedBody147_71 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 3
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody147_72 : StackLang.HolProg 64 :=
.seq RemovedBody147_70 RemovedBody147_71

def RemovedBody147_73 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def RemovedBody147_74 : StackLang.HolProg 64 :=
.seq RemovedBody147_72 RemovedBody147_73

def RemovedBody147_75 : StackLang.HolProg 64 :=
.call (some (RemovedBody147_69, 0, 147, 2)) (Sum.inl 84) (some (RemovedBody147_74, 147, 3))

def RemovedBody147_76 : StackLang.HolProg 64 :=
.seq RemovedBody147_56 RemovedBody147_75

def RemovedBody147_77 : StackLang.HolProg 64 :=
.seq RemovedBody147_55 RemovedBody147_76

def RemovedBody147_78 : StackLang.HolProg 64 :=
.seq RemovedBody147_54 RemovedBody147_77

def RemovedBody147_79 : StackLang.HolProg 64 :=
.seq RemovedBody147_25 RemovedBody147_78

def RemovedBody147_80 : StackLang.HolProg 64 :=
.seq RemovedBody147_22 RemovedBody147_79

def RemovedBody147_81 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody147_82 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody147_83 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 2
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 0 0#64))

def RemovedBody147_84 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 1 3
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 3)))

def RemovedBody147_85 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 32#64))

def RemovedBody147_86 : StackLang.HolProg 64 :=
.seq RemovedBody147_84 RemovedBody147_85

def RemovedBody147_87 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody147_88 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 117#64)

def RemovedBody147_89 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody147_90 : StackLang.HolProg 64 :=
.seq RemovedBody147_88 RemovedBody147_89

def RemovedBody147_91 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody147_92 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 2#64)

def RemovedBody147_93 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 1

def RemovedBody147_94 : StackLang.HolProg 64 :=
.seq RemovedBody147_92 RemovedBody147_93

def RemovedBody147_95 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody147_96 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) RemovedBody147_94 RemovedBody147_95

def RemovedBody147_97 : StackLang.HolProg 64 :=
.seq RemovedBody147_91 RemovedBody147_96

def RemovedBody147_98 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def RemovedBody147_99 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody147_100 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 147 5

def RemovedBody147_101 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody147_102 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody147_103 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody147_104 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody147_105 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def RemovedBody147_106 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def RemovedBody147_107 : StackLang.HolProg 64 :=
.seq RemovedBody147_105 RemovedBody147_106

def RemovedBody147_108 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def RemovedBody147_109 : StackLang.HolProg 64 :=
.seq RemovedBody147_107 RemovedBody147_108

def RemovedBody147_110 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody147_111 : StackLang.HolProg 64 :=
.seq RemovedBody147_109 RemovedBody147_110

def RemovedBody147_112 : StackLang.HolProg 64 :=
.seq RemovedBody147_104 RemovedBody147_111

def RemovedBody147_113 : StackLang.HolProg 64 :=
.seq RemovedBody147_103 RemovedBody147_112

def RemovedBody147_114 : StackLang.HolProg 64 :=
.seq RemovedBody147_102 RemovedBody147_113

def RemovedBody147_115 : StackLang.HolProg 64 :=
.seq RemovedBody147_101 RemovedBody147_114

def RemovedBody147_116 : StackLang.HolProg 64 :=
.seq RemovedBody147_100 RemovedBody147_115

def RemovedBody147_117 : StackLang.HolProg 64 :=
.seq RemovedBody147_99 RemovedBody147_116

def RemovedBody147_118 : StackLang.HolProg 64 :=
.seq RemovedBody147_98 RemovedBody147_117

def RemovedBody147_119 : StackLang.HolProg 64 :=
.seq RemovedBody147_97 RemovedBody147_118

def RemovedBody147_120 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody147_121 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody147_122 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody147_123 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody147_124 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody147_125 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody147_126 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 2 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def RemovedBody147_127 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 3
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 48#64))

def RemovedBody147_128 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 40#64))

def RemovedBody147_129 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 48#64))

def RemovedBody147_130 : StackLang.HolProg 64 :=
.seq RemovedBody147_128 RemovedBody147_129

def RemovedBody147_131 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 32#64))

def RemovedBody147_132 : StackLang.HolProg 64 :=
.seq RemovedBody147_130 RemovedBody147_131

def RemovedBody147_133 : StackLang.HolProg 64 :=
.seq RemovedBody147_127 RemovedBody147_132

def RemovedBody147_134 : StackLang.HolProg 64 :=
.seq RemovedBody147_126 RemovedBody147_133

def RemovedBody147_135 : StackLang.HolProg 64 :=
.seq RemovedBody147_125 RemovedBody147_134

def RemovedBody147_136 : StackLang.HolProg 64 :=
.seq RemovedBody147_124 RemovedBody147_135

def RemovedBody147_137 : StackLang.HolProg 64 :=
.seq RemovedBody147_123 RemovedBody147_136

def RemovedBody147_138 : StackLang.HolProg 64 :=
.seq RemovedBody147_122 RemovedBody147_137

def RemovedBody147_139 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 3
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 48#64))

def RemovedBody147_140 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 40#64))

def RemovedBody147_141 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 48#64))

def RemovedBody147_142 : StackLang.HolProg 64 :=
.seq RemovedBody147_140 RemovedBody147_141

def RemovedBody147_143 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 32#64))

def RemovedBody147_144 : StackLang.HolProg 64 :=
.seq RemovedBody147_142 RemovedBody147_143

def RemovedBody147_145 : StackLang.HolProg 64 :=
.seq RemovedBody147_139 RemovedBody147_144

def RemovedBody147_146 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def RemovedBody147_147 : StackLang.HolProg 64 :=
.seq RemovedBody147_145 RemovedBody147_146

def RemovedBody147_148 : StackLang.HolProg 64 :=
.call (some (RemovedBody147_138, 0, 147, 4)) (Sum.inl 84) (some (RemovedBody147_147, 147, 5))

def RemovedBody147_149 : StackLang.HolProg 64 :=
.seq RemovedBody147_121 RemovedBody147_148

def RemovedBody147_150 : StackLang.HolProg 64 :=
.seq RemovedBody147_120 RemovedBody147_149

def RemovedBody147_151 : StackLang.HolProg 64 :=
.seq RemovedBody147_119 RemovedBody147_150

def RemovedBody147_152 : StackLang.HolProg 64 :=
.seq RemovedBody147_90 RemovedBody147_151

def RemovedBody147_153 : StackLang.HolProg 64 :=
.seq RemovedBody147_87 RemovedBody147_152

def RemovedBody147_154 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody147_155 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody147_156 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 1 0
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 8#64)))

def RemovedBody147_157 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody147_158 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 2
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 1 0#64))

def RemovedBody147_159 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 1 3
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 3)))

def RemovedBody147_160 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 40#64))

def RemovedBody147_161 : StackLang.HolProg 64 :=
.seq RemovedBody147_159 RemovedBody147_160

def RemovedBody147_162 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody147_163 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 118#64)

def RemovedBody147_164 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody147_165 : StackLang.HolProg 64 :=
.seq RemovedBody147_163 RemovedBody147_164

def RemovedBody147_166 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody147_167 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 2#64)

def RemovedBody147_168 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 1

def RemovedBody147_169 : StackLang.HolProg 64 :=
.seq RemovedBody147_167 RemovedBody147_168

def RemovedBody147_170 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody147_171 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) RemovedBody147_169 RemovedBody147_170

def RemovedBody147_172 : StackLang.HolProg 64 :=
.seq RemovedBody147_166 RemovedBody147_171

def RemovedBody147_173 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def RemovedBody147_174 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody147_175 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 147 7

def RemovedBody147_176 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody147_177 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody147_178 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody147_179 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody147_180 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def RemovedBody147_181 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def RemovedBody147_182 : StackLang.HolProg 64 :=
.seq RemovedBody147_180 RemovedBody147_181

def RemovedBody147_183 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def RemovedBody147_184 : StackLang.HolProg 64 :=
.seq RemovedBody147_182 RemovedBody147_183

def RemovedBody147_185 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody147_186 : StackLang.HolProg 64 :=
.seq RemovedBody147_184 RemovedBody147_185

def RemovedBody147_187 : StackLang.HolProg 64 :=
.seq RemovedBody147_179 RemovedBody147_186

def RemovedBody147_188 : StackLang.HolProg 64 :=
.seq RemovedBody147_178 RemovedBody147_187

def RemovedBody147_189 : StackLang.HolProg 64 :=
.seq RemovedBody147_177 RemovedBody147_188

def RemovedBody147_190 : StackLang.HolProg 64 :=
.seq RemovedBody147_176 RemovedBody147_189

def RemovedBody147_191 : StackLang.HolProg 64 :=
.seq RemovedBody147_175 RemovedBody147_190

def RemovedBody147_192 : StackLang.HolProg 64 :=
.seq RemovedBody147_174 RemovedBody147_191

def RemovedBody147_193 : StackLang.HolProg 64 :=
.seq RemovedBody147_173 RemovedBody147_192

def RemovedBody147_194 : StackLang.HolProg 64 :=
.seq RemovedBody147_172 RemovedBody147_193

def RemovedBody147_195 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody147_196 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody147_197 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody147_198 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody147_199 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody147_200 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody147_201 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 2 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def RemovedBody147_202 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 3
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 48#64))

def RemovedBody147_203 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 40#64))

def RemovedBody147_204 : StackLang.HolProg 64 :=
.seq RemovedBody147_202 RemovedBody147_203

def RemovedBody147_205 : StackLang.HolProg 64 :=
.seq RemovedBody147_201 RemovedBody147_204

def RemovedBody147_206 : StackLang.HolProg 64 :=
.seq RemovedBody147_200 RemovedBody147_205

def RemovedBody147_207 : StackLang.HolProg 64 :=
.seq RemovedBody147_199 RemovedBody147_206

def RemovedBody147_208 : StackLang.HolProg 64 :=
.seq RemovedBody147_198 RemovedBody147_207

def RemovedBody147_209 : StackLang.HolProg 64 :=
.seq RemovedBody147_197 RemovedBody147_208

def RemovedBody147_210 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 3
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 48#64))

def RemovedBody147_211 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 40#64))

def RemovedBody147_212 : StackLang.HolProg 64 :=
.seq RemovedBody147_210 RemovedBody147_211

def RemovedBody147_213 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def RemovedBody147_214 : StackLang.HolProg 64 :=
.seq RemovedBody147_212 RemovedBody147_213

def RemovedBody147_215 : StackLang.HolProg 64 :=
.call (some (RemovedBody147_209, 0, 147, 6)) (Sum.inl 84) (some (RemovedBody147_214, 147, 7))

def RemovedBody147_216 : StackLang.HolProg 64 :=
.seq RemovedBody147_196 RemovedBody147_215

def RemovedBody147_217 : StackLang.HolProg 64 :=
.seq RemovedBody147_195 RemovedBody147_216

def RemovedBody147_218 : StackLang.HolProg 64 :=
.seq RemovedBody147_194 RemovedBody147_217

def RemovedBody147_219 : StackLang.HolProg 64 :=
.seq RemovedBody147_165 RemovedBody147_218

def RemovedBody147_220 : StackLang.HolProg 64 :=
.seq RemovedBody147_162 RemovedBody147_219

def RemovedBody147_221 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody147_222 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody147_223 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 1 0
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 16#64)))

def RemovedBody147_224 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody147_225 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 2
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 1 0#64))

def RemovedBody147_226 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 1 3
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 3)))

def RemovedBody147_227 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody147_228 : StackLang.HolProg 64 :=
.seq RemovedBody147_226 RemovedBody147_227

def RemovedBody147_229 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody147_230 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 119#64)

def RemovedBody147_231 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody147_232 : StackLang.HolProg 64 :=
.seq RemovedBody147_230 RemovedBody147_231

def RemovedBody147_233 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody147_234 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 2#64)

def RemovedBody147_235 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 1

def RemovedBody147_236 : StackLang.HolProg 64 :=
.seq RemovedBody147_234 RemovedBody147_235

def RemovedBody147_237 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody147_238 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) RemovedBody147_236 RemovedBody147_237

def RemovedBody147_239 : StackLang.HolProg 64 :=
.seq RemovedBody147_233 RemovedBody147_238

def RemovedBody147_240 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def RemovedBody147_241 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody147_242 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 147 9

def RemovedBody147_243 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody147_244 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody147_245 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody147_246 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody147_247 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def RemovedBody147_248 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def RemovedBody147_249 : StackLang.HolProg 64 :=
.seq RemovedBody147_247 RemovedBody147_248

def RemovedBody147_250 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def RemovedBody147_251 : StackLang.HolProg 64 :=
.seq RemovedBody147_249 RemovedBody147_250

def RemovedBody147_252 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody147_253 : StackLang.HolProg 64 :=
.seq RemovedBody147_251 RemovedBody147_252

def RemovedBody147_254 : StackLang.HolProg 64 :=
.seq RemovedBody147_246 RemovedBody147_253

def RemovedBody147_255 : StackLang.HolProg 64 :=
.seq RemovedBody147_245 RemovedBody147_254

def RemovedBody147_256 : StackLang.HolProg 64 :=
.seq RemovedBody147_244 RemovedBody147_255

def RemovedBody147_257 : StackLang.HolProg 64 :=
.seq RemovedBody147_243 RemovedBody147_256

def RemovedBody147_258 : StackLang.HolProg 64 :=
.seq RemovedBody147_242 RemovedBody147_257

def RemovedBody147_259 : StackLang.HolProg 64 :=
.seq RemovedBody147_241 RemovedBody147_258

def RemovedBody147_260 : StackLang.HolProg 64 :=
.seq RemovedBody147_240 RemovedBody147_259

def RemovedBody147_261 : StackLang.HolProg 64 :=
.seq RemovedBody147_239 RemovedBody147_260

def RemovedBody147_262 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody147_263 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody147_264 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody147_265 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody147_266 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody147_267 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody147_268 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 0 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def RemovedBody147_269 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 3
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 24#64))

def RemovedBody147_270 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 2
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody147_271 : StackLang.HolProg 64 :=
.seq RemovedBody147_269 RemovedBody147_270

def RemovedBody147_272 : StackLang.HolProg 64 :=
.seq RemovedBody147_268 RemovedBody147_271

def RemovedBody147_273 : StackLang.HolProg 64 :=
.seq RemovedBody147_267 RemovedBody147_272

def RemovedBody147_274 : StackLang.HolProg 64 :=
.seq RemovedBody147_266 RemovedBody147_273

def RemovedBody147_275 : StackLang.HolProg 64 :=
.seq RemovedBody147_265 RemovedBody147_274

def RemovedBody147_276 : StackLang.HolProg 64 :=
.seq RemovedBody147_264 RemovedBody147_275

def RemovedBody147_277 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 3
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 24#64))

def RemovedBody147_278 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 2
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody147_279 : StackLang.HolProg 64 :=
.seq RemovedBody147_277 RemovedBody147_278

def RemovedBody147_280 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def RemovedBody147_281 : StackLang.HolProg 64 :=
.seq RemovedBody147_279 RemovedBody147_280

def RemovedBody147_282 : StackLang.HolProg 64 :=
.call (some (RemovedBody147_276, 0, 147, 8)) (Sum.inl 84) (some (RemovedBody147_281, 147, 9))

def RemovedBody147_283 : StackLang.HolProg 64 :=
.seq RemovedBody147_263 RemovedBody147_282

def RemovedBody147_284 : StackLang.HolProg 64 :=
.seq RemovedBody147_262 RemovedBody147_283

def RemovedBody147_285 : StackLang.HolProg 64 :=
.seq RemovedBody147_261 RemovedBody147_284

def RemovedBody147_286 : StackLang.HolProg 64 :=
.seq RemovedBody147_232 RemovedBody147_285

def RemovedBody147_287 : StackLang.HolProg 64 :=
.seq RemovedBody147_229 RemovedBody147_286

def RemovedBody147_288 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody147_289 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody147_290 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 1 2
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody147_291 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody147_292 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 1 0#64))

def RemovedBody147_293 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 0#64)

def RemovedBody147_294 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody147_295 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 56#64)))

def RemovedBody147_296 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 3

def RemovedBody147_297 : StackLang.HolProg 64 :=
.seq RemovedBody147_295 RemovedBody147_296

def RemovedBody147_298 : StackLang.HolProg 64 :=
.seq RemovedBody147_294 RemovedBody147_297

def RemovedBody147_299 : StackLang.HolProg 64 :=
.seq RemovedBody147_293 RemovedBody147_298

def RemovedBody147_300 : StackLang.HolProg 64 :=
.seq RemovedBody147_292 RemovedBody147_299

def RemovedBody147_301 : StackLang.HolProg 64 :=
.seq RemovedBody147_291 RemovedBody147_300

def RemovedBody147_302 : StackLang.HolProg 64 :=
.seq RemovedBody147_290 RemovedBody147_301

def RemovedBody147_303 : StackLang.HolProg 64 :=
.seq RemovedBody147_289 RemovedBody147_302

def RemovedBody147_304 : StackLang.HolProg 64 :=
.seq RemovedBody147_288 RemovedBody147_303

def RemovedBody147_305 : StackLang.HolProg 64 :=
.seq RemovedBody147_287 RemovedBody147_304

def RemovedBody147_306 : StackLang.HolProg 64 :=
.seq RemovedBody147_228 RemovedBody147_305

def RemovedBody147_307 : StackLang.HolProg 64 :=
.seq RemovedBody147_225 RemovedBody147_306

def RemovedBody147_308 : StackLang.HolProg 64 :=
.seq RemovedBody147_224 RemovedBody147_307

def RemovedBody147_309 : StackLang.HolProg 64 :=
.seq RemovedBody147_223 RemovedBody147_308

def RemovedBody147_310 : StackLang.HolProg 64 :=
.seq RemovedBody147_222 RemovedBody147_309

def RemovedBody147_311 : StackLang.HolProg 64 :=
.seq RemovedBody147_221 RemovedBody147_310

def RemovedBody147_312 : StackLang.HolProg 64 :=
.seq RemovedBody147_220 RemovedBody147_311

def RemovedBody147_313 : StackLang.HolProg 64 :=
.seq RemovedBody147_161 RemovedBody147_312

def RemovedBody147_314 : StackLang.HolProg 64 :=
.seq RemovedBody147_158 RemovedBody147_313

def RemovedBody147_315 : StackLang.HolProg 64 :=
.seq RemovedBody147_157 RemovedBody147_314

def RemovedBody147_316 : StackLang.HolProg 64 :=
.seq RemovedBody147_156 RemovedBody147_315

def RemovedBody147_317 : StackLang.HolProg 64 :=
.seq RemovedBody147_155 RemovedBody147_316

def RemovedBody147_318 : StackLang.HolProg 64 :=
.seq RemovedBody147_154 RemovedBody147_317

def RemovedBody147_319 : StackLang.HolProg 64 :=
.seq RemovedBody147_153 RemovedBody147_318

def RemovedBody147_320 : StackLang.HolProg 64 :=
.seq RemovedBody147_86 RemovedBody147_319

def RemovedBody147_321 : StackLang.HolProg 64 :=
.seq RemovedBody147_83 RemovedBody147_320

def RemovedBody147_322 : StackLang.HolProg 64 :=
.seq RemovedBody147_82 RemovedBody147_321

def RemovedBody147_323 : StackLang.HolProg 64 :=
.seq RemovedBody147_81 RemovedBody147_322

def RemovedBody147_324 : StackLang.HolProg 64 :=
.seq RemovedBody147_80 RemovedBody147_323

def RemovedBody147_325 : StackLang.HolProg 64 :=
.seq RemovedBody147_21 RemovedBody147_324

def RemovedBody147_326 : StackLang.HolProg 64 :=
.seq RemovedBody147_10 RemovedBody147_325

def RemovedBody147_327 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 2
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 40#64))

def RemovedBody147_328 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 32#64))

def RemovedBody147_329 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 3
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody147_330 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 48#64))

def RemovedBody147_331 : StackLang.HolProg 64 :=
.seq RemovedBody147_329 RemovedBody147_330

def RemovedBody147_332 : StackLang.HolProg 64 :=
.seq RemovedBody147_328 RemovedBody147_331

def RemovedBody147_333 : StackLang.HolProg 64 :=
.seq RemovedBody147_327 RemovedBody147_332

def RemovedBody147_334 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.equal) 6 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 7) RemovedBody147_326 RemovedBody147_333

def RemovedBody147_335 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody147_336 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody147_337 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 1 5
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 5)))

def RemovedBody147_338 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 2 4
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 4)))

def RemovedBody147_339 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 5
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 24#64))

def RemovedBody147_340 : StackLang.HolProg 64 :=
.seq RemovedBody147_338 RemovedBody147_339

def RemovedBody147_341 : StackLang.HolProg 64 :=
.seq RemovedBody147_337 RemovedBody147_340

def RemovedBody147_342 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody147_343 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 120#64)

def RemovedBody147_344 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody147_345 : StackLang.HolProg 64 :=
.seq RemovedBody147_343 RemovedBody147_344

def RemovedBody147_346 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody147_347 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 2#64)

def RemovedBody147_348 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 1

def RemovedBody147_349 : StackLang.HolProg 64 :=
.seq RemovedBody147_347 RemovedBody147_348

def RemovedBody147_350 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody147_351 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) RemovedBody147_349 RemovedBody147_350

def RemovedBody147_352 : StackLang.HolProg 64 :=
.seq RemovedBody147_346 RemovedBody147_351

def RemovedBody147_353 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def RemovedBody147_354 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody147_355 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 147 11

def RemovedBody147_356 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody147_357 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody147_358 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody147_359 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody147_360 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def RemovedBody147_361 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def RemovedBody147_362 : StackLang.HolProg 64 :=
.seq RemovedBody147_360 RemovedBody147_361

def RemovedBody147_363 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def RemovedBody147_364 : StackLang.HolProg 64 :=
.seq RemovedBody147_362 RemovedBody147_363

def RemovedBody147_365 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody147_366 : StackLang.HolProg 64 :=
.seq RemovedBody147_364 RemovedBody147_365

def RemovedBody147_367 : StackLang.HolProg 64 :=
.seq RemovedBody147_359 RemovedBody147_366

def RemovedBody147_368 : StackLang.HolProg 64 :=
.seq RemovedBody147_358 RemovedBody147_367

def RemovedBody147_369 : StackLang.HolProg 64 :=
.seq RemovedBody147_357 RemovedBody147_368

def RemovedBody147_370 : StackLang.HolProg 64 :=
.seq RemovedBody147_356 RemovedBody147_369

def RemovedBody147_371 : StackLang.HolProg 64 :=
.seq RemovedBody147_355 RemovedBody147_370

def RemovedBody147_372 : StackLang.HolProg 64 :=
.seq RemovedBody147_354 RemovedBody147_371

def RemovedBody147_373 : StackLang.HolProg 64 :=
.seq RemovedBody147_353 RemovedBody147_372

def RemovedBody147_374 : StackLang.HolProg 64 :=
.seq RemovedBody147_352 RemovedBody147_373

def RemovedBody147_375 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody147_376 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody147_377 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody147_378 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody147_379 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody147_380 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody147_381 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 24#64))

def RemovedBody147_382 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 2
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody147_383 : StackLang.HolProg 64 :=
.seq RemovedBody147_381 RemovedBody147_382

def RemovedBody147_384 : StackLang.HolProg 64 :=
.seq RemovedBody147_380 RemovedBody147_383

def RemovedBody147_385 : StackLang.HolProg 64 :=
.seq RemovedBody147_379 RemovedBody147_384

def RemovedBody147_386 : StackLang.HolProg 64 :=
.seq RemovedBody147_378 RemovedBody147_385

def RemovedBody147_387 : StackLang.HolProg 64 :=
.seq RemovedBody147_377 RemovedBody147_386

def RemovedBody147_388 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 24#64))

def RemovedBody147_389 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 2
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody147_390 : StackLang.HolProg 64 :=
.seq RemovedBody147_388 RemovedBody147_389

def RemovedBody147_391 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def RemovedBody147_392 : StackLang.HolProg 64 :=
.seq RemovedBody147_390 RemovedBody147_391

def RemovedBody147_393 : StackLang.HolProg 64 :=
.call (some (RemovedBody147_387, 0, 147, 10)) (Sum.inl 89) (some (RemovedBody147_392, 147, 11))

def RemovedBody147_394 : StackLang.HolProg 64 :=
.seq RemovedBody147_376 RemovedBody147_393

def RemovedBody147_395 : StackLang.HolProg 64 :=
.seq RemovedBody147_375 RemovedBody147_394

def RemovedBody147_396 : StackLang.HolProg 64 :=
.seq RemovedBody147_374 RemovedBody147_395

def RemovedBody147_397 : StackLang.HolProg 64 :=
.seq RemovedBody147_345 RemovedBody147_396

def RemovedBody147_398 : StackLang.HolProg 64 :=
.seq RemovedBody147_342 RemovedBody147_397

def RemovedBody147_399 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody147_400 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody147_401 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 1 0
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 8#64)))

def RemovedBody147_402 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 24#64))

def RemovedBody147_403 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody147_404 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 121#64)

def RemovedBody147_405 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody147_406 : StackLang.HolProg 64 :=
.seq RemovedBody147_404 RemovedBody147_405

def RemovedBody147_407 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody147_408 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 2#64)

def RemovedBody147_409 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 1

def RemovedBody147_410 : StackLang.HolProg 64 :=
.seq RemovedBody147_408 RemovedBody147_409

def RemovedBody147_411 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody147_412 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) RemovedBody147_410 RemovedBody147_411

def RemovedBody147_413 : StackLang.HolProg 64 :=
.seq RemovedBody147_407 RemovedBody147_412

def RemovedBody147_414 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def RemovedBody147_415 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody147_416 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 147 13

def RemovedBody147_417 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody147_418 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody147_419 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody147_420 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody147_421 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def RemovedBody147_422 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def RemovedBody147_423 : StackLang.HolProg 64 :=
.seq RemovedBody147_421 RemovedBody147_422

def RemovedBody147_424 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def RemovedBody147_425 : StackLang.HolProg 64 :=
.seq RemovedBody147_423 RemovedBody147_424

def RemovedBody147_426 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody147_427 : StackLang.HolProg 64 :=
.seq RemovedBody147_425 RemovedBody147_426

def RemovedBody147_428 : StackLang.HolProg 64 :=
.seq RemovedBody147_420 RemovedBody147_427

def RemovedBody147_429 : StackLang.HolProg 64 :=
.seq RemovedBody147_419 RemovedBody147_428

def RemovedBody147_430 : StackLang.HolProg 64 :=
.seq RemovedBody147_418 RemovedBody147_429

def RemovedBody147_431 : StackLang.HolProg 64 :=
.seq RemovedBody147_417 RemovedBody147_430

def RemovedBody147_432 : StackLang.HolProg 64 :=
.seq RemovedBody147_416 RemovedBody147_431

def RemovedBody147_433 : StackLang.HolProg 64 :=
.seq RemovedBody147_415 RemovedBody147_432

def RemovedBody147_434 : StackLang.HolProg 64 :=
.seq RemovedBody147_414 RemovedBody147_433

def RemovedBody147_435 : StackLang.HolProg 64 :=
.seq RemovedBody147_413 RemovedBody147_434

def RemovedBody147_436 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody147_437 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody147_438 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody147_439 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody147_440 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody147_441 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody147_442 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 2
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 40#64))

def RemovedBody147_443 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 32#64))

def RemovedBody147_444 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 40#64))

def RemovedBody147_445 : StackLang.HolProg 64 :=
.seq RemovedBody147_443 RemovedBody147_444

def RemovedBody147_446 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 24#64))

def RemovedBody147_447 : StackLang.HolProg 64 :=
.seq RemovedBody147_445 RemovedBody147_446

def RemovedBody147_448 : StackLang.HolProg 64 :=
.seq RemovedBody147_442 RemovedBody147_447

def RemovedBody147_449 : StackLang.HolProg 64 :=
.seq RemovedBody147_441 RemovedBody147_448

def RemovedBody147_450 : StackLang.HolProg 64 :=
.seq RemovedBody147_440 RemovedBody147_449

def RemovedBody147_451 : StackLang.HolProg 64 :=
.seq RemovedBody147_439 RemovedBody147_450

def RemovedBody147_452 : StackLang.HolProg 64 :=
.seq RemovedBody147_438 RemovedBody147_451

def RemovedBody147_453 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 2
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 40#64))

def RemovedBody147_454 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 32#64))

def RemovedBody147_455 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 40#64))

def RemovedBody147_456 : StackLang.HolProg 64 :=
.seq RemovedBody147_454 RemovedBody147_455

def RemovedBody147_457 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 24#64))

def RemovedBody147_458 : StackLang.HolProg 64 :=
.seq RemovedBody147_456 RemovedBody147_457

def RemovedBody147_459 : StackLang.HolProg 64 :=
.seq RemovedBody147_453 RemovedBody147_458

def RemovedBody147_460 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def RemovedBody147_461 : StackLang.HolProg 64 :=
.seq RemovedBody147_459 RemovedBody147_460

def RemovedBody147_462 : StackLang.HolProg 64 :=
.call (some (RemovedBody147_452, 0, 147, 12)) (Sum.inl 89) (some (RemovedBody147_461, 147, 13))

def RemovedBody147_463 : StackLang.HolProg 64 :=
.seq RemovedBody147_437 RemovedBody147_462

def RemovedBody147_464 : StackLang.HolProg 64 :=
.seq RemovedBody147_436 RemovedBody147_463

def RemovedBody147_465 : StackLang.HolProg 64 :=
.seq RemovedBody147_435 RemovedBody147_464

def RemovedBody147_466 : StackLang.HolProg 64 :=
.seq RemovedBody147_406 RemovedBody147_465

def RemovedBody147_467 : StackLang.HolProg 64 :=
.seq RemovedBody147_403 RemovedBody147_466

def RemovedBody147_468 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody147_469 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody147_470 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 1 0
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 16#64)))

def RemovedBody147_471 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 32#64))

def RemovedBody147_472 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody147_473 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 122#64)

def RemovedBody147_474 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody147_475 : StackLang.HolProg 64 :=
.seq RemovedBody147_473 RemovedBody147_474

def RemovedBody147_476 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody147_477 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 2#64)

def RemovedBody147_478 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 1

def RemovedBody147_479 : StackLang.HolProg 64 :=
.seq RemovedBody147_477 RemovedBody147_478

def RemovedBody147_480 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody147_481 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) RemovedBody147_479 RemovedBody147_480

def RemovedBody147_482 : StackLang.HolProg 64 :=
.seq RemovedBody147_476 RemovedBody147_481

def RemovedBody147_483 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def RemovedBody147_484 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody147_485 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 147 15

def RemovedBody147_486 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody147_487 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody147_488 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody147_489 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody147_490 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def RemovedBody147_491 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def RemovedBody147_492 : StackLang.HolProg 64 :=
.seq RemovedBody147_490 RemovedBody147_491

def RemovedBody147_493 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def RemovedBody147_494 : StackLang.HolProg 64 :=
.seq RemovedBody147_492 RemovedBody147_493

def RemovedBody147_495 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody147_496 : StackLang.HolProg 64 :=
.seq RemovedBody147_494 RemovedBody147_495

def RemovedBody147_497 : StackLang.HolProg 64 :=
.seq RemovedBody147_489 RemovedBody147_496

def RemovedBody147_498 : StackLang.HolProg 64 :=
.seq RemovedBody147_488 RemovedBody147_497

def RemovedBody147_499 : StackLang.HolProg 64 :=
.seq RemovedBody147_487 RemovedBody147_498

def RemovedBody147_500 : StackLang.HolProg 64 :=
.seq RemovedBody147_486 RemovedBody147_499

def RemovedBody147_501 : StackLang.HolProg 64 :=
.seq RemovedBody147_485 RemovedBody147_500

def RemovedBody147_502 : StackLang.HolProg 64 :=
.seq RemovedBody147_484 RemovedBody147_501

def RemovedBody147_503 : StackLang.HolProg 64 :=
.seq RemovedBody147_483 RemovedBody147_502

def RemovedBody147_504 : StackLang.HolProg 64 :=
.seq RemovedBody147_482 RemovedBody147_503

def RemovedBody147_505 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody147_506 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody147_507 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody147_508 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody147_509 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody147_510 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody147_511 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 2
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 40#64))

def RemovedBody147_512 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 32#64))

def RemovedBody147_513 : StackLang.HolProg 64 :=
.seq RemovedBody147_511 RemovedBody147_512

def RemovedBody147_514 : StackLang.HolProg 64 :=
.seq RemovedBody147_510 RemovedBody147_513

def RemovedBody147_515 : StackLang.HolProg 64 :=
.seq RemovedBody147_509 RemovedBody147_514

def RemovedBody147_516 : StackLang.HolProg 64 :=
.seq RemovedBody147_508 RemovedBody147_515

def RemovedBody147_517 : StackLang.HolProg 64 :=
.seq RemovedBody147_507 RemovedBody147_516

def RemovedBody147_518 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 2
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 40#64))

def RemovedBody147_519 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 32#64))

def RemovedBody147_520 : StackLang.HolProg 64 :=
.seq RemovedBody147_518 RemovedBody147_519

def RemovedBody147_521 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def RemovedBody147_522 : StackLang.HolProg 64 :=
.seq RemovedBody147_520 RemovedBody147_521

def RemovedBody147_523 : StackLang.HolProg 64 :=
.call (some (RemovedBody147_517, 0, 147, 14)) (Sum.inl 89) (some (RemovedBody147_522, 147, 15))

def RemovedBody147_524 : StackLang.HolProg 64 :=
.seq RemovedBody147_506 RemovedBody147_523

def RemovedBody147_525 : StackLang.HolProg 64 :=
.seq RemovedBody147_505 RemovedBody147_524

def RemovedBody147_526 : StackLang.HolProg 64 :=
.seq RemovedBody147_504 RemovedBody147_525

def RemovedBody147_527 : StackLang.HolProg 64 :=
.seq RemovedBody147_475 RemovedBody147_526

def RemovedBody147_528 : StackLang.HolProg 64 :=
.seq RemovedBody147_472 RemovedBody147_527

def RemovedBody147_529 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody147_530 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody147_531 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 1 0
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody147_532 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody147_533 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody147_534 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 123#64)

def RemovedBody147_535 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody147_536 : StackLang.HolProg 64 :=
.seq RemovedBody147_534 RemovedBody147_535

def RemovedBody147_537 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody147_538 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 2#64)

def RemovedBody147_539 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 1

def RemovedBody147_540 : StackLang.HolProg 64 :=
.seq RemovedBody147_538 RemovedBody147_539

def RemovedBody147_541 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody147_542 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) RemovedBody147_540 RemovedBody147_541

def RemovedBody147_543 : StackLang.HolProg 64 :=
.seq RemovedBody147_537 RemovedBody147_542

def RemovedBody147_544 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def RemovedBody147_545 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody147_546 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 147 17

def RemovedBody147_547 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody147_548 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody147_549 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody147_550 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody147_551 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def RemovedBody147_552 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def RemovedBody147_553 : StackLang.HolProg 64 :=
.seq RemovedBody147_551 RemovedBody147_552

def RemovedBody147_554 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def RemovedBody147_555 : StackLang.HolProg 64 :=
.seq RemovedBody147_553 RemovedBody147_554

def RemovedBody147_556 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody147_557 : StackLang.HolProg 64 :=
.seq RemovedBody147_555 RemovedBody147_556

def RemovedBody147_558 : StackLang.HolProg 64 :=
.seq RemovedBody147_550 RemovedBody147_557

def RemovedBody147_559 : StackLang.HolProg 64 :=
.seq RemovedBody147_549 RemovedBody147_558

def RemovedBody147_560 : StackLang.HolProg 64 :=
.seq RemovedBody147_548 RemovedBody147_559

def RemovedBody147_561 : StackLang.HolProg 64 :=
.seq RemovedBody147_547 RemovedBody147_560

def RemovedBody147_562 : StackLang.HolProg 64 :=
.seq RemovedBody147_546 RemovedBody147_561

def RemovedBody147_563 : StackLang.HolProg 64 :=
.seq RemovedBody147_545 RemovedBody147_562

def RemovedBody147_564 : StackLang.HolProg 64 :=
.seq RemovedBody147_544 RemovedBody147_563

def RemovedBody147_565 : StackLang.HolProg 64 :=
.seq RemovedBody147_543 RemovedBody147_564

def RemovedBody147_566 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody147_567 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody147_568 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody147_569 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody147_570 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody147_571 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody147_572 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 48#64))

def RemovedBody147_573 : StackLang.HolProg 64 :=
.seq RemovedBody147_571 RemovedBody147_572

def RemovedBody147_574 : StackLang.HolProg 64 :=
.seq RemovedBody147_570 RemovedBody147_573

def RemovedBody147_575 : StackLang.HolProg 64 :=
.seq RemovedBody147_569 RemovedBody147_574

def RemovedBody147_576 : StackLang.HolProg 64 :=
.seq RemovedBody147_568 RemovedBody147_575

def RemovedBody147_577 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 48#64))

def RemovedBody147_578 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def RemovedBody147_579 : StackLang.HolProg 64 :=
.seq RemovedBody147_577 RemovedBody147_578

def RemovedBody147_580 : StackLang.HolProg 64 :=
.call (some (RemovedBody147_576, 0, 147, 16)) (Sum.inl 89) (some (RemovedBody147_579, 147, 17))

def RemovedBody147_581 : StackLang.HolProg 64 :=
.seq RemovedBody147_567 RemovedBody147_580

def RemovedBody147_582 : StackLang.HolProg 64 :=
.seq RemovedBody147_566 RemovedBody147_581

def RemovedBody147_583 : StackLang.HolProg 64 :=
.seq RemovedBody147_565 RemovedBody147_582

def RemovedBody147_584 : StackLang.HolProg 64 :=
.seq RemovedBody147_536 RemovedBody147_583

def RemovedBody147_585 : StackLang.HolProg 64 :=
.seq RemovedBody147_533 RemovedBody147_584

def RemovedBody147_586 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody147_587 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 0#64)

def RemovedBody147_588 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody147_589 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 56#64)))

def RemovedBody147_590 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 0

def RemovedBody147_591 : StackLang.HolProg 64 :=
.seq RemovedBody147_589 RemovedBody147_590

def RemovedBody147_592 : StackLang.HolProg 64 :=
.seq RemovedBody147_588 RemovedBody147_591

def RemovedBody147_593 : StackLang.HolProg 64 :=
.seq RemovedBody147_587 RemovedBody147_592

def RemovedBody147_594 : StackLang.HolProg 64 :=
.seq RemovedBody147_586 RemovedBody147_593

def RemovedBody147_595 : StackLang.HolProg 64 :=
.seq RemovedBody147_585 RemovedBody147_594

def RemovedBody147_596 : StackLang.HolProg 64 :=
.seq RemovedBody147_532 RemovedBody147_595

def RemovedBody147_597 : StackLang.HolProg 64 :=
.seq RemovedBody147_531 RemovedBody147_596

def RemovedBody147_598 : StackLang.HolProg 64 :=
.seq RemovedBody147_530 RemovedBody147_597

def RemovedBody147_599 : StackLang.HolProg 64 :=
.seq RemovedBody147_529 RemovedBody147_598

def RemovedBody147_600 : StackLang.HolProg 64 :=
.seq RemovedBody147_528 RemovedBody147_599

def RemovedBody147_601 : StackLang.HolProg 64 :=
.seq RemovedBody147_471 RemovedBody147_600

def RemovedBody147_602 : StackLang.HolProg 64 :=
.seq RemovedBody147_470 RemovedBody147_601

def RemovedBody147_603 : StackLang.HolProg 64 :=
.seq RemovedBody147_469 RemovedBody147_602

def RemovedBody147_604 : StackLang.HolProg 64 :=
.seq RemovedBody147_468 RemovedBody147_603

def RemovedBody147_605 : StackLang.HolProg 64 :=
.seq RemovedBody147_467 RemovedBody147_604

def RemovedBody147_606 : StackLang.HolProg 64 :=
.seq RemovedBody147_402 RemovedBody147_605

def RemovedBody147_607 : StackLang.HolProg 64 :=
.seq RemovedBody147_401 RemovedBody147_606

def RemovedBody147_608 : StackLang.HolProg 64 :=
.seq RemovedBody147_400 RemovedBody147_607

def RemovedBody147_609 : StackLang.HolProg 64 :=
.seq RemovedBody147_399 RemovedBody147_608

def RemovedBody147_610 : StackLang.HolProg 64 :=
.seq RemovedBody147_398 RemovedBody147_609

def RemovedBody147_611 : StackLang.HolProg 64 :=
.seq RemovedBody147_341 RemovedBody147_610

def RemovedBody147_612 : StackLang.HolProg 64 :=
.seq RemovedBody147_336 RemovedBody147_611

def RemovedBody147_613 : StackLang.HolProg 64 :=
.seq RemovedBody147_335 RemovedBody147_612

def RemovedBody147_614 : StackLang.HolProg 64 :=
.seq RemovedBody147_334 RemovedBody147_613

def RemovedBody147_615 : StackLang.HolProg 64 :=
.seq RemovedBody147_9 RemovedBody147_614

def RemovedBody147_616 : StackLang.HolProg 64 :=
.seq RemovedBody147_8 RemovedBody147_615

def RemovedBody147_617 : StackLang.HolProg 64 :=
.seq RemovedBody147_7 RemovedBody147_616

def RemovedBody147_618 : StackLang.HolProg 64 :=
.seq RemovedBody147_6 RemovedBody147_617

def Removed147 : Nat × StackLang.HolProg 64 := (147, RemovedBody147_618)
theorem Removed147_eq : StackRemove.progComp false riscvConfig.addrOffset (riscvConfig.regCount - (riscvConfig.avoidRegs.length + 3)) Alloc147 = Removed147 := by
  kernel_rfl
#print axioms Removed147_eq
end InitECandidate.Proofs.BackendStages
