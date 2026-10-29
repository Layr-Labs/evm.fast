import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.BackendStages.Alloc701
import Flapjack.Compiler.Backend.Backend
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
namespace InitECandidate.Proofs.BackendStages
def RemovedBody701_0 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 40#64)))

def RemovedBody701_1 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 2#64)

def RemovedBody701_2 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 1

def RemovedBody701_3 : StackLang.HolProg 64 :=
.seq RemovedBody701_1 RemovedBody701_2

def RemovedBody701_4 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody701_5 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) RemovedBody701_3 RemovedBody701_4

def RemovedBody701_6 : StackLang.HolProg 64 :=
.seq RemovedBody701_0 RemovedBody701_5

def RemovedBody701_7 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody701_8 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551592#64))

def RemovedBody701_9 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsl 1 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 1#64)))

def RemovedBody701_10 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 1 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 26)))

def RemovedBody701_11 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 1 18446744073709551360#64))

def RemovedBody701_12 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 2
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 1 112#64))

def RemovedBody701_13 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 150#64)

def RemovedBody701_14 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 32#64))

def RemovedBody701_15 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 2
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody701_16 : StackLang.HolProg 64 :=
.seq RemovedBody701_14 RemovedBody701_15

def RemovedBody701_17 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody701_18 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 3132#64)

def RemovedBody701_19 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody701_20 : StackLang.HolProg 64 :=
.seq RemovedBody701_18 RemovedBody701_19

def RemovedBody701_21 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody701_22 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 2#64)

def RemovedBody701_23 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 1

def RemovedBody701_24 : StackLang.HolProg 64 :=
.seq RemovedBody701_22 RemovedBody701_23

def RemovedBody701_25 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody701_26 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) RemovedBody701_24 RemovedBody701_25

def RemovedBody701_27 : StackLang.HolProg 64 :=
.seq RemovedBody701_21 RemovedBody701_26

def RemovedBody701_28 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def RemovedBody701_29 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody701_30 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 701 3

def RemovedBody701_31 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody701_32 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody701_33 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody701_34 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody701_35 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def RemovedBody701_36 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def RemovedBody701_37 : StackLang.HolProg 64 :=
.seq RemovedBody701_35 RemovedBody701_36

def RemovedBody701_38 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def RemovedBody701_39 : StackLang.HolProg 64 :=
.seq RemovedBody701_37 RemovedBody701_38

def RemovedBody701_40 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody701_41 : StackLang.HolProg 64 :=
.seq RemovedBody701_39 RemovedBody701_40

def RemovedBody701_42 : StackLang.HolProg 64 :=
.seq RemovedBody701_34 RemovedBody701_41

def RemovedBody701_43 : StackLang.HolProg 64 :=
.seq RemovedBody701_33 RemovedBody701_42

def RemovedBody701_44 : StackLang.HolProg 64 :=
.seq RemovedBody701_32 RemovedBody701_43

def RemovedBody701_45 : StackLang.HolProg 64 :=
.seq RemovedBody701_31 RemovedBody701_44

def RemovedBody701_46 : StackLang.HolProg 64 :=
.seq RemovedBody701_30 RemovedBody701_45

def RemovedBody701_47 : StackLang.HolProg 64 :=
.seq RemovedBody701_29 RemovedBody701_46

def RemovedBody701_48 : StackLang.HolProg 64 :=
.seq RemovedBody701_28 RemovedBody701_47

def RemovedBody701_49 : StackLang.HolProg 64 :=
.seq RemovedBody701_27 RemovedBody701_48

def RemovedBody701_50 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody701_51 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody701_52 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody701_53 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody701_54 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody701_55 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody701_56 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody701_57 : StackLang.HolProg 64 :=
.seq RemovedBody701_55 RemovedBody701_56

def RemovedBody701_58 : StackLang.HolProg 64 :=
.seq RemovedBody701_54 RemovedBody701_57

def RemovedBody701_59 : StackLang.HolProg 64 :=
.seq RemovedBody701_53 RemovedBody701_58

def RemovedBody701_60 : StackLang.HolProg 64 :=
.seq RemovedBody701_52 RemovedBody701_59

def RemovedBody701_61 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody701_62 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def RemovedBody701_63 : StackLang.HolProg 64 :=
.seq RemovedBody701_61 RemovedBody701_62

def RemovedBody701_64 : StackLang.HolProg 64 :=
.call (some (RemovedBody701_60, 0, 701, 2)) (Sum.inl 470) (some (RemovedBody701_63, 701, 3))

def RemovedBody701_65 : StackLang.HolProg 64 :=
.seq RemovedBody701_51 RemovedBody701_64

def RemovedBody701_66 : StackLang.HolProg 64 :=
.seq RemovedBody701_50 RemovedBody701_65

def RemovedBody701_67 : StackLang.HolProg 64 :=
.seq RemovedBody701_49 RemovedBody701_66

def RemovedBody701_68 : StackLang.HolProg 64 :=
.seq RemovedBody701_20 RemovedBody701_67

def RemovedBody701_69 : StackLang.HolProg 64 :=
.seq RemovedBody701_17 RemovedBody701_68

