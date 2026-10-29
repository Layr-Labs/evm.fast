import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.BackendStages.Alloc702
import Flapjack.Compiler.Backend.Backend
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
namespace InitECandidate.Proofs.BackendStages
def RemovedBody702_0 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 40#64)))

def RemovedBody702_1 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 2#64)

def RemovedBody702_2 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 1

def RemovedBody702_3 : StackLang.HolProg 64 :=
.seq RemovedBody702_1 RemovedBody702_2

def RemovedBody702_4 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody702_5 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) RemovedBody702_3 RemovedBody702_4

def RemovedBody702_6 : StackLang.HolProg 64 :=
.seq RemovedBody702_0 RemovedBody702_5

def RemovedBody702_7 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody702_8 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551592#64))

def RemovedBody702_9 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsl 1 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 1#64)))

def RemovedBody702_10 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 1 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 26)))

def RemovedBody702_11 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 1 18446744073709551360#64))

def RemovedBody702_12 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 2
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 1 112#64))

def RemovedBody702_13 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 6000#64)

def RemovedBody702_14 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 32#64))

def RemovedBody702_15 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 2
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody702_16 : StackLang.HolProg 64 :=
.seq RemovedBody702_14 RemovedBody702_15

def RemovedBody702_17 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody702_18 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 3139#64)

def RemovedBody702_19 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody702_20 : StackLang.HolProg 64 :=
.seq RemovedBody702_18 RemovedBody702_19

def RemovedBody702_21 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody702_22 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 2#64)

def RemovedBody702_23 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 1

def RemovedBody702_24 : StackLang.HolProg 64 :=
.seq RemovedBody702_22 RemovedBody702_23

def RemovedBody702_25 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody702_26 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) RemovedBody702_24 RemovedBody702_25

def RemovedBody702_27 : StackLang.HolProg 64 :=
.seq RemovedBody702_21 RemovedBody702_26

def RemovedBody702_28 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def RemovedBody702_29 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody702_30 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 702 3

def RemovedBody702_31 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody702_32 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody702_33 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody702_34 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody702_35 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def RemovedBody702_36 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def RemovedBody702_37 : StackLang.HolProg 64 :=
.seq RemovedBody702_35 RemovedBody702_36

def RemovedBody702_38 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def RemovedBody702_39 : StackLang.HolProg 64 :=
.seq RemovedBody702_37 RemovedBody702_38

def RemovedBody702_40 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody702_41 : StackLang.HolProg 64 :=
.seq RemovedBody702_39 RemovedBody702_40

def RemovedBody702_42 : StackLang.HolProg 64 :=
.seq RemovedBody702_34 RemovedBody702_41

def RemovedBody702_43 : StackLang.HolProg 64 :=
.seq RemovedBody702_33 RemovedBody702_42

def RemovedBody702_44 : StackLang.HolProg 64 :=
.seq RemovedBody702_32 RemovedBody702_43

def RemovedBody702_45 : StackLang.HolProg 64 :=
.seq RemovedBody702_31 RemovedBody702_44

def RemovedBody702_46 : StackLang.HolProg 64 :=
.seq RemovedBody702_30 RemovedBody702_45

def RemovedBody702_47 : StackLang.HolProg 64 :=
.seq RemovedBody702_29 RemovedBody702_46

def RemovedBody702_48 : StackLang.HolProg 64 :=
.seq RemovedBody702_28 RemovedBody702_47

def RemovedBody702_49 : StackLang.HolProg 64 :=
.seq RemovedBody702_27 RemovedBody702_48

def RemovedBody702_50 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody702_51 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody702_52 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody702_53 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody702_54 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody702_55 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody702_56 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody702_57 : StackLang.HolProg 64 :=
.seq RemovedBody702_55 RemovedBody702_56

def RemovedBody702_58 : StackLang.HolProg 64 :=
.seq RemovedBody702_54 RemovedBody702_57

def RemovedBody702_59 : StackLang.HolProg 64 :=
.seq RemovedBody702_53 RemovedBody702_58

def RemovedBody702_60 : StackLang.HolProg 64 :=
.seq RemovedBody702_52 RemovedBody702_59

def RemovedBody702_61 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody702_62 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def RemovedBody702_63 : StackLang.HolProg 64 :=
.seq RemovedBody702_61 RemovedBody702_62

def RemovedBody702_64 : StackLang.HolProg 64 :=
.call (some (RemovedBody702_60, 0, 702, 2)) (Sum.inl 470) (some (RemovedBody702_63, 702, 3))

def RemovedBody702_65 : StackLang.HolProg 64 :=
.seq RemovedBody702_51 RemovedBody702_64

def RemovedBody702_66 : StackLang.HolProg 64 :=
.seq RemovedBody702_50 RemovedBody702_65

def RemovedBody702_67 : StackLang.HolProg 64 :=
.seq RemovedBody702_49 RemovedBody702_66

def RemovedBody702_68 : StackLang.HolProg 64 :=
.seq RemovedBody702_20 RemovedBody702_67

def RemovedBody702_69 : StackLang.HolProg 64 :=
.seq RemovedBody702_17 RemovedBody702_68

