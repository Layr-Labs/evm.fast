import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.BackendStages.Alloc330
import Flapjack.Compiler.Backend.Backend
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
namespace InitECandidate.Proofs.BackendStages
def RemovedBody330_0 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 40#64)))

def RemovedBody330_1 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 2#64)

def RemovedBody330_2 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 1

def RemovedBody330_3 : StackLang.HolProg 64 :=
.seq RemovedBody330_1 RemovedBody330_2

def RemovedBody330_4 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody330_5 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) RemovedBody330_3 RemovedBody330_4

def RemovedBody330_6 : StackLang.HolProg 64 :=
.seq RemovedBody330_0 RemovedBody330_5

def RemovedBody330_7 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 2 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def RemovedBody330_8 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 2 24#64))

def RemovedBody330_9 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody330_10 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 3 0#64)

def RemovedBody330_11 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody330_12 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody330_13 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 40#64)))

def RemovedBody330_14 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 0

def RemovedBody330_15 : StackLang.HolProg 64 :=
.seq RemovedBody330_13 RemovedBody330_14

def RemovedBody330_16 : StackLang.HolProg 64 :=
.seq RemovedBody330_12 RemovedBody330_15

def RemovedBody330_17 : StackLang.HolProg 64 :=
.seq RemovedBody330_11 RemovedBody330_16

def RemovedBody330_18 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody330_19 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.notEqual) 1 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 3) RemovedBody330_17 RemovedBody330_18

def RemovedBody330_20 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody330_21 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody330_22 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 1 2
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 2)))

def RemovedBody330_23 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 32#64))

def RemovedBody330_24 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 2
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody330_25 : StackLang.HolProg 64 :=
.seq RemovedBody330_23 RemovedBody330_24

def RemovedBody330_26 : StackLang.HolProg 64 :=
.seq RemovedBody330_22 RemovedBody330_25

def RemovedBody330_27 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody330_28 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 934#64)

def RemovedBody330_29 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody330_30 : StackLang.HolProg 64 :=
.seq RemovedBody330_28 RemovedBody330_29

def RemovedBody330_31 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody330_32 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 2#64)

def RemovedBody330_33 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 1

def RemovedBody330_34 : StackLang.HolProg 64 :=
.seq RemovedBody330_32 RemovedBody330_33

def RemovedBody330_35 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody330_36 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) RemovedBody330_34 RemovedBody330_35

def RemovedBody330_37 : StackLang.HolProg 64 :=
.seq RemovedBody330_31 RemovedBody330_36

def RemovedBody330_38 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def RemovedBody330_39 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody330_40 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 330 3

def RemovedBody330_41 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody330_42 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody330_43 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody330_44 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody330_45 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def RemovedBody330_46 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def RemovedBody330_47 : StackLang.HolProg 64 :=
.seq RemovedBody330_45 RemovedBody330_46

def RemovedBody330_48 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def RemovedBody330_49 : StackLang.HolProg 64 :=
.seq RemovedBody330_47 RemovedBody330_48

def RemovedBody330_50 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody330_51 : StackLang.HolProg 64 :=
.seq RemovedBody330_49 RemovedBody330_50

def RemovedBody330_52 : StackLang.HolProg 64 :=
.seq RemovedBody330_44 RemovedBody330_51

def RemovedBody330_53 : StackLang.HolProg 64 :=
.seq RemovedBody330_43 RemovedBody330_52

def RemovedBody330_54 : StackLang.HolProg 64 :=
.seq RemovedBody330_42 RemovedBody330_53

def RemovedBody330_55 : StackLang.HolProg 64 :=
.seq RemovedBody330_41 RemovedBody330_54

def RemovedBody330_56 : StackLang.HolProg 64 :=
.seq RemovedBody330_40 RemovedBody330_55

def RemovedBody330_57 : StackLang.HolProg 64 :=
.seq RemovedBody330_39 RemovedBody330_56

