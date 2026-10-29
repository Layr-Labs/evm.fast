import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.BackendStages.Alloc68
import Flapjack.Compiler.Backend.Backend
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
namespace InitECandidate.Proofs.BackendStages
def RemovedBody68_0 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 32#64)))

def RemovedBody68_1 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 2#64)

def RemovedBody68_2 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 1

def RemovedBody68_3 : StackLang.HolProg 64 :=
.seq RemovedBody68_1 RemovedBody68_2

def RemovedBody68_4 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody68_5 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) RemovedBody68_3 RemovedBody68_4

def RemovedBody68_6 : StackLang.HolProg 64 :=
.seq RemovedBody68_0 RemovedBody68_5

def RemovedBody68_7 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody68_8 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 2
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551592#64))

def RemovedBody68_9 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsl 2 2
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 1#64)))

def RemovedBody68_10 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 2 2
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 26)))

def RemovedBody68_11 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 2
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 2 18446744073709551608#64))

def RemovedBody68_12 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 3 2952790016#64)

def RemovedBody68_13 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody68_14 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 4 3
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 2)))

def RemovedBody68_15 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 3 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def RemovedBody68_16 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody68_17 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 1#64)

def RemovedBody68_18 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 24#64))

def RemovedBody68_19 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 3
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody68_20 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 2
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody68_21 : StackLang.HolProg 64 :=
.seq RemovedBody68_19 RemovedBody68_20

def RemovedBody68_22 : StackLang.HolProg 64 :=
.seq RemovedBody68_18 RemovedBody68_21

def RemovedBody68_23 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody68_24 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 27#64)

def RemovedBody68_25 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody68_26 : StackLang.HolProg 64 :=
.seq RemovedBody68_24 RemovedBody68_25

def RemovedBody68_27 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody68_28 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 2#64)

def RemovedBody68_29 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 1

def RemovedBody68_30 : StackLang.HolProg 64 :=
.seq RemovedBody68_28 RemovedBody68_29

def RemovedBody68_31 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody68_32 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) RemovedBody68_30 RemovedBody68_31

def RemovedBody68_33 : StackLang.HolProg 64 :=
.seq RemovedBody68_27 RemovedBody68_32

def RemovedBody68_34 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def RemovedBody68_35 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody68_36 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 68 3

def RemovedBody68_37 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody68_38 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody68_39 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody68_40 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody68_41 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def RemovedBody68_42 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def RemovedBody68_43 : StackLang.HolProg 64 :=
.seq RemovedBody68_41 RemovedBody68_42

def RemovedBody68_44 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def RemovedBody68_45 : StackLang.HolProg 64 :=
.seq RemovedBody68_43 RemovedBody68_44

def RemovedBody68_46 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody68_47 : StackLang.HolProg 64 :=
.seq RemovedBody68_45 RemovedBody68_46

def RemovedBody68_48 : StackLang.HolProg 64 :=
.seq RemovedBody68_40 RemovedBody68_47

def RemovedBody68_49 : StackLang.HolProg 64 :=
.seq RemovedBody68_39 RemovedBody68_48

def RemovedBody68_50 : StackLang.HolProg 64 :=
.seq RemovedBody68_38 RemovedBody68_49

def RemovedBody68_51 : StackLang.HolProg 64 :=
.seq RemovedBody68_37 RemovedBody68_50

def RemovedBody68_52 : StackLang.HolProg 64 :=
.seq RemovedBody68_36 RemovedBody68_51

def RemovedBody68_53 : StackLang.HolProg 64 :=
.seq RemovedBody68_35 RemovedBody68_52

def RemovedBody68_54 : StackLang.HolProg 64 :=
.seq RemovedBody68_34 RemovedBody68_53

def RemovedBody68_55 : StackLang.HolProg 64 :=
.seq RemovedBody68_33 RemovedBody68_54

def RemovedBody68_56 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody68_57 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody68_58 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody68_59 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody68_60 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody68_61 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody68_62 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 3
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody68_63 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 2
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody68_64 : StackLang.HolProg 64 :=
.seq RemovedBody68_62 RemovedBody68_63

def RemovedBody68_65 : StackLang.HolProg 64 :=
.seq RemovedBody68_61 RemovedBody68_64

