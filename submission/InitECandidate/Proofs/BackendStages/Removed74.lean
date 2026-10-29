import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.BackendStages.Alloc74
import Flapjack.Compiler.Backend.Backend
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
namespace InitECandidate.Proofs.BackendStages
def RemovedBody74_0 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 32#64)))

def RemovedBody74_1 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 2#64)

def RemovedBody74_2 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 1

def RemovedBody74_3 : StackLang.HolProg 64 :=
.seq RemovedBody74_1 RemovedBody74_2

def RemovedBody74_4 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody74_5 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) RemovedBody74_3 RemovedBody74_4

def RemovedBody74_6 : StackLang.HolProg 64 :=
.seq RemovedBody74_0 RemovedBody74_5

def RemovedBody74_7 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody74_8 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 2
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551592#64))

def RemovedBody74_9 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsl 2 2
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 1#64)))

def RemovedBody74_10 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 3 2
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 26)))

def RemovedBody74_11 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 2
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 3 18446744073709551592#64))

def RemovedBody74_12 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody74_13 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 3
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 3 18446744073709551584#64))

def RemovedBody74_14 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 4 2
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 3)))

def RemovedBody74_15 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 3 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def RemovedBody74_16 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody74_17 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 7#64)

def RemovedBody74_18 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 24#64))

def RemovedBody74_19 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 3
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody74_20 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 2
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody74_21 : StackLang.HolProg 64 :=
.seq RemovedBody74_19 RemovedBody74_20

def RemovedBody74_22 : StackLang.HolProg 64 :=
.seq RemovedBody74_18 RemovedBody74_21

def RemovedBody74_23 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody74_24 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 31#64)

def RemovedBody74_25 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody74_26 : StackLang.HolProg 64 :=
.seq RemovedBody74_24 RemovedBody74_25

def RemovedBody74_27 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody74_28 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 2#64)

def RemovedBody74_29 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 1

def RemovedBody74_30 : StackLang.HolProg 64 :=
.seq RemovedBody74_28 RemovedBody74_29

def RemovedBody74_31 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody74_32 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) RemovedBody74_30 RemovedBody74_31

def RemovedBody74_33 : StackLang.HolProg 64 :=
.seq RemovedBody74_27 RemovedBody74_32

def RemovedBody74_34 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def RemovedBody74_35 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody74_36 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 74 3

def RemovedBody74_37 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody74_38 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody74_39 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody74_40 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody74_41 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def RemovedBody74_42 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def RemovedBody74_43 : StackLang.HolProg 64 :=
.seq RemovedBody74_41 RemovedBody74_42

def RemovedBody74_44 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def RemovedBody74_45 : StackLang.HolProg 64 :=
.seq RemovedBody74_43 RemovedBody74_44

def RemovedBody74_46 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody74_47 : StackLang.HolProg 64 :=
.seq RemovedBody74_45 RemovedBody74_46

def RemovedBody74_48 : StackLang.HolProg 64 :=
.seq RemovedBody74_40 RemovedBody74_47

def RemovedBody74_49 : StackLang.HolProg 64 :=
.seq RemovedBody74_39 RemovedBody74_48

def RemovedBody74_50 : StackLang.HolProg 64 :=
.seq RemovedBody74_38 RemovedBody74_49

def RemovedBody74_51 : StackLang.HolProg 64 :=
.seq RemovedBody74_37 RemovedBody74_50

def RemovedBody74_52 : StackLang.HolProg 64 :=
.seq RemovedBody74_36 RemovedBody74_51

def RemovedBody74_53 : StackLang.HolProg 64 :=
.seq RemovedBody74_35 RemovedBody74_52

def RemovedBody74_54 : StackLang.HolProg 64 :=
.seq RemovedBody74_34 RemovedBody74_53

def RemovedBody74_55 : StackLang.HolProg 64 :=
.seq RemovedBody74_33 RemovedBody74_54

def RemovedBody74_56 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody74_57 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody74_58 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody74_59 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody74_60 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody74_61 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody74_62 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 3
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody74_63 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 2
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody74_64 : StackLang.HolProg 64 :=
.seq RemovedBody74_62 RemovedBody74_63

def RemovedBody74_65 : StackLang.HolProg 64 :=
.seq RemovedBody74_61 RemovedBody74_64

