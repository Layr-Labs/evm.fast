import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.BackendStages.Alloc656
import Flapjack.Compiler.Backend.Backend
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
namespace InitECandidate.Proofs.BackendStages
def RemovedBody656_0 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 120#64)))

def RemovedBody656_1 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 2#64)

def RemovedBody656_2 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 1

def RemovedBody656_3 : StackLang.HolProg 64 :=
.seq RemovedBody656_1 RemovedBody656_2

def RemovedBody656_4 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody656_5 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) RemovedBody656_3 RemovedBody656_4

def RemovedBody656_6 : StackLang.HolProg 64 :=
.seq RemovedBody656_0 RemovedBody656_5

def RemovedBody656_7 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody656_8 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551592#64))

def RemovedBody656_9 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsl 1 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 1#64)))

def RemovedBody656_10 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 1 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 26)))

def RemovedBody656_11 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 1 18446744073709551360#64))

def RemovedBody656_12 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 2
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 1 112#64))

def RemovedBody656_13 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 6900#64)

def RemovedBody656_14 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 112#64))

def RemovedBody656_15 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 2
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 104#64))

def RemovedBody656_16 : StackLang.HolProg 64 :=
.seq RemovedBody656_14 RemovedBody656_15

def RemovedBody656_17 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody656_18 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 2734#64)

def RemovedBody656_19 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody656_20 : StackLang.HolProg 64 :=
.seq RemovedBody656_18 RemovedBody656_19

def RemovedBody656_21 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody656_22 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 2#64)

def RemovedBody656_23 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 1

def RemovedBody656_24 : StackLang.HolProg 64 :=
.seq RemovedBody656_22 RemovedBody656_23

def RemovedBody656_25 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody656_26 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) RemovedBody656_24 RemovedBody656_25

def RemovedBody656_27 : StackLang.HolProg 64 :=
.seq RemovedBody656_21 RemovedBody656_26

def RemovedBody656_28 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def RemovedBody656_29 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody656_30 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 656 3

def RemovedBody656_31 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody656_32 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody656_33 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody656_34 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody656_35 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def RemovedBody656_36 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def RemovedBody656_37 : StackLang.HolProg 64 :=
.seq RemovedBody656_35 RemovedBody656_36

def RemovedBody656_38 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def RemovedBody656_39 : StackLang.HolProg 64 :=
.seq RemovedBody656_37 RemovedBody656_38

def RemovedBody656_40 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody656_41 : StackLang.HolProg 64 :=
.seq RemovedBody656_39 RemovedBody656_40

def RemovedBody656_42 : StackLang.HolProg 64 :=
.seq RemovedBody656_34 RemovedBody656_41

def RemovedBody656_43 : StackLang.HolProg 64 :=
.seq RemovedBody656_33 RemovedBody656_42

def RemovedBody656_44 : StackLang.HolProg 64 :=
.seq RemovedBody656_32 RemovedBody656_43

def RemovedBody656_45 : StackLang.HolProg 64 :=
.seq RemovedBody656_31 RemovedBody656_44

def RemovedBody656_46 : StackLang.HolProg 64 :=
.seq RemovedBody656_30 RemovedBody656_45

def RemovedBody656_47 : StackLang.HolProg 64 :=
.seq RemovedBody656_29 RemovedBody656_46

def RemovedBody656_48 : StackLang.HolProg 64 :=
.seq RemovedBody656_28 RemovedBody656_47

def RemovedBody656_49 : StackLang.HolProg 64 :=
.seq RemovedBody656_27 RemovedBody656_48

def RemovedBody656_50 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody656_51 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody656_52 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody656_53 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody656_54 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody656_55 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody656_56 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody656_57 : StackLang.HolProg 64 :=
.seq RemovedBody656_55 RemovedBody656_56

def RemovedBody656_58 : StackLang.HolProg 64 :=
.seq RemovedBody656_54 RemovedBody656_57

def RemovedBody656_59 : StackLang.HolProg 64 :=
.seq RemovedBody656_53 RemovedBody656_58

def RemovedBody656_60 : StackLang.HolProg 64 :=
.seq RemovedBody656_52 RemovedBody656_59

def RemovedBody656_61 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody656_62 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def RemovedBody656_63 : StackLang.HolProg 64 :=
.seq RemovedBody656_61 RemovedBody656_62

def RemovedBody656_64 : StackLang.HolProg 64 :=
.call (some (RemovedBody656_60, 0, 656, 2)) (Sum.inl 470) (some (RemovedBody656_63, 656, 3))

def RemovedBody656_65 : StackLang.HolProg 64 :=
.seq RemovedBody656_51 RemovedBody656_64

def RemovedBody656_66 : StackLang.HolProg 64 :=
.seq RemovedBody656_50 RemovedBody656_65

def RemovedBody656_67 : StackLang.HolProg 64 :=
.seq RemovedBody656_49 RemovedBody656_66

def RemovedBody656_68 : StackLang.HolProg 64 :=
.seq RemovedBody656_20 RemovedBody656_67

def RemovedBody656_69 : StackLang.HolProg 64 :=
.seq RemovedBody656_17 RemovedBody656_68

def RemovedBody656_70 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody656_71 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 8#64)

def RemovedBody656_72 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody656_73 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody656_74 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 2735#64)

def RemovedBody656_75 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody656_76 : StackLang.HolProg 64 :=
.seq RemovedBody656_74 RemovedBody656_75

def RemovedBody656_77 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody656_78 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 2#64)

def RemovedBody656_79 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 1

def RemovedBody656_80 : StackLang.HolProg 64 :=
.seq RemovedBody656_78 RemovedBody656_79

def RemovedBody656_81 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody656_82 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) RemovedBody656_80 RemovedBody656_81

def RemovedBody656_83 : StackLang.HolProg 64 :=
.seq RemovedBody656_77 RemovedBody656_82

def RemovedBody656_84 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def RemovedBody656_85 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody656_86 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 656 5

def RemovedBody656_87 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody656_88 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody656_89 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody656_90 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody656_91 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def RemovedBody656_92 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def RemovedBody656_93 : StackLang.HolProg 64 :=
.seq RemovedBody656_91 RemovedBody656_92

def RemovedBody656_94 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def RemovedBody656_95 : StackLang.HolProg 64 :=
.seq RemovedBody656_93 RemovedBody656_94

def RemovedBody656_96 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody656_97 : StackLang.HolProg 64 :=
.seq RemovedBody656_95 RemovedBody656_96

def RemovedBody656_98 : StackLang.HolProg 64 :=
.seq RemovedBody656_90 RemovedBody656_97

def RemovedBody656_99 : StackLang.HolProg 64 :=
.seq RemovedBody656_89 RemovedBody656_98

def RemovedBody656_100 : StackLang.HolProg 64 :=
.seq RemovedBody656_88 RemovedBody656_99

def RemovedBody656_101 : StackLang.HolProg 64 :=
.seq RemovedBody656_87 RemovedBody656_100

def RemovedBody656_102 : StackLang.HolProg 64 :=
.seq RemovedBody656_86 RemovedBody656_101

def RemovedBody656_103 : StackLang.HolProg 64 :=
.seq RemovedBody656_85 RemovedBody656_102

def RemovedBody656_104 : StackLang.HolProg 64 :=
.seq RemovedBody656_84 RemovedBody656_103

def RemovedBody656_105 : StackLang.HolProg 64 :=
.seq RemovedBody656_83 RemovedBody656_104

def RemovedBody656_106 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody656_107 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody656_108 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody656_109 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody656_110 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody656_111 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody656_112 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 2 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def RemovedBody656_113 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 4
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 112#64))

def RemovedBody656_114 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 104#64))

def RemovedBody656_115 : StackLang.HolProg 64 :=
.seq RemovedBody656_113 RemovedBody656_114