def RemovedBody68_66 : StackLang.HolProg 64 :=
.seq RemovedBody68_60 RemovedBody68_65

def RemovedBody68_67 : StackLang.HolProg 64 :=
.seq RemovedBody68_59 RemovedBody68_66

def RemovedBody68_68 : StackLang.HolProg 64 :=
.seq RemovedBody68_58 RemovedBody68_67

def RemovedBody68_69 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 3
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody68_70 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 2
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody68_71 : StackLang.HolProg 64 :=
.seq RemovedBody68_69 RemovedBody68_70

def RemovedBody68_72 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def RemovedBody68_73 : StackLang.HolProg 64 :=
.seq RemovedBody68_71 RemovedBody68_72

def RemovedBody68_74 : StackLang.HolProg 64 :=
.call (some (RemovedBody68_68, 0, 68, 2)) (Sum.inl 66) (some (RemovedBody68_73, 68, 3))

def RemovedBody68_75 : StackLang.HolProg 64 :=
.seq RemovedBody68_57 RemovedBody68_74

def RemovedBody68_76 : StackLang.HolProg 64 :=
.seq RemovedBody68_56 RemovedBody68_75

def RemovedBody68_77 : StackLang.HolProg 64 :=
.seq RemovedBody68_55 RemovedBody68_76

def RemovedBody68_78 : StackLang.HolProg 64 :=
.seq RemovedBody68_26 RemovedBody68_77

def RemovedBody68_79 : StackLang.HolProg 64 :=
.seq RemovedBody68_23 RemovedBody68_78

def RemovedBody68_80 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody68_81 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody68_82 : StackLang.HolProg 64 :=
.seq RemovedBody68_80 RemovedBody68_81

def RemovedBody68_83 : StackLang.HolProg 64 :=
.seq RemovedBody68_79 RemovedBody68_82

def RemovedBody68_84 : StackLang.HolProg 64 :=
.seq RemovedBody68_22 RemovedBody68_83

def RemovedBody68_85 : StackLang.HolProg 64 :=
.seq RemovedBody68_17 RemovedBody68_84

def RemovedBody68_86 : StackLang.HolProg 64 :=
.seq RemovedBody68_16 RemovedBody68_85

def RemovedBody68_87 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody68_88 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 24#64))

def RemovedBody68_89 : StackLang.HolProg 64 :=
.seq RemovedBody68_87 RemovedBody68_88

def RemovedBody68_90 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 4 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 3) RemovedBody68_86 RemovedBody68_89

def RemovedBody68_91 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody68_92 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody68_93 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 0 3
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 2)))

def RemovedBody68_94 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 0 0
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 7#64)))

def RemovedBody68_95 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.and 3 0
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 18446744073709551608#64)))

def RemovedBody68_96 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 0 2952790016#64)

def RemovedBody68_97 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody68_98 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody68_99 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 1#64)

def RemovedBody68_100 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 3
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody68_101 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 2
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody68_102 : StackLang.HolProg 64 :=
.seq RemovedBody68_100 RemovedBody68_101

def RemovedBody68_103 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody68_104 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 28#64)

def RemovedBody68_105 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody68_106 : StackLang.HolProg 64 :=
.seq RemovedBody68_104 RemovedBody68_105

def RemovedBody68_107 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody68_108 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 2#64)

def RemovedBody68_109 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 1

def RemovedBody68_110 : StackLang.HolProg 64 :=
.seq RemovedBody68_108 RemovedBody68_109

def RemovedBody68_111 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody68_112 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) RemovedBody68_110 RemovedBody68_111

def RemovedBody68_113 : StackLang.HolProg 64 :=
.seq RemovedBody68_107 RemovedBody68_112

def RemovedBody68_114 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def RemovedBody68_115 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody68_116 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 68 5

def RemovedBody68_117 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody68_118 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody68_119 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody68_120 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody68_121 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def RemovedBody68_122 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def RemovedBody68_123 : StackLang.HolProg 64 :=
.seq RemovedBody68_121 RemovedBody68_122

def RemovedBody68_124 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def RemovedBody68_125 : StackLang.HolProg 64 :=
.seq RemovedBody68_123 RemovedBody68_124

def RemovedBody68_126 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody68_127 : StackLang.HolProg 64 :=
.seq RemovedBody68_125 RemovedBody68_126

