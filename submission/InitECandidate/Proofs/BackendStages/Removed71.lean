import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.BackendStages.Alloc71
import Flapjack.Compiler.Backend.Backend
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
namespace InitECandidate.Proofs.BackendStages
def RemovedBody71_0 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 32#64)))

def RemovedBody71_1 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 2#64)

def RemovedBody71_2 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 1

def RemovedBody71_3 : StackLang.HolProg 64 :=
.seq RemovedBody71_1 RemovedBody71_2

def RemovedBody71_4 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody71_5 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) RemovedBody71_3 RemovedBody71_4

def RemovedBody71_6 : StackLang.HolProg 64 :=
.seq RemovedBody71_0 RemovedBody71_5

def RemovedBody71_7 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody71_8 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 2
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551592#64))

def RemovedBody71_9 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsl 2 2
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 1#64)))

def RemovedBody71_10 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 3 2
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 26)))

def RemovedBody71_11 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 2
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 3 18446744073709551584#64))

def RemovedBody71_12 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody71_13 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 3
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 3 18446744073709551592#64))

def RemovedBody71_14 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody71_15 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 4 3
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 2)))

def RemovedBody71_16 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 3 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def RemovedBody71_17 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody71_18 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 6#64)

def RemovedBody71_19 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 24#64))

def RemovedBody71_20 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 3
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody71_21 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 2
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody71_22 : StackLang.HolProg 64 :=
.seq RemovedBody71_20 RemovedBody71_21

def RemovedBody71_23 : StackLang.HolProg 64 :=
.seq RemovedBody71_19 RemovedBody71_22

def RemovedBody71_24 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody71_25 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 29#64)

def RemovedBody71_26 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody71_27 : StackLang.HolProg 64 :=
.seq RemovedBody71_25 RemovedBody71_26

def RemovedBody71_28 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody71_29 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 2#64)

def RemovedBody71_30 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 1

def RemovedBody71_31 : StackLang.HolProg 64 :=
.seq RemovedBody71_29 RemovedBody71_30

def RemovedBody71_32 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody71_33 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) RemovedBody71_31 RemovedBody71_32

def RemovedBody71_34 : StackLang.HolProg 64 :=
.seq RemovedBody71_28 RemovedBody71_33

def RemovedBody71_35 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def RemovedBody71_36 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody71_37 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 71 3

def RemovedBody71_38 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody71_39 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody71_40 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody71_41 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody71_42 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def RemovedBody71_43 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def RemovedBody71_44 : StackLang.HolProg 64 :=
.seq RemovedBody71_42 RemovedBody71_43

def RemovedBody71_45 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def RemovedBody71_46 : StackLang.HolProg 64 :=
.seq RemovedBody71_44 RemovedBody71_45

def RemovedBody71_47 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody71_48 : StackLang.HolProg 64 :=
.seq RemovedBody71_46 RemovedBody71_47

def RemovedBody71_49 : StackLang.HolProg 64 :=
.seq RemovedBody71_41 RemovedBody71_48

def RemovedBody71_50 : StackLang.HolProg 64 :=
.seq RemovedBody71_40 RemovedBody71_49

def RemovedBody71_51 : StackLang.HolProg 64 :=
.seq RemovedBody71_39 RemovedBody71_50

def RemovedBody71_52 : StackLang.HolProg 64 :=
.seq RemovedBody71_38 RemovedBody71_51

def RemovedBody71_53 : StackLang.HolProg 64 :=
.seq RemovedBody71_37 RemovedBody71_52

def RemovedBody71_54 : StackLang.HolProg 64 :=
.seq RemovedBody71_36 RemovedBody71_53

def RemovedBody71_55 : StackLang.HolProg 64 :=
.seq RemovedBody71_35 RemovedBody71_54

def RemovedBody71_56 : StackLang.HolProg 64 :=
.seq RemovedBody71_34 RemovedBody71_55

def RemovedBody71_57 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody71_58 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody71_59 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody71_60 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody71_61 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody71_62 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody71_63 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 3
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody71_64 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 2
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody71_65 : StackLang.HolProg 64 :=
.seq RemovedBody71_63 RemovedBody71_64

def RemovedBody71_66 : StackLang.HolProg 64 :=
.seq RemovedBody71_62 RemovedBody71_65

def RemovedBody71_67 : StackLang.HolProg 64 :=
.seq RemovedBody71_61 RemovedBody71_66