def RemovedBody74_66 : StackLang.HolProg 64 :=
.seq RemovedBody74_60 RemovedBody74_65

def RemovedBody74_67 : StackLang.HolProg 64 :=
.seq RemovedBody74_59 RemovedBody74_66

def RemovedBody74_68 : StackLang.HolProg 64 :=
.seq RemovedBody74_58 RemovedBody74_67

def RemovedBody74_69 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 3
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody74_70 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 2
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody74_71 : StackLang.HolProg 64 :=
.seq RemovedBody74_69 RemovedBody74_70

def RemovedBody74_72 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def RemovedBody74_73 : StackLang.HolProg 64 :=
.seq RemovedBody74_71 RemovedBody74_72

def RemovedBody74_74 : StackLang.HolProg 64 :=
.call (some (RemovedBody74_68, 0, 74, 2)) (Sum.inl 66) (some (RemovedBody74_73, 74, 3))

def RemovedBody74_75 : StackLang.HolProg 64 :=
.seq RemovedBody74_57 RemovedBody74_74

def RemovedBody74_76 : StackLang.HolProg 64 :=
.seq RemovedBody74_56 RemovedBody74_75

def RemovedBody74_77 : StackLang.HolProg 64 :=
.seq RemovedBody74_55 RemovedBody74_76

def RemovedBody74_78 : StackLang.HolProg 64 :=
.seq RemovedBody74_26 RemovedBody74_77

def RemovedBody74_79 : StackLang.HolProg 64 :=
.seq RemovedBody74_23 RemovedBody74_78

def RemovedBody74_80 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody74_81 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody74_82 : StackLang.HolProg 64 :=
.seq RemovedBody74_80 RemovedBody74_81

def RemovedBody74_83 : StackLang.HolProg 64 :=
.seq RemovedBody74_79 RemovedBody74_82

def RemovedBody74_84 : StackLang.HolProg 64 :=
.seq RemovedBody74_22 RemovedBody74_83

def RemovedBody74_85 : StackLang.HolProg 64 :=
.seq RemovedBody74_17 RemovedBody74_84

def RemovedBody74_86 : StackLang.HolProg 64 :=
.seq RemovedBody74_16 RemovedBody74_85

def RemovedBody74_87 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody74_88 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 24#64))

def RemovedBody74_89 : StackLang.HolProg 64 :=
.seq RemovedBody74_87 RemovedBody74_88

def RemovedBody74_90 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 4 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 3) RemovedBody74_86 RemovedBody74_89

def RemovedBody74_91 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody74_92 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody74_93 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 0 2
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 3)))

def RemovedBody74_94 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.and 2 0
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 18446744073709551608#64)))

def RemovedBody74_95 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody74_96 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551592#64))

def RemovedBody74_97 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsl 0 0
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 1#64)))

def RemovedBody74_98 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 0 0
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 26)))

def RemovedBody74_99 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 0 18446744073709551584#64))

def RemovedBody74_100 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody74_101 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 7#64)

def RemovedBody74_102 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 2
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody74_103 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody74_104 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 32#64)

def RemovedBody74_105 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody74_106 : StackLang.HolProg 64 :=
.seq RemovedBody74_104 RemovedBody74_105

def RemovedBody74_107 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody74_108 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 2#64)

def RemovedBody74_109 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 1

def RemovedBody74_110 : StackLang.HolProg 64 :=
.seq RemovedBody74_108 RemovedBody74_109

def RemovedBody74_111 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody74_112 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) RemovedBody74_110 RemovedBody74_111

def RemovedBody74_113 : StackLang.HolProg 64 :=
.seq RemovedBody74_107 RemovedBody74_112

def RemovedBody74_114 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def RemovedBody74_115 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody74_116 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 74 5

def RemovedBody74_117 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody74_118 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody74_119 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody74_120 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody74_121 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def RemovedBody74_122 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def RemovedBody74_123 : StackLang.HolProg 64 :=
.seq RemovedBody74_121 RemovedBody74_122

def RemovedBody74_124 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def RemovedBody74_125 : StackLang.HolProg 64 :=
.seq RemovedBody74_123 RemovedBody74_124

def RemovedBody74_126 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody74_127 : StackLang.HolProg 64 :=
.seq RemovedBody74_125 RemovedBody74_126