def RemovedBody330_58 : StackLang.HolProg 64 :=
.seq RemovedBody330_38 RemovedBody330_57

def RemovedBody330_59 : StackLang.HolProg 64 :=
.seq RemovedBody330_37 RemovedBody330_58

def RemovedBody330_60 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody330_61 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody330_62 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody330_63 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody330_64 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody330_65 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody330_66 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 0 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def RemovedBody330_67 : StackLang.HolProg 64 :=
.seq RemovedBody330_65 RemovedBody330_66

def RemovedBody330_68 : StackLang.HolProg 64 :=
.seq RemovedBody330_64 RemovedBody330_67

def RemovedBody330_69 : StackLang.HolProg 64 :=
.seq RemovedBody330_63 RemovedBody330_68

def RemovedBody330_70 : StackLang.HolProg 64 :=
.seq RemovedBody330_62 RemovedBody330_69

def RemovedBody330_71 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody330_72 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def RemovedBody330_73 : StackLang.HolProg 64 :=
.seq RemovedBody330_71 RemovedBody330_72

def RemovedBody330_74 : StackLang.HolProg 64 :=
.call (some (RemovedBody330_70, 0, 330, 2)) (Sum.inl 325) (some (RemovedBody330_73, 330, 3))

def RemovedBody330_75 : StackLang.HolProg 64 :=
.seq RemovedBody330_61 RemovedBody330_74

def RemovedBody330_76 : StackLang.HolProg 64 :=
.seq RemovedBody330_60 RemovedBody330_75

def RemovedBody330_77 : StackLang.HolProg 64 :=
.seq RemovedBody330_59 RemovedBody330_76

def RemovedBody330_78 : StackLang.HolProg 64 :=
.seq RemovedBody330_30 RemovedBody330_77

def RemovedBody330_79 : StackLang.HolProg 64 :=
.seq RemovedBody330_27 RemovedBody330_78

def RemovedBody330_80 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody330_81 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 32#64)

def RemovedBody330_82 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 24#64))

def RemovedBody330_83 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 2
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody330_84 : StackLang.HolProg 64 :=
.seq RemovedBody330_82 RemovedBody330_83

def RemovedBody330_85 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody330_86 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 935#64)

def RemovedBody330_87 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody330_88 : StackLang.HolProg 64 :=
.seq RemovedBody330_86 RemovedBody330_87

def RemovedBody330_89 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody330_90 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 2#64)

def RemovedBody330_91 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 1

def RemovedBody330_92 : StackLang.HolProg 64 :=
.seq RemovedBody330_90 RemovedBody330_91

def RemovedBody330_93 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody330_94 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) RemovedBody330_92 RemovedBody330_93

def RemovedBody330_95 : StackLang.HolProg 64 :=
.seq RemovedBody330_89 RemovedBody330_94

def RemovedBody330_96 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def RemovedBody330_97 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody330_98 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 330 5

def RemovedBody330_99 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody330_100 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody330_101 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody330_102 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody330_103 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def RemovedBody330_104 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def RemovedBody330_105 : StackLang.HolProg 64 :=
.seq RemovedBody330_103 RemovedBody330_104

def RemovedBody330_106 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def RemovedBody330_107 : StackLang.HolProg 64 :=
.seq RemovedBody330_105 RemovedBody330_106

def RemovedBody330_108 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody330_109 : StackLang.HolProg 64 :=
.seq RemovedBody330_107 RemovedBody330_108

def RemovedBody330_110 : StackLang.HolProg 64 :=
.seq RemovedBody330_102 RemovedBody330_109

def RemovedBody330_111 : StackLang.HolProg 64 :=
.seq RemovedBody330_101 RemovedBody330_110

def RemovedBody330_112 : StackLang.HolProg 64 :=
.seq RemovedBody330_100 RemovedBody330_111

def RemovedBody330_113 : StackLang.HolProg 64 :=
.seq RemovedBody330_99 RemovedBody330_112

