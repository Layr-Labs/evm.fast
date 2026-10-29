import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.BackendStages.Alloc781
import Flapjack.Compiler.Backend.Backend
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
namespace InitECandidate.Proofs.BackendStages
def RemovedBody781_0 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 32#64)))

def RemovedBody781_1 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 2#64)

def RemovedBody781_2 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 1

def RemovedBody781_3 : StackLang.HolProg 64 :=
.seq RemovedBody781_1 RemovedBody781_2

def RemovedBody781_4 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody781_5 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) RemovedBody781_3 RemovedBody781_4

def RemovedBody781_6 : StackLang.HolProg 64 :=
.seq RemovedBody781_0 RemovedBody781_5

def RemovedBody781_7 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody781_8 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody781_9 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 24#64))

def RemovedBody781_10 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 2
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody781_11 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody781_12 : StackLang.HolProg 64 :=
.seq RemovedBody781_10 RemovedBody781_11

def RemovedBody781_13 : StackLang.HolProg 64 :=
.seq RemovedBody781_9 RemovedBody781_12

def RemovedBody781_14 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody781_15 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 3547#64)

def RemovedBody781_16 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody781_17 : StackLang.HolProg 64 :=
.seq RemovedBody781_15 RemovedBody781_16

def RemovedBody781_18 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody781_19 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 2#64)

def RemovedBody781_20 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 1

def RemovedBody781_21 : StackLang.HolProg 64 :=
.seq RemovedBody781_19 RemovedBody781_20

def RemovedBody781_22 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody781_23 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) RemovedBody781_21 RemovedBody781_22

def RemovedBody781_24 : StackLang.HolProg 64 :=
.seq RemovedBody781_18 RemovedBody781_23

def RemovedBody781_25 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def RemovedBody781_26 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody781_27 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 781 3

def RemovedBody781_28 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody781_29 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody781_30 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody781_31 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody781_32 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def RemovedBody781_33 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def RemovedBody781_34 : StackLang.HolProg 64 :=
.seq RemovedBody781_32 RemovedBody781_33

def RemovedBody781_35 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def RemovedBody781_36 : StackLang.HolProg 64 :=
.seq RemovedBody781_34 RemovedBody781_35

def RemovedBody781_37 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody781_38 : StackLang.HolProg 64 :=
.seq RemovedBody781_36 RemovedBody781_37

def RemovedBody781_39 : StackLang.HolProg 64 :=
.seq RemovedBody781_31 RemovedBody781_38

def RemovedBody781_40 : StackLang.HolProg 64 :=
.seq RemovedBody781_30 RemovedBody781_39

def RemovedBody781_41 : StackLang.HolProg 64 :=
.seq RemovedBody781_29 RemovedBody781_40

def RemovedBody781_42 : StackLang.HolProg 64 :=
.seq RemovedBody781_28 RemovedBody781_41

def RemovedBody781_43 : StackLang.HolProg 64 :=
.seq RemovedBody781_27 RemovedBody781_42

def RemovedBody781_44 : StackLang.HolProg 64 :=
.seq RemovedBody781_26 RemovedBody781_43

def RemovedBody781_45 : StackLang.HolProg 64 :=
.seq RemovedBody781_25 RemovedBody781_44

def RemovedBody781_46 : StackLang.HolProg 64 :=
.seq RemovedBody781_24 RemovedBody781_45

def RemovedBody781_47 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody781_48 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody781_49 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody781_50 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody781_51 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody781_52 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody781_53 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody781_54 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 3
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody781_55 : StackLang.HolProg 64 :=
.seq RemovedBody781_53 RemovedBody781_54

def RemovedBody781_56 : StackLang.HolProg 64 :=
.seq RemovedBody781_52 RemovedBody781_55

def RemovedBody781_57 : StackLang.HolProg 64 :=
.seq RemovedBody781_51 RemovedBody781_56

def RemovedBody781_58 : StackLang.HolProg 64 :=
.seq RemovedBody781_50 RemovedBody781_57

def RemovedBody781_59 : StackLang.HolProg 64 :=
.seq RemovedBody781_49 RemovedBody781_58

def RemovedBody781_60 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody781_61 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 3
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody781_62 : StackLang.HolProg 64 :=
.seq RemovedBody781_60 RemovedBody781_61

def RemovedBody781_63 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def RemovedBody781_64 : StackLang.HolProg 64 :=
.seq RemovedBody781_62 RemovedBody781_63