def RemovedBody656_116 : StackLang.HolProg 64 :=
.seq RemovedBody656_112 RemovedBody656_115

def RemovedBody656_117 : StackLang.HolProg 64 :=
.seq RemovedBody656_111 RemovedBody656_116

def RemovedBody656_118 : StackLang.HolProg 64 :=
.seq RemovedBody656_110 RemovedBody656_117

def RemovedBody656_119 : StackLang.HolProg 64 :=
.seq RemovedBody656_109 RemovedBody656_118

def RemovedBody656_120 : StackLang.HolProg 64 :=
.seq RemovedBody656_108 RemovedBody656_119

def RemovedBody656_121 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 4
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 112#64))

def RemovedBody656_122 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 104#64))

def RemovedBody656_123 : StackLang.HolProg 64 :=
.seq RemovedBody656_121 RemovedBody656_122

def RemovedBody656_124 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def RemovedBody656_125 : StackLang.HolProg 64 :=
.seq RemovedBody656_123 RemovedBody656_124

def RemovedBody656_126 : StackLang.HolProg 64 :=
.call (some (RemovedBody656_120, 0, 656, 4)) (Sum.inl 68) (some (RemovedBody656_125, 656, 5))

def RemovedBody656_127 : StackLang.HolProg 64 :=
.seq RemovedBody656_107 RemovedBody656_126

def RemovedBody656_128 : StackLang.HolProg 64 :=
.seq RemovedBody656_106 RemovedBody656_127

def RemovedBody656_129 : StackLang.HolProg 64 :=
.seq RemovedBody656_105 RemovedBody656_128

def RemovedBody656_130 : StackLang.HolProg 64 :=
.seq RemovedBody656_76 RemovedBody656_129

def RemovedBody656_131 : StackLang.HolProg 64 :=
.seq RemovedBody656_73 RemovedBody656_130

def RemovedBody656_132 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody656_133 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551592#64))

def RemovedBody656_134 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsl 1 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 1#64)))

def RemovedBody656_135 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 1 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 26)))

def RemovedBody656_136 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 3
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 1 18446744073709551360#64))

def RemovedBody656_137 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 3 3
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 120#64)))

def RemovedBody656_138 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody656_139 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 2
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 3 0#64))

def RemovedBody656_140 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody656_141 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 1 18446744073709551360#64))

def RemovedBody656_142 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 1 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 128#64)))

def RemovedBody656_143 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 2 0#64)

def RemovedBody656_144 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody656_145 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 2
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 1 0#64))

def RemovedBody656_146 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody656_147 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 0 96#64))

def RemovedBody656_148 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody656_149 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 2 160#64)

def RemovedBody656_150 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody656_151 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 0#64)

def RemovedBody656_152 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody656_153 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 120#64)))

def RemovedBody656_154 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 4

def RemovedBody656_155 : StackLang.HolProg 64 :=
.seq RemovedBody656_153 RemovedBody656_154

def RemovedBody656_156 : StackLang.HolProg 64 :=
.seq RemovedBody656_152 RemovedBody656_155

def RemovedBody656_157 : StackLang.HolProg 64 :=
.seq RemovedBody656_151 RemovedBody656_156

def RemovedBody656_158 : StackLang.HolProg 64 :=
.seq RemovedBody656_150 RemovedBody656_157

def RemovedBody656_159 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody656_160 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.notEqual) 1 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 2) RemovedBody656_158 RemovedBody656_159

def RemovedBody656_161 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody656_162 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody656_163 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody656_164 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 0 88#64))

def RemovedBody656_165 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody656_166 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 1 0
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 32#64)))

def RemovedBody656_167 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 2 32#64)

def RemovedBody656_168 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 4
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 112#64))

def RemovedBody656_169 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 104#64))

def RemovedBody656_170 : StackLang.HolProg 64 :=
.seq RemovedBody656_168 RemovedBody656_169

def RemovedBody656_171 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody656_172 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 2736#64)

def RemovedBody656_173 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody656_174 : StackLang.HolProg 64 :=
.seq RemovedBody656_172 RemovedBody656_173

def RemovedBody656_175 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody656_176 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 2#64)

def RemovedBody656_177 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 1

def RemovedBody656_178 : StackLang.HolProg 64 :=
.seq RemovedBody656_176 RemovedBody656_177

def RemovedBody656_179 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody656_180 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) RemovedBody656_178 RemovedBody656_179

def RemovedBody656_181 : StackLang.HolProg 64 :=
.seq RemovedBody656_175 RemovedBody656_180

def RemovedBody656_182 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def RemovedBody656_183 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody656_184 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 656 7

def RemovedBody656_185 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody656_186 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody656_187 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody656_188 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody656_189 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def RemovedBody656_190 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def RemovedBody656_191 : StackLang.HolProg 64 :=
.seq RemovedBody656_189 RemovedBody656_190

def RemovedBody656_192 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def RemovedBody656_193 : StackLang.HolProg 64 :=
.seq RemovedBody656_191 RemovedBody656_192

def RemovedBody656_194 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody656_195 : StackLang.HolProg 64 :=
.seq RemovedBody656_193 RemovedBody656_194

def RemovedBody656_196 : StackLang.HolProg 64 :=
.seq RemovedBody656_188 RemovedBody656_195

def RemovedBody656_197 : StackLang.HolProg 64 :=
.seq RemovedBody656_187 RemovedBody656_196

def RemovedBody656_198 : StackLang.HolProg 64 :=
.seq RemovedBody656_186 RemovedBody656_197

def RemovedBody656_199 : StackLang.HolProg 64 :=
.seq RemovedBody656_185 RemovedBody656_198

def RemovedBody656_200 : StackLang.HolProg 64 :=
.seq RemovedBody656_184 RemovedBody656_199

def RemovedBody656_201 : StackLang.HolProg 64 :=
.seq RemovedBody656_183 RemovedBody656_200

def RemovedBody656_202 : StackLang.HolProg 64 :=
.seq RemovedBody656_182 RemovedBody656_201

def RemovedBody656_203 : StackLang.HolProg 64 :=
.seq RemovedBody656_181 RemovedBody656_202

def RemovedBody656_204 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody656_205 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody656_206 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody656_207 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody656_208 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody656_209 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody656_210 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 5 2
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 2)))

def RemovedBody656_211 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 6 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def RemovedBody656_212 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 104#64))

def RemovedBody656_213 : StackLang.HolProg 64 :=
.seq RemovedBody656_211 RemovedBody656_212

def RemovedBody656_214 : StackLang.HolProg 64 :=
.seq RemovedBody656_210 RemovedBody656_213

def RemovedBody656_215 : StackLang.HolProg 64 :=
.seq RemovedBody656_209 RemovedBody656_214

def RemovedBody656_216 : StackLang.HolProg 64 :=
.seq RemovedBody656_208 RemovedBody656_215

def RemovedBody656_217 : StackLang.HolProg 64 :=
.seq RemovedBody656_207 RemovedBody656_216

def RemovedBody656_218 : StackLang.HolProg 64 :=
.seq RemovedBody656_206 RemovedBody656_217

def RemovedBody656_219 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 104#64))

def RemovedBody656_220 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def RemovedBody656_221 : StackLang.HolProg 64 :=
.seq RemovedBody656_219 RemovedBody656_220

def RemovedBody656_222 : StackLang.HolProg 64 :=
.call (some (RemovedBody656_218, 0, 656, 6)) (Sum.inl 146) (some (RemovedBody656_221, 656, 7))

def RemovedBody656_223 : StackLang.HolProg 64 :=
.seq RemovedBody656_205 RemovedBody656_222

def RemovedBody656_224 : StackLang.HolProg 64 :=
.seq RemovedBody656_204 RemovedBody656_223