def RemovedBody701_70 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody701_71 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 64#64)

def RemovedBody701_72 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody701_73 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody701_74 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 3133#64)

def RemovedBody701_75 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody701_76 : StackLang.HolProg 64 :=
.seq RemovedBody701_74 RemovedBody701_75

def RemovedBody701_77 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody701_78 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 2#64)

def RemovedBody701_79 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 1

def RemovedBody701_80 : StackLang.HolProg 64 :=
.seq RemovedBody701_78 RemovedBody701_79

def RemovedBody701_81 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody701_82 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) RemovedBody701_80 RemovedBody701_81

def RemovedBody701_83 : StackLang.HolProg 64 :=
.seq RemovedBody701_77 RemovedBody701_82

def RemovedBody701_84 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def RemovedBody701_85 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody701_86 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 701 5

def RemovedBody701_87 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody701_88 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody701_89 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody701_90 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody701_91 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def RemovedBody701_92 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def RemovedBody701_93 : StackLang.HolProg 64 :=
.seq RemovedBody701_91 RemovedBody701_92

def RemovedBody701_94 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def RemovedBody701_95 : StackLang.HolProg 64 :=
.seq RemovedBody701_93 RemovedBody701_94

def RemovedBody701_96 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody701_97 : StackLang.HolProg 64 :=
.seq RemovedBody701_95 RemovedBody701_96

def RemovedBody701_98 : StackLang.HolProg 64 :=
.seq RemovedBody701_90 RemovedBody701_97

def RemovedBody701_99 : StackLang.HolProg 64 :=
.seq RemovedBody701_89 RemovedBody701_98

def RemovedBody701_100 : StackLang.HolProg 64 :=
.seq RemovedBody701_88 RemovedBody701_99

def RemovedBody701_101 : StackLang.HolProg 64 :=
.seq RemovedBody701_87 RemovedBody701_100

def RemovedBody701_102 : StackLang.HolProg 64 :=
.seq RemovedBody701_86 RemovedBody701_101

def RemovedBody701_103 : StackLang.HolProg 64 :=
.seq RemovedBody701_85 RemovedBody701_102

def RemovedBody701_104 : StackLang.HolProg 64 :=
.seq RemovedBody701_84 RemovedBody701_103

def RemovedBody701_105 : StackLang.HolProg 64 :=
.seq RemovedBody701_83 RemovedBody701_104

def RemovedBody701_106 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody701_107 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody701_108 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody701_109 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody701_110 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody701_111 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody701_112 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 0 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def RemovedBody701_113 : StackLang.HolProg 64 :=
.seq RemovedBody701_111 RemovedBody701_112

def RemovedBody701_114 : StackLang.HolProg 64 :=
.seq RemovedBody701_110 RemovedBody701_113

def RemovedBody701_115 : StackLang.HolProg 64 :=
.seq RemovedBody701_109 RemovedBody701_114

def RemovedBody701_116 : StackLang.HolProg 64 :=
.seq RemovedBody701_108 RemovedBody701_115

def RemovedBody701_117 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody701_118 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def RemovedBody701_119 : StackLang.HolProg 64 :=
.seq RemovedBody701_117 RemovedBody701_118

def RemovedBody701_120 : StackLang.HolProg 64 :=
.call (some (RemovedBody701_116, 0, 701, 4)) (Sum.inl 68) (some (RemovedBody701_119, 701, 5))

def RemovedBody701_121 : StackLang.HolProg 64 :=
.seq RemovedBody701_107 RemovedBody701_120

def RemovedBody701_122 : StackLang.HolProg 64 :=
.seq RemovedBody701_106 RemovedBody701_121

def RemovedBody701_123 : StackLang.HolProg 64 :=
.seq RemovedBody701_105 RemovedBody701_122

def RemovedBody701_124 : StackLang.HolProg 64 :=
.seq RemovedBody701_76 RemovedBody701_123

def RemovedBody701_125 : StackLang.HolProg 64 :=
.seq RemovedBody701_73 RemovedBody701_124

def RemovedBody701_126 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody701_127 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 24#64))

def RemovedBody701_128 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody701_129 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 3134#64)

def RemovedBody701_130 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody701_131 : StackLang.HolProg 64 :=
.seq RemovedBody701_129 RemovedBody701_130

def RemovedBody701_132 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody701_133 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 2#64)

def RemovedBody701_134 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 1

def RemovedBody701_135 : StackLang.HolProg 64 :=
.seq RemovedBody701_133 RemovedBody701_134

def RemovedBody701_136 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody701_137 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) RemovedBody701_135 RemovedBody701_136

def RemovedBody701_138 : StackLang.HolProg 64 :=
.seq RemovedBody701_132 RemovedBody701_137

def RemovedBody701_139 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def RemovedBody701_140 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody701_141 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 701 7

def RemovedBody701_142 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody701_143 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody701_144 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody701_145 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody701_146 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def RemovedBody701_147 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def RemovedBody701_148 : StackLang.HolProg 64 :=
.seq RemovedBody701_146 RemovedBody701_147