def RemovedBody330_114 : StackLang.HolProg 64 :=
.seq RemovedBody330_98 RemovedBody330_113

def RemovedBody330_115 : StackLang.HolProg 64 :=
.seq RemovedBody330_97 RemovedBody330_114

def RemovedBody330_116 : StackLang.HolProg 64 :=
.seq RemovedBody330_96 RemovedBody330_115

def RemovedBody330_117 : StackLang.HolProg 64 :=
.seq RemovedBody330_95 RemovedBody330_116

def RemovedBody330_118 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody330_119 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody330_120 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody330_121 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody330_122 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody330_123 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody330_124 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 3 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def RemovedBody330_125 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 24#64))

def RemovedBody330_126 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody330_127 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 24#64))

def RemovedBody330_128 : StackLang.HolProg 64 :=
.seq RemovedBody330_126 RemovedBody330_127

def RemovedBody330_129 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 2
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody330_130 : StackLang.HolProg 64 :=
.seq RemovedBody330_128 RemovedBody330_129

def RemovedBody330_131 : StackLang.HolProg 64 :=
.seq RemovedBody330_125 RemovedBody330_130

def RemovedBody330_132 : StackLang.HolProg 64 :=
.seq RemovedBody330_124 RemovedBody330_131

def RemovedBody330_133 : StackLang.HolProg 64 :=
.seq RemovedBody330_123 RemovedBody330_132

def RemovedBody330_134 : StackLang.HolProg 64 :=
.seq RemovedBody330_122 RemovedBody330_133

def RemovedBody330_135 : StackLang.HolProg 64 :=
.seq RemovedBody330_121 RemovedBody330_134

def RemovedBody330_136 : StackLang.HolProg 64 :=
.seq RemovedBody330_120 RemovedBody330_135

def RemovedBody330_137 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 24#64))

def RemovedBody330_138 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody330_139 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 24#64))

def RemovedBody330_140 : StackLang.HolProg 64 :=
.seq RemovedBody330_138 RemovedBody330_139

def RemovedBody330_141 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 2
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody330_142 : StackLang.HolProg 64 :=
.seq RemovedBody330_140 RemovedBody330_141

def RemovedBody330_143 : StackLang.HolProg 64 :=
.seq RemovedBody330_137 RemovedBody330_142

def RemovedBody330_144 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def RemovedBody330_145 : StackLang.HolProg 64 :=
.seq RemovedBody330_143 RemovedBody330_144

def RemovedBody330_146 : StackLang.HolProg 64 :=
.call (some (RemovedBody330_136, 0, 330, 4)) (Sum.inl 68) (some (RemovedBody330_145, 330, 5))

def RemovedBody330_147 : StackLang.HolProg 64 :=
.seq RemovedBody330_119 RemovedBody330_146

def RemovedBody330_148 : StackLang.HolProg 64 :=
.seq RemovedBody330_118 RemovedBody330_147

def RemovedBody330_149 : StackLang.HolProg 64 :=
.seq RemovedBody330_117 RemovedBody330_148

def RemovedBody330_150 : StackLang.HolProg 64 :=
.seq RemovedBody330_88 RemovedBody330_149

def RemovedBody330_151 : StackLang.HolProg 64 :=
.seq RemovedBody330_85 RemovedBody330_150

def RemovedBody330_152 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody330_153 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 1 0
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 0)))

def RemovedBody330_154 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 3
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody330_155 : StackLang.HolProg 64 :=
.seq RemovedBody330_153 RemovedBody330_154

def RemovedBody330_156 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody330_157 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 936#64)

def RemovedBody330_158 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody330_159 : StackLang.HolProg 64 :=
.seq RemovedBody330_157 RemovedBody330_158

def RemovedBody330_160 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody330_161 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 2#64)

def RemovedBody330_162 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 1

def RemovedBody330_163 : StackLang.HolProg 64 :=
.seq RemovedBody330_161 RemovedBody330_162

