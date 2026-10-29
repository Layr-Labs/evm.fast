import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.BackendStages.Alloc828
import Flapjack.Compiler.Backend.Backend
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
namespace InitECandidate.Proofs.BackendStages
def RemovedBody828_0 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody828_1 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 2#64)

def RemovedBody828_2 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 1

def RemovedBody828_3 : StackLang.HolProg 64 :=
.seq RemovedBody828_1 RemovedBody828_2

def RemovedBody828_4 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody828_5 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) RemovedBody828_3 RemovedBody828_4

def RemovedBody828_6 : StackLang.HolProg 64 :=
.seq RemovedBody828_0 RemovedBody828_5

def RemovedBody828_7 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody828_8 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551592#64))

def RemovedBody828_9 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsl 1 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 1#64)))

def RemovedBody828_10 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 1 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 26)))

def RemovedBody828_11 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 1 18446744073709551360#64))

def RemovedBody828_12 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 2
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 1 112#64))

def RemovedBody828_13 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody828_14 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 2 96#64))

def RemovedBody828_15 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody828_16 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 3 192#64)

def RemovedBody828_17 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody828_18 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 13#64)

def RemovedBody828_19 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody828_20 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551480#64))

def RemovedBody828_21 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 8#64)

def RemovedBody828_22 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody828_23 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def RemovedBody828_24 : StackLang.HolProg 64 :=
.seq RemovedBody828_22 RemovedBody828_23

def RemovedBody828_25 : StackLang.HolProg 64 :=
.seq RemovedBody828_21 RemovedBody828_24

def RemovedBody828_26 : StackLang.HolProg 64 :=
.seq RemovedBody828_20 RemovedBody828_25

def RemovedBody828_27 : StackLang.HolProg 64 :=
.seq RemovedBody828_19 RemovedBody828_26

def RemovedBody828_28 : StackLang.HolProg 64 :=
.seq RemovedBody828_18 RemovedBody828_27

def RemovedBody828_29 : StackLang.HolProg 64 :=
.seq RemovedBody828_17 RemovedBody828_28

def RemovedBody828_30 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody828_31 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.notEqual) 1 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 3) RemovedBody828_29 RemovedBody828_30

def RemovedBody828_32 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody828_33 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody828_34 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 50000#64)

def RemovedBody828_35 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody828_36 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 2
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody828_37 : StackLang.HolProg 64 :=
.seq RemovedBody828_35 RemovedBody828_36

def RemovedBody828_38 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody828_39 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 4118#64)

def RemovedBody828_40 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody828_41 : StackLang.HolProg 64 :=
.seq RemovedBody828_39 RemovedBody828_40

def RemovedBody828_42 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody828_43 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 2#64)

def RemovedBody828_44 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 1

def RemovedBody828_45 : StackLang.HolProg 64 :=
.seq RemovedBody828_43 RemovedBody828_44

def RemovedBody828_46 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody828_47 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) RemovedBody828_45 RemovedBody828_46

def RemovedBody828_48 : StackLang.HolProg 64 :=
.seq RemovedBody828_42 RemovedBody828_47

def RemovedBody828_49 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def RemovedBody828_50 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody828_51 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 828 3

def RemovedBody828_52 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody828_53 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody828_54 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody828_55 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody828_56 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def RemovedBody828_57 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def RemovedBody828_58 : StackLang.HolProg 64 :=
.seq RemovedBody828_56 RemovedBody828_57

def RemovedBody828_59 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def RemovedBody828_60 : StackLang.HolProg 64 :=
.seq RemovedBody828_58 RemovedBody828_59

def RemovedBody828_61 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody828_62 : StackLang.HolProg 64 :=
.seq RemovedBody828_60 RemovedBody828_61

def RemovedBody828_63 : StackLang.HolProg 64 :=
.seq RemovedBody828_55 RemovedBody828_62