def RemovedBody71_68 : StackLang.HolProg 64 :=
.seq RemovedBody71_60 RemovedBody71_67

def RemovedBody71_69 : StackLang.HolProg 64 :=
.seq RemovedBody71_59 RemovedBody71_68

def RemovedBody71_70 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 3
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody71_71 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 2
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody71_72 : StackLang.HolProg 64 :=
.seq RemovedBody71_70 RemovedBody71_71

def RemovedBody71_73 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def RemovedBody71_74 : StackLang.HolProg 64 :=
.seq RemovedBody71_72 RemovedBody71_73

def RemovedBody71_75 : StackLang.HolProg 64 :=
.call (some (RemovedBody71_69, 0, 71, 2)) (Sum.inl 66) (some (RemovedBody71_74, 71, 3))

def RemovedBody71_76 : StackLang.HolProg 64 :=
.seq RemovedBody71_58 RemovedBody71_75

def RemovedBody71_77 : StackLang.HolProg 64 :=
.seq RemovedBody71_57 RemovedBody71_76

def RemovedBody71_78 : StackLang.HolProg 64 :=
.seq RemovedBody71_56 RemovedBody71_77

def RemovedBody71_79 : StackLang.HolProg 64 :=
.seq RemovedBody71_27 RemovedBody71_78

def RemovedBody71_80 : StackLang.HolProg 64 :=
.seq RemovedBody71_24 RemovedBody71_79

def RemovedBody71_81 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody71_82 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody71_83 : StackLang.HolProg 64 :=
.seq RemovedBody71_81 RemovedBody71_82

def RemovedBody71_84 : StackLang.HolProg 64 :=
.seq RemovedBody71_80 RemovedBody71_83

def RemovedBody71_85 : StackLang.HolProg 64 :=
.seq RemovedBody71_23 RemovedBody71_84

def RemovedBody71_86 : StackLang.HolProg 64 :=
.seq RemovedBody71_18 RemovedBody71_85

def RemovedBody71_87 : StackLang.HolProg 64 :=
.seq RemovedBody71_17 RemovedBody71_86

def RemovedBody71_88 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody71_89 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 24#64))

def RemovedBody71_90 : StackLang.HolProg 64 :=
.seq RemovedBody71_88 RemovedBody71_89

def RemovedBody71_91 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 4 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 3) RemovedBody71_87 RemovedBody71_90

def RemovedBody71_92 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody71_93 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody71_94 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 0 3
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 2)))

def RemovedBody71_95 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 0 0
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 7#64)))

def RemovedBody71_96 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.and 3 0
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 18446744073709551608#64)))

def RemovedBody71_97 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551592#64))

def RemovedBody71_98 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsl 0 0
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 1#64)))

def RemovedBody71_99 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 0 0
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 26)))

def RemovedBody71_100 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 0 18446744073709551592#64))

def RemovedBody71_101 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody71_102 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody71_103 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 6#64)

def RemovedBody71_104 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 3
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody71_105 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 2
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody71_106 : StackLang.HolProg 64 :=
.seq RemovedBody71_104 RemovedBody71_105

def RemovedBody71_107 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody71_108 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 30#64)

def RemovedBody71_109 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody71_110 : StackLang.HolProg 64 :=
.seq RemovedBody71_108 RemovedBody71_109

def RemovedBody71_111 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody71_112 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 2#64)

def RemovedBody71_113 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 1

def RemovedBody71_114 : StackLang.HolProg 64 :=
.seq RemovedBody71_112 RemovedBody71_113

def RemovedBody71_115 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody71_116 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) RemovedBody71_114 RemovedBody71_115

def RemovedBody71_117 : StackLang.HolProg 64 :=
.seq RemovedBody71_111 RemovedBody71_116

def RemovedBody71_118 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def RemovedBody71_119 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody71_120 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 71 5

def RemovedBody71_121 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody71_122 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody71_123 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody71_124 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody71_125 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def RemovedBody71_126 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def RemovedBody71_127 : StackLang.HolProg 64 :=
.seq RemovedBody71_125 RemovedBody71_126

def RemovedBody71_128 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def RemovedBody71_129 : StackLang.HolProg 64 :=
.seq RemovedBody71_127 RemovedBody71_128

def RemovedBody71_130 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody71_131 : StackLang.HolProg 64 :=
.seq RemovedBody71_129 RemovedBody71_130

def RemovedBody71_132 : StackLang.HolProg 64 :=
.seq RemovedBody71_124 RemovedBody71_131