def RemovedBody656_225 : StackLang.HolProg 64 :=
.seq RemovedBody656_203 RemovedBody656_224

def RemovedBody656_226 : StackLang.HolProg 64 :=
.seq RemovedBody656_174 RemovedBody656_225

def RemovedBody656_227 : StackLang.HolProg 64 :=
.seq RemovedBody656_171 RemovedBody656_226

def RemovedBody656_228 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody656_229 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody656_230 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 1 0
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 64#64)))

def RemovedBody656_231 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 2 32#64)

def RemovedBody656_232 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 104#64))

def RemovedBody656_233 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 5
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 72#64))

def RemovedBody656_234 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 4
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 56#64))

def RemovedBody656_235 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 3
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 24#64))

def RemovedBody656_236 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 6
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody656_237 : StackLang.HolProg 64 :=
.seq RemovedBody656_235 RemovedBody656_236

def RemovedBody656_238 : StackLang.HolProg 64 :=
.seq RemovedBody656_234 RemovedBody656_237

def RemovedBody656_239 : StackLang.HolProg 64 :=
.seq RemovedBody656_233 RemovedBody656_238

def RemovedBody656_240 : StackLang.HolProg 64 :=
.seq RemovedBody656_232 RemovedBody656_239

def RemovedBody656_241 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody656_242 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 2737#64)

def RemovedBody656_243 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody656_244 : StackLang.HolProg 64 :=
.seq RemovedBody656_242 RemovedBody656_243

def RemovedBody656_245 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody656_246 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 2#64)

def RemovedBody656_247 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 1

def RemovedBody656_248 : StackLang.HolProg 64 :=
.seq RemovedBody656_246 RemovedBody656_247

def RemovedBody656_249 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody656_250 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) RemovedBody656_248 RemovedBody656_249

def RemovedBody656_251 : StackLang.HolProg 64 :=
.seq RemovedBody656_245 RemovedBody656_250

def RemovedBody656_252 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def RemovedBody656_253 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody656_254 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 656 9

def RemovedBody656_255 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody656_256 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody656_257 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody656_258 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody656_259 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def RemovedBody656_260 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def RemovedBody656_261 : StackLang.HolProg 64 :=
.seq RemovedBody656_259 RemovedBody656_260

def RemovedBody656_262 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def RemovedBody656_263 : StackLang.HolProg 64 :=
.seq RemovedBody656_261 RemovedBody656_262

def RemovedBody656_264 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody656_265 : StackLang.HolProg 64 :=
.seq RemovedBody656_263 RemovedBody656_264

def RemovedBody656_266 : StackLang.HolProg 64 :=
.seq RemovedBody656_258 RemovedBody656_265

def RemovedBody656_267 : StackLang.HolProg 64 :=
.seq RemovedBody656_257 RemovedBody656_266

def RemovedBody656_268 : StackLang.HolProg 64 :=
.seq RemovedBody656_256 RemovedBody656_267

def RemovedBody656_269 : StackLang.HolProg 64 :=
.seq RemovedBody656_255 RemovedBody656_268

def RemovedBody656_270 : StackLang.HolProg 64 :=
.seq RemovedBody656_254 RemovedBody656_269

def RemovedBody656_271 : StackLang.HolProg 64 :=
.seq RemovedBody656_253 RemovedBody656_270

def RemovedBody656_272 : StackLang.HolProg 64 :=
.seq RemovedBody656_252 RemovedBody656_271

def RemovedBody656_273 : StackLang.HolProg 64 :=
.seq RemovedBody656_251 RemovedBody656_272

def RemovedBody656_274 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody656_275 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody656_276 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody656_277 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody656_278 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody656_279 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody656_280 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 0 2
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 2)))

def RemovedBody656_281 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 6 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def RemovedBody656_282 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 5
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 104#64))

def RemovedBody656_283 : StackLang.HolProg 64 :=
.seq RemovedBody656_281 RemovedBody656_282

def RemovedBody656_284 : StackLang.HolProg 64 :=
.seq RemovedBody656_280 RemovedBody656_283

def RemovedBody656_285 : StackLang.HolProg 64 :=
.seq RemovedBody656_279 RemovedBody656_284

def RemovedBody656_286 : StackLang.HolProg 64 :=
.seq RemovedBody656_278 RemovedBody656_285

def RemovedBody656_287 : StackLang.HolProg 64 :=
.seq RemovedBody656_277 RemovedBody656_286

def RemovedBody656_288 : StackLang.HolProg 64 :=
.seq RemovedBody656_276 RemovedBody656_287

def RemovedBody656_289 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 5
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 104#64))

def RemovedBody656_290 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def RemovedBody656_291 : StackLang.HolProg 64 :=
.seq RemovedBody656_289 RemovedBody656_290

def RemovedBody656_292 : StackLang.HolProg 64 :=
.call (some (RemovedBody656_288, 0, 656, 8)) (Sum.inl 146) (some (RemovedBody656_291, 656, 9))

def RemovedBody656_293 : StackLang.HolProg 64 :=
.seq RemovedBody656_275 RemovedBody656_292

def RemovedBody656_294 : StackLang.HolProg 64 :=
.seq RemovedBody656_274 RemovedBody656_293

def RemovedBody656_295 : StackLang.HolProg 64 :=
.seq RemovedBody656_273 RemovedBody656_294

def RemovedBody656_296 : StackLang.HolProg 64 :=
.seq RemovedBody656_244 RemovedBody656_295

def RemovedBody656_297 : StackLang.HolProg 64 :=
.seq RemovedBody656_241 RemovedBody656_296

def RemovedBody656_298 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody656_299 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody656_300 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 1 5
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 96#64)))

def RemovedBody656_301 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 2 32#64)

def RemovedBody656_302 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 104#64))

def RemovedBody656_303 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 3
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 96#64))

def RemovedBody656_304 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 5
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 88#64))

def RemovedBody656_305 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 6
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 32#64))

def RemovedBody656_306 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 4
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody656_307 : StackLang.HolProg 64 :=
.seq RemovedBody656_305 RemovedBody656_306

def RemovedBody656_308 : StackLang.HolProg 64 :=
.seq RemovedBody656_304 RemovedBody656_307

def RemovedBody656_309 : StackLang.HolProg 64 :=
.seq RemovedBody656_303 RemovedBody656_308

def RemovedBody656_310 : StackLang.HolProg 64 :=
.seq RemovedBody656_302 RemovedBody656_309

def RemovedBody656_311 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody656_312 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 2738#64)

def RemovedBody656_313 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody656_314 : StackLang.HolProg 64 :=
.seq RemovedBody656_312 RemovedBody656_313

def RemovedBody656_315 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody656_316 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 2#64)

def RemovedBody656_317 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 1

def RemovedBody656_318 : StackLang.HolProg 64 :=
.seq RemovedBody656_316 RemovedBody656_317

def RemovedBody656_319 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody656_320 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) RemovedBody656_318 RemovedBody656_319

def RemovedBody656_321 : StackLang.HolProg 64 :=
.seq RemovedBody656_315 RemovedBody656_320

def RemovedBody656_322 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def RemovedBody656_323 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody656_324 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 656 11

def RemovedBody656_325 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody656_326 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody656_327 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody656_328 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody656_329 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def RemovedBody656_330 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def RemovedBody656_331 : StackLang.HolProg 64 :=
.seq RemovedBody656_329 RemovedBody656_330

def RemovedBody656_332 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def RemovedBody656_333 : StackLang.HolProg 64 :=
.seq RemovedBody656_331 RemovedBody656_332

def RemovedBody656_334 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody656_335 : StackLang.HolProg 64 :=
.seq RemovedBody656_333 RemovedBody656_334

def RemovedBody656_336 : StackLang.HolProg 64 :=
.seq RemovedBody656_328 RemovedBody656_335

