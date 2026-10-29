import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.BackendStages.Alloc554
import Flapjack.Compiler.Backend.Backend
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
namespace InitECandidate.Proofs.BackendStages
def RemovedBody554_0 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 32#64)))

def RemovedBody554_1 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 2#64)

def RemovedBody554_2 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 1

def RemovedBody554_3 : StackLang.HolProg 64 :=
.seq RemovedBody554_1 RemovedBody554_2

def RemovedBody554_4 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody554_5 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) RemovedBody554_3 RemovedBody554_4

def RemovedBody554_6 : StackLang.HolProg 64 :=
.seq RemovedBody554_0 RemovedBody554_5

def RemovedBody554_7 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 24#64))

def RemovedBody554_8 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody554_9 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1879#64)

def RemovedBody554_10 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody554_11 : StackLang.HolProg 64 :=
.seq RemovedBody554_9 RemovedBody554_10

def RemovedBody554_12 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody554_13 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 2#64)

def RemovedBody554_14 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 1

def RemovedBody554_15 : StackLang.HolProg 64 :=
.seq RemovedBody554_13 RemovedBody554_14

def RemovedBody554_16 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody554_17 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) RemovedBody554_15 RemovedBody554_16

def RemovedBody554_18 : StackLang.HolProg 64 :=
.seq RemovedBody554_12 RemovedBody554_17

def RemovedBody554_19 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def RemovedBody554_20 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody554_21 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 554 3

def RemovedBody554_22 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody554_23 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody554_24 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody554_25 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody554_26 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def RemovedBody554_27 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def RemovedBody554_28 : StackLang.HolProg 64 :=
.seq RemovedBody554_26 RemovedBody554_27

def RemovedBody554_29 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def RemovedBody554_30 : StackLang.HolProg 64 :=
.seq RemovedBody554_28 RemovedBody554_29

def RemovedBody554_31 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody554_32 : StackLang.HolProg 64 :=
.seq RemovedBody554_30 RemovedBody554_31

def RemovedBody554_33 : StackLang.HolProg 64 :=
.seq RemovedBody554_25 RemovedBody554_32

def RemovedBody554_34 : StackLang.HolProg 64 :=
.seq RemovedBody554_24 RemovedBody554_33

def RemovedBody554_35 : StackLang.HolProg 64 :=
.seq RemovedBody554_23 RemovedBody554_34

def RemovedBody554_36 : StackLang.HolProg 64 :=
.seq RemovedBody554_22 RemovedBody554_35

def RemovedBody554_37 : StackLang.HolProg 64 :=
.seq RemovedBody554_21 RemovedBody554_36

def RemovedBody554_38 : StackLang.HolProg 64 :=
.seq RemovedBody554_20 RemovedBody554_37

def RemovedBody554_39 : StackLang.HolProg 64 :=
.seq RemovedBody554_19 RemovedBody554_38

def RemovedBody554_40 : StackLang.HolProg 64 :=
.seq RemovedBody554_18 RemovedBody554_39

def RemovedBody554_41 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody554_42 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody554_43 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody554_44 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody554_45 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody554_46 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody554_47 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 0 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def RemovedBody554_48 : StackLang.HolProg 64 :=
.seq RemovedBody554_46 RemovedBody554_47

def RemovedBody554_49 : StackLang.HolProg 64 :=
.seq RemovedBody554_45 RemovedBody554_48

def RemovedBody554_50 : StackLang.HolProg 64 :=
.seq RemovedBody554_44 RemovedBody554_49

def RemovedBody554_51 : StackLang.HolProg 64 :=
.seq RemovedBody554_43 RemovedBody554_50

def RemovedBody554_52 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody554_53 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def RemovedBody554_54 : StackLang.HolProg 64 :=
.seq RemovedBody554_52 RemovedBody554_53

def RemovedBody554_55 : StackLang.HolProg 64 :=
.call (some (RemovedBody554_51, 0, 554, 2)) (Sum.inl 475) (some (RemovedBody554_54, 554, 3))

def RemovedBody554_56 : StackLang.HolProg 64 :=
.seq RemovedBody554_42 RemovedBody554_55

def RemovedBody554_57 : StackLang.HolProg 64 :=
.seq RemovedBody554_41 RemovedBody554_56

def RemovedBody554_58 : StackLang.HolProg 64 :=
.seq RemovedBody554_40 RemovedBody554_57

def RemovedBody554_59 : StackLang.HolProg 64 :=
.seq RemovedBody554_11 RemovedBody554_58

def RemovedBody554_60 : StackLang.HolProg 64 :=
.seq RemovedBody554_8 RemovedBody554_59

def RemovedBody554_61 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody554_62 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 1 0
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 0)))

def RemovedBody554_63 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody554_64 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1880#64)

def RemovedBody554_65 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody554_66 : StackLang.HolProg 64 :=
.seq RemovedBody554_64 RemovedBody554_65