def RemovedBody828_64 : StackLang.HolProg 64 :=
.seq RemovedBody828_54 RemovedBody828_63

def RemovedBody828_65 : StackLang.HolProg 64 :=
.seq RemovedBody828_53 RemovedBody828_64

def RemovedBody828_66 : StackLang.HolProg 64 :=
.seq RemovedBody828_52 RemovedBody828_65

def RemovedBody828_67 : StackLang.HolProg 64 :=
.seq RemovedBody828_51 RemovedBody828_66

def RemovedBody828_68 : StackLang.HolProg 64 :=
.seq RemovedBody828_50 RemovedBody828_67

def RemovedBody828_69 : StackLang.HolProg 64 :=
.seq RemovedBody828_49 RemovedBody828_68

def RemovedBody828_70 : StackLang.HolProg 64 :=
.seq RemovedBody828_48 RemovedBody828_69

def RemovedBody828_71 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody828_72 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody828_73 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody828_74 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody828_75 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody828_76 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody828_77 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody828_78 : StackLang.HolProg 64 :=
.seq RemovedBody828_76 RemovedBody828_77

def RemovedBody828_79 : StackLang.HolProg 64 :=
.seq RemovedBody828_75 RemovedBody828_78

def RemovedBody828_80 : StackLang.HolProg 64 :=
.seq RemovedBody828_74 RemovedBody828_79

def RemovedBody828_81 : StackLang.HolProg 64 :=
.seq RemovedBody828_73 RemovedBody828_80

def RemovedBody828_82 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody828_83 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def RemovedBody828_84 : StackLang.HolProg 64 :=
.seq RemovedBody828_82 RemovedBody828_83

def RemovedBody828_85 : StackLang.HolProg 64 :=
.call (some (RemovedBody828_81, 0, 828, 2)) (Sum.inl 470) (some (RemovedBody828_84, 828, 3))

def RemovedBody828_86 : StackLang.HolProg 64 :=
.seq RemovedBody828_72 RemovedBody828_85

def RemovedBody828_87 : StackLang.HolProg 64 :=
.seq RemovedBody828_71 RemovedBody828_86

def RemovedBody828_88 : StackLang.HolProg 64 :=
.seq RemovedBody828_70 RemovedBody828_87

def RemovedBody828_89 : StackLang.HolProg 64 :=
.seq RemovedBody828_41 RemovedBody828_88

def RemovedBody828_90 : StackLang.HolProg 64 :=
.seq RemovedBody828_38 RemovedBody828_89

def RemovedBody828_91 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody828_92 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 64#64)

def RemovedBody828_93 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody828_94 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody828_95 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 4119#64)

def RemovedBody828_96 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody828_97 : StackLang.HolProg 64 :=
.seq RemovedBody828_95 RemovedBody828_96

def RemovedBody828_98 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody828_99 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 2#64)

def RemovedBody828_100 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 1

def RemovedBody828_101 : StackLang.HolProg 64 :=
.seq RemovedBody828_99 RemovedBody828_100

def RemovedBody828_102 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody828_103 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) RemovedBody828_101 RemovedBody828_102

def RemovedBody828_104 : StackLang.HolProg 64 :=
.seq RemovedBody828_98 RemovedBody828_103

def RemovedBody828_105 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def RemovedBody828_106 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody828_107 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 828 5

def RemovedBody828_108 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody828_109 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody828_110 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody828_111 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody828_112 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def RemovedBody828_113 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def RemovedBody828_114 : StackLang.HolProg 64 :=
.seq RemovedBody828_112 RemovedBody828_113

def RemovedBody828_115 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def RemovedBody828_116 : StackLang.HolProg 64 :=
.seq RemovedBody828_114 RemovedBody828_115

def RemovedBody828_117 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody828_118 : StackLang.HolProg 64 :=
.seq RemovedBody828_116 RemovedBody828_117