def RemovedBody656_337 : StackLang.HolProg 64 :=
.seq RemovedBody656_327 RemovedBody656_336

def RemovedBody656_338 : StackLang.HolProg 64 :=
.seq RemovedBody656_326 RemovedBody656_337

def RemovedBody656_339 : StackLang.HolProg 64 :=
.seq RemovedBody656_325 RemovedBody656_338

def RemovedBody656_340 : StackLang.HolProg 64 :=
.seq RemovedBody656_324 RemovedBody656_339

def RemovedBody656_341 : StackLang.HolProg 64 :=
.seq RemovedBody656_323 RemovedBody656_340

def RemovedBody656_342 : StackLang.HolProg 64 :=
.seq RemovedBody656_322 RemovedBody656_341

def RemovedBody656_343 : StackLang.HolProg 64 :=
.seq RemovedBody656_321 RemovedBody656_342

def RemovedBody656_344 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody656_345 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody656_346 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody656_347 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody656_348 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody656_349 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody656_350 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 6 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def RemovedBody656_351 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 5 2
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 2)))

def RemovedBody656_352 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 88#64))

def RemovedBody656_353 : StackLang.HolProg 64 :=
.seq RemovedBody656_351 RemovedBody656_352

def RemovedBody656_354 : StackLang.HolProg 64 :=
.seq RemovedBody656_350 RemovedBody656_353

def RemovedBody656_355 : StackLang.HolProg 64 :=
.seq RemovedBody656_349 RemovedBody656_354

def RemovedBody656_356 : StackLang.HolProg 64 :=
.seq RemovedBody656_348 RemovedBody656_355

def RemovedBody656_357 : StackLang.HolProg 64 :=
.seq RemovedBody656_347 RemovedBody656_356

def RemovedBody656_358 : StackLang.HolProg 64 :=
.seq RemovedBody656_346 RemovedBody656_357

def RemovedBody656_359 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 88#64))

def RemovedBody656_360 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def RemovedBody656_361 : StackLang.HolProg 64 :=
.seq RemovedBody656_359 RemovedBody656_360

def RemovedBody656_362 : StackLang.HolProg 64 :=
.call (some (RemovedBody656_358, 0, 656, 10)) (Sum.inl 146) (some (RemovedBody656_361, 656, 11))

def RemovedBody656_363 : StackLang.HolProg 64 :=
.seq RemovedBody656_345 RemovedBody656_362

def RemovedBody656_364 : StackLang.HolProg 64 :=
.seq RemovedBody656_344 RemovedBody656_363

def RemovedBody656_365 : StackLang.HolProg 64 :=
.seq RemovedBody656_343 RemovedBody656_364

def RemovedBody656_366 : StackLang.HolProg 64 :=
.seq RemovedBody656_314 RemovedBody656_365

def RemovedBody656_367 : StackLang.HolProg 64 :=
.seq RemovedBody656_311 RemovedBody656_366

def RemovedBody656_368 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody656_369 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody656_370 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 1 0
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 128#64)))

def RemovedBody656_371 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 2 32#64)

def RemovedBody656_372 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 88#64))

def RemovedBody656_373 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 3
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 80#64))

def RemovedBody656_374 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 6
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 64#64))

def RemovedBody656_375 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 5
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 48#64))

def RemovedBody656_376 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 4
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 40#64))

def RemovedBody656_377 : StackLang.HolProg 64 :=
.seq RemovedBody656_375 RemovedBody656_376

def RemovedBody656_378 : StackLang.HolProg 64 :=
.seq RemovedBody656_374 RemovedBody656_377

def RemovedBody656_379 : StackLang.HolProg 64 :=
.seq RemovedBody656_373 RemovedBody656_378

def RemovedBody656_380 : StackLang.HolProg 64 :=
.seq RemovedBody656_372 RemovedBody656_379

def RemovedBody656_381 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody656_382 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 2739#64)

def RemovedBody656_383 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody656_384 : StackLang.HolProg 64 :=
.seq RemovedBody656_382 RemovedBody656_383

def RemovedBody656_385 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody656_386 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 2#64)

def RemovedBody656_387 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 1

def RemovedBody656_388 : StackLang.HolProg 64 :=
.seq RemovedBody656_386 RemovedBody656_387

def RemovedBody656_389 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody656_390 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) RemovedBody656_388 RemovedBody656_389

def RemovedBody656_391 : StackLang.HolProg 64 :=
.seq RemovedBody656_385 RemovedBody656_390

def RemovedBody656_392 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def RemovedBody656_393 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody656_394 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 656 13

def RemovedBody656_395 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody656_396 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody656_397 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody656_398 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody656_399 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def RemovedBody656_400 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def RemovedBody656_401 : StackLang.HolProg 64 :=
.seq RemovedBody656_399 RemovedBody656_400

def RemovedBody656_402 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def RemovedBody656_403 : StackLang.HolProg 64 :=
.seq RemovedBody656_401 RemovedBody656_402

def RemovedBody656_404 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody656_405 : StackLang.HolProg 64 :=
.seq RemovedBody656_403 RemovedBody656_404

def RemovedBody656_406 : StackLang.HolProg 64 :=
.seq RemovedBody656_398 RemovedBody656_405

def RemovedBody656_407 : StackLang.HolProg 64 :=
.seq RemovedBody656_397 RemovedBody656_406

def RemovedBody656_408 : StackLang.HolProg 64 :=
.seq RemovedBody656_396 RemovedBody656_407

def RemovedBody656_409 : StackLang.HolProg 64 :=
.seq RemovedBody656_395 RemovedBody656_408

def RemovedBody656_410 : StackLang.HolProg 64 :=
.seq RemovedBody656_394 RemovedBody656_409

def RemovedBody656_411 : StackLang.HolProg 64 :=
.seq RemovedBody656_393 RemovedBody656_410

def RemovedBody656_412 : StackLang.HolProg 64 :=
.seq RemovedBody656_392 RemovedBody656_411

def RemovedBody656_413 : StackLang.HolProg 64 :=
.seq RemovedBody656_391 RemovedBody656_412

def RemovedBody656_414 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody656_415 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody656_416 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody656_417 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody656_418 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody656_419 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody656_420 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 14 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def RemovedBody656_421 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 17 4
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 4)))

def RemovedBody656_422 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 16 3
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 3)))

def RemovedBody656_423 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 15 2
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 2)))

def RemovedBody656_424 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 7
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 104#64))

def RemovedBody656_425 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 8
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 96#64))

def RemovedBody656_426 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 88#64))

def RemovedBody656_427 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 12
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 80#64))

def RemovedBody656_428 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 3
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 72#64))

def RemovedBody656_429 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 10
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 64#64))

def RemovedBody656_430 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 5
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 56#64))

def RemovedBody656_431 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 11
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 48#64))

def RemovedBody656_432 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 13
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 40#64))

def RemovedBody656_433 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 6
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 32#64))

def RemovedBody656_434 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 4
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 24#64))

def RemovedBody656_435 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 9
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody656_436 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 2
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody656_437 : StackLang.HolProg 64 :=
.seq RemovedBody656_435 RemovedBody656_436

def RemovedBody656_438 : StackLang.HolProg 64 :=
.seq RemovedBody656_434 RemovedBody656_437

def RemovedBody656_439 : StackLang.HolProg 64 :=
.seq RemovedBody656_433 RemovedBody656_438

def RemovedBody656_440 : StackLang.HolProg 64 :=
.seq RemovedBody656_432 RemovedBody656_439

def RemovedBody656_441 : StackLang.HolProg 64 :=
.seq RemovedBody656_431 RemovedBody656_440

def RemovedBody656_442 : StackLang.HolProg 64 :=
.seq RemovedBody656_430 RemovedBody656_441