def RemovedBody702_70 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody702_71 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 64#64)

def RemovedBody702_72 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody702_73 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody702_74 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 3140#64)

def RemovedBody702_75 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody702_76 : StackLang.HolProg 64 :=
.seq RemovedBody702_74 RemovedBody702_75

def RemovedBody702_77 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody702_78 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 2#64)

def RemovedBody702_79 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 1

def RemovedBody702_80 : StackLang.HolProg 64 :=
.seq RemovedBody702_78 RemovedBody702_79

def RemovedBody702_81 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody702_82 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) RemovedBody702_80 RemovedBody702_81

def RemovedBody702_83 : StackLang.HolProg 64 :=
.seq RemovedBody702_77 RemovedBody702_82

def RemovedBody702_84 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def RemovedBody702_85 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody702_86 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 702 5

def RemovedBody702_87 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody702_88 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody702_89 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody702_90 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody702_91 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def RemovedBody702_92 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def RemovedBody702_93 : StackLang.HolProg 64 :=
.seq RemovedBody702_91 RemovedBody702_92

def RemovedBody702_94 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def RemovedBody702_95 : StackLang.HolProg 64 :=
.seq RemovedBody702_93 RemovedBody702_94

def RemovedBody702_96 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody702_97 : StackLang.HolProg 64 :=
.seq RemovedBody702_95 RemovedBody702_96

def RemovedBody702_98 : StackLang.HolProg 64 :=
.seq RemovedBody702_90 RemovedBody702_97

def RemovedBody702_99 : StackLang.HolProg 64 :=
.seq RemovedBody702_89 RemovedBody702_98

def RemovedBody702_100 : StackLang.HolProg 64 :=
.seq RemovedBody702_88 RemovedBody702_99

def RemovedBody702_101 : StackLang.HolProg 64 :=
.seq RemovedBody702_87 RemovedBody702_100

def RemovedBody702_102 : StackLang.HolProg 64 :=
.seq RemovedBody702_86 RemovedBody702_101

def RemovedBody702_103 : StackLang.HolProg 64 :=
.seq RemovedBody702_85 RemovedBody702_102

def RemovedBody702_104 : StackLang.HolProg 64 :=
.seq RemovedBody702_84 RemovedBody702_103

def RemovedBody702_105 : StackLang.HolProg 64 :=
.seq RemovedBody702_83 RemovedBody702_104

def RemovedBody702_106 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody702_107 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody702_108 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody702_109 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody702_110 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody702_111 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody702_112 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 0 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def RemovedBody702_113 : StackLang.HolProg 64 :=
.seq RemovedBody702_111 RemovedBody702_112

def RemovedBody702_114 : StackLang.HolProg 64 :=
.seq RemovedBody702_110 RemovedBody702_113

def RemovedBody702_115 : StackLang.HolProg 64 :=
.seq RemovedBody702_109 RemovedBody702_114

def RemovedBody702_116 : StackLang.HolProg 64 :=
.seq RemovedBody702_108 RemovedBody702_115

def RemovedBody702_117 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody702_118 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def RemovedBody702_119 : StackLang.HolProg 64 :=
.seq RemovedBody702_117 RemovedBody702_118

def RemovedBody702_120 : StackLang.HolProg 64 :=
.call (some (RemovedBody702_116, 0, 702, 4)) (Sum.inl 68) (some (RemovedBody702_119, 702, 5))

def RemovedBody702_121 : StackLang.HolProg 64 :=
.seq RemovedBody702_107 RemovedBody702_120

def RemovedBody702_122 : StackLang.HolProg 64 :=
.seq RemovedBody702_106 RemovedBody702_121

def RemovedBody702_123 : StackLang.HolProg 64 :=
.seq RemovedBody702_105 RemovedBody702_122

def RemovedBody702_124 : StackLang.HolProg 64 :=
.seq RemovedBody702_76 RemovedBody702_123

def RemovedBody702_125 : StackLang.HolProg 64 :=
.seq RemovedBody702_73 RemovedBody702_124

def RemovedBody702_126 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody702_127 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 24#64))

def RemovedBody702_128 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody702_129 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 3141#64)

def RemovedBody702_130 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody702_131 : StackLang.HolProg 64 :=
.seq RemovedBody702_129 RemovedBody702_130

def RemovedBody702_132 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody702_133 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 2#64)

def RemovedBody702_134 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 1

def RemovedBody702_135 : StackLang.HolProg 64 :=
.seq RemovedBody702_133 RemovedBody702_134

def RemovedBody702_136 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody702_137 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) RemovedBody702_135 RemovedBody702_136

def RemovedBody702_138 : StackLang.HolProg 64 :=
.seq RemovedBody702_132 RemovedBody702_137

def RemovedBody702_139 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def RemovedBody702_140 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody702_141 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 702 7

def RemovedBody702_142 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody702_143 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody702_144 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody702_145 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody702_146 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def RemovedBody702_147 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def RemovedBody702_148 : StackLang.HolProg 64 :=
.seq RemovedBody702_146 RemovedBody702_147