def RemovedBody828_119 : StackLang.HolProg 64 :=
.seq RemovedBody828_111 RemovedBody828_118

def RemovedBody828_120 : StackLang.HolProg 64 :=
.seq RemovedBody828_110 RemovedBody828_119

def RemovedBody828_121 : StackLang.HolProg 64 :=
.seq RemovedBody828_109 RemovedBody828_120

def RemovedBody828_122 : StackLang.HolProg 64 :=
.seq RemovedBody828_108 RemovedBody828_121

def RemovedBody828_123 : StackLang.HolProg 64 :=
.seq RemovedBody828_107 RemovedBody828_122

def RemovedBody828_124 : StackLang.HolProg 64 :=
.seq RemovedBody828_106 RemovedBody828_123

def RemovedBody828_125 : StackLang.HolProg 64 :=
.seq RemovedBody828_105 RemovedBody828_124

def RemovedBody828_126 : StackLang.HolProg 64 :=
.seq RemovedBody828_104 RemovedBody828_125

def RemovedBody828_127 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody828_128 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody828_129 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody828_130 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody828_131 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody828_132 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody828_133 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 2 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def RemovedBody828_134 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody828_135 : StackLang.HolProg 64 :=
.seq RemovedBody828_133 RemovedBody828_134

def RemovedBody828_136 : StackLang.HolProg 64 :=
.seq RemovedBody828_132 RemovedBody828_135

def RemovedBody828_137 : StackLang.HolProg 64 :=
.seq RemovedBody828_131 RemovedBody828_136

def RemovedBody828_138 : StackLang.HolProg 64 :=
.seq RemovedBody828_130 RemovedBody828_137

def RemovedBody828_139 : StackLang.HolProg 64 :=
.seq RemovedBody828_129 RemovedBody828_138

def RemovedBody828_140 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody828_141 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def RemovedBody828_142 : StackLang.HolProg 64 :=
.seq RemovedBody828_140 RemovedBody828_141

def RemovedBody828_143 : StackLang.HolProg 64 :=
.call (some (RemovedBody828_139, 0, 828, 4)) (Sum.inl 68) (some (RemovedBody828_142, 828, 5))

def RemovedBody828_144 : StackLang.HolProg 64 :=
.seq RemovedBody828_128 RemovedBody828_143

def RemovedBody828_145 : StackLang.HolProg 64 :=
.seq RemovedBody828_127 RemovedBody828_144

def RemovedBody828_146 : StackLang.HolProg 64 :=
.seq RemovedBody828_126 RemovedBody828_145

def RemovedBody828_147 : StackLang.HolProg 64 :=
.seq RemovedBody828_97 RemovedBody828_146

def RemovedBody828_148 : StackLang.HolProg 64 :=
.seq RemovedBody828_94 RemovedBody828_147

def RemovedBody828_149 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody828_150 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody828_151 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 0 88#64))

def RemovedBody828_152 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 2
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody828_153 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody828_154 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 4120#64)

def RemovedBody828_155 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody828_156 : StackLang.HolProg 64 :=
.seq RemovedBody828_154 RemovedBody828_155

def RemovedBody828_157 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody828_158 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 2#64)

def RemovedBody828_159 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 1

def RemovedBody828_160 : StackLang.HolProg 64 :=
.seq RemovedBody828_158 RemovedBody828_159

def RemovedBody828_161 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody828_162 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) RemovedBody828_160 RemovedBody828_161

def RemovedBody828_163 : StackLang.HolProg 64 :=
.seq RemovedBody828_157 RemovedBody828_162

def RemovedBody828_164 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def RemovedBody828_165 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody828_166 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 828 7

def RemovedBody828_167 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody828_168 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody828_169 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody828_170 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody828_171 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def RemovedBody828_172 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def RemovedBody828_173 : StackLang.HolProg 64 :=
.seq RemovedBody828_171 RemovedBody828_172