def RemovedBody656_443 : StackLang.HolProg 64 :=
.seq RemovedBody656_429 RemovedBody656_442

def RemovedBody656_444 : StackLang.HolProg 64 :=
.seq RemovedBody656_428 RemovedBody656_443

def RemovedBody656_445 : StackLang.HolProg 64 :=
.seq RemovedBody656_427 RemovedBody656_444

def RemovedBody656_446 : StackLang.HolProg 64 :=
.seq RemovedBody656_426 RemovedBody656_445

def RemovedBody656_447 : StackLang.HolProg 64 :=
.seq RemovedBody656_425 RemovedBody656_446

def RemovedBody656_448 : StackLang.HolProg 64 :=
.seq RemovedBody656_424 RemovedBody656_447

def RemovedBody656_449 : StackLang.HolProg 64 :=
.seq RemovedBody656_423 RemovedBody656_448

def RemovedBody656_450 : StackLang.HolProg 64 :=
.seq RemovedBody656_422 RemovedBody656_449

def RemovedBody656_451 : StackLang.HolProg 64 :=
.seq RemovedBody656_421 RemovedBody656_450

def RemovedBody656_452 : StackLang.HolProg 64 :=
.seq RemovedBody656_420 RemovedBody656_451

def RemovedBody656_453 : StackLang.HolProg 64 :=
.seq RemovedBody656_419 RemovedBody656_452

def RemovedBody656_454 : StackLang.HolProg 64 :=
.seq RemovedBody656_418 RemovedBody656_453

def RemovedBody656_455 : StackLang.HolProg 64 :=
.seq RemovedBody656_417 RemovedBody656_454

def RemovedBody656_456 : StackLang.HolProg 64 :=
.seq RemovedBody656_416 RemovedBody656_455

def RemovedBody656_457 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 7
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 104#64))

def RemovedBody656_458 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 8
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 96#64))

def RemovedBody656_459 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 88#64))

def RemovedBody656_460 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 12
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 80#64))

def RemovedBody656_461 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 3
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 72#64))

def RemovedBody656_462 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 10
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 64#64))

def RemovedBody656_463 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 5
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 56#64))

def RemovedBody656_464 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 11
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 48#64))

def RemovedBody656_465 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 13
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 40#64))

def RemovedBody656_466 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 6
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 32#64))

def RemovedBody656_467 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 4
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 24#64))

def RemovedBody656_468 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 9
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody656_469 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 2
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody656_470 : StackLang.HolProg 64 :=
.seq RemovedBody656_468 RemovedBody656_469

def RemovedBody656_471 : StackLang.HolProg 64 :=
.seq RemovedBody656_467 RemovedBody656_470

def RemovedBody656_472 : StackLang.HolProg 64 :=
.seq RemovedBody656_466 RemovedBody656_471

def RemovedBody656_473 : StackLang.HolProg 64 :=
.seq RemovedBody656_465 RemovedBody656_472

def RemovedBody656_474 : StackLang.HolProg 64 :=
.seq RemovedBody656_464 RemovedBody656_473

def RemovedBody656_475 : StackLang.HolProg 64 :=
.seq RemovedBody656_463 RemovedBody656_474

def RemovedBody656_476 : StackLang.HolProg 64 :=
.seq RemovedBody656_462 RemovedBody656_475

def RemovedBody656_477 : StackLang.HolProg 64 :=
.seq RemovedBody656_461 RemovedBody656_476

def RemovedBody656_478 : StackLang.HolProg 64 :=
.seq RemovedBody656_460 RemovedBody656_477

def RemovedBody656_479 : StackLang.HolProg 64 :=
.seq RemovedBody656_459 RemovedBody656_478

def RemovedBody656_480 : StackLang.HolProg 64 :=
.seq RemovedBody656_458 RemovedBody656_479

def RemovedBody656_481 : StackLang.HolProg 64 :=
.seq RemovedBody656_457 RemovedBody656_480

def RemovedBody656_482 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def RemovedBody656_483 : StackLang.HolProg 64 :=
.seq RemovedBody656_481 RemovedBody656_482

def RemovedBody656_484 : StackLang.HolProg 64 :=
.call (some (RemovedBody656_456, 0, 656, 12)) (Sum.inl 146) (some (RemovedBody656_483, 656, 13))

def RemovedBody656_485 : StackLang.HolProg 64 :=
.seq RemovedBody656_415 RemovedBody656_484

def RemovedBody656_486 : StackLang.HolProg 64 :=
.seq RemovedBody656_414 RemovedBody656_485

def RemovedBody656_487 : StackLang.HolProg 64 :=
.seq RemovedBody656_413 RemovedBody656_486

def RemovedBody656_488 : StackLang.HolProg 64 :=
.seq RemovedBody656_384 RemovedBody656_487

def RemovedBody656_489 : StackLang.HolProg 64 :=
.seq RemovedBody656_381 RemovedBody656_488

def RemovedBody656_490 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody656_491 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 1 0
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 0)))

def RemovedBody656_492 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody656_493 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 2740#64)

def RemovedBody656_494 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody656_495 : StackLang.HolProg 64 :=
.seq RemovedBody656_493 RemovedBody656_494

def RemovedBody656_496 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody656_497 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 2#64)

def RemovedBody656_498 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 1

def RemovedBody656_499 : StackLang.HolProg 64 :=
.seq RemovedBody656_497 RemovedBody656_498

def RemovedBody656_500 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody656_501 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) RemovedBody656_499 RemovedBody656_500

def RemovedBody656_502 : StackLang.HolProg 64 :=
.seq RemovedBody656_496 RemovedBody656_501

def RemovedBody656_503 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def RemovedBody656_504 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody656_505 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 656 15

def RemovedBody656_506 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody656_507 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody656_508 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody656_509 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody656_510 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def RemovedBody656_511 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def RemovedBody656_512 : StackLang.HolProg 64 :=
.seq RemovedBody656_510 RemovedBody656_511

def RemovedBody656_513 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def RemovedBody656_514 : StackLang.HolProg 64 :=
.seq RemovedBody656_512 RemovedBody656_513

def RemovedBody656_515 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody656_516 : StackLang.HolProg 64 :=
.seq RemovedBody656_514 RemovedBody656_515

def RemovedBody656_517 : StackLang.HolProg 64 :=
.seq RemovedBody656_509 RemovedBody656_516

def RemovedBody656_518 : StackLang.HolProg 64 :=
.seq RemovedBody656_508 RemovedBody656_517

def RemovedBody656_519 : StackLang.HolProg 64 :=
.seq RemovedBody656_507 RemovedBody656_518

def RemovedBody656_520 : StackLang.HolProg 64 :=
.seq RemovedBody656_506 RemovedBody656_519

def RemovedBody656_521 : StackLang.HolProg 64 :=
.seq RemovedBody656_505 RemovedBody656_520

def RemovedBody656_522 : StackLang.HolProg 64 :=
.seq RemovedBody656_504 RemovedBody656_521

def RemovedBody656_523 : StackLang.HolProg 64 :=
.seq RemovedBody656_503 RemovedBody656_522

def RemovedBody656_524 : StackLang.HolProg 64 :=
.seq RemovedBody656_502 RemovedBody656_523

def RemovedBody656_525 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody656_526 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody656_527 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody656_528 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody656_529 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody656_530 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody656_531 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 0 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def RemovedBody656_532 : StackLang.HolProg 64 :=
.seq RemovedBody656_530 RemovedBody656_531

def RemovedBody656_533 : StackLang.HolProg 64 :=
.seq RemovedBody656_529 RemovedBody656_532

def RemovedBody656_534 : StackLang.HolProg 64 :=
.seq RemovedBody656_528 RemovedBody656_533

def RemovedBody656_535 : StackLang.HolProg 64 :=
.seq RemovedBody656_527 RemovedBody656_534