def RemovedBody554_67 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody554_68 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 2#64)

def RemovedBody554_69 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 1

def RemovedBody554_70 : StackLang.HolProg 64 :=
.seq RemovedBody554_68 RemovedBody554_69

def RemovedBody554_71 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody554_72 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) RemovedBody554_70 RemovedBody554_71

def RemovedBody554_73 : StackLang.HolProg 64 :=
.seq RemovedBody554_67 RemovedBody554_72

def RemovedBody554_74 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def RemovedBody554_75 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody554_76 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 554 5

def RemovedBody554_77 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody554_78 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody554_79 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody554_80 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody554_81 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def RemovedBody554_82 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def RemovedBody554_83 : StackLang.HolProg 64 :=
.seq RemovedBody554_81 RemovedBody554_82

def RemovedBody554_84 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def RemovedBody554_85 : StackLang.HolProg 64 :=
.seq RemovedBody554_83 RemovedBody554_84

def RemovedBody554_86 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody554_87 : StackLang.HolProg 64 :=
.seq RemovedBody554_85 RemovedBody554_86

def RemovedBody554_88 : StackLang.HolProg 64 :=
.seq RemovedBody554_80 RemovedBody554_87

def RemovedBody554_89 : StackLang.HolProg 64 :=
.seq RemovedBody554_79 RemovedBody554_88

def RemovedBody554_90 : StackLang.HolProg 64 :=
.seq RemovedBody554_78 RemovedBody554_89

def RemovedBody554_91 : StackLang.HolProg 64 :=
.seq RemovedBody554_77 RemovedBody554_90

def RemovedBody554_92 : StackLang.HolProg 64 :=
.seq RemovedBody554_76 RemovedBody554_91

def RemovedBody554_93 : StackLang.HolProg 64 :=
.seq RemovedBody554_75 RemovedBody554_92

def RemovedBody554_94 : StackLang.HolProg 64 :=
.seq RemovedBody554_74 RemovedBody554_93

def RemovedBody554_95 : StackLang.HolProg 64 :=
.seq RemovedBody554_73 RemovedBody554_94

def RemovedBody554_96 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody554_97 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody554_98 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody554_99 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody554_100 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody554_101 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody554_102 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 0 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def RemovedBody554_103 : StackLang.HolProg 64 :=
.seq RemovedBody554_101 RemovedBody554_102

def RemovedBody554_104 : StackLang.HolProg 64 :=
.seq RemovedBody554_100 RemovedBody554_103

def RemovedBody554_105 : StackLang.HolProg 64 :=
.seq RemovedBody554_99 RemovedBody554_104

def RemovedBody554_106 : StackLang.HolProg 64 :=
.seq RemovedBody554_98 RemovedBody554_105

def RemovedBody554_107 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody554_108 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def RemovedBody554_109 : StackLang.HolProg 64 :=
.seq RemovedBody554_107 RemovedBody554_108

def RemovedBody554_110 : StackLang.HolProg 64 :=
.call (some (RemovedBody554_106, 0, 554, 4)) (Sum.inl 466) (some (RemovedBody554_109, 554, 5))

def RemovedBody554_111 : StackLang.HolProg 64 :=
.seq RemovedBody554_97 RemovedBody554_110

def RemovedBody554_112 : StackLang.HolProg 64 :=
.seq RemovedBody554_96 RemovedBody554_111

def RemovedBody554_113 : StackLang.HolProg 64 :=
.seq RemovedBody554_95 RemovedBody554_112

def RemovedBody554_114 : StackLang.HolProg 64 :=
.seq RemovedBody554_66 RemovedBody554_113

def RemovedBody554_115 : StackLang.HolProg 64 :=
.seq RemovedBody554_63 RemovedBody554_114

def RemovedBody554_116 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody554_117 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 1 0
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 0)))

def RemovedBody554_118 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody554_119 : StackLang.HolProg 64 :=
.seq RemovedBody554_117 RemovedBody554_118

def RemovedBody554_120 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody554_121 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1881#64)

def RemovedBody554_122 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody554_123 : StackLang.HolProg 64 :=
.seq RemovedBody554_121 RemovedBody554_122

def RemovedBody554_124 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody554_125 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 2#64)

def RemovedBody554_126 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 1

def RemovedBody554_127 : StackLang.HolProg 64 :=
.seq RemovedBody554_125 RemovedBody554_126

def RemovedBody554_128 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody554_129 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) RemovedBody554_127 RemovedBody554_128

def RemovedBody554_130 : StackLang.HolProg 64 :=
.seq RemovedBody554_124 RemovedBody554_129

def RemovedBody554_131 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def RemovedBody554_132 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody554_133 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 554 7