def RemovedBody701_149 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def RemovedBody701_150 : StackLang.HolProg 64 :=
.seq RemovedBody701_148 RemovedBody701_149

def RemovedBody701_151 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody701_152 : StackLang.HolProg 64 :=
.seq RemovedBody701_150 RemovedBody701_151

def RemovedBody701_153 : StackLang.HolProg 64 :=
.seq RemovedBody701_145 RemovedBody701_152

def RemovedBody701_154 : StackLang.HolProg 64 :=
.seq RemovedBody701_144 RemovedBody701_153

def RemovedBody701_155 : StackLang.HolProg 64 :=
.seq RemovedBody701_143 RemovedBody701_154

def RemovedBody701_156 : StackLang.HolProg 64 :=
.seq RemovedBody701_142 RemovedBody701_155

def RemovedBody701_157 : StackLang.HolProg 64 :=
.seq RemovedBody701_141 RemovedBody701_156

def RemovedBody701_158 : StackLang.HolProg 64 :=
.seq RemovedBody701_140 RemovedBody701_157

def RemovedBody701_159 : StackLang.HolProg 64 :=
.seq RemovedBody701_139 RemovedBody701_158

def RemovedBody701_160 : StackLang.HolProg 64 :=
.seq RemovedBody701_138 RemovedBody701_159

def RemovedBody701_161 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody701_162 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody701_163 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody701_164 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody701_165 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody701_166 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody701_167 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 0 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def RemovedBody701_168 : StackLang.HolProg 64 :=
.seq RemovedBody701_166 RemovedBody701_167

def RemovedBody701_169 : StackLang.HolProg 64 :=
.seq RemovedBody701_165 RemovedBody701_168

def RemovedBody701_170 : StackLang.HolProg 64 :=
.seq RemovedBody701_164 RemovedBody701_169

def RemovedBody701_171 : StackLang.HolProg 64 :=
.seq RemovedBody701_163 RemovedBody701_170

def RemovedBody701_172 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody701_173 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def RemovedBody701_174 : StackLang.HolProg 64 :=
.seq RemovedBody701_172 RemovedBody701_173

def RemovedBody701_175 : StackLang.HolProg 64 :=
.call (some (RemovedBody701_171, 0, 701, 6)) (Sum.inl 69) (some (RemovedBody701_174, 701, 7))

def RemovedBody701_176 : StackLang.HolProg 64 :=
.seq RemovedBody701_162 RemovedBody701_175

def RemovedBody701_177 : StackLang.HolProg 64 :=
.seq RemovedBody701_161 RemovedBody701_176

def RemovedBody701_178 : StackLang.HolProg 64 :=
.seq RemovedBody701_160 RemovedBody701_177

def RemovedBody701_179 : StackLang.HolProg 64 :=
.seq RemovedBody701_131 RemovedBody701_178

def RemovedBody701_180 : StackLang.HolProg 64 :=
.seq RemovedBody701_128 RemovedBody701_179

def RemovedBody701_181 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody701_182 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 128#64)

def RemovedBody701_183 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody701_184 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody701_185 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 3135#64)

def RemovedBody701_186 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody701_187 : StackLang.HolProg 64 :=
.seq RemovedBody701_185 RemovedBody701_186

def RemovedBody701_188 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody701_189 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 2#64)

def RemovedBody701_190 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 1

def RemovedBody701_191 : StackLang.HolProg 64 :=
.seq RemovedBody701_189 RemovedBody701_190

def RemovedBody701_192 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody701_193 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) RemovedBody701_191 RemovedBody701_192

def RemovedBody701_194 : StackLang.HolProg 64 :=
.seq RemovedBody701_188 RemovedBody701_193

def RemovedBody701_195 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def RemovedBody701_196 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody701_197 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 701 9

def RemovedBody701_198 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody701_199 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody701_200 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody701_201 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody701_202 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def RemovedBody701_203 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def RemovedBody701_204 : StackLang.HolProg 64 :=
.seq RemovedBody701_202 RemovedBody701_203

def RemovedBody701_205 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def RemovedBody701_206 : StackLang.HolProg 64 :=
.seq RemovedBody701_204 RemovedBody701_205

def RemovedBody701_207 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody701_208 : StackLang.HolProg 64 :=
.seq RemovedBody701_206 RemovedBody701_207

def RemovedBody701_209 : StackLang.HolProg 64 :=
.seq RemovedBody701_201 RemovedBody701_208

def RemovedBody701_210 : StackLang.HolProg 64 :=
.seq RemovedBody701_200 RemovedBody701_209

def RemovedBody701_211 : StackLang.HolProg 64 :=
.seq RemovedBody701_199 RemovedBody701_210

def RemovedBody701_212 : StackLang.HolProg 64 :=
.seq RemovedBody701_198 RemovedBody701_211

def RemovedBody701_213 : StackLang.HolProg 64 :=
.seq RemovedBody701_197 RemovedBody701_212

def RemovedBody701_214 : StackLang.HolProg 64 :=
.seq RemovedBody701_196 RemovedBody701_213