def RemovedBody68_128 : StackLang.HolProg 64 :=
.seq RemovedBody68_120 RemovedBody68_127

def RemovedBody68_129 : StackLang.HolProg 64 :=
.seq RemovedBody68_119 RemovedBody68_128

def RemovedBody68_130 : StackLang.HolProg 64 :=
.seq RemovedBody68_118 RemovedBody68_129

def RemovedBody68_131 : StackLang.HolProg 64 :=
.seq RemovedBody68_117 RemovedBody68_130

def RemovedBody68_132 : StackLang.HolProg 64 :=
.seq RemovedBody68_116 RemovedBody68_131

def RemovedBody68_133 : StackLang.HolProg 64 :=
.seq RemovedBody68_115 RemovedBody68_132

def RemovedBody68_134 : StackLang.HolProg 64 :=
.seq RemovedBody68_114 RemovedBody68_133

def RemovedBody68_135 : StackLang.HolProg 64 :=
.seq RemovedBody68_113 RemovedBody68_134

def RemovedBody68_136 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody68_137 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody68_138 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody68_139 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody68_140 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody68_141 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody68_142 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 24#64))

def RemovedBody68_143 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 3
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody68_144 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 2
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody68_145 : StackLang.HolProg 64 :=
.seq RemovedBody68_143 RemovedBody68_144

def RemovedBody68_146 : StackLang.HolProg 64 :=
.seq RemovedBody68_142 RemovedBody68_145

def RemovedBody68_147 : StackLang.HolProg 64 :=
.seq RemovedBody68_141 RemovedBody68_146

def RemovedBody68_148 : StackLang.HolProg 64 :=
.seq RemovedBody68_140 RemovedBody68_147

def RemovedBody68_149 : StackLang.HolProg 64 :=
.seq RemovedBody68_139 RemovedBody68_148

def RemovedBody68_150 : StackLang.HolProg 64 :=
.seq RemovedBody68_138 RemovedBody68_149

def RemovedBody68_151 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 24#64))

def RemovedBody68_152 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 3
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody68_153 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 2
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody68_154 : StackLang.HolProg 64 :=
.seq RemovedBody68_152 RemovedBody68_153

def RemovedBody68_155 : StackLang.HolProg 64 :=
.seq RemovedBody68_151 RemovedBody68_154

def RemovedBody68_156 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def RemovedBody68_157 : StackLang.HolProg 64 :=
.seq RemovedBody68_155 RemovedBody68_156

def RemovedBody68_158 : StackLang.HolProg 64 :=
.call (some (RemovedBody68_150, 0, 68, 4)) (Sum.inl 66) (some (RemovedBody68_157, 68, 5))

def RemovedBody68_159 : StackLang.HolProg 64 :=
.seq RemovedBody68_137 RemovedBody68_158

def RemovedBody68_160 : StackLang.HolProg 64 :=
.seq RemovedBody68_136 RemovedBody68_159

def RemovedBody68_161 : StackLang.HolProg 64 :=
.seq RemovedBody68_135 RemovedBody68_160

def RemovedBody68_162 : StackLang.HolProg 64 :=
.seq RemovedBody68_106 RemovedBody68_161

def RemovedBody68_163 : StackLang.HolProg 64 :=
.seq RemovedBody68_103 RemovedBody68_162

def RemovedBody68_164 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody68_165 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody68_166 : StackLang.HolProg 64 :=
.seq RemovedBody68_164 RemovedBody68_165

def RemovedBody68_167 : StackLang.HolProg 64 :=
.seq RemovedBody68_163 RemovedBody68_166

def RemovedBody68_168 : StackLang.HolProg 64 :=
.seq RemovedBody68_102 RemovedBody68_167

def RemovedBody68_169 : StackLang.HolProg 64 :=
.seq RemovedBody68_99 RemovedBody68_168

def RemovedBody68_170 : StackLang.HolProg 64 :=
.seq RemovedBody68_98 RemovedBody68_169

def RemovedBody68_171 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody68_172 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 24#64))

def RemovedBody68_173 : StackLang.HolProg 64 :=
.seq RemovedBody68_171 RemovedBody68_172

def RemovedBody68_174 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 0 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 3) RemovedBody68_170 RemovedBody68_173

def RemovedBody68_175 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody68_176 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551592#64))