def RemovedBody554_134 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody554_135 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody554_136 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody554_137 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody554_138 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def RemovedBody554_139 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def RemovedBody554_140 : StackLang.HolProg 64 :=
.seq RemovedBody554_138 RemovedBody554_139

def RemovedBody554_141 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def RemovedBody554_142 : StackLang.HolProg 64 :=
.seq RemovedBody554_140 RemovedBody554_141

def RemovedBody554_143 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody554_144 : StackLang.HolProg 64 :=
.seq RemovedBody554_142 RemovedBody554_143

def RemovedBody554_145 : StackLang.HolProg 64 :=
.seq RemovedBody554_137 RemovedBody554_144

def RemovedBody554_146 : StackLang.HolProg 64 :=
.seq RemovedBody554_136 RemovedBody554_145

def RemovedBody554_147 : StackLang.HolProg 64 :=
.seq RemovedBody554_135 RemovedBody554_146

def RemovedBody554_148 : StackLang.HolProg 64 :=
.seq RemovedBody554_134 RemovedBody554_147

def RemovedBody554_149 : StackLang.HolProg 64 :=
.seq RemovedBody554_133 RemovedBody554_148

def RemovedBody554_150 : StackLang.HolProg 64 :=
.seq RemovedBody554_132 RemovedBody554_149

def RemovedBody554_151 : StackLang.HolProg 64 :=
.seq RemovedBody554_131 RemovedBody554_150

def RemovedBody554_152 : StackLang.HolProg 64 :=
.seq RemovedBody554_130 RemovedBody554_151

def RemovedBody554_153 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody554_154 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody554_155 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody554_156 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody554_157 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody554_158 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody554_159 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 0 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def RemovedBody554_160 : StackLang.HolProg 64 :=
.seq RemovedBody554_158 RemovedBody554_159

def RemovedBody554_161 : StackLang.HolProg 64 :=
.seq RemovedBody554_157 RemovedBody554_160

def RemovedBody554_162 : StackLang.HolProg 64 :=
.seq RemovedBody554_156 RemovedBody554_161

def RemovedBody554_163 : StackLang.HolProg 64 :=
.seq RemovedBody554_155 RemovedBody554_162

def RemovedBody554_164 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody554_165 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def RemovedBody554_166 : StackLang.HolProg 64 :=
.seq RemovedBody554_164 RemovedBody554_165

def RemovedBody554_167 : StackLang.HolProg 64 :=
.call (some (RemovedBody554_163, 0, 554, 6)) (Sum.inl 495) (some (RemovedBody554_166, 554, 7))

def RemovedBody554_168 : StackLang.HolProg 64 :=
.seq RemovedBody554_154 RemovedBody554_167

def RemovedBody554_169 : StackLang.HolProg 64 :=
.seq RemovedBody554_153 RemovedBody554_168

def RemovedBody554_170 : StackLang.HolProg 64 :=
.seq RemovedBody554_152 RemovedBody554_169

def RemovedBody554_171 : StackLang.HolProg 64 :=
.seq RemovedBody554_123 RemovedBody554_170

def RemovedBody554_172 : StackLang.HolProg 64 :=
.seq RemovedBody554_120 RemovedBody554_171

def RemovedBody554_173 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody554_174 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 1 0
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 0)))

def RemovedBody554_175 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody554_176 : StackLang.HolProg 64 :=
.seq RemovedBody554_174 RemovedBody554_175

def RemovedBody554_177 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody554_178 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1882#64)

def RemovedBody554_179 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody554_180 : StackLang.HolProg 64 :=
.seq RemovedBody554_178 RemovedBody554_179

def RemovedBody554_181 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody554_182 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 2#64)

def RemovedBody554_183 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 1

def RemovedBody554_184 : StackLang.HolProg 64 :=
.seq RemovedBody554_182 RemovedBody554_183

def RemovedBody554_185 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody554_186 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) RemovedBody554_184 RemovedBody554_185

def RemovedBody554_187 : StackLang.HolProg 64 :=
.seq RemovedBody554_181 RemovedBody554_186

def RemovedBody554_188 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def RemovedBody554_189 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody554_190 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 554 9

def RemovedBody554_191 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody554_192 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody554_193 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody554_194 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody554_195 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def RemovedBody554_196 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def RemovedBody554_197 : StackLang.HolProg 64 :=
.seq RemovedBody554_195 RemovedBody554_196

def RemovedBody554_198 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def RemovedBody554_199 : StackLang.HolProg 64 :=
.seq RemovedBody554_197 RemovedBody554_198

def RemovedBody554_200 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody554_201 : StackLang.HolProg 64 :=
.seq RemovedBody554_199 RemovedBody554_200

def RemovedBody554_202 : StackLang.HolProg 64 :=
.seq RemovedBody554_194 RemovedBody554_201

def RemovedBody554_203 : StackLang.HolProg 64 :=
.seq RemovedBody554_193 RemovedBody554_202