def RemovedBody71_133 : StackLang.HolProg 64 :=
.seq RemovedBody71_123 RemovedBody71_132

def RemovedBody71_134 : StackLang.HolProg 64 :=
.seq RemovedBody71_122 RemovedBody71_133

def RemovedBody71_135 : StackLang.HolProg 64 :=
.seq RemovedBody71_121 RemovedBody71_134

def RemovedBody71_136 : StackLang.HolProg 64 :=
.seq RemovedBody71_120 RemovedBody71_135

def RemovedBody71_137 : StackLang.HolProg 64 :=
.seq RemovedBody71_119 RemovedBody71_136

def RemovedBody71_138 : StackLang.HolProg 64 :=
.seq RemovedBody71_118 RemovedBody71_137

def RemovedBody71_139 : StackLang.HolProg 64 :=
.seq RemovedBody71_117 RemovedBody71_138

def RemovedBody71_140 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody71_141 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody71_142 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody71_143 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody71_144 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody71_145 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody71_146 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 24#64))

def RemovedBody71_147 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 3
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody71_148 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 2
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody71_149 : StackLang.HolProg 64 :=
.seq RemovedBody71_147 RemovedBody71_148

def RemovedBody71_150 : StackLang.HolProg 64 :=
.seq RemovedBody71_146 RemovedBody71_149

def RemovedBody71_151 : StackLang.HolProg 64 :=
.seq RemovedBody71_145 RemovedBody71_150

def RemovedBody71_152 : StackLang.HolProg 64 :=
.seq RemovedBody71_144 RemovedBody71_151

def RemovedBody71_153 : StackLang.HolProg 64 :=
.seq RemovedBody71_143 RemovedBody71_152

def RemovedBody71_154 : StackLang.HolProg 64 :=
.seq RemovedBody71_142 RemovedBody71_153

def RemovedBody71_155 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 24#64))

def RemovedBody71_156 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 3
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody71_157 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 2
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody71_158 : StackLang.HolProg 64 :=
.seq RemovedBody71_156 RemovedBody71_157

def RemovedBody71_159 : StackLang.HolProg 64 :=
.seq RemovedBody71_155 RemovedBody71_158

def RemovedBody71_160 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def RemovedBody71_161 : StackLang.HolProg 64 :=
.seq RemovedBody71_159 RemovedBody71_160

def RemovedBody71_162 : StackLang.HolProg 64 :=
.call (some (RemovedBody71_154, 0, 71, 4)) (Sum.inl 66) (some (RemovedBody71_161, 71, 5))

def RemovedBody71_163 : StackLang.HolProg 64 :=
.seq RemovedBody71_141 RemovedBody71_162

def RemovedBody71_164 : StackLang.HolProg 64 :=
.seq RemovedBody71_140 RemovedBody71_163

def RemovedBody71_165 : StackLang.HolProg 64 :=
.seq RemovedBody71_139 RemovedBody71_164

def RemovedBody71_166 : StackLang.HolProg 64 :=
.seq RemovedBody71_110 RemovedBody71_165

def RemovedBody71_167 : StackLang.HolProg 64 :=
.seq RemovedBody71_107 RemovedBody71_166

def RemovedBody71_168 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody71_169 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody71_170 : StackLang.HolProg 64 :=
.seq RemovedBody71_168 RemovedBody71_169

def RemovedBody71_171 : StackLang.HolProg 64 :=
.seq RemovedBody71_167 RemovedBody71_170

def RemovedBody71_172 : StackLang.HolProg 64 :=
.seq RemovedBody71_106 RemovedBody71_171

def RemovedBody71_173 : StackLang.HolProg 64 :=
.seq RemovedBody71_103 RemovedBody71_172

def RemovedBody71_174 : StackLang.HolProg 64 :=
.seq RemovedBody71_102 RemovedBody71_173

def RemovedBody71_175 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody71_176 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 24#64))

def RemovedBody71_177 : StackLang.HolProg 64 :=
.seq RemovedBody71_175 RemovedBody71_176

def RemovedBody71_178 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 0 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 3) RemovedBody71_174 RemovedBody71_177

def RemovedBody71_179 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody71_180 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551592#64))

def RemovedBody71_181 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsl 1 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 1#64)))

def RemovedBody71_182 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 1 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 26)))

def RemovedBody71_183 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 1 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 18446744073709551584#64)))

def RemovedBody71_184 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody71_185 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 3
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 1 0#64))

def RemovedBody71_186 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 1 2
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 2)))