def RemovedBody74_128 : StackLang.HolProg 64 :=
.seq RemovedBody74_120 RemovedBody74_127

def RemovedBody74_129 : StackLang.HolProg 64 :=
.seq RemovedBody74_119 RemovedBody74_128

def RemovedBody74_130 : StackLang.HolProg 64 :=
.seq RemovedBody74_118 RemovedBody74_129

def RemovedBody74_131 : StackLang.HolProg 64 :=
.seq RemovedBody74_117 RemovedBody74_130

def RemovedBody74_132 : StackLang.HolProg 64 :=
.seq RemovedBody74_116 RemovedBody74_131

def RemovedBody74_133 : StackLang.HolProg 64 :=
.seq RemovedBody74_115 RemovedBody74_132

def RemovedBody74_134 : StackLang.HolProg 64 :=
.seq RemovedBody74_114 RemovedBody74_133

def RemovedBody74_135 : StackLang.HolProg 64 :=
.seq RemovedBody74_113 RemovedBody74_134

def RemovedBody74_136 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody74_137 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody74_138 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody74_139 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody74_140 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody74_141 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody74_142 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 24#64))

def RemovedBody74_143 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 2
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody74_144 : StackLang.HolProg 64 :=
.seq RemovedBody74_142 RemovedBody74_143

def RemovedBody74_145 : StackLang.HolProg 64 :=
.seq RemovedBody74_141 RemovedBody74_144

def RemovedBody74_146 : StackLang.HolProg 64 :=
.seq RemovedBody74_140 RemovedBody74_145

def RemovedBody74_147 : StackLang.HolProg 64 :=
.seq RemovedBody74_139 RemovedBody74_146

def RemovedBody74_148 : StackLang.HolProg 64 :=
.seq RemovedBody74_138 RemovedBody74_147

def RemovedBody74_149 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 24#64))

def RemovedBody74_150 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 2
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody74_151 : StackLang.HolProg 64 :=
.seq RemovedBody74_149 RemovedBody74_150

def RemovedBody74_152 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def RemovedBody74_153 : StackLang.HolProg 64 :=
.seq RemovedBody74_151 RemovedBody74_152

def RemovedBody74_154 : StackLang.HolProg 64 :=
.call (some (RemovedBody74_148, 0, 74, 4)) (Sum.inl 66) (some (RemovedBody74_153, 74, 5))

def RemovedBody74_155 : StackLang.HolProg 64 :=
.seq RemovedBody74_137 RemovedBody74_154

def RemovedBody74_156 : StackLang.HolProg 64 :=
.seq RemovedBody74_136 RemovedBody74_155

def RemovedBody74_157 : StackLang.HolProg 64 :=
.seq RemovedBody74_135 RemovedBody74_156

def RemovedBody74_158 : StackLang.HolProg 64 :=
.seq RemovedBody74_106 RemovedBody74_157

def RemovedBody74_159 : StackLang.HolProg 64 :=
.seq RemovedBody74_103 RemovedBody74_158

def RemovedBody74_160 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody74_161 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody74_162 : StackLang.HolProg 64 :=
.seq RemovedBody74_160 RemovedBody74_161

def RemovedBody74_163 : StackLang.HolProg 64 :=
.seq RemovedBody74_159 RemovedBody74_162

def RemovedBody74_164 : StackLang.HolProg 64 :=
.seq RemovedBody74_102 RemovedBody74_163

def RemovedBody74_165 : StackLang.HolProg 64 :=
.seq RemovedBody74_101 RemovedBody74_164

def RemovedBody74_166 : StackLang.HolProg 64 :=
.seq RemovedBody74_100 RemovedBody74_165

def RemovedBody74_167 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody74_168 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 24#64))

def RemovedBody74_169 : StackLang.HolProg 64 :=
.seq RemovedBody74_167 RemovedBody74_168

def RemovedBody74_170 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 2 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 0) RemovedBody74_166 RemovedBody74_169

def RemovedBody74_171 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody74_172 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551592#64))

def RemovedBody74_173 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsl 1 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 1#64)))

def RemovedBody74_174 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 1 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 26)))

def RemovedBody74_175 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 1 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 18446744073709551592#64)))

def RemovedBody74_176 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody74_177 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 2
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 1 0#64))