def RemovedBody554_204 : StackLang.HolProg 64 :=
.seq RemovedBody554_192 RemovedBody554_203

def RemovedBody554_205 : StackLang.HolProg 64 :=
.seq RemovedBody554_191 RemovedBody554_204

def RemovedBody554_206 : StackLang.HolProg 64 :=
.seq RemovedBody554_190 RemovedBody554_205

def RemovedBody554_207 : StackLang.HolProg 64 :=
.seq RemovedBody554_189 RemovedBody554_206

def RemovedBody554_208 : StackLang.HolProg 64 :=
.seq RemovedBody554_188 RemovedBody554_207

def RemovedBody554_209 : StackLang.HolProg 64 :=
.seq RemovedBody554_187 RemovedBody554_208

def RemovedBody554_210 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody554_211 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody554_212 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody554_213 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody554_214 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody554_215 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody554_216 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 2
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody554_217 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody554_218 : StackLang.HolProg 64 :=
.seq RemovedBody554_216 RemovedBody554_217

def RemovedBody554_219 : StackLang.HolProg 64 :=
.seq RemovedBody554_215 RemovedBody554_218

def RemovedBody554_220 : StackLang.HolProg 64 :=
.seq RemovedBody554_214 RemovedBody554_219

def RemovedBody554_221 : StackLang.HolProg 64 :=
.seq RemovedBody554_213 RemovedBody554_220

def RemovedBody554_222 : StackLang.HolProg 64 :=
.seq RemovedBody554_212 RemovedBody554_221

def RemovedBody554_223 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 2
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody554_224 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody554_225 : StackLang.HolProg 64 :=
.seq RemovedBody554_223 RemovedBody554_224

def RemovedBody554_226 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def RemovedBody554_227 : StackLang.HolProg 64 :=
.seq RemovedBody554_225 RemovedBody554_226

def RemovedBody554_228 : StackLang.HolProg 64 :=
.call (some (RemovedBody554_222, 0, 554, 8)) (Sum.inl 470) (some (RemovedBody554_227, 554, 9))

def RemovedBody554_229 : StackLang.HolProg 64 :=
.seq RemovedBody554_211 RemovedBody554_228

def RemovedBody554_230 : StackLang.HolProg 64 :=
.seq RemovedBody554_210 RemovedBody554_229

def RemovedBody554_231 : StackLang.HolProg 64 :=
.seq RemovedBody554_209 RemovedBody554_230

def RemovedBody554_232 : StackLang.HolProg 64 :=
.seq RemovedBody554_180 RemovedBody554_231

def RemovedBody554_233 : StackLang.HolProg 64 :=
.seq RemovedBody554_177 RemovedBody554_232

def RemovedBody554_234 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody554_235 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 1 0
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 0)))

def RemovedBody554_236 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody554_237 : StackLang.HolProg 64 :=
.seq RemovedBody554_235 RemovedBody554_236

def RemovedBody554_238 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody554_239 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1883#64)

def RemovedBody554_240 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody554_241 : StackLang.HolProg 64 :=
.seq RemovedBody554_239 RemovedBody554_240

def RemovedBody554_242 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody554_243 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 2#64)

def RemovedBody554_244 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 1

def RemovedBody554_245 : StackLang.HolProg 64 :=
.seq RemovedBody554_243 RemovedBody554_244

def RemovedBody554_246 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody554_247 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) RemovedBody554_245 RemovedBody554_246

def RemovedBody554_248 : StackLang.HolProg 64 :=
.seq RemovedBody554_242 RemovedBody554_247

def RemovedBody554_249 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def RemovedBody554_250 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody554_251 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 554 11

def RemovedBody554_252 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody554_253 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody554_254 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody554_255 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody554_256 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def RemovedBody554_257 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def RemovedBody554_258 : StackLang.HolProg 64 :=
.seq RemovedBody554_256 RemovedBody554_257

def RemovedBody554_259 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def RemovedBody554_260 : StackLang.HolProg 64 :=
.seq RemovedBody554_258 RemovedBody554_259

def RemovedBody554_261 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody554_262 : StackLang.HolProg 64 :=
.seq RemovedBody554_260 RemovedBody554_261

def RemovedBody554_263 : StackLang.HolProg 64 :=
.seq RemovedBody554_255 RemovedBody554_262

def RemovedBody554_264 : StackLang.HolProg 64 :=
.seq RemovedBody554_254 RemovedBody554_263

def RemovedBody554_265 : StackLang.HolProg 64 :=
.seq RemovedBody554_253 RemovedBody554_264

def RemovedBody554_266 : StackLang.HolProg 64 :=
.seq RemovedBody554_252 RemovedBody554_265

def RemovedBody554_267 : StackLang.HolProg 64 :=
.seq RemovedBody554_251 RemovedBody554_266