def RemovedBody701_215 : StackLang.HolProg 64 :=
.seq RemovedBody701_195 RemovedBody701_214

def RemovedBody701_216 : StackLang.HolProg 64 :=
.seq RemovedBody701_194 RemovedBody701_215

def RemovedBody701_217 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody701_218 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody701_219 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody701_220 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody701_221 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody701_222 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody701_223 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 5 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def RemovedBody701_224 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody701_225 : StackLang.HolProg 64 :=
.seq RemovedBody701_223 RemovedBody701_224

def RemovedBody701_226 : StackLang.HolProg 64 :=
.seq RemovedBody701_222 RemovedBody701_225

def RemovedBody701_227 : StackLang.HolProg 64 :=
.seq RemovedBody701_221 RemovedBody701_226

def RemovedBody701_228 : StackLang.HolProg 64 :=
.seq RemovedBody701_220 RemovedBody701_227

def RemovedBody701_229 : StackLang.HolProg 64 :=
.seq RemovedBody701_219 RemovedBody701_228

def RemovedBody701_230 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody701_231 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def RemovedBody701_232 : StackLang.HolProg 64 :=
.seq RemovedBody701_230 RemovedBody701_231

def RemovedBody701_233 : StackLang.HolProg 64 :=
.call (some (RemovedBody701_229, 0, 701, 8)) (Sum.inl 68) (some (RemovedBody701_232, 701, 9))

def RemovedBody701_234 : StackLang.HolProg 64 :=
.seq RemovedBody701_218 RemovedBody701_233

def RemovedBody701_235 : StackLang.HolProg 64 :=
.seq RemovedBody701_217 RemovedBody701_234

def RemovedBody701_236 : StackLang.HolProg 64 :=
.seq RemovedBody701_216 RemovedBody701_235

def RemovedBody701_237 : StackLang.HolProg 64 :=
.seq RemovedBody701_187 RemovedBody701_236

def RemovedBody701_238 : StackLang.HolProg 64 :=
.seq RemovedBody701_184 RemovedBody701_237

def RemovedBody701_239 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody701_240 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody701_241 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 0 88#64))

def RemovedBody701_242 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody701_243 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 2
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 0 96#64))

def RemovedBody701_244 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody701_245 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 4 128#64)

def RemovedBody701_246 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 3 0#64)

def RemovedBody701_247 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 5
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody701_248 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody701_249 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 3136#64)

def RemovedBody701_250 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody701_251 : StackLang.HolProg 64 :=
.seq RemovedBody701_249 RemovedBody701_250

def RemovedBody701_252 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody701_253 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 2#64)

def RemovedBody701_254 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 1

def RemovedBody701_255 : StackLang.HolProg 64 :=
.seq RemovedBody701_253 RemovedBody701_254

def RemovedBody701_256 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody701_257 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) RemovedBody701_255 RemovedBody701_256

def RemovedBody701_258 : StackLang.HolProg 64 :=
.seq RemovedBody701_252 RemovedBody701_257

def RemovedBody701_259 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def RemovedBody701_260 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody701_261 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 701 11

def RemovedBody701_262 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody701_263 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody701_264 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody701_265 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody701_266 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def RemovedBody701_267 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def RemovedBody701_268 : StackLang.HolProg 64 :=
.seq RemovedBody701_266 RemovedBody701_267

def RemovedBody701_269 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def RemovedBody701_270 : StackLang.HolProg 64 :=
.seq RemovedBody701_268 RemovedBody701_269

def RemovedBody701_271 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody701_272 : StackLang.HolProg 64 :=
.seq RemovedBody701_270 RemovedBody701_271

def RemovedBody701_273 : StackLang.HolProg 64 :=
.seq RemovedBody701_265 RemovedBody701_272

def RemovedBody701_274 : StackLang.HolProg 64 :=
.seq RemovedBody701_264 RemovedBody701_273

def RemovedBody701_275 : StackLang.HolProg 64 :=
.seq RemovedBody701_263 RemovedBody701_274

def RemovedBody701_276 : StackLang.HolProg 64 :=
.seq RemovedBody701_262 RemovedBody701_275

def RemovedBody701_277 : StackLang.HolProg 64 :=
.seq RemovedBody701_261 RemovedBody701_276

def RemovedBody701_278 : StackLang.HolProg 64 :=
.seq RemovedBody701_260 RemovedBody701_277

def RemovedBody701_279 : StackLang.HolProg 64 :=
.seq RemovedBody701_259 RemovedBody701_278

def RemovedBody701_280 : StackLang.HolProg 64 :=
.seq RemovedBody701_258 RemovedBody701_279

def RemovedBody701_281 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody701_282 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody701_283 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody701_284 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody701_285 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody701_286 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody701_287 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 2
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 24#64))

def RemovedBody701_288 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody701_289 : StackLang.HolProg 64 :=
.seq RemovedBody701_287 RemovedBody701_288

def RemovedBody701_290 : StackLang.HolProg 64 :=
.seq RemovedBody701_286 RemovedBody701_289

def RemovedBody701_291 : StackLang.HolProg 64 :=
.seq RemovedBody701_285 RemovedBody701_290