def RemovedBody330_164 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody330_165 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) RemovedBody330_163 RemovedBody330_164

def RemovedBody330_166 : StackLang.HolProg 64 :=
.seq RemovedBody330_160 RemovedBody330_165

def RemovedBody330_167 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def RemovedBody330_168 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody330_169 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 330 7

def RemovedBody330_170 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody330_171 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody330_172 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody330_173 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody330_174 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def RemovedBody330_175 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def RemovedBody330_176 : StackLang.HolProg 64 :=
.seq RemovedBody330_174 RemovedBody330_175

def RemovedBody330_177 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def RemovedBody330_178 : StackLang.HolProg 64 :=
.seq RemovedBody330_176 RemovedBody330_177

def RemovedBody330_179 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody330_180 : StackLang.HolProg 64 :=
.seq RemovedBody330_178 RemovedBody330_179

def RemovedBody330_181 : StackLang.HolProg 64 :=
.seq RemovedBody330_173 RemovedBody330_180

def RemovedBody330_182 : StackLang.HolProg 64 :=
.seq RemovedBody330_172 RemovedBody330_181

def RemovedBody330_183 : StackLang.HolProg 64 :=
.seq RemovedBody330_171 RemovedBody330_182

def RemovedBody330_184 : StackLang.HolProg 64 :=
.seq RemovedBody330_170 RemovedBody330_183

def RemovedBody330_185 : StackLang.HolProg 64 :=
.seq RemovedBody330_169 RemovedBody330_184

def RemovedBody330_186 : StackLang.HolProg 64 :=
.seq RemovedBody330_168 RemovedBody330_185

def RemovedBody330_187 : StackLang.HolProg 64 :=
.seq RemovedBody330_167 RemovedBody330_186

def RemovedBody330_188 : StackLang.HolProg 64 :=
.seq RemovedBody330_166 RemovedBody330_187

def RemovedBody330_189 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody330_190 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody330_191 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody330_192 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody330_193 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody330_194 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody330_195 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 3
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 32#64))

def RemovedBody330_196 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 2
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 24#64))

def RemovedBody330_197 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody330_198 : StackLang.HolProg 64 :=
.seq RemovedBody330_196 RemovedBody330_197

def RemovedBody330_199 : StackLang.HolProg 64 :=
.seq RemovedBody330_195 RemovedBody330_198

def RemovedBody330_200 : StackLang.HolProg 64 :=
.seq RemovedBody330_194 RemovedBody330_199

def RemovedBody330_201 : StackLang.HolProg 64 :=
.seq RemovedBody330_193 RemovedBody330_200

def RemovedBody330_202 : StackLang.HolProg 64 :=
.seq RemovedBody330_192 RemovedBody330_201

def RemovedBody330_203 : StackLang.HolProg 64 :=
.seq RemovedBody330_191 RemovedBody330_202

def RemovedBody330_204 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 3
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 32#64))

def RemovedBody330_205 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 2
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 24#64))

def RemovedBody330_206 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody330_207 : StackLang.HolProg 64 :=
.seq RemovedBody330_205 RemovedBody330_206

def RemovedBody330_208 : StackLang.HolProg 64 :=
.seq RemovedBody330_204 RemovedBody330_207

def RemovedBody330_209 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def RemovedBody330_210 : StackLang.HolProg 64 :=
.seq RemovedBody330_208 RemovedBody330_209

def RemovedBody330_211 : StackLang.HolProg 64 :=
.call (some (RemovedBody330_203, 0, 330, 6)) (Sum.inl 158) (some (RemovedBody330_210, 330, 7))

def RemovedBody330_212 : StackLang.HolProg 64 :=
.seq RemovedBody330_190 RemovedBody330_211

def RemovedBody330_213 : StackLang.HolProg 64 :=
.seq RemovedBody330_189 RemovedBody330_212

def RemovedBody330_214 : StackLang.HolProg 64 :=
.seq RemovedBody330_188 RemovedBody330_213