def RemovedBody702_149 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def RemovedBody702_150 : StackLang.HolProg 64 :=
.seq RemovedBody702_148 RemovedBody702_149

def RemovedBody702_151 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody702_152 : StackLang.HolProg 64 :=
.seq RemovedBody702_150 RemovedBody702_151

def RemovedBody702_153 : StackLang.HolProg 64 :=
.seq RemovedBody702_145 RemovedBody702_152

def RemovedBody702_154 : StackLang.HolProg 64 :=
.seq RemovedBody702_144 RemovedBody702_153

def RemovedBody702_155 : StackLang.HolProg 64 :=
.seq RemovedBody702_143 RemovedBody702_154

def RemovedBody702_156 : StackLang.HolProg 64 :=
.seq RemovedBody702_142 RemovedBody702_155

def RemovedBody702_157 : StackLang.HolProg 64 :=
.seq RemovedBody702_141 RemovedBody702_156

def RemovedBody702_158 : StackLang.HolProg 64 :=
.seq RemovedBody702_140 RemovedBody702_157

def RemovedBody702_159 : StackLang.HolProg 64 :=
.seq RemovedBody702_139 RemovedBody702_158

def RemovedBody702_160 : StackLang.HolProg 64 :=
.seq RemovedBody702_138 RemovedBody702_159

def RemovedBody702_161 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody702_162 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody702_163 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody702_164 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody702_165 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody702_166 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody702_167 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 0 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def RemovedBody702_168 : StackLang.HolProg 64 :=
.seq RemovedBody702_166 RemovedBody702_167

def RemovedBody702_169 : StackLang.HolProg 64 :=
.seq RemovedBody702_165 RemovedBody702_168

def RemovedBody702_170 : StackLang.HolProg 64 :=
.seq RemovedBody702_164 RemovedBody702_169

def RemovedBody702_171 : StackLang.HolProg 64 :=
.seq RemovedBody702_163 RemovedBody702_170

def RemovedBody702_172 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody702_173 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def RemovedBody702_174 : StackLang.HolProg 64 :=
.seq RemovedBody702_172 RemovedBody702_173

def RemovedBody702_175 : StackLang.HolProg 64 :=
.call (some (RemovedBody702_171, 0, 702, 6)) (Sum.inl 69) (some (RemovedBody702_174, 702, 7))

def RemovedBody702_176 : StackLang.HolProg 64 :=
.seq RemovedBody702_162 RemovedBody702_175

def RemovedBody702_177 : StackLang.HolProg 64 :=
.seq RemovedBody702_161 RemovedBody702_176

def RemovedBody702_178 : StackLang.HolProg 64 :=
.seq RemovedBody702_160 RemovedBody702_177

def RemovedBody702_179 : StackLang.HolProg 64 :=
.seq RemovedBody702_131 RemovedBody702_178

def RemovedBody702_180 : StackLang.HolProg 64 :=
.seq RemovedBody702_128 RemovedBody702_179

def RemovedBody702_181 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody702_182 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 96#64)

def RemovedBody702_183 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody702_184 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody702_185 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 3142#64)

def RemovedBody702_186 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody702_187 : StackLang.HolProg 64 :=
.seq RemovedBody702_185 RemovedBody702_186

def RemovedBody702_188 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody702_189 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 2#64)

def RemovedBody702_190 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 1

def RemovedBody702_191 : StackLang.HolProg 64 :=
.seq RemovedBody702_189 RemovedBody702_190

def RemovedBody702_192 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody702_193 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) RemovedBody702_191 RemovedBody702_192

def RemovedBody702_194 : StackLang.HolProg 64 :=
.seq RemovedBody702_188 RemovedBody702_193

def RemovedBody702_195 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def RemovedBody702_196 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody702_197 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 702 9

def RemovedBody702_198 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody702_199 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody702_200 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody702_201 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody702_202 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def RemovedBody702_203 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def RemovedBody702_204 : StackLang.HolProg 64 :=
.seq RemovedBody702_202 RemovedBody702_203

def RemovedBody702_205 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def RemovedBody702_206 : StackLang.HolProg 64 :=
.seq RemovedBody702_204 RemovedBody702_205

def RemovedBody702_207 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody702_208 : StackLang.HolProg 64 :=
.seq RemovedBody702_206 RemovedBody702_207

def RemovedBody702_209 : StackLang.HolProg 64 :=
.seq RemovedBody702_201 RemovedBody702_208

def RemovedBody702_210 : StackLang.HolProg 64 :=
.seq RemovedBody702_200 RemovedBody702_209

def RemovedBody702_211 : StackLang.HolProg 64 :=
.seq RemovedBody702_199 RemovedBody702_210

def RemovedBody702_212 : StackLang.HolProg 64 :=
.seq RemovedBody702_198 RemovedBody702_211

def RemovedBody702_213 : StackLang.HolProg 64 :=
.seq RemovedBody702_197 RemovedBody702_212

def RemovedBody702_214 : StackLang.HolProg 64 :=
.seq RemovedBody702_196 RemovedBody702_213