def RemovedBody656_536 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody656_537 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def RemovedBody656_538 : StackLang.HolProg 64 :=
.seq RemovedBody656_536 RemovedBody656_537

def RemovedBody656_539 : StackLang.HolProg 64 :=
.call (some (RemovedBody656_535, 0, 656, 14)) (Sum.inl 655) (some (RemovedBody656_538, 656, 15))

def RemovedBody656_540 : StackLang.HolProg 64 :=
.seq RemovedBody656_526 RemovedBody656_539

def RemovedBody656_541 : StackLang.HolProg 64 :=
.seq RemovedBody656_525 RemovedBody656_540

def RemovedBody656_542 : StackLang.HolProg 64 :=
.seq RemovedBody656_524 RemovedBody656_541

def RemovedBody656_543 : StackLang.HolProg 64 :=
.seq RemovedBody656_495 RemovedBody656_542

def RemovedBody656_544 : StackLang.HolProg 64 :=
.seq RemovedBody656_492 RemovedBody656_543

def RemovedBody656_545 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody656_546 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody656_547 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 1#64)

def RemovedBody656_548 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody656_549 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 32#64)

def RemovedBody656_550 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody656_551 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody656_552 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 2741#64)

def RemovedBody656_553 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody656_554 : StackLang.HolProg 64 :=
.seq RemovedBody656_552 RemovedBody656_553

def RemovedBody656_555 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody656_556 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 2#64)

def RemovedBody656_557 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 1

def RemovedBody656_558 : StackLang.HolProg 64 :=
.seq RemovedBody656_556 RemovedBody656_557

def RemovedBody656_559 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody656_560 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) RemovedBody656_558 RemovedBody656_559

def RemovedBody656_561 : StackLang.HolProg 64 :=
.seq RemovedBody656_555 RemovedBody656_560

def RemovedBody656_562 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def RemovedBody656_563 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody656_564 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 656 17

def RemovedBody656_565 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody656_566 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody656_567 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody656_568 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody656_569 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def RemovedBody656_570 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def RemovedBody656_571 : StackLang.HolProg 64 :=
.seq RemovedBody656_569 RemovedBody656_570

def RemovedBody656_572 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def RemovedBody656_573 : StackLang.HolProg 64 :=
.seq RemovedBody656_571 RemovedBody656_572

def RemovedBody656_574 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody656_575 : StackLang.HolProg 64 :=
.seq RemovedBody656_573 RemovedBody656_574

def RemovedBody656_576 : StackLang.HolProg 64 :=
.seq RemovedBody656_568 RemovedBody656_575

def RemovedBody656_577 : StackLang.HolProg 64 :=
.seq RemovedBody656_567 RemovedBody656_576

def RemovedBody656_578 : StackLang.HolProg 64 :=
.seq RemovedBody656_566 RemovedBody656_577

def RemovedBody656_579 : StackLang.HolProg 64 :=
.seq RemovedBody656_565 RemovedBody656_578

def RemovedBody656_580 : StackLang.HolProg 64 :=
.seq RemovedBody656_564 RemovedBody656_579

def RemovedBody656_581 : StackLang.HolProg 64 :=
.seq RemovedBody656_563 RemovedBody656_580

def RemovedBody656_582 : StackLang.HolProg 64 :=
.seq RemovedBody656_562 RemovedBody656_581

def RemovedBody656_583 : StackLang.HolProg 64 :=
.seq RemovedBody656_561 RemovedBody656_582

def RemovedBody656_584 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody656_585 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody656_586 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody656_587 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody656_588 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody656_589 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody656_590 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 0 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def RemovedBody656_591 : StackLang.HolProg 64 :=
.seq RemovedBody656_589 RemovedBody656_590

def RemovedBody656_592 : StackLang.HolProg 64 :=
.seq RemovedBody656_588 RemovedBody656_591

def RemovedBody656_593 : StackLang.HolProg 64 :=
.seq RemovedBody656_587 RemovedBody656_592

def RemovedBody656_594 : StackLang.HolProg 64 :=
.seq RemovedBody656_586 RemovedBody656_593

def RemovedBody656_595 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody656_596 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def RemovedBody656_597 : StackLang.HolProg 64 :=
.seq RemovedBody656_595 RemovedBody656_596

def RemovedBody656_598 : StackLang.HolProg 64 :=
.call (some (RemovedBody656_594, 0, 656, 16)) (Sum.inl 68) (some (RemovedBody656_597, 656, 17))

def RemovedBody656_599 : StackLang.HolProg 64 :=
.seq RemovedBody656_585 RemovedBody656_598

def RemovedBody656_600 : StackLang.HolProg 64 :=
.seq RemovedBody656_584 RemovedBody656_599

def RemovedBody656_601 : StackLang.HolProg 64 :=
.seq RemovedBody656_583 RemovedBody656_600

def RemovedBody656_602 : StackLang.HolProg 64 :=
.seq RemovedBody656_554 RemovedBody656_601

def RemovedBody656_603 : StackLang.HolProg 64 :=
.seq RemovedBody656_551 RemovedBody656_602

def RemovedBody656_604 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody656_605 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 1 0
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 0)))

def RemovedBody656_606 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 2 32#64)

def RemovedBody656_607 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 104#64))

def RemovedBody656_608 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody656_609 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 2742#64)

def RemovedBody656_610 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody656_611 : StackLang.HolProg 64 :=
.seq RemovedBody656_609 RemovedBody656_610

def RemovedBody656_612 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody656_613 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 2#64)

def RemovedBody656_614 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 1

def RemovedBody656_615 : StackLang.HolProg 64 :=
.seq RemovedBody656_613 RemovedBody656_614

def RemovedBody656_616 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody656_617 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) RemovedBody656_615 RemovedBody656_616

def RemovedBody656_618 : StackLang.HolProg 64 :=
.seq RemovedBody656_612 RemovedBody656_617

def RemovedBody656_619 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def RemovedBody656_620 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody656_621 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 656 19

def RemovedBody656_622 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody656_623 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody656_624 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody656_625 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody656_626 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def RemovedBody656_627 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def RemovedBody656_628 : StackLang.HolProg 64 :=
.seq RemovedBody656_626 RemovedBody656_627

def RemovedBody656_629 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def RemovedBody656_630 : StackLang.HolProg 64 :=
.seq RemovedBody656_628 RemovedBody656_629

def RemovedBody656_631 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody656_632 : StackLang.HolProg 64 :=
.seq RemovedBody656_630 RemovedBody656_631

def RemovedBody656_633 : StackLang.HolProg 64 :=
.seq RemovedBody656_625 RemovedBody656_632

def RemovedBody656_634 : StackLang.HolProg 64 :=
.seq RemovedBody656_624 RemovedBody656_633

def RemovedBody656_635 : StackLang.HolProg 64 :=
.seq RemovedBody656_623 RemovedBody656_634

def RemovedBody656_636 : StackLang.HolProg 64 :=
.seq RemovedBody656_622 RemovedBody656_635

def RemovedBody656_637 : StackLang.HolProg 64 :=
.seq RemovedBody656_621 RemovedBody656_636

def RemovedBody656_638 : StackLang.HolProg 64 :=
.seq RemovedBody656_620 RemovedBody656_637

def RemovedBody656_639 : StackLang.HolProg 64 :=
.seq RemovedBody656_619 RemovedBody656_638

def RemovedBody656_640 : StackLang.HolProg 64 :=
.seq RemovedBody656_618 RemovedBody656_639

def RemovedBody656_641 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody656_642 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody656_643 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody656_644 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody656_645 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody656_646 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody656_647 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 112#64))

def RemovedBody656_648 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 2
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 104#64))