def RemovedBody330_215 : StackLang.HolProg 64 :=
.seq RemovedBody330_159 RemovedBody330_214

def RemovedBody330_216 : StackLang.HolProg 64 :=
.seq RemovedBody330_156 RemovedBody330_215

def RemovedBody330_217 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody330_218 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody330_219 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 1 2
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody330_220 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody330_221 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 1 0#64))

def RemovedBody330_222 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 1 0
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 0)))

def RemovedBody330_223 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 40#64)))

def RemovedBody330_224 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 3

def RemovedBody330_225 : StackLang.HolProg 64 :=
.seq RemovedBody330_223 RemovedBody330_224

def RemovedBody330_226 : StackLang.HolProg 64 :=
.seq RemovedBody330_222 RemovedBody330_225

def RemovedBody330_227 : StackLang.HolProg 64 :=
.seq RemovedBody330_221 RemovedBody330_226

def RemovedBody330_228 : StackLang.HolProg 64 :=
.seq RemovedBody330_220 RemovedBody330_227

def RemovedBody330_229 : StackLang.HolProg 64 :=
.seq RemovedBody330_219 RemovedBody330_228

def RemovedBody330_230 : StackLang.HolProg 64 :=
.seq RemovedBody330_218 RemovedBody330_229

def RemovedBody330_231 : StackLang.HolProg 64 :=
.seq RemovedBody330_217 RemovedBody330_230

def RemovedBody330_232 : StackLang.HolProg 64 :=
.seq RemovedBody330_216 RemovedBody330_231

def RemovedBody330_233 : StackLang.HolProg 64 :=
.seq RemovedBody330_155 RemovedBody330_232

def RemovedBody330_234 : StackLang.HolProg 64 :=
.seq RemovedBody330_152 RemovedBody330_233

def RemovedBody330_235 : StackLang.HolProg 64 :=
.seq RemovedBody330_151 RemovedBody330_234

def RemovedBody330_236 : StackLang.HolProg 64 :=
.seq RemovedBody330_84 RemovedBody330_235

def RemovedBody330_237 : StackLang.HolProg 64 :=
.seq RemovedBody330_81 RemovedBody330_236

def RemovedBody330_238 : StackLang.HolProg 64 :=
.seq RemovedBody330_80 RemovedBody330_237

def RemovedBody330_239 : StackLang.HolProg 64 :=
.seq RemovedBody330_79 RemovedBody330_238

def RemovedBody330_240 : StackLang.HolProg 64 :=
.seq RemovedBody330_26 RemovedBody330_239

def RemovedBody330_241 : StackLang.HolProg 64 :=
.seq RemovedBody330_21 RemovedBody330_240

def RemovedBody330_242 : StackLang.HolProg 64 :=
.seq RemovedBody330_20 RemovedBody330_241

def RemovedBody330_243 : StackLang.HolProg 64 :=
.seq RemovedBody330_19 RemovedBody330_242

def RemovedBody330_244 : StackLang.HolProg 64 :=
.seq RemovedBody330_10 RemovedBody330_243

def RemovedBody330_245 : StackLang.HolProg 64 :=
.seq RemovedBody330_9 RemovedBody330_244

def RemovedBody330_246 : StackLang.HolProg 64 :=
.seq RemovedBody330_8 RemovedBody330_245

def RemovedBody330_247 : StackLang.HolProg 64 :=
.seq RemovedBody330_7 RemovedBody330_246

def RemovedBody330_248 : StackLang.HolProg 64 :=
.seq RemovedBody330_6 RemovedBody330_247

def Removed330 : Nat × StackLang.HolProg 64 := (330, RemovedBody330_248)
theorem Removed330_eq : StackRemove.progComp false riscvConfig.addrOffset (riscvConfig.regCount - (riscvConfig.avoidRegs.length + 3)) Alloc330 = Removed330 := by
  kernel_rfl
#print axioms Removed330_eq
end InitECandidate.Proofs.BackendStages