def RemovedBody702_215 : StackLang.HolProg 64 :=
.seq RemovedBody702_195 RemovedBody702_214

def RemovedBody702_216 : StackLang.HolProg 64 :=
.seq RemovedBody702_194 RemovedBody702_215

def RemovedBody702_217 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody702_218 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody702_219 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody702_220 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody702_221 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody702_222 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody702_223 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 5 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def RemovedBody702_224 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody702_225 : StackLang.HolProg 64 :=
.seq RemovedBody702_223 RemovedBody702_224

def RemovedBody702_226 : StackLang.HolProg 64 :=
.seq RemovedBody702_222 RemovedBody702_225

def RemovedBody702_227 : StackLang.HolProg 64 :=
.seq RemovedBody702_221 RemovedBody702_226

def RemovedBody702_228 : StackLang.HolProg 64 :=
.seq RemovedBody702_220 RemovedBody702_227

def RemovedBody702_229 : StackLang.HolProg 64 :=
.seq RemovedBody702_219 RemovedBody702_228

def RemovedBody702_230 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody702_231 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def RemovedBody702_232 : StackLang.HolProg 64 :=
.seq RemovedBody702_230 RemovedBody702_231

def RemovedBody702_233 : StackLang.HolProg 64 :=
.call (some (RemovedBody702_229, 0, 702, 8)) (Sum.inl 68) (some (RemovedBody702_232, 702, 9))

def RemovedBody702_234 : StackLang.HolProg 64 :=
.seq RemovedBody702_218 RemovedBody702_233

def RemovedBody702_235 : StackLang.HolProg 64 :=
.seq RemovedBody702_217 RemovedBody702_234

def RemovedBody702_236 : StackLang.HolProg 64 :=
.seq RemovedBody702_216 RemovedBody702_235

def RemovedBody702_237 : StackLang.HolProg 64 :=
.seq RemovedBody702_187 RemovedBody702_236

def RemovedBody702_238 : StackLang.HolProg 64 :=
.seq RemovedBody702_184 RemovedBody702_237

def RemovedBody702_239 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody702_240 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody702_241 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 0 88#64))

def RemovedBody702_242 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody702_243 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 2
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 0 96#64))

def RemovedBody702_244 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody702_245 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 4 96#64)

def RemovedBody702_246 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 3 0#64)

def RemovedBody702_247 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 5
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody702_248 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody702_249 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 3143#64)

def RemovedBody702_250 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody702_251 : StackLang.HolProg 64 :=
.seq RemovedBody702_249 RemovedBody702_250

def RemovedBody702_252 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody702_253 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 2#64)

def RemovedBody702_254 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 1

def RemovedBody702_255 : StackLang.HolProg 64 :=
.seq RemovedBody702_253 RemovedBody702_254

def RemovedBody702_256 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody702_257 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) RemovedBody702_255 RemovedBody702_256

def RemovedBody702_258 : StackLang.HolProg 64 :=
.seq RemovedBody702_252 RemovedBody702_257

def RemovedBody702_259 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def RemovedBody702_260 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody702_261 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 702 11

def RemovedBody702_262 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody702_263 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody702_264 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody702_265 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody702_266 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def RemovedBody702_267 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def RemovedBody702_268 : StackLang.HolProg 64 :=
.seq RemovedBody702_266 RemovedBody702_267

def RemovedBody702_269 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def RemovedBody702_270 : StackLang.HolProg 64 :=
.seq RemovedBody702_268 RemovedBody702_269

def RemovedBody702_271 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody702_272 : StackLang.HolProg 64 :=
.seq RemovedBody702_270 RemovedBody702_271

def RemovedBody702_273 : StackLang.HolProg 64 :=
.seq RemovedBody702_265 RemovedBody702_272

def RemovedBody702_274 : StackLang.HolProg 64 :=
.seq RemovedBody702_264 RemovedBody702_273

def RemovedBody702_275 : StackLang.HolProg 64 :=
.seq RemovedBody702_263 RemovedBody702_274

def RemovedBody702_276 : StackLang.HolProg 64 :=
.seq RemovedBody702_262 RemovedBody702_275

def RemovedBody702_277 : StackLang.HolProg 64 :=
.seq RemovedBody702_261 RemovedBody702_276

def RemovedBody702_278 : StackLang.HolProg 64 :=
.seq RemovedBody702_260 RemovedBody702_277

def RemovedBody702_279 : StackLang.HolProg 64 :=
.seq RemovedBody702_259 RemovedBody702_278

def RemovedBody702_280 : StackLang.HolProg 64 :=
.seq RemovedBody702_258 RemovedBody702_279

def RemovedBody702_281 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody702_282 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody702_283 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody702_284 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody702_285 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody702_286 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody702_287 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 2
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 24#64))

def RemovedBody702_288 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody702_289 : StackLang.HolProg 64 :=
.seq RemovedBody702_287 RemovedBody702_288

def RemovedBody702_290 : StackLang.HolProg 64 :=
.seq RemovedBody702_286 RemovedBody702_289

def RemovedBody702_291 : StackLang.HolProg 64 :=
.seq RemovedBody702_285 RemovedBody702_290