def RemovedBody701_292 : StackLang.HolProg 64 :=
.seq RemovedBody701_284 RemovedBody701_291

def RemovedBody701_293 : StackLang.HolProg 64 :=
.seq RemovedBody701_283 RemovedBody701_292

def RemovedBody701_294 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 2
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 24#64))

def RemovedBody701_295 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody701_296 : StackLang.HolProg 64 :=
.seq RemovedBody701_294 RemovedBody701_295

def RemovedBody701_297 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def RemovedBody701_298 : StackLang.HolProg 64 :=
.seq RemovedBody701_296 RemovedBody701_297

def RemovedBody701_299 : StackLang.HolProg 64 :=
.call (some (RemovedBody701_293, 0, 701, 10)) (Sum.inl 484) (some (RemovedBody701_298, 701, 11))

def RemovedBody701_300 : StackLang.HolProg 64 :=
.seq RemovedBody701_282 RemovedBody701_299

def RemovedBody701_301 : StackLang.HolProg 64 :=
.seq RemovedBody701_281 RemovedBody701_300

def RemovedBody701_302 : StackLang.HolProg 64 :=
.seq RemovedBody701_280 RemovedBody701_301

def RemovedBody701_303 : StackLang.HolProg 64 :=
.seq RemovedBody701_251 RemovedBody701_302

def RemovedBody701_304 : StackLang.HolProg 64 :=
.seq RemovedBody701_248 RemovedBody701_303

def RemovedBody701_305 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody701_306 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 1 0
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 0)))

def RemovedBody701_307 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 2
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 24#64))

def RemovedBody701_308 : StackLang.HolProg 64 :=
.seq RemovedBody701_306 RemovedBody701_307

def RemovedBody701_309 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody701_310 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 3137#64)

def RemovedBody701_311 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody701_312 : StackLang.HolProg 64 :=
.seq RemovedBody701_310 RemovedBody701_311

def RemovedBody701_313 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody701_314 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 2#64)

def RemovedBody701_315 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 1

def RemovedBody701_316 : StackLang.HolProg 64 :=
.seq RemovedBody701_314 RemovedBody701_315

def RemovedBody701_317 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody701_318 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) RemovedBody701_316 RemovedBody701_317

def RemovedBody701_319 : StackLang.HolProg 64 :=
.seq RemovedBody701_313 RemovedBody701_318

def RemovedBody701_320 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def RemovedBody701_321 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody701_322 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 701 13

def RemovedBody701_323 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody701_324 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody701_325 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody701_326 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody701_327 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def RemovedBody701_328 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def RemovedBody701_329 : StackLang.HolProg 64 :=
.seq RemovedBody701_327 RemovedBody701_328

def RemovedBody701_330 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def RemovedBody701_331 : StackLang.HolProg 64 :=
.seq RemovedBody701_329 RemovedBody701_330

def RemovedBody701_332 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody701_333 : StackLang.HolProg 64 :=
.seq RemovedBody701_331 RemovedBody701_332

def RemovedBody701_334 : StackLang.HolProg 64 :=
.seq RemovedBody701_326 RemovedBody701_333

def RemovedBody701_335 : StackLang.HolProg 64 :=
.seq RemovedBody701_325 RemovedBody701_334

def RemovedBody701_336 : StackLang.HolProg 64 :=
.seq RemovedBody701_324 RemovedBody701_335

def RemovedBody701_337 : StackLang.HolProg 64 :=
.seq RemovedBody701_323 RemovedBody701_336

def RemovedBody701_338 : StackLang.HolProg 64 :=
.seq RemovedBody701_322 RemovedBody701_337

def RemovedBody701_339 : StackLang.HolProg 64 :=
.seq RemovedBody701_321 RemovedBody701_338

def RemovedBody701_340 : StackLang.HolProg 64 :=
.seq RemovedBody701_320 RemovedBody701_339

def RemovedBody701_341 : StackLang.HolProg 64 :=
.seq RemovedBody701_319 RemovedBody701_340

def RemovedBody701_342 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody701_343 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody701_344 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody701_345 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody701_346 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody701_347 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody701_348 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 2 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def RemovedBody701_349 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody701_350 : StackLang.HolProg 64 :=
.seq RemovedBody701_348 RemovedBody701_349

def RemovedBody701_351 : StackLang.HolProg 64 :=
.seq RemovedBody701_347 RemovedBody701_350

def RemovedBody701_352 : StackLang.HolProg 64 :=
.seq RemovedBody701_346 RemovedBody701_351

def RemovedBody701_353 : StackLang.HolProg 64 :=
.seq RemovedBody701_345 RemovedBody701_352

def RemovedBody701_354 : StackLang.HolProg 64 :=
.seq RemovedBody701_344 RemovedBody701_353

def RemovedBody701_355 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody701_356 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def RemovedBody701_357 : StackLang.HolProg 64 :=
.seq RemovedBody701_355 RemovedBody701_356

def RemovedBody701_358 : StackLang.HolProg 64 :=
.call (some (RemovedBody701_354, 0, 701, 12)) (Sum.inl 698) (some (RemovedBody701_357, 701, 13))