def RemovedBody781_65 : StackLang.HolProg 64 :=
.call (some (RemovedBody781_59, 0, 781, 2)) (Sum.inl 729) (some (RemovedBody781_64, 781, 3))

def RemovedBody781_66 : StackLang.HolProg 64 :=
.seq RemovedBody781_48 RemovedBody781_65

def RemovedBody781_67 : StackLang.HolProg 64 :=
.seq RemovedBody781_47 RemovedBody781_66

def RemovedBody781_68 : StackLang.HolProg 64 :=
.seq RemovedBody781_46 RemovedBody781_67

def RemovedBody781_69 : StackLang.HolProg 64 :=
.seq RemovedBody781_17 RemovedBody781_68

def RemovedBody781_70 : StackLang.HolProg 64 :=
.seq RemovedBody781_14 RemovedBody781_69

def RemovedBody781_71 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody781_72 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody781_73 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 1 3
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 192#64)))

def RemovedBody781_74 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody781_75 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 2 0
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 192#64)))

def RemovedBody781_76 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody781_77 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 3
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody781_78 : StackLang.HolProg 64 :=
.seq RemovedBody781_76 RemovedBody781_77

def RemovedBody781_79 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody781_80 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 3548#64)

def RemovedBody781_81 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody781_82 : StackLang.HolProg 64 :=
.seq RemovedBody781_80 RemovedBody781_81

def RemovedBody781_83 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody781_84 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 2#64)

def RemovedBody781_85 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 1

def RemovedBody781_86 : StackLang.HolProg 64 :=
.seq RemovedBody781_84 RemovedBody781_85

def RemovedBody781_87 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody781_88 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) RemovedBody781_86 RemovedBody781_87

def RemovedBody781_89 : StackLang.HolProg 64 :=
.seq RemovedBody781_83 RemovedBody781_88

def RemovedBody781_90 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def RemovedBody781_91 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody781_92 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 781 5

def RemovedBody781_93 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody781_94 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody781_95 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody781_96 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody781_97 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def RemovedBody781_98 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def RemovedBody781_99 : StackLang.HolProg 64 :=
.seq RemovedBody781_97 RemovedBody781_98

def RemovedBody781_100 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def RemovedBody781_101 : StackLang.HolProg 64 :=
.seq RemovedBody781_99 RemovedBody781_100

def RemovedBody781_102 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody781_103 : StackLang.HolProg 64 :=
.seq RemovedBody781_101 RemovedBody781_102

def RemovedBody781_104 : StackLang.HolProg 64 :=
.seq RemovedBody781_96 RemovedBody781_103

def RemovedBody781_105 : StackLang.HolProg 64 :=
.seq RemovedBody781_95 RemovedBody781_104

def RemovedBody781_106 : StackLang.HolProg 64 :=
.seq RemovedBody781_94 RemovedBody781_105

def RemovedBody781_107 : StackLang.HolProg 64 :=
.seq RemovedBody781_93 RemovedBody781_106

def RemovedBody781_108 : StackLang.HolProg 64 :=
.seq RemovedBody781_92 RemovedBody781_107

def RemovedBody781_109 : StackLang.HolProg 64 :=
.seq RemovedBody781_91 RemovedBody781_108

def RemovedBody781_110 : StackLang.HolProg 64 :=
.seq RemovedBody781_90 RemovedBody781_109

def RemovedBody781_111 : StackLang.HolProg 64 :=
.seq RemovedBody781_89 RemovedBody781_110

def RemovedBody781_112 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody781_113 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody781_114 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody781_115 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody781_116 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody781_117 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody781_118 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 2
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody781_119 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody781_120 : StackLang.HolProg 64 :=
.seq RemovedBody781_118 RemovedBody781_119

def RemovedBody781_121 : StackLang.HolProg 64 :=
.seq RemovedBody781_117 RemovedBody781_120

def RemovedBody781_122 : StackLang.HolProg 64 :=
.seq RemovedBody781_116 RemovedBody781_121

def RemovedBody781_123 : StackLang.HolProg 64 :=
.seq RemovedBody781_115 RemovedBody781_122

def RemovedBody781_124 : StackLang.HolProg 64 :=
.seq RemovedBody781_114 RemovedBody781_123

def RemovedBody781_125 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 2
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody781_126 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody781_127 : StackLang.HolProg 64 :=
.seq RemovedBody781_125 RemovedBody781_126

def RemovedBody781_128 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def RemovedBody781_129 : StackLang.HolProg 64 :=
.seq RemovedBody781_127 RemovedBody781_128