def RemovedBody702_292 : StackLang.HolProg 64 :=
.seq RemovedBody702_284 RemovedBody702_291

def RemovedBody702_293 : StackLang.HolProg 64 :=
.seq RemovedBody702_283 RemovedBody702_292

def RemovedBody702_294 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 2
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 24#64))

def RemovedBody702_295 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody702_296 : StackLang.HolProg 64 :=
.seq RemovedBody702_294 RemovedBody702_295

def RemovedBody702_297 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def RemovedBody702_298 : StackLang.HolProg 64 :=
.seq RemovedBody702_296 RemovedBody702_297

def RemovedBody702_299 : StackLang.HolProg 64 :=
.call (some (RemovedBody702_293, 0, 702, 10)) (Sum.inl 484) (some (RemovedBody702_298, 702, 11))

def RemovedBody702_300 : StackLang.HolProg 64 :=
.seq RemovedBody702_282 RemovedBody702_299

def RemovedBody702_301 : StackLang.HolProg 64 :=
.seq RemovedBody702_281 RemovedBody702_300

def RemovedBody702_302 : StackLang.HolProg 64 :=
.seq RemovedBody702_280 RemovedBody702_301

def RemovedBody702_303 : StackLang.HolProg 64 :=
.seq RemovedBody702_251 RemovedBody702_302

def RemovedBody702_304 : StackLang.HolProg 64 :=
.seq RemovedBody702_248 RemovedBody702_303

def RemovedBody702_305 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody702_306 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 1 0
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 0)))

def RemovedBody702_307 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 2
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 24#64))

def RemovedBody702_308 : StackLang.HolProg 64 :=
.seq RemovedBody702_306 RemovedBody702_307

def RemovedBody702_309 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody702_310 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 3144#64)

def RemovedBody702_311 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody702_312 : StackLang.HolProg 64 :=
.seq RemovedBody702_310 RemovedBody702_311

def RemovedBody702_313 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody702_314 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 2#64)

def RemovedBody702_315 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 1

def RemovedBody702_316 : StackLang.HolProg 64 :=
.seq RemovedBody702_314 RemovedBody702_315

def RemovedBody702_317 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody702_318 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) RemovedBody702_316 RemovedBody702_317

def RemovedBody702_319 : StackLang.HolProg 64 :=
.seq RemovedBody702_313 RemovedBody702_318

def RemovedBody702_320 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def RemovedBody702_321 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody702_322 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 702 13

def RemovedBody702_323 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody702_324 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody702_325 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody702_326 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody702_327 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def RemovedBody702_328 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def RemovedBody702_329 : StackLang.HolProg 64 :=
.seq RemovedBody702_327 RemovedBody702_328

def RemovedBody702_330 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def RemovedBody702_331 : StackLang.HolProg 64 :=
.seq RemovedBody702_329 RemovedBody702_330

def RemovedBody702_332 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody702_333 : StackLang.HolProg 64 :=
.seq RemovedBody702_331 RemovedBody702_332

def RemovedBody702_334 : StackLang.HolProg 64 :=
.seq RemovedBody702_326 RemovedBody702_333

def RemovedBody702_335 : StackLang.HolProg 64 :=
.seq RemovedBody702_325 RemovedBody702_334

def RemovedBody702_336 : StackLang.HolProg 64 :=
.seq RemovedBody702_324 RemovedBody702_335

def RemovedBody702_337 : StackLang.HolProg 64 :=
.seq RemovedBody702_323 RemovedBody702_336

def RemovedBody702_338 : StackLang.HolProg 64 :=
.seq RemovedBody702_322 RemovedBody702_337

def RemovedBody702_339 : StackLang.HolProg 64 :=
.seq RemovedBody702_321 RemovedBody702_338

def RemovedBody702_340 : StackLang.HolProg 64 :=
.seq RemovedBody702_320 RemovedBody702_339

def RemovedBody702_341 : StackLang.HolProg 64 :=
.seq RemovedBody702_319 RemovedBody702_340

def RemovedBody702_342 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody702_343 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody702_344 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody702_345 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody702_346 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody702_347 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody702_348 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 2 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def RemovedBody702_349 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody702_350 : StackLang.HolProg 64 :=
.seq RemovedBody702_348 RemovedBody702_349

def RemovedBody702_351 : StackLang.HolProg 64 :=
.seq RemovedBody702_347 RemovedBody702_350

def RemovedBody702_352 : StackLang.HolProg 64 :=
.seq RemovedBody702_346 RemovedBody702_351

def RemovedBody702_353 : StackLang.HolProg 64 :=
.seq RemovedBody702_345 RemovedBody702_352

def RemovedBody702_354 : StackLang.HolProg 64 :=
.seq RemovedBody702_344 RemovedBody702_353

def RemovedBody702_355 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody702_356 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def RemovedBody702_357 : StackLang.HolProg 64 :=
.seq RemovedBody702_355 RemovedBody702_356

def RemovedBody702_358 : StackLang.HolProg 64 :=
.call (some (RemovedBody702_354, 0, 702, 12)) (Sum.inl 699) (some (RemovedBody702_357, 702, 13))