def RemovedBody701_359 : StackLang.HolProg 64 :=
.seq RemovedBody701_343 RemovedBody701_358

def RemovedBody701_360 : StackLang.HolProg 64 :=
.seq RemovedBody701_342 RemovedBody701_359

def RemovedBody701_361 : StackLang.HolProg 64 :=
.seq RemovedBody701_341 RemovedBody701_360

def RemovedBody701_362 : StackLang.HolProg 64 :=
.seq RemovedBody701_312 RemovedBody701_361

def RemovedBody701_363 : StackLang.HolProg 64 :=
.seq RemovedBody701_309 RemovedBody701_362

def RemovedBody701_364 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody701_365 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 1 0
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 0)))

def RemovedBody701_366 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 2
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody701_367 : StackLang.HolProg 64 :=
.seq RemovedBody701_365 RemovedBody701_366

def RemovedBody701_368 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody701_369 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 3138#64)

def RemovedBody701_370 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody701_371 : StackLang.HolProg 64 :=
.seq RemovedBody701_369 RemovedBody701_370

def RemovedBody701_372 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody701_373 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 2#64)

def RemovedBody701_374 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 1

def RemovedBody701_375 : StackLang.HolProg 64 :=
.seq RemovedBody701_373 RemovedBody701_374

def RemovedBody701_376 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody701_377 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) RemovedBody701_375 RemovedBody701_376

def RemovedBody701_378 : StackLang.HolProg 64 :=
.seq RemovedBody701_372 RemovedBody701_377

def RemovedBody701_379 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def RemovedBody701_380 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody701_381 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 701 15

def RemovedBody701_382 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody701_383 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody701_384 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody701_385 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody701_386 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def RemovedBody701_387 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def RemovedBody701_388 : StackLang.HolProg 64 :=
.seq RemovedBody701_386 RemovedBody701_387

def RemovedBody701_389 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def RemovedBody701_390 : StackLang.HolProg 64 :=
.seq RemovedBody701_388 RemovedBody701_389

def RemovedBody701_391 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody701_392 : StackLang.HolProg 64 :=
.seq RemovedBody701_390 RemovedBody701_391

def RemovedBody701_393 : StackLang.HolProg 64 :=
.seq RemovedBody701_385 RemovedBody701_392

def RemovedBody701_394 : StackLang.HolProg 64 :=
.seq RemovedBody701_384 RemovedBody701_393

def RemovedBody701_395 : StackLang.HolProg 64 :=
.seq RemovedBody701_383 RemovedBody701_394

def RemovedBody701_396 : StackLang.HolProg 64 :=
.seq RemovedBody701_382 RemovedBody701_395

def RemovedBody701_397 : StackLang.HolProg 64 :=
.seq RemovedBody701_381 RemovedBody701_396

def RemovedBody701_398 : StackLang.HolProg 64 :=
.seq RemovedBody701_380 RemovedBody701_397

def RemovedBody701_399 : StackLang.HolProg 64 :=
.seq RemovedBody701_379 RemovedBody701_398

def RemovedBody701_400 : StackLang.HolProg 64 :=
.seq RemovedBody701_378 RemovedBody701_399

def RemovedBody701_401 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody701_402 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody701_403 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody701_404 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody701_405 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody701_406 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody701_407 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 3
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 32#64))

def RemovedBody701_408 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 2
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 24#64))

def RemovedBody701_409 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody701_410 : StackLang.HolProg 64 :=
.seq RemovedBody701_408 RemovedBody701_409

def RemovedBody701_411 : StackLang.HolProg 64 :=
.seq RemovedBody701_407 RemovedBody701_410

def RemovedBody701_412 : StackLang.HolProg 64 :=
.seq RemovedBody701_406 RemovedBody701_411

def RemovedBody701_413 : StackLang.HolProg 64 :=
.seq RemovedBody701_405 RemovedBody701_412

def RemovedBody701_414 : StackLang.HolProg 64 :=
.seq RemovedBody701_404 RemovedBody701_413

def RemovedBody701_415 : StackLang.HolProg 64 :=
.seq RemovedBody701_403 RemovedBody701_414

def RemovedBody701_416 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 3
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 32#64))

def RemovedBody701_417 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 2
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 24#64))

def RemovedBody701_418 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody701_419 : StackLang.HolProg 64 :=
.seq RemovedBody701_417 RemovedBody701_418

def RemovedBody701_420 : StackLang.HolProg 64 :=
.seq RemovedBody701_416 RemovedBody701_419

def RemovedBody701_421 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def RemovedBody701_422 : StackLang.HolProg 64 :=
.seq RemovedBody701_420 RemovedBody701_421

def RemovedBody701_423 : StackLang.HolProg 64 :=
.call (some (RemovedBody701_415, 0, 701, 14)) (Sum.inl 70) (some (RemovedBody701_422, 701, 15))

def RemovedBody701_424 : StackLang.HolProg 64 :=
.seq RemovedBody701_402 RemovedBody701_423