def RemovedBody828_174 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def RemovedBody828_175 : StackLang.HolProg 64 :=
.seq RemovedBody828_173 RemovedBody828_174

def RemovedBody828_176 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody828_177 : StackLang.HolProg 64 :=
.seq RemovedBody828_175 RemovedBody828_176

def RemovedBody828_178 : StackLang.HolProg 64 :=
.seq RemovedBody828_170 RemovedBody828_177

def RemovedBody828_179 : StackLang.HolProg 64 :=
.seq RemovedBody828_169 RemovedBody828_178

def RemovedBody828_180 : StackLang.HolProg 64 :=
.seq RemovedBody828_168 RemovedBody828_179

def RemovedBody828_181 : StackLang.HolProg 64 :=
.seq RemovedBody828_167 RemovedBody828_180

def RemovedBody828_182 : StackLang.HolProg 64 :=
.seq RemovedBody828_166 RemovedBody828_181

def RemovedBody828_183 : StackLang.HolProg 64 :=
.seq RemovedBody828_165 RemovedBody828_182

def RemovedBody828_184 : StackLang.HolProg 64 :=
.seq RemovedBody828_164 RemovedBody828_183

def RemovedBody828_185 : StackLang.HolProg 64 :=
.seq RemovedBody828_163 RemovedBody828_184

def RemovedBody828_186 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody828_187 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody828_188 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody828_189 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody828_190 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody828_191 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody828_192 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 0 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def RemovedBody828_193 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 3
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody828_194 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 2
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody828_195 : StackLang.HolProg 64 :=
.seq RemovedBody828_193 RemovedBody828_194

def RemovedBody828_196 : StackLang.HolProg 64 :=
.seq RemovedBody828_192 RemovedBody828_195

def RemovedBody828_197 : StackLang.HolProg 64 :=
.seq RemovedBody828_191 RemovedBody828_196

def RemovedBody828_198 : StackLang.HolProg 64 :=
.seq RemovedBody828_190 RemovedBody828_197

def RemovedBody828_199 : StackLang.HolProg 64 :=
.seq RemovedBody828_189 RemovedBody828_198

def RemovedBody828_200 : StackLang.HolProg 64 :=
.seq RemovedBody828_188 RemovedBody828_199

def RemovedBody828_201 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 3
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody828_202 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 2
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody828_203 : StackLang.HolProg 64 :=
.seq RemovedBody828_201 RemovedBody828_202

def RemovedBody828_204 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def RemovedBody828_205 : StackLang.HolProg 64 :=
.seq RemovedBody828_203 RemovedBody828_204

def RemovedBody828_206 : StackLang.HolProg 64 :=
.call (some (RemovedBody828_200, 0, 828, 6)) (Sum.inl 817) (some (RemovedBody828_205, 828, 7))

def RemovedBody828_207 : StackLang.HolProg 64 :=
.seq RemovedBody828_187 RemovedBody828_206

def RemovedBody828_208 : StackLang.HolProg 64 :=
.seq RemovedBody828_186 RemovedBody828_207

def RemovedBody828_209 : StackLang.HolProg 64 :=
.seq RemovedBody828_185 RemovedBody828_208

def RemovedBody828_210 : StackLang.HolProg 64 :=
.seq RemovedBody828_156 RemovedBody828_209

def RemovedBody828_211 : StackLang.HolProg 64 :=
.seq RemovedBody828_153 RemovedBody828_210

def RemovedBody828_212 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody828_213 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody828_214 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 0#64)

def RemovedBody828_215 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody828_216 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 0 13#64)

def RemovedBody828_217 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody828_218 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551480#64))

def RemovedBody828_219 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 8#64)

def RemovedBody828_220 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody828_221 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def RemovedBody828_222 : StackLang.HolProg 64 :=
.seq RemovedBody828_220 RemovedBody828_221

def RemovedBody828_223 : StackLang.HolProg 64 :=
.seq RemovedBody828_219 RemovedBody828_222