def RemovedBody702_359 : StackLang.HolProg 64 :=
.seq RemovedBody702_343 RemovedBody702_358

def RemovedBody702_360 : StackLang.HolProg 64 :=
.seq RemovedBody702_342 RemovedBody702_359

def RemovedBody702_361 : StackLang.HolProg 64 :=
.seq RemovedBody702_341 RemovedBody702_360

def RemovedBody702_362 : StackLang.HolProg 64 :=
.seq RemovedBody702_312 RemovedBody702_361

def RemovedBody702_363 : StackLang.HolProg 64 :=
.seq RemovedBody702_309 RemovedBody702_362

def RemovedBody702_364 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody702_365 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 1 0
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 0)))

def RemovedBody702_366 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 2
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody702_367 : StackLang.HolProg 64 :=
.seq RemovedBody702_365 RemovedBody702_366

def RemovedBody702_368 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody702_369 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 3145#64)

def RemovedBody702_370 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody702_371 : StackLang.HolProg 64 :=
.seq RemovedBody702_369 RemovedBody702_370

def RemovedBody702_372 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody702_373 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 2#64)

def RemovedBody702_374 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 1

def RemovedBody702_375 : StackLang.HolProg 64 :=
.seq RemovedBody702_373 RemovedBody702_374

def RemovedBody702_376 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody702_377 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) RemovedBody702_375 RemovedBody702_376

def RemovedBody702_378 : StackLang.HolProg 64 :=
.seq RemovedBody702_372 RemovedBody702_377

def RemovedBody702_379 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def RemovedBody702_380 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody702_381 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 702 15

def RemovedBody702_382 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody702_383 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody702_384 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody702_385 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody702_386 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def RemovedBody702_387 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def RemovedBody702_388 : StackLang.HolProg 64 :=
.seq RemovedBody702_386 RemovedBody702_387

def RemovedBody702_389 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def RemovedBody702_390 : StackLang.HolProg 64 :=
.seq RemovedBody702_388 RemovedBody702_389

def RemovedBody702_391 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody702_392 : StackLang.HolProg 64 :=
.seq RemovedBody702_390 RemovedBody702_391

def RemovedBody702_393 : StackLang.HolProg 64 :=
.seq RemovedBody702_385 RemovedBody702_392

def RemovedBody702_394 : StackLang.HolProg 64 :=
.seq RemovedBody702_384 RemovedBody702_393

def RemovedBody702_395 : StackLang.HolProg 64 :=
.seq RemovedBody702_383 RemovedBody702_394

def RemovedBody702_396 : StackLang.HolProg 64 :=
.seq RemovedBody702_382 RemovedBody702_395

def RemovedBody702_397 : StackLang.HolProg 64 :=
.seq RemovedBody702_381 RemovedBody702_396

def RemovedBody702_398 : StackLang.HolProg 64 :=
.seq RemovedBody702_380 RemovedBody702_397

def RemovedBody702_399 : StackLang.HolProg 64 :=
.seq RemovedBody702_379 RemovedBody702_398

def RemovedBody702_400 : StackLang.HolProg 64 :=
.seq RemovedBody702_378 RemovedBody702_399

def RemovedBody702_401 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody702_402 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody702_403 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody702_404 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody702_405 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody702_406 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody702_407 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 3
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 32#64))

def RemovedBody702_408 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 2
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 24#64))

def RemovedBody702_409 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody702_410 : StackLang.HolProg 64 :=
.seq RemovedBody702_408 RemovedBody702_409

def RemovedBody702_411 : StackLang.HolProg 64 :=
.seq RemovedBody702_407 RemovedBody702_410

def RemovedBody702_412 : StackLang.HolProg 64 :=
.seq RemovedBody702_406 RemovedBody702_411

def RemovedBody702_413 : StackLang.HolProg 64 :=
.seq RemovedBody702_405 RemovedBody702_412

def RemovedBody702_414 : StackLang.HolProg 64 :=
.seq RemovedBody702_404 RemovedBody702_413

def RemovedBody702_415 : StackLang.HolProg 64 :=
.seq RemovedBody702_403 RemovedBody702_414

def RemovedBody702_416 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 3
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 32#64))

def RemovedBody702_417 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 2
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 24#64))

def RemovedBody702_418 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody702_419 : StackLang.HolProg 64 :=
.seq RemovedBody702_417 RemovedBody702_418

def RemovedBody702_420 : StackLang.HolProg 64 :=
.seq RemovedBody702_416 RemovedBody702_419

def RemovedBody702_421 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def RemovedBody702_422 : StackLang.HolProg 64 :=
.seq RemovedBody702_420 RemovedBody702_421

def RemovedBody702_423 : StackLang.HolProg 64 :=
.call (some (RemovedBody702_415, 0, 702, 14)) (Sum.inl 70) (some (RemovedBody702_422, 702, 15))

def RemovedBody702_424 : StackLang.HolProg 64 :=
.seq RemovedBody702_402 RemovedBody702_423