def RemovedBody701_425 : StackLang.HolProg 64 :=
.seq RemovedBody701_401 RemovedBody701_424

def RemovedBody701_426 : StackLang.HolProg 64 :=
.seq RemovedBody701_400 RemovedBody701_425

def RemovedBody701_427 : StackLang.HolProg 64 :=
.seq RemovedBody701_371 RemovedBody701_426

def RemovedBody701_428 : StackLang.HolProg 64 :=
.seq RemovedBody701_368 RemovedBody701_427

def RemovedBody701_429 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody701_430 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody701_431 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 0#64)

def RemovedBody701_432 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody701_433 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 0 4#64)

def RemovedBody701_434 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody701_435 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551480#64))

def RemovedBody701_436 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 8#64)

def RemovedBody701_437 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody701_438 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def RemovedBody701_439 : StackLang.HolProg 64 :=
.seq RemovedBody701_437 RemovedBody701_438

def RemovedBody701_440 : StackLang.HolProg 64 :=
.seq RemovedBody701_436 RemovedBody701_439

def RemovedBody701_441 : StackLang.HolProg 64 :=
.seq RemovedBody701_435 RemovedBody701_440

def RemovedBody701_442 : StackLang.HolProg 64 :=
.seq RemovedBody701_434 RemovedBody701_441

def RemovedBody701_443 : StackLang.HolProg 64 :=
.seq RemovedBody701_433 RemovedBody701_442

def RemovedBody701_444 : StackLang.HolProg 64 :=
.seq RemovedBody701_432 RemovedBody701_443

def RemovedBody701_445 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody701_446 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.notEqual) 0 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1) RemovedBody701_444 RemovedBody701_445

def RemovedBody701_447 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody701_448 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody701_449 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551592#64))

def RemovedBody701_450 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsl 0 0
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 1#64)))

def RemovedBody701_451 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 0 0
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 26)))

def RemovedBody701_452 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 0 18446744073709551360#64))

def RemovedBody701_453 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 1 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 120#64)))

def RemovedBody701_454 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody701_455 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 2
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 1 0#64))

def RemovedBody701_456 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody701_457 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 0 18446744073709551360#64))

def RemovedBody701_458 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 0 0
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 128#64)))

def RemovedBody701_459 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 64#64)

def RemovedBody701_460 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody701_461 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 0 0#64))

def RemovedBody701_462 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 0#64)

def RemovedBody701_463 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody701_464 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 40#64)))

def RemovedBody701_465 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 3

def RemovedBody701_466 : StackLang.HolProg 64 :=
.seq RemovedBody701_464 RemovedBody701_465

def RemovedBody701_467 : StackLang.HolProg 64 :=
.seq RemovedBody701_463 RemovedBody701_466

def RemovedBody701_468 : StackLang.HolProg 64 :=
.seq RemovedBody701_462 RemovedBody701_467

def RemovedBody701_469 : StackLang.HolProg 64 :=
.seq RemovedBody701_461 RemovedBody701_468

def RemovedBody701_470 : StackLang.HolProg 64 :=
.seq RemovedBody701_460 RemovedBody701_469

def RemovedBody701_471 : StackLang.HolProg 64 :=
.seq RemovedBody701_459 RemovedBody701_470

def RemovedBody701_472 : StackLang.HolProg 64 :=
.seq RemovedBody701_458 RemovedBody701_471

def RemovedBody701_473 : StackLang.HolProg 64 :=
.seq RemovedBody701_457 RemovedBody701_472

def RemovedBody701_474 : StackLang.HolProg 64 :=
.seq RemovedBody701_456 RemovedBody701_473

def RemovedBody701_475 : StackLang.HolProg 64 :=
.seq RemovedBody701_455 RemovedBody701_474

def RemovedBody701_476 : StackLang.HolProg 64 :=
.seq RemovedBody701_454 RemovedBody701_475

def RemovedBody701_477 : StackLang.HolProg 64 :=
.seq RemovedBody701_453 RemovedBody701_476

def RemovedBody701_478 : StackLang.HolProg 64 :=
.seq RemovedBody701_452 RemovedBody701_477

def RemovedBody701_479 : StackLang.HolProg 64 :=
.seq RemovedBody701_451 RemovedBody701_478

def RemovedBody701_480 : StackLang.HolProg 64 :=
.seq RemovedBody701_450 RemovedBody701_479

def RemovedBody701_481 : StackLang.HolProg 64 :=
.seq RemovedBody701_449 RemovedBody701_480

def RemovedBody701_482 : StackLang.HolProg 64 :=
.seq RemovedBody701_448 RemovedBody701_481

def RemovedBody701_483 : StackLang.HolProg 64 :=
.seq RemovedBody701_447 RemovedBody701_482

def RemovedBody701_484 : StackLang.HolProg 64 :=
.seq RemovedBody701_446 RemovedBody701_483

def RemovedBody701_485 : StackLang.HolProg 64 :=
.seq RemovedBody701_431 RemovedBody701_484

def RemovedBody701_486 : StackLang.HolProg 64 :=
.seq RemovedBody701_430 RemovedBody701_485