def RemovedBody554_268 : StackLang.HolProg 64 :=
.seq RemovedBody554_250 RemovedBody554_267

def RemovedBody554_269 : StackLang.HolProg 64 :=
.seq RemovedBody554_249 RemovedBody554_268

def RemovedBody554_270 : StackLang.HolProg 64 :=
.seq RemovedBody554_248 RemovedBody554_269

def RemovedBody554_271 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody554_272 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody554_273 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody554_274 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody554_275 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody554_276 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody554_277 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody554_278 : StackLang.HolProg 64 :=
.seq RemovedBody554_276 RemovedBody554_277

def RemovedBody554_279 : StackLang.HolProg 64 :=
.seq RemovedBody554_275 RemovedBody554_278

def RemovedBody554_280 : StackLang.HolProg 64 :=
.seq RemovedBody554_274 RemovedBody554_279

def RemovedBody554_281 : StackLang.HolProg 64 :=
.seq RemovedBody554_273 RemovedBody554_280

def RemovedBody554_282 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody554_283 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def RemovedBody554_284 : StackLang.HolProg 64 :=
.seq RemovedBody554_282 RemovedBody554_283

def RemovedBody554_285 : StackLang.HolProg 64 :=
.call (some (RemovedBody554_281, 0, 554, 10)) (Sum.inl 496) (some (RemovedBody554_284, 554, 11))

def RemovedBody554_286 : StackLang.HolProg 64 :=
.seq RemovedBody554_272 RemovedBody554_285

def RemovedBody554_287 : StackLang.HolProg 64 :=
.seq RemovedBody554_271 RemovedBody554_286

def RemovedBody554_288 : StackLang.HolProg 64 :=
.seq RemovedBody554_270 RemovedBody554_287

def RemovedBody554_289 : StackLang.HolProg 64 :=
.seq RemovedBody554_241 RemovedBody554_288

def RemovedBody554_290 : StackLang.HolProg 64 :=
.seq RemovedBody554_238 RemovedBody554_289

def RemovedBody554_291 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody554_292 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 1 0
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 0)))

def RemovedBody554_293 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody554_294 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1884#64)

def RemovedBody554_295 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody554_296 : StackLang.HolProg 64 :=
.seq RemovedBody554_294 RemovedBody554_295

def RemovedBody554_297 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody554_298 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 2#64)

def RemovedBody554_299 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 1

def RemovedBody554_300 : StackLang.HolProg 64 :=
.seq RemovedBody554_298 RemovedBody554_299

def RemovedBody554_301 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody554_302 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) RemovedBody554_300 RemovedBody554_301

def RemovedBody554_303 : StackLang.HolProg 64 :=
.seq RemovedBody554_297 RemovedBody554_302

def RemovedBody554_304 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def RemovedBody554_305 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody554_306 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 554 13

def RemovedBody554_307 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody554_308 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody554_309 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody554_310 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody554_311 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def RemovedBody554_312 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def RemovedBody554_313 : StackLang.HolProg 64 :=
.seq RemovedBody554_311 RemovedBody554_312

def RemovedBody554_314 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def RemovedBody554_315 : StackLang.HolProg 64 :=
.seq RemovedBody554_313 RemovedBody554_314

def RemovedBody554_316 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody554_317 : StackLang.HolProg 64 :=
.seq RemovedBody554_315 RemovedBody554_316

def RemovedBody554_318 : StackLang.HolProg 64 :=
.seq RemovedBody554_310 RemovedBody554_317

def RemovedBody554_319 : StackLang.HolProg 64 :=
.seq RemovedBody554_309 RemovedBody554_318

def RemovedBody554_320 : StackLang.HolProg 64 :=
.seq RemovedBody554_308 RemovedBody554_319

def RemovedBody554_321 : StackLang.HolProg 64 :=
.seq RemovedBody554_307 RemovedBody554_320

def RemovedBody554_322 : StackLang.HolProg 64 :=
.seq RemovedBody554_306 RemovedBody554_321

def RemovedBody554_323 : StackLang.HolProg 64 :=
.seq RemovedBody554_305 RemovedBody554_322

def RemovedBody554_324 : StackLang.HolProg 64 :=
.seq RemovedBody554_304 RemovedBody554_323

def RemovedBody554_325 : StackLang.HolProg 64 :=
.seq RemovedBody554_303 RemovedBody554_324

def RemovedBody554_326 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody554_327 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody554_328 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody554_329 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody554_330 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody554_331 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody554_332 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 0 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def RemovedBody554_333 : StackLang.HolProg 64 :=
.seq RemovedBody554_331 RemovedBody554_332

def RemovedBody554_334 : StackLang.HolProg 64 :=
.seq RemovedBody554_330 RemovedBody554_333

def RemovedBody554_335 : StackLang.HolProg 64 :=
.seq RemovedBody554_329 RemovedBody554_334