def RemovedBody68_177 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsl 1 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 1#64)))

def RemovedBody68_178 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 1 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 26)))

def RemovedBody68_179 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 1 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 18446744073709551608#64)))

def RemovedBody68_180 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody68_181 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 3
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 1 0#64))

def RemovedBody68_182 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 1 2
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 2)))

def RemovedBody68_183 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 32#64)))

def RemovedBody68_184 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 0

def RemovedBody68_185 : StackLang.HolProg 64 :=
.seq RemovedBody68_183 RemovedBody68_184

def RemovedBody68_186 : StackLang.HolProg 64 :=
.seq RemovedBody68_182 RemovedBody68_185

def RemovedBody68_187 : StackLang.HolProg 64 :=
.seq RemovedBody68_181 RemovedBody68_186

def RemovedBody68_188 : StackLang.HolProg 64 :=
.seq RemovedBody68_180 RemovedBody68_187

def RemovedBody68_189 : StackLang.HolProg 64 :=
.seq RemovedBody68_179 RemovedBody68_188

def RemovedBody68_190 : StackLang.HolProg 64 :=
.seq RemovedBody68_178 RemovedBody68_189

def RemovedBody68_191 : StackLang.HolProg 64 :=
.seq RemovedBody68_177 RemovedBody68_190

def RemovedBody68_192 : StackLang.HolProg 64 :=
.seq RemovedBody68_176 RemovedBody68_191

def RemovedBody68_193 : StackLang.HolProg 64 :=
.seq RemovedBody68_175 RemovedBody68_192

def RemovedBody68_194 : StackLang.HolProg 64 :=
.seq RemovedBody68_174 RemovedBody68_193

def RemovedBody68_195 : StackLang.HolProg 64 :=
.seq RemovedBody68_97 RemovedBody68_194

def RemovedBody68_196 : StackLang.HolProg 64 :=
.seq RemovedBody68_96 RemovedBody68_195

def RemovedBody68_197 : StackLang.HolProg 64 :=
.seq RemovedBody68_95 RemovedBody68_196

def RemovedBody68_198 : StackLang.HolProg 64 :=
.seq RemovedBody68_94 RemovedBody68_197

def RemovedBody68_199 : StackLang.HolProg 64 :=
.seq RemovedBody68_93 RemovedBody68_198

def RemovedBody68_200 : StackLang.HolProg 64 :=
.seq RemovedBody68_92 RemovedBody68_199

def RemovedBody68_201 : StackLang.HolProg 64 :=
.seq RemovedBody68_91 RemovedBody68_200

def RemovedBody68_202 : StackLang.HolProg 64 :=
.seq RemovedBody68_90 RemovedBody68_201

def RemovedBody68_203 : StackLang.HolProg 64 :=
.seq RemovedBody68_15 RemovedBody68_202

def RemovedBody68_204 : StackLang.HolProg 64 :=
.seq RemovedBody68_14 RemovedBody68_203

def RemovedBody68_205 : StackLang.HolProg 64 :=
.seq RemovedBody68_13 RemovedBody68_204

def RemovedBody68_206 : StackLang.HolProg 64 :=
.seq RemovedBody68_12 RemovedBody68_205

def RemovedBody68_207 : StackLang.HolProg 64 :=
.seq RemovedBody68_11 RemovedBody68_206

def RemovedBody68_208 : StackLang.HolProg 64 :=
.seq RemovedBody68_10 RemovedBody68_207

def RemovedBody68_209 : StackLang.HolProg 64 :=
.seq RemovedBody68_9 RemovedBody68_208

def RemovedBody68_210 : StackLang.HolProg 64 :=
.seq RemovedBody68_8 RemovedBody68_209

def RemovedBody68_211 : StackLang.HolProg 64 :=
.seq RemovedBody68_7 RemovedBody68_210

def RemovedBody68_212 : StackLang.HolProg 64 :=
.seq RemovedBody68_6 RemovedBody68_211

def Removed68 : Nat × StackLang.HolProg 64 := (68, RemovedBody68_212)
theorem Removed68_eq : StackRemove.progComp false riscvConfig.addrOffset (riscvConfig.regCount - (riscvConfig.avoidRegs.length + 3)) Alloc68 = Removed68 := by
  kernel_rfl
#print axioms Removed68_eq
end InitECandidate.Proofs.BackendStages