def RemovedBody656_649 : StackLang.HolProg 64 :=
.seq RemovedBody656_647 RemovedBody656_648

def RemovedBody656_650 : StackLang.HolProg 64 :=
.seq RemovedBody656_646 RemovedBody656_649

def RemovedBody656_651 : StackLang.HolProg 64 :=
.seq RemovedBody656_645 RemovedBody656_650

def RemovedBody656_652 : StackLang.HolProg 64 :=
.seq RemovedBody656_644 RemovedBody656_651

def RemovedBody656_653 : StackLang.HolProg 64 :=
.seq RemovedBody656_643 RemovedBody656_652

def RemovedBody656_654 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 112#64))

def RemovedBody656_655 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 2
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 104#64))

def RemovedBody656_656 : StackLang.HolProg 64 :=
.seq RemovedBody656_654 RemovedBody656_655

def RemovedBody656_657 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def RemovedBody656_658 : StackLang.HolProg 64 :=
.seq RemovedBody656_656 RemovedBody656_657

def RemovedBody656_659 : StackLang.HolProg 64 :=
.call (some (RemovedBody656_653, 0, 656, 18)) (Sum.inl 78) (some (RemovedBody656_658, 656, 19))

def RemovedBody656_660 : StackLang.HolProg 64 :=
.seq RemovedBody656_642 RemovedBody656_659

def RemovedBody656_661 : StackLang.HolProg 64 :=
.seq RemovedBody656_641 RemovedBody656_660

def RemovedBody656_662 : StackLang.HolProg 64 :=
.seq RemovedBody656_640 RemovedBody656_661

def RemovedBody656_663 : StackLang.HolProg 64 :=
.seq RemovedBody656_611 RemovedBody656_662

def RemovedBody656_664 : StackLang.HolProg 64 :=
.seq RemovedBody656_608 RemovedBody656_663

def RemovedBody656_665 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody656_666 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody656_667 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 3 2
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 31#64)))

def RemovedBody656_668 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 1#64)

def RemovedBody656_669 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store8 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 3 0#64))

def RemovedBody656_670 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551592#64))

def RemovedBody656_671 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsl 1 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 1#64)))

def RemovedBody656_672 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 1 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 26)))

def RemovedBody656_673 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 3
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 1 18446744073709551360#64))

def RemovedBody656_674 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 3 3
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 120#64)))

def RemovedBody656_675 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody656_676 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 2
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 3 0#64))

def RemovedBody656_677 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody656_678 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 1 18446744073709551360#64))

def RemovedBody656_679 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 1 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 128#64)))

def RemovedBody656_680 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 2 32#64)

def RemovedBody656_681 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody656_682 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 2
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 1 0#64))

def RemovedBody656_683 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody656_684 : StackLang.HolProg 64 :=
.seq RemovedBody656_682 RemovedBody656_683

def RemovedBody656_685 : StackLang.HolProg 64 :=
.seq RemovedBody656_681 RemovedBody656_684

def RemovedBody656_686 : StackLang.HolProg 64 :=
.seq RemovedBody656_680 RemovedBody656_685

def RemovedBody656_687 : StackLang.HolProg 64 :=
.seq RemovedBody656_679 RemovedBody656_686

def RemovedBody656_688 : StackLang.HolProg 64 :=
.seq RemovedBody656_678 RemovedBody656_687

def RemovedBody656_689 : StackLang.HolProg 64 :=
.seq RemovedBody656_677 RemovedBody656_688

def RemovedBody656_690 : StackLang.HolProg 64 :=
.seq RemovedBody656_676 RemovedBody656_689

def RemovedBody656_691 : StackLang.HolProg 64 :=
.seq RemovedBody656_675 RemovedBody656_690

def RemovedBody656_692 : StackLang.HolProg 64 :=
.seq RemovedBody656_674 RemovedBody656_691

def RemovedBody656_693 : StackLang.HolProg 64 :=
.seq RemovedBody656_673 RemovedBody656_692

def RemovedBody656_694 : StackLang.HolProg 64 :=
.seq RemovedBody656_672 RemovedBody656_693

def RemovedBody656_695 : StackLang.HolProg 64 :=
.seq RemovedBody656_671 RemovedBody656_694

def RemovedBody656_696 : StackLang.HolProg 64 :=
.seq RemovedBody656_670 RemovedBody656_695

def RemovedBody656_697 : StackLang.HolProg 64 :=
.seq RemovedBody656_669 RemovedBody656_696

def RemovedBody656_698 : StackLang.HolProg 64 :=
.seq RemovedBody656_668 RemovedBody656_697

def RemovedBody656_699 : StackLang.HolProg 64 :=
.seq RemovedBody656_667 RemovedBody656_698

def RemovedBody656_700 : StackLang.HolProg 64 :=
.seq RemovedBody656_666 RemovedBody656_699

def RemovedBody656_701 : StackLang.HolProg 64 :=
.seq RemovedBody656_665 RemovedBody656_700

def RemovedBody656_702 : StackLang.HolProg 64 :=
.seq RemovedBody656_664 RemovedBody656_701

def RemovedBody656_703 : StackLang.HolProg 64 :=
.seq RemovedBody656_607 RemovedBody656_702

def RemovedBody656_704 : StackLang.HolProg 64 :=
.seq RemovedBody656_606 RemovedBody656_703

def RemovedBody656_705 : StackLang.HolProg 64 :=
.seq RemovedBody656_605 RemovedBody656_704

def RemovedBody656_706 : StackLang.HolProg 64 :=
.seq RemovedBody656_604 RemovedBody656_705

def RemovedBody656_707 : StackLang.HolProg 64 :=
.seq RemovedBody656_603 RemovedBody656_706

def RemovedBody656_708 : StackLang.HolProg 64 :=
.seq RemovedBody656_550 RemovedBody656_707

def RemovedBody656_709 : StackLang.HolProg 64 :=
.seq RemovedBody656_549 RemovedBody656_708

def RemovedBody656_710 : StackLang.HolProg 64 :=
.seq RemovedBody656_548 RemovedBody656_709

def RemovedBody656_711 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody656_712 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 112#64))

def RemovedBody656_713 : StackLang.HolProg 64 :=
.seq RemovedBody656_711 RemovedBody656_712

def RemovedBody656_714 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.equal) 0 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1) RemovedBody656_710 RemovedBody656_713

def RemovedBody656_715 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody656_716 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 0#64)

def RemovedBody656_717 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody656_718 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 120#64)))

def RemovedBody656_719 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 0

def RemovedBody656_720 : StackLang.HolProg 64 :=
.seq RemovedBody656_718 RemovedBody656_719

def RemovedBody656_721 : StackLang.HolProg 64 :=
.seq RemovedBody656_717 RemovedBody656_720

def RemovedBody656_722 : StackLang.HolProg 64 :=
.seq RemovedBody656_716 RemovedBody656_721

def RemovedBody656_723 : StackLang.HolProg 64 :=
.seq RemovedBody656_715 RemovedBody656_722

def RemovedBody656_724 : StackLang.HolProg 64 :=
.seq RemovedBody656_714 RemovedBody656_723

def RemovedBody656_725 : StackLang.HolProg 64 :=
.seq RemovedBody656_547 RemovedBody656_724

def RemovedBody656_726 : StackLang.HolProg 64 :=
.seq RemovedBody656_546 RemovedBody656_725

def RemovedBody656_727 : StackLang.HolProg 64 :=
.seq RemovedBody656_545 RemovedBody656_726

def RemovedBody656_728 : StackLang.HolProg 64 :=
.seq RemovedBody656_544 RemovedBody656_727

def RemovedBody656_729 : StackLang.HolProg 64 :=
.seq RemovedBody656_491 RemovedBody656_728

def RemovedBody656_730 : StackLang.HolProg 64 :=
.seq RemovedBody656_490 RemovedBody656_729