def RemovedBody71_187 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 32#64)))

def RemovedBody71_188 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 0

def RemovedBody71_189 : StackLang.HolProg 64 :=
.seq RemovedBody71_187 RemovedBody71_188

def RemovedBody71_190 : StackLang.HolProg 64 :=
.seq RemovedBody71_186 RemovedBody71_189

def RemovedBody71_191 : StackLang.HolProg 64 :=
.seq RemovedBody71_185 RemovedBody71_190

def RemovedBody71_192 : StackLang.HolProg 64 :=
.seq RemovedBody71_184 RemovedBody71_191

def RemovedBody71_193 : StackLang.HolProg 64 :=
.seq RemovedBody71_183 RemovedBody71_192

def RemovedBody71_194 : StackLang.HolProg 64 :=
.seq RemovedBody71_182 RemovedBody71_193

def RemovedBody71_195 : StackLang.HolProg 64 :=
.seq RemovedBody71_181 RemovedBody71_194

def RemovedBody71_196 : StackLang.HolProg 64 :=
.seq RemovedBody71_180 RemovedBody71_195

def RemovedBody71_197 : StackLang.HolProg 64 :=
.seq RemovedBody71_179 RemovedBody71_196

def RemovedBody71_198 : StackLang.HolProg 64 :=
.seq RemovedBody71_178 RemovedBody71_197

def RemovedBody71_199 : StackLang.HolProg 64 :=
.seq RemovedBody71_101 RemovedBody71_198

def RemovedBody71_200 : StackLang.HolProg 64 :=
.seq RemovedBody71_100 RemovedBody71_199

def RemovedBody71_201 : StackLang.HolProg 64 :=
.seq RemovedBody71_99 RemovedBody71_200

def RemovedBody71_202 : StackLang.HolProg 64 :=
.seq RemovedBody71_98 RemovedBody71_201

def RemovedBody71_203 : StackLang.HolProg 64 :=
.seq RemovedBody71_97 RemovedBody71_202

def RemovedBody71_204 : StackLang.HolProg 64 :=
.seq RemovedBody71_96 RemovedBody71_203

def RemovedBody71_205 : StackLang.HolProg 64 :=
.seq RemovedBody71_95 RemovedBody71_204

def RemovedBody71_206 : StackLang.HolProg 64 :=
.seq RemovedBody71_94 RemovedBody71_205

def RemovedBody71_207 : StackLang.HolProg 64 :=
.seq RemovedBody71_93 RemovedBody71_206

def RemovedBody71_208 : StackLang.HolProg 64 :=
.seq RemovedBody71_92 RemovedBody71_207

def RemovedBody71_209 : StackLang.HolProg 64 :=
.seq RemovedBody71_91 RemovedBody71_208

def RemovedBody71_210 : StackLang.HolProg 64 :=
.seq RemovedBody71_16 RemovedBody71_209

def RemovedBody71_211 : StackLang.HolProg 64 :=
.seq RemovedBody71_15 RemovedBody71_210

def RemovedBody71_212 : StackLang.HolProg 64 :=
.seq RemovedBody71_14 RemovedBody71_211

def RemovedBody71_213 : StackLang.HolProg 64 :=
.seq RemovedBody71_13 RemovedBody71_212

def RemovedBody71_214 : StackLang.HolProg 64 :=
.seq RemovedBody71_12 RemovedBody71_213

def RemovedBody71_215 : StackLang.HolProg 64 :=
.seq RemovedBody71_11 RemovedBody71_214

def RemovedBody71_216 : StackLang.HolProg 64 :=
.seq RemovedBody71_10 RemovedBody71_215

def RemovedBody71_217 : StackLang.HolProg 64 :=
.seq RemovedBody71_9 RemovedBody71_216

def RemovedBody71_218 : StackLang.HolProg 64 :=
.seq RemovedBody71_8 RemovedBody71_217

def RemovedBody71_219 : StackLang.HolProg 64 :=
.seq RemovedBody71_7 RemovedBody71_218

def RemovedBody71_220 : StackLang.HolProg 64 :=
.seq RemovedBody71_6 RemovedBody71_219

def Removed71 : Nat × StackLang.HolProg 64 := (71, RemovedBody71_220)
theorem Removed71_eq : StackRemove.progComp false riscvConfig.addrOffset (riscvConfig.regCount - (riscvConfig.avoidRegs.length + 3)) Alloc71 = Removed71 := by
  kernel_rfl
#print axioms Removed71_eq
end InitECandidate.Proofs.BackendStages