def RemovedBody828_224 : StackLang.HolProg 64 :=
.seq RemovedBody828_218 RemovedBody828_223

def RemovedBody828_225 : StackLang.HolProg 64 :=
.seq RemovedBody828_217 RemovedBody828_224

def RemovedBody828_226 : StackLang.HolProg 64 :=
.seq RemovedBody828_216 RemovedBody828_225

def RemovedBody828_227 : StackLang.HolProg 64 :=
.seq RemovedBody828_215 RemovedBody828_226

def RemovedBody828_228 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody828_229 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.notEqual) 0 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1) RemovedBody828_227 RemovedBody828_228

def RemovedBody828_230 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody828_231 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody828_232 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551592#64))

def RemovedBody828_233 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsl 0 0
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 1#64)))

def RemovedBody828_234 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 0 0
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 26)))

def RemovedBody828_235 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 0 18446744073709551360#64))

def RemovedBody828_236 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 1 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 120#64)))

def RemovedBody828_237 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody828_238 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 2
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 1 0#64))

def RemovedBody828_239 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody828_240 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 0 18446744073709551360#64))

def RemovedBody828_241 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 0 0
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 128#64)))

def RemovedBody828_242 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 64#64)

def RemovedBody828_243 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody828_244 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 0 0#64))

def RemovedBody828_245 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 0#64)

def RemovedBody828_246 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody828_247 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody828_248 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 3

def RemovedBody828_249 : StackLang.HolProg 64 :=
.seq RemovedBody828_247 RemovedBody828_248

def RemovedBody828_250 : StackLang.HolProg 64 :=
.seq RemovedBody828_246 RemovedBody828_249

def RemovedBody828_251 : StackLang.HolProg 64 :=
.seq RemovedBody828_245 RemovedBody828_250

def RemovedBody828_252 : StackLang.HolProg 64 :=
.seq RemovedBody828_244 RemovedBody828_251

def RemovedBody828_253 : StackLang.HolProg 64 :=
.seq RemovedBody828_243 RemovedBody828_252

def RemovedBody828_254 : StackLang.HolProg 64 :=
.seq RemovedBody828_242 RemovedBody828_253

def RemovedBody828_255 : StackLang.HolProg 64 :=
.seq RemovedBody828_241 RemovedBody828_254

def RemovedBody828_256 : StackLang.HolProg 64 :=
.seq RemovedBody828_240 RemovedBody828_255

def RemovedBody828_257 : StackLang.HolProg 64 :=
.seq RemovedBody828_239 RemovedBody828_256

def RemovedBody828_258 : StackLang.HolProg 64 :=
.seq RemovedBody828_238 RemovedBody828_257

def RemovedBody828_259 : StackLang.HolProg 64 :=
.seq RemovedBody828_237 RemovedBody828_258

def RemovedBody828_260 : StackLang.HolProg 64 :=
.seq RemovedBody828_236 RemovedBody828_259

def RemovedBody828_261 : StackLang.HolProg 64 :=
.seq RemovedBody828_235 RemovedBody828_260

def RemovedBody828_262 : StackLang.HolProg 64 :=
.seq RemovedBody828_234 RemovedBody828_261

def RemovedBody828_263 : StackLang.HolProg 64 :=
.seq RemovedBody828_233 RemovedBody828_262

def RemovedBody828_264 : StackLang.HolProg 64 :=
.seq RemovedBody828_232 RemovedBody828_263

def RemovedBody828_265 : StackLang.HolProg 64 :=
.seq RemovedBody828_231 RemovedBody828_264

def RemovedBody828_266 : StackLang.HolProg 64 :=
.seq RemovedBody828_230 RemovedBody828_265

def RemovedBody828_267 : StackLang.HolProg 64 :=
.seq RemovedBody828_229 RemovedBody828_266

def RemovedBody828_268 : StackLang.HolProg 64 :=
.seq RemovedBody828_214 RemovedBody828_267