def RemovedBody656_731 : StackLang.HolProg 64 :=
.seq RemovedBody656_489 RemovedBody656_730

def RemovedBody656_732 : StackLang.HolProg 64 :=
.seq RemovedBody656_380 RemovedBody656_731

def RemovedBody656_733 : StackLang.HolProg 64 :=
.seq RemovedBody656_371 RemovedBody656_732

def RemovedBody656_734 : StackLang.HolProg 64 :=
.seq RemovedBody656_370 RemovedBody656_733

def RemovedBody656_735 : StackLang.HolProg 64 :=
.seq RemovedBody656_369 RemovedBody656_734

def RemovedBody656_736 : StackLang.HolProg 64 :=
.seq RemovedBody656_368 RemovedBody656_735

def RemovedBody656_737 : StackLang.HolProg 64 :=
.seq RemovedBody656_367 RemovedBody656_736

def RemovedBody656_738 : StackLang.HolProg 64 :=
.seq RemovedBody656_310 RemovedBody656_737

def RemovedBody656_739 : StackLang.HolProg 64 :=
.seq RemovedBody656_301 RemovedBody656_738

def RemovedBody656_740 : StackLang.HolProg 64 :=
.seq RemovedBody656_300 RemovedBody656_739

def RemovedBody656_741 : StackLang.HolProg 64 :=
.seq RemovedBody656_299 RemovedBody656_740

def RemovedBody656_742 : StackLang.HolProg 64 :=
.seq RemovedBody656_298 RemovedBody656_741

def RemovedBody656_743 : StackLang.HolProg 64 :=
.seq RemovedBody656_297 RemovedBody656_742

def RemovedBody656_744 : StackLang.HolProg 64 :=
.seq RemovedBody656_240 RemovedBody656_743

def RemovedBody656_745 : StackLang.HolProg 64 :=
.seq RemovedBody656_231 RemovedBody656_744

def RemovedBody656_746 : StackLang.HolProg 64 :=
.seq RemovedBody656_230 RemovedBody656_745

def RemovedBody656_747 : StackLang.HolProg 64 :=
.seq RemovedBody656_229 RemovedBody656_746

def RemovedBody656_748 : StackLang.HolProg 64 :=
.seq RemovedBody656_228 RemovedBody656_747

def RemovedBody656_749 : StackLang.HolProg 64 :=
.seq RemovedBody656_227 RemovedBody656_748

def RemovedBody656_750 : StackLang.HolProg 64 :=
.seq RemovedBody656_170 RemovedBody656_749

def RemovedBody656_751 : StackLang.HolProg 64 :=
.seq RemovedBody656_167 RemovedBody656_750

def RemovedBody656_752 : StackLang.HolProg 64 :=
.seq RemovedBody656_166 RemovedBody656_751

def RemovedBody656_753 : StackLang.HolProg 64 :=
.seq RemovedBody656_165 RemovedBody656_752

def RemovedBody656_754 : StackLang.HolProg 64 :=
.seq RemovedBody656_164 RemovedBody656_753

def RemovedBody656_755 : StackLang.HolProg 64 :=
.seq RemovedBody656_163 RemovedBody656_754

def RemovedBody656_756 : StackLang.HolProg 64 :=
.seq RemovedBody656_162 RemovedBody656_755

def RemovedBody656_757 : StackLang.HolProg 64 :=
.seq RemovedBody656_161 RemovedBody656_756

def RemovedBody656_758 : StackLang.HolProg 64 :=
.seq RemovedBody656_160 RemovedBody656_757

def RemovedBody656_759 : StackLang.HolProg 64 :=
.seq RemovedBody656_149 RemovedBody656_758

def RemovedBody656_760 : StackLang.HolProg 64 :=
.seq RemovedBody656_148 RemovedBody656_759

def RemovedBody656_761 : StackLang.HolProg 64 :=
.seq RemovedBody656_147 RemovedBody656_760

def RemovedBody656_762 : StackLang.HolProg 64 :=
.seq RemovedBody656_146 RemovedBody656_761

def RemovedBody656_763 : StackLang.HolProg 64 :=
.seq RemovedBody656_145 RemovedBody656_762

def RemovedBody656_764 : StackLang.HolProg 64 :=
.seq RemovedBody656_144 RemovedBody656_763

def RemovedBody656_765 : StackLang.HolProg 64 :=
.seq RemovedBody656_143 RemovedBody656_764

def RemovedBody656_766 : StackLang.HolProg 64 :=
.seq RemovedBody656_142 RemovedBody656_765

def RemovedBody656_767 : StackLang.HolProg 64 :=
.seq RemovedBody656_141 RemovedBody656_766

def RemovedBody656_768 : StackLang.HolProg 64 :=
.seq RemovedBody656_140 RemovedBody656_767

def RemovedBody656_769 : StackLang.HolProg 64 :=
.seq RemovedBody656_139 RemovedBody656_768

def RemovedBody656_770 : StackLang.HolProg 64 :=
.seq RemovedBody656_138 RemovedBody656_769

def RemovedBody656_771 : StackLang.HolProg 64 :=
.seq RemovedBody656_137 RemovedBody656_770

def RemovedBody656_772 : StackLang.HolProg 64 :=
.seq RemovedBody656_136 RemovedBody656_771

def RemovedBody656_773 : StackLang.HolProg 64 :=
.seq RemovedBody656_135 RemovedBody656_772

def RemovedBody656_774 : StackLang.HolProg 64 :=
.seq RemovedBody656_134 RemovedBody656_773

def RemovedBody656_775 : StackLang.HolProg 64 :=
.seq RemovedBody656_133 RemovedBody656_774

def RemovedBody656_776 : StackLang.HolProg 64 :=
.seq RemovedBody656_132 RemovedBody656_775

def RemovedBody656_777 : StackLang.HolProg 64 :=
.seq RemovedBody656_131 RemovedBody656_776

def RemovedBody656_778 : StackLang.HolProg 64 :=
.seq RemovedBody656_72 RemovedBody656_777

def RemovedBody656_779 : StackLang.HolProg 64 :=
.seq RemovedBody656_71 RemovedBody656_778

def RemovedBody656_780 : StackLang.HolProg 64 :=
.seq RemovedBody656_70 RemovedBody656_779

def RemovedBody656_781 : StackLang.HolProg 64 :=
.seq RemovedBody656_69 RemovedBody656_780

def RemovedBody656_782 : StackLang.HolProg 64 :=
.seq RemovedBody656_16 RemovedBody656_781

def RemovedBody656_783 : StackLang.HolProg 64 :=
.seq RemovedBody656_13 RemovedBody656_782

def RemovedBody656_784 : StackLang.HolProg 64 :=
.seq RemovedBody656_12 RemovedBody656_783

def RemovedBody656_785 : StackLang.HolProg 64 :=
.seq RemovedBody656_11 RemovedBody656_784

def RemovedBody656_786 : StackLang.HolProg 64 :=
.seq RemovedBody656_10 RemovedBody656_785

def RemovedBody656_787 : StackLang.HolProg 64 :=
.seq RemovedBody656_9 RemovedBody656_786

def RemovedBody656_788 : StackLang.HolProg 64 :=
.seq RemovedBody656_8 RemovedBody656_787

def RemovedBody656_789 : StackLang.HolProg 64 :=
.seq RemovedBody656_7 RemovedBody656_788

def RemovedBody656_790 : StackLang.HolProg 64 :=
.seq RemovedBody656_6 RemovedBody656_789

def Removed656 : Nat × StackLang.HolProg 64 := (656, RemovedBody656_790)
theorem Removed656_eq : StackRemove.progComp false riscvConfig.addrOffset (riscvConfig.regCount - (riscvConfig.avoidRegs.length + 3)) Alloc656 = Removed656 := by
  kernel_rfl
#print axioms Removed656_eq
end InitECandidate.Proofs.BackendStages