def RemovedBody702_425 : StackLang.HolProg 64 :=
.seq RemovedBody702_401 RemovedBody702_424

def RemovedBody702_426 : StackLang.HolProg 64 :=
.seq RemovedBody702_400 RemovedBody702_425

def RemovedBody702_427 : StackLang.HolProg 64 :=
.seq RemovedBody702_371 RemovedBody702_426

def RemovedBody702_428 : StackLang.HolProg 64 :=
.seq RemovedBody702_368 RemovedBody702_427

def RemovedBody702_429 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody702_430 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody702_431 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 0#64)

def RemovedBody702_432 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody702_433 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 0 4#64)

def RemovedBody702_434 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody702_435 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551480#64))

def RemovedBody702_436 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 8#64)

def RemovedBody702_437 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody702_438 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def RemovedBody702_439 : StackLang.HolProg 64 :=
.seq RemovedBody702_437 RemovedBody702_438

def RemovedBody702_440 : StackLang.HolProg 64 :=
.seq RemovedBody702_436 RemovedBody702_439

def RemovedBody702_441 : StackLang.HolProg 64 :=
.seq RemovedBody702_435 RemovedBody702_440

def RemovedBody702_442 : StackLang.HolProg 64 :=
.seq RemovedBody702_434 RemovedBody702_441

def RemovedBody702_443 : StackLang.HolProg 64 :=
.seq RemovedBody702_433 RemovedBody702_442

def RemovedBody702_444 : StackLang.HolProg 64 :=
.seq RemovedBody702_432 RemovedBody702_443

def RemovedBody702_445 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody702_446 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.notEqual) 0 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1) RemovedBody702_444 RemovedBody702_445

def RemovedBody702_447 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody702_448 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody702_449 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551592#64))

def RemovedBody702_450 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsl 0 0
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 1#64)))

def RemovedBody702_451 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 0 0
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 26)))

def RemovedBody702_452 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 0 18446744073709551360#64))

def RemovedBody702_453 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 1 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 120#64)))

def RemovedBody702_454 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody702_455 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 2
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 1 0#64))

def RemovedBody702_456 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody702_457 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 0 18446744073709551360#64))

def RemovedBody702_458 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 0 0
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 128#64)))

def RemovedBody702_459 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 64#64)

def RemovedBody702_460 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody702_461 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 0 0#64))

def RemovedBody702_462 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 0#64)

def RemovedBody702_463 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody702_464 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 40#64)))

def RemovedBody702_465 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 3

def RemovedBody702_466 : StackLang.HolProg 64 :=
.seq RemovedBody702_464 RemovedBody702_465

def RemovedBody702_467 : StackLang.HolProg 64 :=
.seq RemovedBody702_463 RemovedBody702_466

def RemovedBody702_468 : StackLang.HolProg 64 :=
.seq RemovedBody702_462 RemovedBody702_467

def RemovedBody702_469 : StackLang.HolProg 64 :=
.seq RemovedBody702_461 RemovedBody702_468

def RemovedBody702_470 : StackLang.HolProg 64 :=
.seq RemovedBody702_460 RemovedBody702_469

def RemovedBody702_471 : StackLang.HolProg 64 :=
.seq RemovedBody702_459 RemovedBody702_470

def RemovedBody702_472 : StackLang.HolProg 64 :=
.seq RemovedBody702_458 RemovedBody702_471

def RemovedBody702_473 : StackLang.HolProg 64 :=
.seq RemovedBody702_457 RemovedBody702_472

def RemovedBody702_474 : StackLang.HolProg 64 :=
.seq RemovedBody702_456 RemovedBody702_473

def RemovedBody702_475 : StackLang.HolProg 64 :=
.seq RemovedBody702_455 RemovedBody702_474

def RemovedBody702_476 : StackLang.HolProg 64 :=
.seq RemovedBody702_454 RemovedBody702_475

def RemovedBody702_477 : StackLang.HolProg 64 :=
.seq RemovedBody702_453 RemovedBody702_476

def RemovedBody702_478 : StackLang.HolProg 64 :=
.seq RemovedBody702_452 RemovedBody702_477

def RemovedBody702_479 : StackLang.HolProg 64 :=
.seq RemovedBody702_451 RemovedBody702_478

def RemovedBody702_480 : StackLang.HolProg 64 :=
.seq RemovedBody702_450 RemovedBody702_479

def RemovedBody702_481 : StackLang.HolProg 64 :=
.seq RemovedBody702_449 RemovedBody702_480

def RemovedBody702_482 : StackLang.HolProg 64 :=
.seq RemovedBody702_448 RemovedBody702_481

def RemovedBody702_483 : StackLang.HolProg 64 :=
.seq RemovedBody702_447 RemovedBody702_482

def RemovedBody702_484 : StackLang.HolProg 64 :=
.seq RemovedBody702_446 RemovedBody702_483

def RemovedBody702_485 : StackLang.HolProg 64 :=
.seq RemovedBody702_431 RemovedBody702_484

def RemovedBody702_486 : StackLang.HolProg 64 :=
.seq RemovedBody702_430 RemovedBody702_485