def RemovedBody701_487 : StackLang.HolProg 64 :=
.seq RemovedBody701_429 RemovedBody701_486

def RemovedBody701_488 : StackLang.HolProg 64 :=
.seq RemovedBody701_428 RemovedBody701_487

def RemovedBody701_489 : StackLang.HolProg 64 :=
.seq RemovedBody701_367 RemovedBody701_488

def RemovedBody701_490 : StackLang.HolProg 64 :=
.seq RemovedBody701_364 RemovedBody701_489

def RemovedBody701_491 : StackLang.HolProg 64 :=
.seq RemovedBody701_363 RemovedBody701_490

def RemovedBody701_492 : StackLang.HolProg 64 :=
.seq RemovedBody701_308 RemovedBody701_491

def RemovedBody701_493 : StackLang.HolProg 64 :=
.seq RemovedBody701_305 RemovedBody701_492

def RemovedBody701_494 : StackLang.HolProg 64 :=
.seq RemovedBody701_304 RemovedBody701_493

def RemovedBody701_495 : StackLang.HolProg 64 :=
.seq RemovedBody701_247 RemovedBody701_494

def RemovedBody701_496 : StackLang.HolProg 64 :=
.seq RemovedBody701_246 RemovedBody701_495

def RemovedBody701_497 : StackLang.HolProg 64 :=
.seq RemovedBody701_245 RemovedBody701_496

def RemovedBody701_498 : StackLang.HolProg 64 :=
.seq RemovedBody701_244 RemovedBody701_497

def RemovedBody701_499 : StackLang.HolProg 64 :=
.seq RemovedBody701_243 RemovedBody701_498

def RemovedBody701_500 : StackLang.HolProg 64 :=
.seq RemovedBody701_242 RemovedBody701_499

def RemovedBody701_501 : StackLang.HolProg 64 :=
.seq RemovedBody701_241 RemovedBody701_500

def RemovedBody701_502 : StackLang.HolProg 64 :=
.seq RemovedBody701_240 RemovedBody701_501

def RemovedBody701_503 : StackLang.HolProg 64 :=
.seq RemovedBody701_239 RemovedBody701_502

def RemovedBody701_504 : StackLang.HolProg 64 :=
.seq RemovedBody701_238 RemovedBody701_503

def RemovedBody701_505 : StackLang.HolProg 64 :=
.seq RemovedBody701_183 RemovedBody701_504

def RemovedBody701_506 : StackLang.HolProg 64 :=
.seq RemovedBody701_182 RemovedBody701_505

def RemovedBody701_507 : StackLang.HolProg 64 :=
.seq RemovedBody701_181 RemovedBody701_506

def RemovedBody701_508 : StackLang.HolProg 64 :=
.seq RemovedBody701_180 RemovedBody701_507

def RemovedBody701_509 : StackLang.HolProg 64 :=
.seq RemovedBody701_127 RemovedBody701_508

def RemovedBody701_510 : StackLang.HolProg 64 :=
.seq RemovedBody701_126 RemovedBody701_509

def RemovedBody701_511 : StackLang.HolProg 64 :=
.seq RemovedBody701_125 RemovedBody701_510

def RemovedBody701_512 : StackLang.HolProg 64 :=
.seq RemovedBody701_72 RemovedBody701_511

def RemovedBody701_513 : StackLang.HolProg 64 :=
.seq RemovedBody701_71 RemovedBody701_512

def RemovedBody701_514 : StackLang.HolProg 64 :=
.seq RemovedBody701_70 RemovedBody701_513

def RemovedBody701_515 : StackLang.HolProg 64 :=
.seq RemovedBody701_69 RemovedBody701_514

def RemovedBody701_516 : StackLang.HolProg 64 :=
.seq RemovedBody701_16 RemovedBody701_515

def RemovedBody701_517 : StackLang.HolProg 64 :=
.seq RemovedBody701_13 RemovedBody701_516

def RemovedBody701_518 : StackLang.HolProg 64 :=
.seq RemovedBody701_12 RemovedBody701_517

def RemovedBody701_519 : StackLang.HolProg 64 :=
.seq RemovedBody701_11 RemovedBody701_518

def RemovedBody701_520 : StackLang.HolProg 64 :=
.seq RemovedBody701_10 RemovedBody701_519

def RemovedBody701_521 : StackLang.HolProg 64 :=
.seq RemovedBody701_9 RemovedBody701_520

def RemovedBody701_522 : StackLang.HolProg 64 :=
.seq RemovedBody701_8 RemovedBody701_521

def RemovedBody701_523 : StackLang.HolProg 64 :=
.seq RemovedBody701_7 RemovedBody701_522

def RemovedBody701_524 : StackLang.HolProg 64 :=
.seq RemovedBody701_6 RemovedBody701_523

def Removed701 : Nat × StackLang.HolProg 64 := (701, RemovedBody701_524)
theorem Removed701_eq : StackRemove.progComp false riscvConfig.addrOffset (riscvConfig.regCount - (riscvConfig.avoidRegs.length + 3)) Alloc701 = Removed701 := by
  kernel_rfl
#print axioms Removed701_eq
end InitECandidate.Proofs.BackendStages