def RemovedBody781_130 : StackLang.HolProg 64 :=
.call (some (RemovedBody781_124, 0, 781, 4)) (Sum.inl 729) (some (RemovedBody781_129, 781, 5))

def RemovedBody781_131 : StackLang.HolProg 64 :=
.seq RemovedBody781_113 RemovedBody781_130

def RemovedBody781_132 : StackLang.HolProg 64 :=
.seq RemovedBody781_112 RemovedBody781_131

def RemovedBody781_133 : StackLang.HolProg 64 :=
.seq RemovedBody781_111 RemovedBody781_132

def RemovedBody781_134 : StackLang.HolProg 64 :=
.seq RemovedBody781_82 RemovedBody781_133

def RemovedBody781_135 : StackLang.HolProg 64 :=
.seq RemovedBody781_79 RemovedBody781_134

def RemovedBody781_136 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody781_137 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody781_138 : StackLang.HolProg 64 :=
.seq RemovedBody781_136 RemovedBody781_137

def RemovedBody781_139 : StackLang.HolProg 64 :=
.seq RemovedBody781_135 RemovedBody781_138

def RemovedBody781_140 : StackLang.HolProg 64 :=
.seq RemovedBody781_78 RemovedBody781_139

def RemovedBody781_141 : StackLang.HolProg 64 :=
.seq RemovedBody781_75 RemovedBody781_140

def RemovedBody781_142 : StackLang.HolProg 64 :=
.seq RemovedBody781_74 RemovedBody781_141

def RemovedBody781_143 : StackLang.HolProg 64 :=
.seq RemovedBody781_73 RemovedBody781_142

def RemovedBody781_144 : StackLang.HolProg 64 :=
.seq RemovedBody781_72 RemovedBody781_143

def RemovedBody781_145 : StackLang.HolProg 64 :=
.seq RemovedBody781_71 RemovedBody781_144

def RemovedBody781_146 : StackLang.HolProg 64 :=
.seq RemovedBody781_70 RemovedBody781_145

def RemovedBody781_147 : StackLang.HolProg 64 :=
.seq RemovedBody781_13 RemovedBody781_146

def RemovedBody781_148 : StackLang.HolProg 64 :=
.seq RemovedBody781_8 RemovedBody781_147

def RemovedBody781_149 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody781_150 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 24#64))

def RemovedBody781_151 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 0 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def RemovedBody781_152 : StackLang.HolProg 64 :=
.seq RemovedBody781_150 RemovedBody781_151

def RemovedBody781_153 : StackLang.HolProg 64 :=
.seq RemovedBody781_149 RemovedBody781_152

def RemovedBody781_154 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.notEqual) 1 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 2) RemovedBody781_148 RemovedBody781_153

def RemovedBody781_155 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody781_156 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody781_157 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 1 0
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 96#64)))

def RemovedBody781_158 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody781_159 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 2 2
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 96#64)))

def RemovedBody781_160 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody781_161 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody781_162 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 3549#64)

def RemovedBody781_163 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody781_164 : StackLang.HolProg 64 :=
.seq RemovedBody781_162 RemovedBody781_163

def RemovedBody781_165 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody781_166 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 2#64)

def RemovedBody781_167 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 1

def RemovedBody781_168 : StackLang.HolProg 64 :=
.seq RemovedBody781_166 RemovedBody781_167

def RemovedBody781_169 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody781_170 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) RemovedBody781_168 RemovedBody781_169

def RemovedBody781_171 : StackLang.HolProg 64 :=
.seq RemovedBody781_165 RemovedBody781_170

def RemovedBody781_172 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def RemovedBody781_173 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody781_174 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 781 7

def RemovedBody781_175 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody781_176 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody781_177 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody781_178 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody781_179 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def RemovedBody781_180 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def RemovedBody781_181 : StackLang.HolProg 64 :=
.seq RemovedBody781_179 RemovedBody781_180

def RemovedBody781_182 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def RemovedBody781_183 : StackLang.HolProg 64 :=
.seq RemovedBody781_181 RemovedBody781_182

def RemovedBody781_184 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody781_185 : StackLang.HolProg 64 :=
.seq RemovedBody781_183 RemovedBody781_184

def RemovedBody781_186 : StackLang.HolProg 64 :=
.seq RemovedBody781_178 RemovedBody781_185

def RemovedBody781_187 : StackLang.HolProg 64 :=
.seq RemovedBody781_177 RemovedBody781_186

def RemovedBody781_188 : StackLang.HolProg 64 :=
.seq RemovedBody781_176 RemovedBody781_187