def RemovedBody554_336 : StackLang.HolProg 64 :=
.seq RemovedBody554_328 RemovedBody554_335

def RemovedBody554_337 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody554_338 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def RemovedBody554_339 : StackLang.HolProg 64 :=
.seq RemovedBody554_337 RemovedBody554_338

def RemovedBody554_340 : StackLang.HolProg 64 :=
.call (some (RemovedBody554_336, 0, 554, 12)) (Sum.inl 407) (some (RemovedBody554_339, 554, 13))

def RemovedBody554_341 : StackLang.HolProg 64 :=
.seq RemovedBody554_327 RemovedBody554_340

def RemovedBody554_342 : StackLang.HolProg 64 :=
.seq RemovedBody554_326 RemovedBody554_341

def RemovedBody554_343 : StackLang.HolProg 64 :=
.seq RemovedBody554_325 RemovedBody554_342

def RemovedBody554_344 : StackLang.HolProg 64 :=
.seq RemovedBody554_296 RemovedBody554_343

def RemovedBody554_345 : StackLang.HolProg 64 :=
.seq RemovedBody554_293 RemovedBody554_344

def RemovedBody554_346 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody554_347 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody554_348 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 0 8#64))

def RemovedBody554_349 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody554_350 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 2
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 0 16#64))

def RemovedBody554_351 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody554_352 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 3
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 0 24#64))

def RemovedBody554_353 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody554_354 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 4
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 0 32#64))

def RemovedBody554_355 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody554_356 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody554_357 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1885#64)

def RemovedBody554_358 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody554_359 : StackLang.HolProg 64 :=
.seq RemovedBody554_357 RemovedBody554_358

def RemovedBody554_360 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody554_361 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 2#64)

def RemovedBody554_362 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 1

def RemovedBody554_363 : StackLang.HolProg 64 :=
.seq RemovedBody554_361 RemovedBody554_362

def RemovedBody554_364 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody554_365 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) RemovedBody554_363 RemovedBody554_364

def RemovedBody554_366 : StackLang.HolProg 64 :=
.seq RemovedBody554_360 RemovedBody554_365

def RemovedBody554_367 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def RemovedBody554_368 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody554_369 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 554 15

def RemovedBody554_370 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody554_371 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody554_372 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody554_373 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody554_374 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def RemovedBody554_375 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def RemovedBody554_376 : StackLang.HolProg 64 :=
.seq RemovedBody554_374 RemovedBody554_375

def RemovedBody554_377 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def RemovedBody554_378 : StackLang.HolProg 64 :=
.seq RemovedBody554_376 RemovedBody554_377

def RemovedBody554_379 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody554_380 : StackLang.HolProg 64 :=
.seq RemovedBody554_378 RemovedBody554_379

def RemovedBody554_381 : StackLang.HolProg 64 :=
.seq RemovedBody554_373 RemovedBody554_380

def RemovedBody554_382 : StackLang.HolProg 64 :=
.seq RemovedBody554_372 RemovedBody554_381

def RemovedBody554_383 : StackLang.HolProg 64 :=
.seq RemovedBody554_371 RemovedBody554_382

def RemovedBody554_384 : StackLang.HolProg 64 :=
.seq RemovedBody554_370 RemovedBody554_383

def RemovedBody554_385 : StackLang.HolProg 64 :=
.seq RemovedBody554_369 RemovedBody554_384

def RemovedBody554_386 : StackLang.HolProg 64 :=
.seq RemovedBody554_368 RemovedBody554_385

def RemovedBody554_387 : StackLang.HolProg 64 :=
.seq RemovedBody554_367 RemovedBody554_386

def RemovedBody554_388 : StackLang.HolProg 64 :=
.seq RemovedBody554_366 RemovedBody554_387

def RemovedBody554_389 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody554_390 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody554_391 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody554_392 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody554_393 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody554_394 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody554_395 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody554_396 : StackLang.HolProg 64 :=
.seq RemovedBody554_394 RemovedBody554_395

def RemovedBody554_397 : StackLang.HolProg 64 :=
.seq RemovedBody554_393 RemovedBody554_396

def RemovedBody554_398 : StackLang.HolProg 64 :=
.seq RemovedBody554_392 RemovedBody554_397

def RemovedBody554_399 : StackLang.HolProg 64 :=
.seq RemovedBody554_391 RemovedBody554_398

def RemovedBody554_400 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody554_401 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def RemovedBody554_402 : StackLang.HolProg 64 :=
.seq RemovedBody554_400 RemovedBody554_401

def RemovedBody554_403 : StackLang.HolProg 64 :=
.call (some (RemovedBody554_399, 0, 554, 14)) (Sum.inl 476) (some (RemovedBody554_402, 554, 15))

def RemovedBody554_404 : StackLang.HolProg 64 :=
.seq RemovedBody554_390 RemovedBody554_403