def RemovedBody74_178 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 1 2
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 2)))

def RemovedBody74_179 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 32#64)))

def RemovedBody74_180 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 0

def RemovedBody74_181 : StackLang.HolProg 64 :=
.seq RemovedBody74_179 RemovedBody74_180

def RemovedBody74_182 : StackLang.HolProg 64 :=
.seq RemovedBody74_178 RemovedBody74_181

def RemovedBody74_183 : StackLang.HolProg 64 :=
.seq RemovedBody74_177 RemovedBody74_182

def RemovedBody74_184 : StackLang.HolProg 64 :=
.seq RemovedBody74_176 RemovedBody74_183

def RemovedBody74_185 : StackLang.HolProg 64 :=
.seq RemovedBody74_175 RemovedBody74_184

def RemovedBody74_186 : StackLang.HolProg 64 :=
.seq RemovedBody74_174 RemovedBody74_185

def RemovedBody74_187 : StackLang.HolProg 64 :=
.seq RemovedBody74_173 RemovedBody74_186

def RemovedBody74_188 : StackLang.HolProg 64 :=
.seq RemovedBody74_172 RemovedBody74_187

def RemovedBody74_189 : StackLang.HolProg 64 :=
.seq RemovedBody74_171 RemovedBody74_188

def RemovedBody74_190 : StackLang.HolProg 64 :=
.seq RemovedBody74_170 RemovedBody74_189

def RemovedBody74_191 : StackLang.HolProg 64 :=
.seq RemovedBody74_99 RemovedBody74_190

def RemovedBody74_192 : StackLang.HolProg 64 :=
.seq RemovedBody74_98 RemovedBody74_191

def RemovedBody74_193 : StackLang.HolProg 64 :=
.seq RemovedBody74_97 RemovedBody74_192

def RemovedBody74_194 : StackLang.HolProg 64 :=
.seq RemovedBody74_96 RemovedBody74_193

def RemovedBody74_195 : StackLang.HolProg 64 :=
.seq RemovedBody74_95 RemovedBody74_194

def RemovedBody74_196 : StackLang.HolProg 64 :=
.seq RemovedBody74_94 RemovedBody74_195

def RemovedBody74_197 : StackLang.HolProg 64 :=
.seq RemovedBody74_93 RemovedBody74_196

def RemovedBody74_198 : StackLang.HolProg 64 :=
.seq RemovedBody74_92 RemovedBody74_197

def RemovedBody74_199 : StackLang.HolProg 64 :=
.seq RemovedBody74_91 RemovedBody74_198

def RemovedBody74_200 : StackLang.HolProg 64 :=
.seq RemovedBody74_90 RemovedBody74_199

def RemovedBody74_201 : StackLang.HolProg 64 :=
.seq RemovedBody74_15 RemovedBody74_200

def RemovedBody74_202 : StackLang.HolProg 64 :=
.seq RemovedBody74_14 RemovedBody74_201

def RemovedBody74_203 : StackLang.HolProg 64 :=
.seq RemovedBody74_13 RemovedBody74_202

def RemovedBody74_204 : StackLang.HolProg 64 :=
.seq RemovedBody74_12 RemovedBody74_203

def RemovedBody74_205 : StackLang.HolProg 64 :=
.seq RemovedBody74_11 RemovedBody74_204

def RemovedBody74_206 : StackLang.HolProg 64 :=
.seq RemovedBody74_10 RemovedBody74_205

def RemovedBody74_207 : StackLang.HolProg 64 :=
.seq RemovedBody74_9 RemovedBody74_206

def RemovedBody74_208 : StackLang.HolProg 64 :=
.seq RemovedBody74_8 RemovedBody74_207

def RemovedBody74_209 : StackLang.HolProg 64 :=
.seq RemovedBody74_7 RemovedBody74_208

def RemovedBody74_210 : StackLang.HolProg 64 :=
.seq RemovedBody74_6 RemovedBody74_209

def Removed74 : Nat × StackLang.HolProg 64 := (74, RemovedBody74_210)
theorem Removed74_eq : StackRemove.progComp false riscvConfig.addrOffset (riscvConfig.regCount - (riscvConfig.avoidRegs.length + 3)) Alloc74 = Removed74 := by
  kernel_rfl
#print axioms Removed74_eq
end InitECandidate.Proofs.BackendStages