def RemovedBody781_189 : StackLang.HolProg 64 :=
.seq RemovedBody781_175 RemovedBody781_188

def RemovedBody781_190 : StackLang.HolProg 64 :=
.seq RemovedBody781_174 RemovedBody781_189

def RemovedBody781_191 : StackLang.HolProg 64 :=
.seq RemovedBody781_173 RemovedBody781_190

def RemovedBody781_192 : StackLang.HolProg 64 :=
.seq RemovedBody781_172 RemovedBody781_191

def RemovedBody781_193 : StackLang.HolProg 64 :=
.seq RemovedBody781_171 RemovedBody781_192

def RemovedBody781_194 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody781_195 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody781_196 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody781_197 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody781_198 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody781_199 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody781_200 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 24#64))

def RemovedBody781_201 : StackLang.HolProg 64 :=
.seq RemovedBody781_199 RemovedBody781_200

def RemovedBody781_202 : StackLang.HolProg 64 :=
.seq RemovedBody781_198 RemovedBody781_201

def RemovedBody781_203 : StackLang.HolProg 64 :=
.seq RemovedBody781_197 RemovedBody781_202

def RemovedBody781_204 : StackLang.HolProg 64 :=
.seq RemovedBody781_196 RemovedBody781_203

def RemovedBody781_205 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 24#64))

def RemovedBody781_206 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def RemovedBody781_207 : StackLang.HolProg 64 :=
.seq RemovedBody781_205 RemovedBody781_206

def RemovedBody781_208 : StackLang.HolProg 64 :=
.call (some (RemovedBody781_204, 0, 781, 6)) (Sum.inl 736) (some (RemovedBody781_207, 781, 7))

def RemovedBody781_209 : StackLang.HolProg 64 :=
.seq RemovedBody781_195 RemovedBody781_208

def RemovedBody781_210 : StackLang.HolProg 64 :=
.seq RemovedBody781_194 RemovedBody781_209

def RemovedBody781_211 : StackLang.HolProg 64 :=
.seq RemovedBody781_193 RemovedBody781_210

def RemovedBody781_212 : StackLang.HolProg 64 :=
.seq RemovedBody781_164 RemovedBody781_211

def RemovedBody781_213 : StackLang.HolProg 64 :=
.seq RemovedBody781_161 RemovedBody781_212

def RemovedBody781_214 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody781_215 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 0#64)

def RemovedBody781_216 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody781_217 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 32#64)))

def RemovedBody781_218 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 0

def RemovedBody781_219 : StackLang.HolProg 64 :=
.seq RemovedBody781_217 RemovedBody781_218

def RemovedBody781_220 : StackLang.HolProg 64 :=
.seq RemovedBody781_216 RemovedBody781_219

def RemovedBody781_221 : StackLang.HolProg 64 :=
.seq RemovedBody781_215 RemovedBody781_220

def RemovedBody781_222 : StackLang.HolProg 64 :=
.seq RemovedBody781_214 RemovedBody781_221

def RemovedBody781_223 : StackLang.HolProg 64 :=
.seq RemovedBody781_213 RemovedBody781_222

def RemovedBody781_224 : StackLang.HolProg 64 :=
.seq RemovedBody781_160 RemovedBody781_223

def RemovedBody781_225 : StackLang.HolProg 64 :=
.seq RemovedBody781_159 RemovedBody781_224

def RemovedBody781_226 : StackLang.HolProg 64 :=
.seq RemovedBody781_158 RemovedBody781_225

def RemovedBody781_227 : StackLang.HolProg 64 :=
.seq RemovedBody781_157 RemovedBody781_226

def RemovedBody781_228 : StackLang.HolProg 64 :=
.seq RemovedBody781_156 RemovedBody781_227

def RemovedBody781_229 : StackLang.HolProg 64 :=
.seq RemovedBody781_155 RemovedBody781_228

def RemovedBody781_230 : StackLang.HolProg 64 :=
.seq RemovedBody781_154 RemovedBody781_229

def RemovedBody781_231 : StackLang.HolProg 64 :=
.seq RemovedBody781_7 RemovedBody781_230

def RemovedBody781_232 : StackLang.HolProg 64 :=
.seq RemovedBody781_6 RemovedBody781_231

def Removed781 : Nat × StackLang.HolProg 64 := (781, RemovedBody781_232)
theorem Removed781_eq : StackRemove.progComp false riscvConfig.addrOffset (riscvConfig.regCount - (riscvConfig.avoidRegs.length + 3)) Alloc781 = Removed781 := by
  kernel_rfl
#print axioms Removed781_eq
end InitECandidate.Proofs.BackendStages