def RemovedBody554_405 : StackLang.HolProg 64 :=
.seq RemovedBody554_389 RemovedBody554_404

def RemovedBody554_406 : StackLang.HolProg 64 :=
.seq RemovedBody554_388 RemovedBody554_405

def RemovedBody554_407 : StackLang.HolProg 64 :=
.seq RemovedBody554_359 RemovedBody554_406

def RemovedBody554_408 : StackLang.HolProg 64 :=
.seq RemovedBody554_356 RemovedBody554_407

def RemovedBody554_409 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody554_410 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 1#64)

def RemovedBody554_411 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody554_412 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody554_413 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1886#64)

def RemovedBody554_414 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody554_415 : StackLang.HolProg 64 :=
.seq RemovedBody554_413 RemovedBody554_414

def RemovedBody554_416 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody554_417 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 2#64)

def RemovedBody554_418 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 1

def RemovedBody554_419 : StackLang.HolProg 64 :=
.seq RemovedBody554_417 RemovedBody554_418

def RemovedBody554_420 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody554_421 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) RemovedBody554_419 RemovedBody554_420

def RemovedBody554_422 : StackLang.HolProg 64 :=
.seq RemovedBody554_416 RemovedBody554_421

def RemovedBody554_423 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def RemovedBody554_424 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody554_425 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 554 17

def RemovedBody554_426 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody554_427 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody554_428 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody554_429 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody554_430 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def RemovedBody554_431 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def RemovedBody554_432 : StackLang.HolProg 64 :=
.seq RemovedBody554_430 RemovedBody554_431

def RemovedBody554_433 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def RemovedBody554_434 : StackLang.HolProg 64 :=
.seq RemovedBody554_432 RemovedBody554_433

def RemovedBody554_435 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody554_436 : StackLang.HolProg 64 :=
.seq RemovedBody554_434 RemovedBody554_435

def RemovedBody554_437 : StackLang.HolProg 64 :=
.seq RemovedBody554_429 RemovedBody554_436

def RemovedBody554_438 : StackLang.HolProg 64 :=
.seq RemovedBody554_428 RemovedBody554_437

def RemovedBody554_439 : StackLang.HolProg 64 :=
.seq RemovedBody554_427 RemovedBody554_438

def RemovedBody554_440 : StackLang.HolProg 64 :=
.seq RemovedBody554_426 RemovedBody554_439

def RemovedBody554_441 : StackLang.HolProg 64 :=
.seq RemovedBody554_425 RemovedBody554_440

def RemovedBody554_442 : StackLang.HolProg 64 :=
.seq RemovedBody554_424 RemovedBody554_441

def RemovedBody554_443 : StackLang.HolProg 64 :=
.seq RemovedBody554_423 RemovedBody554_442

def RemovedBody554_444 : StackLang.HolProg 64 :=
.seq RemovedBody554_422 RemovedBody554_443

def RemovedBody554_445 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody554_446 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody554_447 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody554_448 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody554_449 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody554_450 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody554_451 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 24#64))

def RemovedBody554_452 : StackLang.HolProg 64 :=
.seq RemovedBody554_450 RemovedBody554_451

def RemovedBody554_453 : StackLang.HolProg 64 :=
.seq RemovedBody554_449 RemovedBody554_452

def RemovedBody554_454 : StackLang.HolProg 64 :=
.seq RemovedBody554_448 RemovedBody554_453

def RemovedBody554_455 : StackLang.HolProg 64 :=
.seq RemovedBody554_447 RemovedBody554_454

def RemovedBody554_456 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 24#64))

def RemovedBody554_457 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def RemovedBody554_458 : StackLang.HolProg 64 :=
.seq RemovedBody554_456 RemovedBody554_457

def RemovedBody554_459 : StackLang.HolProg 64 :=
.call (some (RemovedBody554_455, 0, 554, 16)) (Sum.inl 490) (some (RemovedBody554_458, 554, 17))

def RemovedBody554_460 : StackLang.HolProg 64 :=
.seq RemovedBody554_446 RemovedBody554_459

def RemovedBody554_461 : StackLang.HolProg 64 :=
.seq RemovedBody554_445 RemovedBody554_460

def RemovedBody554_462 : StackLang.HolProg 64 :=
.seq RemovedBody554_444 RemovedBody554_461

def RemovedBody554_463 : StackLang.HolProg 64 :=
.seq RemovedBody554_415 RemovedBody554_462

def RemovedBody554_464 : StackLang.HolProg 64 :=
.seq RemovedBody554_412 RemovedBody554_463

def RemovedBody554_465 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody554_466 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 0#64)

def RemovedBody554_467 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody554_468 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 32#64)))

def RemovedBody554_469 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 0

def RemovedBody554_470 : StackLang.HolProg 64 :=
.seq RemovedBody554_468 RemovedBody554_469