def RemovedBody702_487 : StackLang.HolProg 64 :=
.seq RemovedBody702_429 RemovedBody702_486

def RemovedBody702_488 : StackLang.HolProg 64 :=
.seq RemovedBody702_428 RemovedBody702_487

def RemovedBody702_489 : StackLang.HolProg 64 :=
.seq RemovedBody702_367 RemovedBody702_488

def RemovedBody702_490 : StackLang.HolProg 64 :=
.seq RemovedBody702_364 RemovedBody702_489

def RemovedBody702_491 : StackLang.HolProg 64 :=
.seq RemovedBody702_363 RemovedBody702_490

def RemovedBody702_492 : StackLang.HolProg 64 :=
.seq RemovedBody702_308 RemovedBody702_491

def RemovedBody702_493 : StackLang.HolProg 64 :=
.seq RemovedBody702_305 RemovedBody702_492

def RemovedBody702_494 : StackLang.HolProg 64 :=
.seq RemovedBody702_304 RemovedBody702_493

def RemovedBody702_495 : StackLang.HolProg 64 :=
.seq RemovedBody702_247 RemovedBody702_494

def RemovedBody702_496 : StackLang.HolProg 64 :=
.seq RemovedBody702_246 RemovedBody702_495

def RemovedBody702_497 : StackLang.HolProg 64 :=
.seq RemovedBody702_245 RemovedBody702_496

def RemovedBody702_498 : StackLang.HolProg 64 :=
.seq RemovedBody702_244 RemovedBody702_497

def RemovedBody702_499 : StackLang.HolProg 64 :=
.seq RemovedBody702_243 RemovedBody702_498

def RemovedBody702_500 : StackLang.HolProg 64 :=
.seq RemovedBody702_242 RemovedBody702_499

def RemovedBody702_501 : StackLang.HolProg 64 :=
.seq RemovedBody702_241 RemovedBody702_500

def RemovedBody702_502 : StackLang.HolProg 64 :=
.seq RemovedBody702_240 RemovedBody702_501

def RemovedBody702_503 : StackLang.HolProg 64 :=
.seq RemovedBody702_239 RemovedBody702_502

def RemovedBody702_504 : StackLang.HolProg 64 :=
.seq RemovedBody702_238 RemovedBody702_503

def RemovedBody702_505 : StackLang.HolProg 64 :=
.seq RemovedBody702_183 RemovedBody702_504

def RemovedBody702_506 : StackLang.HolProg 64 :=
.seq RemovedBody702_182 RemovedBody702_505

def RemovedBody702_507 : StackLang.HolProg 64 :=
.seq RemovedBody702_181 RemovedBody702_506

def RemovedBody702_508 : StackLang.HolProg 64 :=
.seq RemovedBody702_180 RemovedBody702_507

def RemovedBody702_509 : StackLang.HolProg 64 :=
.seq RemovedBody702_127 RemovedBody702_508

def RemovedBody702_510 : StackLang.HolProg 64 :=
.seq RemovedBody702_126 RemovedBody702_509

def RemovedBody702_511 : StackLang.HolProg 64 :=
.seq RemovedBody702_125 RemovedBody702_510

def RemovedBody702_512 : StackLang.HolProg 64 :=
.seq RemovedBody702_72 RemovedBody702_511

def RemovedBody702_513 : StackLang.HolProg 64 :=
.seq RemovedBody702_71 RemovedBody702_512

def RemovedBody702_514 : StackLang.HolProg 64 :=
.seq RemovedBody702_70 RemovedBody702_513

def RemovedBody702_515 : StackLang.HolProg 64 :=
.seq RemovedBody702_69 RemovedBody702_514

def RemovedBody702_516 : StackLang.HolProg 64 :=
.seq RemovedBody702_16 RemovedBody702_515

def RemovedBody702_517 : StackLang.HolProg 64 :=
.seq RemovedBody702_13 RemovedBody702_516

def RemovedBody702_518 : StackLang.HolProg 64 :=
.seq RemovedBody702_12 RemovedBody702_517

def RemovedBody702_519 : StackLang.HolProg 64 :=
.seq RemovedBody702_11 RemovedBody702_518

def RemovedBody702_520 : StackLang.HolProg 64 :=
.seq RemovedBody702_10 RemovedBody702_519

def RemovedBody702_521 : StackLang.HolProg 64 :=
.seq RemovedBody702_9 RemovedBody702_520

def RemovedBody702_522 : StackLang.HolProg 64 :=
.seq RemovedBody702_8 RemovedBody702_521

def RemovedBody702_523 : StackLang.HolProg 64 :=
.seq RemovedBody702_7 RemovedBody702_522

def RemovedBody702_524 : StackLang.HolProg 64 :=
.seq RemovedBody702_6 RemovedBody702_523

def Removed702 : Nat × StackLang.HolProg 64 := (702, RemovedBody702_524)
theorem Removed702_eq : StackRemove.progComp false riscvConfig.addrOffset (riscvConfig.regCount - (riscvConfig.avoidRegs.length + 3)) Alloc702 = Removed702 := by
  kernel_rfl
#print axioms Removed702_eq
end InitECandidate.Proofs.BackendStages