def RemovedBody828_269 : StackLang.HolProg 64 :=
.seq RemovedBody828_213 RemovedBody828_268

def RemovedBody828_270 : StackLang.HolProg 64 :=
.seq RemovedBody828_212 RemovedBody828_269

def RemovedBody828_271 : StackLang.HolProg 64 :=
.seq RemovedBody828_211 RemovedBody828_270

def RemovedBody828_272 : StackLang.HolProg 64 :=
.seq RemovedBody828_152 RemovedBody828_271

def RemovedBody828_273 : StackLang.HolProg 64 :=
.seq RemovedBody828_151 RemovedBody828_272

def RemovedBody828_274 : StackLang.HolProg 64 :=
.seq RemovedBody828_150 RemovedBody828_273

def RemovedBody828_275 : StackLang.HolProg 64 :=
.seq RemovedBody828_149 RemovedBody828_274

def RemovedBody828_276 : StackLang.HolProg 64 :=
.seq RemovedBody828_148 RemovedBody828_275

def RemovedBody828_277 : StackLang.HolProg 64 :=
.seq RemovedBody828_93 RemovedBody828_276

def RemovedBody828_278 : StackLang.HolProg 64 :=
.seq RemovedBody828_92 RemovedBody828_277

def RemovedBody828_279 : StackLang.HolProg 64 :=
.seq RemovedBody828_91 RemovedBody828_278

def RemovedBody828_280 : StackLang.HolProg 64 :=
.seq RemovedBody828_90 RemovedBody828_279

def RemovedBody828_281 : StackLang.HolProg 64 :=
.seq RemovedBody828_37 RemovedBody828_280

def RemovedBody828_282 : StackLang.HolProg 64 :=
.seq RemovedBody828_34 RemovedBody828_281

def RemovedBody828_283 : StackLang.HolProg 64 :=
.seq RemovedBody828_33 RemovedBody828_282

def RemovedBody828_284 : StackLang.HolProg 64 :=
.seq RemovedBody828_32 RemovedBody828_283

def RemovedBody828_285 : StackLang.HolProg 64 :=
.seq RemovedBody828_31 RemovedBody828_284

def RemovedBody828_286 : StackLang.HolProg 64 :=
.seq RemovedBody828_16 RemovedBody828_285

def RemovedBody828_287 : StackLang.HolProg 64 :=
.seq RemovedBody828_15 RemovedBody828_286

def RemovedBody828_288 : StackLang.HolProg 64 :=
.seq RemovedBody828_14 RemovedBody828_287

def RemovedBody828_289 : StackLang.HolProg 64 :=
.seq RemovedBody828_13 RemovedBody828_288

def RemovedBody828_290 : StackLang.HolProg 64 :=
.seq RemovedBody828_12 RemovedBody828_289

def RemovedBody828_291 : StackLang.HolProg 64 :=
.seq RemovedBody828_11 RemovedBody828_290

def RemovedBody828_292 : StackLang.HolProg 64 :=
.seq RemovedBody828_10 RemovedBody828_291

def RemovedBody828_293 : StackLang.HolProg 64 :=
.seq RemovedBody828_9 RemovedBody828_292

def RemovedBody828_294 : StackLang.HolProg 64 :=
.seq RemovedBody828_8 RemovedBody828_293

def RemovedBody828_295 : StackLang.HolProg 64 :=
.seq RemovedBody828_7 RemovedBody828_294

def RemovedBody828_296 : StackLang.HolProg 64 :=
.seq RemovedBody828_6 RemovedBody828_295

def Removed828 : Nat × StackLang.HolProg 64 := (828, RemovedBody828_296)
theorem Removed828_eq : StackRemove.progComp false riscvConfig.addrOffset (riscvConfig.regCount - (riscvConfig.avoidRegs.length + 3)) Alloc828 = Removed828 := by
  kernel_rfl
#print axioms Removed828_eq
end InitECandidate.Proofs.BackendStages