def RemovedBody554_471 : StackLang.HolProg 64 :=
.seq RemovedBody554_467 RemovedBody554_470

def RemovedBody554_472 : StackLang.HolProg 64 :=
.seq RemovedBody554_466 RemovedBody554_471

def RemovedBody554_473 : StackLang.HolProg 64 :=
.seq RemovedBody554_465 RemovedBody554_472

def RemovedBody554_474 : StackLang.HolProg 64 :=
.seq RemovedBody554_464 RemovedBody554_473

def RemovedBody554_475 : StackLang.HolProg 64 :=
.seq RemovedBody554_411 RemovedBody554_474

def RemovedBody554_476 : StackLang.HolProg 64 :=
.seq RemovedBody554_410 RemovedBody554_475

def RemovedBody554_477 : StackLang.HolProg 64 :=
.seq RemovedBody554_409 RemovedBody554_476

def RemovedBody554_478 : StackLang.HolProg 64 :=
.seq RemovedBody554_408 RemovedBody554_477

def RemovedBody554_479 : StackLang.HolProg 64 :=
.seq RemovedBody554_355 RemovedBody554_478

def RemovedBody554_480 : StackLang.HolProg 64 :=
.seq RemovedBody554_354 RemovedBody554_479

def RemovedBody554_481 : StackLang.HolProg 64 :=
.seq RemovedBody554_353 RemovedBody554_480

def RemovedBody554_482 : StackLang.HolProg 64 :=
.seq RemovedBody554_352 RemovedBody554_481

def RemovedBody554_483 : StackLang.HolProg 64 :=
.seq RemovedBody554_351 RemovedBody554_482

def RemovedBody554_484 : StackLang.HolProg 64 :=
.seq RemovedBody554_350 RemovedBody554_483

def RemovedBody554_485 : StackLang.HolProg 64 :=
.seq RemovedBody554_349 RemovedBody554_484

def RemovedBody554_486 : StackLang.HolProg 64 :=
.seq RemovedBody554_348 RemovedBody554_485

def RemovedBody554_487 : StackLang.HolProg 64 :=
.seq RemovedBody554_347 RemovedBody554_486

def RemovedBody554_488 : StackLang.HolProg 64 :=
.seq RemovedBody554_346 RemovedBody554_487

def RemovedBody554_489 : StackLang.HolProg 64 :=
.seq RemovedBody554_345 RemovedBody554_488

def RemovedBody554_490 : StackLang.HolProg 64 :=
.seq RemovedBody554_292 RemovedBody554_489

def RemovedBody554_491 : StackLang.HolProg 64 :=
.seq RemovedBody554_291 RemovedBody554_490

def RemovedBody554_492 : StackLang.HolProg 64 :=
.seq RemovedBody554_290 RemovedBody554_491

def RemovedBody554_493 : StackLang.HolProg 64 :=
.seq RemovedBody554_237 RemovedBody554_492

def RemovedBody554_494 : StackLang.HolProg 64 :=
.seq RemovedBody554_234 RemovedBody554_493

def RemovedBody554_495 : StackLang.HolProg 64 :=
.seq RemovedBody554_233 RemovedBody554_494

def RemovedBody554_496 : StackLang.HolProg 64 :=
.seq RemovedBody554_176 RemovedBody554_495

def RemovedBody554_497 : StackLang.HolProg 64 :=
.seq RemovedBody554_173 RemovedBody554_496

def RemovedBody554_498 : StackLang.HolProg 64 :=
.seq RemovedBody554_172 RemovedBody554_497

def RemovedBody554_499 : StackLang.HolProg 64 :=
.seq RemovedBody554_119 RemovedBody554_498

def RemovedBody554_500 : StackLang.HolProg 64 :=
.seq RemovedBody554_116 RemovedBody554_499

def RemovedBody554_501 : StackLang.HolProg 64 :=
.seq RemovedBody554_115 RemovedBody554_500

def RemovedBody554_502 : StackLang.HolProg 64 :=
.seq RemovedBody554_62 RemovedBody554_501

def RemovedBody554_503 : StackLang.HolProg 64 :=
.seq RemovedBody554_61 RemovedBody554_502

def RemovedBody554_504 : StackLang.HolProg 64 :=
.seq RemovedBody554_60 RemovedBody554_503

def RemovedBody554_505 : StackLang.HolProg 64 :=
.seq RemovedBody554_7 RemovedBody554_504

def RemovedBody554_506 : StackLang.HolProg 64 :=
.seq RemovedBody554_6 RemovedBody554_505

def Removed554 : Nat × StackLang.HolProg 64 := (554, RemovedBody554_506)
theorem Removed554_eq : StackRemove.progComp false riscvConfig.addrOffset (riscvConfig.regCount - (riscvConfig.avoidRegs.length + 3)) Alloc554 = Removed554 := by
  kernel_rfl
#print axioms Removed554_eq
end InitECandidate.Proofs.BackendStages
