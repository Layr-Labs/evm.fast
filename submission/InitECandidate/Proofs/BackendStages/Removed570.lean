import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.BackendStages.Alloc570
import Flapjack.Compiler.Backend.Backend
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
namespace InitECandidate.Proofs.BackendStages
def RemovedBody570_0 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 32#64)))

def RemovedBody570_1 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 2#64)

def RemovedBody570_2 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 1

def RemovedBody570_3 : StackLang.HolProg 64 :=
.seq RemovedBody570_1 RemovedBody570_2

def RemovedBody570_4 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody570_5 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) RemovedBody570_3 RemovedBody570_4

def RemovedBody570_6 : StackLang.HolProg 64 :=
.seq RemovedBody570_0 RemovedBody570_5

def RemovedBody570_7 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 24#64))

def RemovedBody570_8 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody570_9 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1977#64)

def RemovedBody570_10 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody570_11 : StackLang.HolProg 64 :=
.seq RemovedBody570_9 RemovedBody570_10

def RemovedBody570_12 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody570_13 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 2#64)

def RemovedBody570_14 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 1

def RemovedBody570_15 : StackLang.HolProg 64 :=
.seq RemovedBody570_13 RemovedBody570_14

def RemovedBody570_16 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody570_17 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) RemovedBody570_15 RemovedBody570_16

def RemovedBody570_18 : StackLang.HolProg 64 :=
.seq RemovedBody570_12 RemovedBody570_17

def RemovedBody570_19 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def RemovedBody570_20 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody570_21 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 570 3

def RemovedBody570_22 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody570_23 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody570_24 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody570_25 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody570_26 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def RemovedBody570_27 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def RemovedBody570_28 : StackLang.HolProg 64 :=
.seq RemovedBody570_26 RemovedBody570_27

def RemovedBody570_29 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def RemovedBody570_30 : StackLang.HolProg 64 :=
.seq RemovedBody570_28 RemovedBody570_29

def RemovedBody570_31 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody570_32 : StackLang.HolProg 64 :=
.seq RemovedBody570_30 RemovedBody570_31

def RemovedBody570_33 : StackLang.HolProg 64 :=
.seq RemovedBody570_25 RemovedBody570_32

def RemovedBody570_34 : StackLang.HolProg 64 :=
.seq RemovedBody570_24 RemovedBody570_33

def RemovedBody570_35 : StackLang.HolProg 64 :=
.seq RemovedBody570_23 RemovedBody570_34

def RemovedBody570_36 : StackLang.HolProg 64 :=
.seq RemovedBody570_22 RemovedBody570_35

def RemovedBody570_37 : StackLang.HolProg 64 :=
.seq RemovedBody570_21 RemovedBody570_36

def RemovedBody570_38 : StackLang.HolProg 64 :=
.seq RemovedBody570_20 RemovedBody570_37

def RemovedBody570_39 : StackLang.HolProg 64 :=
.seq RemovedBody570_19 RemovedBody570_38

def RemovedBody570_40 : StackLang.HolProg 64 :=
.seq RemovedBody570_18 RemovedBody570_39

def RemovedBody570_41 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody570_42 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody570_43 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody570_44 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody570_45 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody570_46 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody570_47 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 0 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def RemovedBody570_48 : StackLang.HolProg 64 :=
.seq RemovedBody570_46 RemovedBody570_47

def RemovedBody570_49 : StackLang.HolProg 64 :=
.seq RemovedBody570_45 RemovedBody570_48

def RemovedBody570_50 : StackLang.HolProg 64 :=
.seq RemovedBody570_44 RemovedBody570_49

def RemovedBody570_51 : StackLang.HolProg 64 :=
.seq RemovedBody570_43 RemovedBody570_50

def RemovedBody570_52 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody570_53 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def RemovedBody570_54 : StackLang.HolProg 64 :=
.seq RemovedBody570_52 RemovedBody570_53

def RemovedBody570_55 : StackLang.HolProg 64 :=
.call (some (RemovedBody570_51, 0, 570, 2)) (Sum.inl 475) (some (RemovedBody570_54, 570, 3))

def RemovedBody570_56 : StackLang.HolProg 64 :=
.seq RemovedBody570_42 RemovedBody570_55

def RemovedBody570_57 : StackLang.HolProg 64 :=
.seq RemovedBody570_41 RemovedBody570_56

def RemovedBody570_58 : StackLang.HolProg 64 :=
.seq RemovedBody570_40 RemovedBody570_57

def RemovedBody570_59 : StackLang.HolProg 64 :=
.seq RemovedBody570_11 RemovedBody570_58

def RemovedBody570_60 : StackLang.HolProg 64 :=
.seq RemovedBody570_8 RemovedBody570_59

def RemovedBody570_61 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody570_62 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 1 0
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 0)))

def RemovedBody570_63 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody570_64 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1978#64)

def RemovedBody570_65 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody570_66 : StackLang.HolProg 64 :=
.seq RemovedBody570_64 RemovedBody570_65

def RemovedBody570_67 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody570_68 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 2#64)

def RemovedBody570_69 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 1

def RemovedBody570_70 : StackLang.HolProg 64 :=
.seq RemovedBody570_68 RemovedBody570_69

def RemovedBody570_71 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody570_72 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) RemovedBody570_70 RemovedBody570_71

def RemovedBody570_73 : StackLang.HolProg 64 :=
.seq RemovedBody570_67 RemovedBody570_72

def RemovedBody570_74 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def RemovedBody570_75 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody570_76 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 570 5

def RemovedBody570_77 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody570_78 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody570_79 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody570_80 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody570_81 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def RemovedBody570_82 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def RemovedBody570_83 : StackLang.HolProg 64 :=
.seq RemovedBody570_81 RemovedBody570_82

def RemovedBody570_84 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def RemovedBody570_85 : StackLang.HolProg 64 :=
.seq RemovedBody570_83 RemovedBody570_84

def RemovedBody570_86 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody570_87 : StackLang.HolProg 64 :=
.seq RemovedBody570_85 RemovedBody570_86

def RemovedBody570_88 : StackLang.HolProg 64 :=
.seq RemovedBody570_80 RemovedBody570_87

def RemovedBody570_89 : StackLang.HolProg 64 :=
.seq RemovedBody570_79 RemovedBody570_88

def RemovedBody570_90 : StackLang.HolProg 64 :=
.seq RemovedBody570_78 RemovedBody570_89

def RemovedBody570_91 : StackLang.HolProg 64 :=
.seq RemovedBody570_77 RemovedBody570_90

def RemovedBody570_92 : StackLang.HolProg 64 :=
.seq RemovedBody570_76 RemovedBody570_91

def RemovedBody570_93 : StackLang.HolProg 64 :=
.seq RemovedBody570_75 RemovedBody570_92

def RemovedBody570_94 : StackLang.HolProg 64 :=
.seq RemovedBody570_74 RemovedBody570_93

def RemovedBody570_95 : StackLang.HolProg 64 :=
.seq RemovedBody570_73 RemovedBody570_94

def RemovedBody570_96 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody570_97 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody570_98 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody570_99 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody570_100 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody570_101 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody570_102 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 0 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def RemovedBody570_103 : StackLang.HolProg 64 :=
.seq RemovedBody570_101 RemovedBody570_102

def RemovedBody570_104 : StackLang.HolProg 64 :=
.seq RemovedBody570_100 RemovedBody570_103

def RemovedBody570_105 : StackLang.HolProg 64 :=
.seq RemovedBody570_99 RemovedBody570_104

def RemovedBody570_106 : StackLang.HolProg 64 :=
.seq RemovedBody570_98 RemovedBody570_105

def RemovedBody570_107 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody570_108 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def RemovedBody570_109 : StackLang.HolProg 64 :=
.seq RemovedBody570_107 RemovedBody570_108

def RemovedBody570_110 : StackLang.HolProg 64 :=
.call (some (RemovedBody570_106, 0, 570, 4)) (Sum.inl 466) (some (RemovedBody570_109, 570, 5))

def RemovedBody570_111 : StackLang.HolProg 64 :=
.seq RemovedBody570_97 RemovedBody570_110

def RemovedBody570_112 : StackLang.HolProg 64 :=
.seq RemovedBody570_96 RemovedBody570_111

def RemovedBody570_113 : StackLang.HolProg 64 :=
.seq RemovedBody570_95 RemovedBody570_112

def RemovedBody570_114 : StackLang.HolProg 64 :=
.seq RemovedBody570_66 RemovedBody570_113

def RemovedBody570_115 : StackLang.HolProg 64 :=
.seq RemovedBody570_63 RemovedBody570_114

def RemovedBody570_116 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody570_117 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 1 0
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 0)))

def RemovedBody570_118 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody570_119 : StackLang.HolProg 64 :=
.seq RemovedBody570_117 RemovedBody570_118

def RemovedBody570_120 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody570_121 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1979#64)

def RemovedBody570_122 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody570_123 : StackLang.HolProg 64 :=
.seq RemovedBody570_121 RemovedBody570_122

def RemovedBody570_124 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody570_125 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 2#64)

def RemovedBody570_126 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 1

def RemovedBody570_127 : StackLang.HolProg 64 :=
.seq RemovedBody570_125 RemovedBody570_126

def RemovedBody570_128 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody570_129 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) RemovedBody570_127 RemovedBody570_128

def RemovedBody570_130 : StackLang.HolProg 64 :=
.seq RemovedBody570_124 RemovedBody570_129

def RemovedBody570_131 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def RemovedBody570_132 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody570_133 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 570 7

def RemovedBody570_134 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody570_135 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody570_136 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody570_137 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody570_138 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def RemovedBody570_139 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def RemovedBody570_140 : StackLang.HolProg 64 :=
.seq RemovedBody570_138 RemovedBody570_139

def RemovedBody570_141 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def RemovedBody570_142 : StackLang.HolProg 64 :=
.seq RemovedBody570_140 RemovedBody570_141

def RemovedBody570_143 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody570_144 : StackLang.HolProg 64 :=
.seq RemovedBody570_142 RemovedBody570_143

def RemovedBody570_145 : StackLang.HolProg 64 :=
.seq RemovedBody570_137 RemovedBody570_144

def RemovedBody570_146 : StackLang.HolProg 64 :=
.seq RemovedBody570_136 RemovedBody570_145

def RemovedBody570_147 : StackLang.HolProg 64 :=
.seq RemovedBody570_135 RemovedBody570_146

def RemovedBody570_148 : StackLang.HolProg 64 :=
.seq RemovedBody570_134 RemovedBody570_147

def RemovedBody570_149 : StackLang.HolProg 64 :=
.seq RemovedBody570_133 RemovedBody570_148

def RemovedBody570_150 : StackLang.HolProg 64 :=
.seq RemovedBody570_132 RemovedBody570_149

def RemovedBody570_151 : StackLang.HolProg 64 :=
.seq RemovedBody570_131 RemovedBody570_150

def RemovedBody570_152 : StackLang.HolProg 64 :=
.seq RemovedBody570_130 RemovedBody570_151

def RemovedBody570_153 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody570_154 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody570_155 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody570_156 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody570_157 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody570_158 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody570_159 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 0 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def RemovedBody570_160 : StackLang.HolProg 64 :=
.seq RemovedBody570_158 RemovedBody570_159

def RemovedBody570_161 : StackLang.HolProg 64 :=
.seq RemovedBody570_157 RemovedBody570_160

def RemovedBody570_162 : StackLang.HolProg 64 :=
.seq RemovedBody570_156 RemovedBody570_161

def RemovedBody570_163 : StackLang.HolProg 64 :=
.seq RemovedBody570_155 RemovedBody570_162

def RemovedBody570_164 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody570_165 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def RemovedBody570_166 : StackLang.HolProg 64 :=
.seq RemovedBody570_164 RemovedBody570_165

def RemovedBody570_167 : StackLang.HolProg 64 :=
.call (some (RemovedBody570_163, 0, 570, 6)) (Sum.inl 495) (some (RemovedBody570_166, 570, 7))

def RemovedBody570_168 : StackLang.HolProg 64 :=
.seq RemovedBody570_154 RemovedBody570_167

def RemovedBody570_169 : StackLang.HolProg 64 :=
.seq RemovedBody570_153 RemovedBody570_168

def RemovedBody570_170 : StackLang.HolProg 64 :=
.seq RemovedBody570_152 RemovedBody570_169

def RemovedBody570_171 : StackLang.HolProg 64 :=
.seq RemovedBody570_123 RemovedBody570_170

def RemovedBody570_172 : StackLang.HolProg 64 :=
.seq RemovedBody570_120 RemovedBody570_171

def RemovedBody570_173 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody570_174 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 1 0
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 0)))

def RemovedBody570_175 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody570_176 : StackLang.HolProg 64 :=
.seq RemovedBody570_174 RemovedBody570_175

def RemovedBody570_177 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody570_178 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1980#64)

def RemovedBody570_179 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody570_180 : StackLang.HolProg 64 :=
.seq RemovedBody570_178 RemovedBody570_179

def RemovedBody570_181 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody570_182 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 2#64)

def RemovedBody570_183 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 1

def RemovedBody570_184 : StackLang.HolProg 64 :=
.seq RemovedBody570_182 RemovedBody570_183

def RemovedBody570_185 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody570_186 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) RemovedBody570_184 RemovedBody570_185

def RemovedBody570_187 : StackLang.HolProg 64 :=
.seq RemovedBody570_181 RemovedBody570_186

def RemovedBody570_188 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def RemovedBody570_189 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody570_190 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 570 9

def RemovedBody570_191 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody570_192 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody570_193 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody570_194 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody570_195 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def RemovedBody570_196 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def RemovedBody570_197 : StackLang.HolProg 64 :=
.seq RemovedBody570_195 RemovedBody570_196

def RemovedBody570_198 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def RemovedBody570_199 : StackLang.HolProg 64 :=
.seq RemovedBody570_197 RemovedBody570_198

def RemovedBody570_200 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody570_201 : StackLang.HolProg 64 :=
.seq RemovedBody570_199 RemovedBody570_200

def RemovedBody570_202 : StackLang.HolProg 64 :=
.seq RemovedBody570_194 RemovedBody570_201

def RemovedBody570_203 : StackLang.HolProg 64 :=
.seq RemovedBody570_193 RemovedBody570_202

def RemovedBody570_204 : StackLang.HolProg 64 :=
.seq RemovedBody570_192 RemovedBody570_203

def RemovedBody570_205 : StackLang.HolProg 64 :=
.seq RemovedBody570_191 RemovedBody570_204

def RemovedBody570_206 : StackLang.HolProg 64 :=
.seq RemovedBody570_190 RemovedBody570_205

def RemovedBody570_207 : StackLang.HolProg 64 :=
.seq RemovedBody570_189 RemovedBody570_206

def RemovedBody570_208 : StackLang.HolProg 64 :=
.seq RemovedBody570_188 RemovedBody570_207

def RemovedBody570_209 : StackLang.HolProg 64 :=
.seq RemovedBody570_187 RemovedBody570_208

def RemovedBody570_210 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody570_211 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody570_212 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody570_213 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody570_214 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody570_215 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody570_216 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 2
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody570_217 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody570_218 : StackLang.HolProg 64 :=
.seq RemovedBody570_216 RemovedBody570_217

def RemovedBody570_219 : StackLang.HolProg 64 :=
.seq RemovedBody570_215 RemovedBody570_218

def RemovedBody570_220 : StackLang.HolProg 64 :=
.seq RemovedBody570_214 RemovedBody570_219

def RemovedBody570_221 : StackLang.HolProg 64 :=
.seq RemovedBody570_213 RemovedBody570_220

def RemovedBody570_222 : StackLang.HolProg 64 :=
.seq RemovedBody570_212 RemovedBody570_221

def RemovedBody570_223 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 2
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody570_224 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody570_225 : StackLang.HolProg 64 :=
.seq RemovedBody570_223 RemovedBody570_224

def RemovedBody570_226 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def RemovedBody570_227 : StackLang.HolProg 64 :=
.seq RemovedBody570_225 RemovedBody570_226

def RemovedBody570_228 : StackLang.HolProg 64 :=
.call (some (RemovedBody570_222, 0, 570, 8)) (Sum.inl 470) (some (RemovedBody570_227, 570, 9))

def RemovedBody570_229 : StackLang.HolProg 64 :=
.seq RemovedBody570_211 RemovedBody570_228

def RemovedBody570_230 : StackLang.HolProg 64 :=
.seq RemovedBody570_210 RemovedBody570_229

def RemovedBody570_231 : StackLang.HolProg 64 :=
.seq RemovedBody570_209 RemovedBody570_230

def RemovedBody570_232 : StackLang.HolProg 64 :=
.seq RemovedBody570_180 RemovedBody570_231

def RemovedBody570_233 : StackLang.HolProg 64 :=
.seq RemovedBody570_177 RemovedBody570_232

def RemovedBody570_234 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody570_235 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 1 0
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 0)))

def RemovedBody570_236 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody570_237 : StackLang.HolProg 64 :=
.seq RemovedBody570_235 RemovedBody570_236

def RemovedBody570_238 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody570_239 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1981#64)

def RemovedBody570_240 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody570_241 : StackLang.HolProg 64 :=
.seq RemovedBody570_239 RemovedBody570_240

def RemovedBody570_242 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody570_243 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 2#64)

def RemovedBody570_244 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 1

def RemovedBody570_245 : StackLang.HolProg 64 :=
.seq RemovedBody570_243 RemovedBody570_244

def RemovedBody570_246 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody570_247 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) RemovedBody570_245 RemovedBody570_246

def RemovedBody570_248 : StackLang.HolProg 64 :=
.seq RemovedBody570_242 RemovedBody570_247

def RemovedBody570_249 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def RemovedBody570_250 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody570_251 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 570 11

def RemovedBody570_252 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody570_253 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody570_254 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody570_255 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody570_256 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def RemovedBody570_257 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def RemovedBody570_258 : StackLang.HolProg 64 :=
.seq RemovedBody570_256 RemovedBody570_257

def RemovedBody570_259 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def RemovedBody570_260 : StackLang.HolProg 64 :=
.seq RemovedBody570_258 RemovedBody570_259

def RemovedBody570_261 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody570_262 : StackLang.HolProg 64 :=
.seq RemovedBody570_260 RemovedBody570_261

def RemovedBody570_263 : StackLang.HolProg 64 :=
.seq RemovedBody570_255 RemovedBody570_262

def RemovedBody570_264 : StackLang.HolProg 64 :=
.seq RemovedBody570_254 RemovedBody570_263

def RemovedBody570_265 : StackLang.HolProg 64 :=
.seq RemovedBody570_253 RemovedBody570_264

def RemovedBody570_266 : StackLang.HolProg 64 :=
.seq RemovedBody570_252 RemovedBody570_265

def RemovedBody570_267 : StackLang.HolProg 64 :=
.seq RemovedBody570_251 RemovedBody570_266

def RemovedBody570_268 : StackLang.HolProg 64 :=
.seq RemovedBody570_250 RemovedBody570_267

def RemovedBody570_269 : StackLang.HolProg 64 :=
.seq RemovedBody570_249 RemovedBody570_268

def RemovedBody570_270 : StackLang.HolProg 64 :=
.seq RemovedBody570_248 RemovedBody570_269

def RemovedBody570_271 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody570_272 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody570_273 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody570_274 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody570_275 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody570_276 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody570_277 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody570_278 : StackLang.HolProg 64 :=
.seq RemovedBody570_276 RemovedBody570_277

def RemovedBody570_279 : StackLang.HolProg 64 :=
.seq RemovedBody570_275 RemovedBody570_278

def RemovedBody570_280 : StackLang.HolProg 64 :=
.seq RemovedBody570_274 RemovedBody570_279

def RemovedBody570_281 : StackLang.HolProg 64 :=
.seq RemovedBody570_273 RemovedBody570_280

def RemovedBody570_282 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody570_283 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def RemovedBody570_284 : StackLang.HolProg 64 :=
.seq RemovedBody570_282 RemovedBody570_283

def RemovedBody570_285 : StackLang.HolProg 64 :=
.call (some (RemovedBody570_281, 0, 570, 10)) (Sum.inl 496) (some (RemovedBody570_284, 570, 11))

def RemovedBody570_286 : StackLang.HolProg 64 :=
.seq RemovedBody570_272 RemovedBody570_285

def RemovedBody570_287 : StackLang.HolProg 64 :=
.seq RemovedBody570_271 RemovedBody570_286

def RemovedBody570_288 : StackLang.HolProg 64 :=
.seq RemovedBody570_270 RemovedBody570_287

def RemovedBody570_289 : StackLang.HolProg 64 :=
.seq RemovedBody570_241 RemovedBody570_288

def RemovedBody570_290 : StackLang.HolProg 64 :=
.seq RemovedBody570_238 RemovedBody570_289

def RemovedBody570_291 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody570_292 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 1 0
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 0)))

def RemovedBody570_293 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody570_294 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1982#64)

def RemovedBody570_295 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody570_296 : StackLang.HolProg 64 :=
.seq RemovedBody570_294 RemovedBody570_295

def RemovedBody570_297 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody570_298 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 2#64)

def RemovedBody570_299 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 1

def RemovedBody570_300 : StackLang.HolProg 64 :=
.seq RemovedBody570_298 RemovedBody570_299

def RemovedBody570_301 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody570_302 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) RemovedBody570_300 RemovedBody570_301

def RemovedBody570_303 : StackLang.HolProg 64 :=
.seq RemovedBody570_297 RemovedBody570_302

def RemovedBody570_304 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def RemovedBody570_305 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody570_306 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 570 13

def RemovedBody570_307 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody570_308 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody570_309 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody570_310 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody570_311 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def RemovedBody570_312 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def RemovedBody570_313 : StackLang.HolProg 64 :=
.seq RemovedBody570_311 RemovedBody570_312

def RemovedBody570_314 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def RemovedBody570_315 : StackLang.HolProg 64 :=
.seq RemovedBody570_313 RemovedBody570_314

def RemovedBody570_316 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody570_317 : StackLang.HolProg 64 :=
.seq RemovedBody570_315 RemovedBody570_316

def RemovedBody570_318 : StackLang.HolProg 64 :=
.seq RemovedBody570_310 RemovedBody570_317

def RemovedBody570_319 : StackLang.HolProg 64 :=
.seq RemovedBody570_309 RemovedBody570_318

def RemovedBody570_320 : StackLang.HolProg 64 :=
.seq RemovedBody570_308 RemovedBody570_319

def RemovedBody570_321 : StackLang.HolProg 64 :=
.seq RemovedBody570_307 RemovedBody570_320

def RemovedBody570_322 : StackLang.HolProg 64 :=
.seq RemovedBody570_306 RemovedBody570_321

def RemovedBody570_323 : StackLang.HolProg 64 :=
.seq RemovedBody570_305 RemovedBody570_322

def RemovedBody570_324 : StackLang.HolProg 64 :=
.seq RemovedBody570_304 RemovedBody570_323

def RemovedBody570_325 : StackLang.HolProg 64 :=
.seq RemovedBody570_303 RemovedBody570_324

def RemovedBody570_326 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody570_327 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody570_328 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody570_329 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody570_330 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody570_331 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody570_332 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 0 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def RemovedBody570_333 : StackLang.HolProg 64 :=
.seq RemovedBody570_331 RemovedBody570_332

def RemovedBody570_334 : StackLang.HolProg 64 :=
.seq RemovedBody570_330 RemovedBody570_333

def RemovedBody570_335 : StackLang.HolProg 64 :=
.seq RemovedBody570_329 RemovedBody570_334

def RemovedBody570_336 : StackLang.HolProg 64 :=
.seq RemovedBody570_328 RemovedBody570_335

def RemovedBody570_337 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody570_338 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def RemovedBody570_339 : StackLang.HolProg 64 :=
.seq RemovedBody570_337 RemovedBody570_338

def RemovedBody570_340 : StackLang.HolProg 64 :=
.call (some (RemovedBody570_336, 0, 570, 12)) (Sum.inl 407) (some (RemovedBody570_339, 570, 13))

def RemovedBody570_341 : StackLang.HolProg 64 :=
.seq RemovedBody570_327 RemovedBody570_340

def RemovedBody570_342 : StackLang.HolProg 64 :=
.seq RemovedBody570_326 RemovedBody570_341

def RemovedBody570_343 : StackLang.HolProg 64 :=
.seq RemovedBody570_325 RemovedBody570_342

def RemovedBody570_344 : StackLang.HolProg 64 :=
.seq RemovedBody570_296 RemovedBody570_343

def RemovedBody570_345 : StackLang.HolProg 64 :=
.seq RemovedBody570_293 RemovedBody570_344

def RemovedBody570_346 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody570_347 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 1 0
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 0)))

def RemovedBody570_348 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody570_349 : StackLang.HolProg 64 :=
.seq RemovedBody570_347 RemovedBody570_348

def RemovedBody570_350 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody570_351 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1983#64)

def RemovedBody570_352 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody570_353 : StackLang.HolProg 64 :=
.seq RemovedBody570_351 RemovedBody570_352

def RemovedBody570_354 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody570_355 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 2#64)

def RemovedBody570_356 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 1

def RemovedBody570_357 : StackLang.HolProg 64 :=
.seq RemovedBody570_355 RemovedBody570_356

def RemovedBody570_358 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody570_359 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) RemovedBody570_357 RemovedBody570_358

def RemovedBody570_360 : StackLang.HolProg 64 :=
.seq RemovedBody570_354 RemovedBody570_359

def RemovedBody570_361 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def RemovedBody570_362 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody570_363 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 570 15

def RemovedBody570_364 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody570_365 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody570_366 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody570_367 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody570_368 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def RemovedBody570_369 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def RemovedBody570_370 : StackLang.HolProg 64 :=
.seq RemovedBody570_368 RemovedBody570_369

def RemovedBody570_371 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def RemovedBody570_372 : StackLang.HolProg 64 :=
.seq RemovedBody570_370 RemovedBody570_371

def RemovedBody570_373 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody570_374 : StackLang.HolProg 64 :=
.seq RemovedBody570_372 RemovedBody570_373

def RemovedBody570_375 : StackLang.HolProg 64 :=
.seq RemovedBody570_367 RemovedBody570_374

def RemovedBody570_376 : StackLang.HolProg 64 :=
.seq RemovedBody570_366 RemovedBody570_375

def RemovedBody570_377 : StackLang.HolProg 64 :=
.seq RemovedBody570_365 RemovedBody570_376

def RemovedBody570_378 : StackLang.HolProg 64 :=
.seq RemovedBody570_364 RemovedBody570_377

def RemovedBody570_379 : StackLang.HolProg 64 :=
.seq RemovedBody570_363 RemovedBody570_378

def RemovedBody570_380 : StackLang.HolProg 64 :=
.seq RemovedBody570_362 RemovedBody570_379

def RemovedBody570_381 : StackLang.HolProg 64 :=
.seq RemovedBody570_361 RemovedBody570_380

def RemovedBody570_382 : StackLang.HolProg 64 :=
.seq RemovedBody570_360 RemovedBody570_381

def RemovedBody570_383 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody570_384 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody570_385 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody570_386 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody570_387 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody570_388 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody570_389 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 2 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def RemovedBody570_390 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody570_391 : StackLang.HolProg 64 :=
.seq RemovedBody570_389 RemovedBody570_390

def RemovedBody570_392 : StackLang.HolProg 64 :=
.seq RemovedBody570_388 RemovedBody570_391

def RemovedBody570_393 : StackLang.HolProg 64 :=
.seq RemovedBody570_387 RemovedBody570_392

def RemovedBody570_394 : StackLang.HolProg 64 :=
.seq RemovedBody570_386 RemovedBody570_393

def RemovedBody570_395 : StackLang.HolProg 64 :=
.seq RemovedBody570_385 RemovedBody570_394

def RemovedBody570_396 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody570_397 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def RemovedBody570_398 : StackLang.HolProg 64 :=
.seq RemovedBody570_396 RemovedBody570_397

def RemovedBody570_399 : StackLang.HolProg 64 :=
.call (some (RemovedBody570_395, 0, 570, 14)) (Sum.inl 416) (some (RemovedBody570_398, 570, 15))

def RemovedBody570_400 : StackLang.HolProg 64 :=
.seq RemovedBody570_384 RemovedBody570_399

def RemovedBody570_401 : StackLang.HolProg 64 :=
.seq RemovedBody570_383 RemovedBody570_400

def RemovedBody570_402 : StackLang.HolProg 64 :=
.seq RemovedBody570_382 RemovedBody570_401

def RemovedBody570_403 : StackLang.HolProg 64 :=
.seq RemovedBody570_353 RemovedBody570_402

def RemovedBody570_404 : StackLang.HolProg 64 :=
.seq RemovedBody570_350 RemovedBody570_403

def RemovedBody570_405 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody570_406 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody570_407 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 0#64)

def RemovedBody570_408 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody570_409 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 4 0#64)

def RemovedBody570_410 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 3 0#64)

def RemovedBody570_411 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 2 0#64)

def RemovedBody570_412 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 0#64)

def RemovedBody570_413 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody570_414 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody570_415 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1984#64)

def RemovedBody570_416 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody570_417 : StackLang.HolProg 64 :=
.seq RemovedBody570_415 RemovedBody570_416

def RemovedBody570_418 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody570_419 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 2#64)

def RemovedBody570_420 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 1

def RemovedBody570_421 : StackLang.HolProg 64 :=
.seq RemovedBody570_419 RemovedBody570_420

def RemovedBody570_422 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody570_423 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) RemovedBody570_421 RemovedBody570_422

def RemovedBody570_424 : StackLang.HolProg 64 :=
.seq RemovedBody570_418 RemovedBody570_423

def RemovedBody570_425 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def RemovedBody570_426 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody570_427 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 570 17

def RemovedBody570_428 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody570_429 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody570_430 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody570_431 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody570_432 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def RemovedBody570_433 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def RemovedBody570_434 : StackLang.HolProg 64 :=
.seq RemovedBody570_432 RemovedBody570_433

def RemovedBody570_435 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def RemovedBody570_436 : StackLang.HolProg 64 :=
.seq RemovedBody570_434 RemovedBody570_435

def RemovedBody570_437 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody570_438 : StackLang.HolProg 64 :=
.seq RemovedBody570_436 RemovedBody570_437

def RemovedBody570_439 : StackLang.HolProg 64 :=
.seq RemovedBody570_431 RemovedBody570_438

def RemovedBody570_440 : StackLang.HolProg 64 :=
.seq RemovedBody570_430 RemovedBody570_439

def RemovedBody570_441 : StackLang.HolProg 64 :=
.seq RemovedBody570_429 RemovedBody570_440

def RemovedBody570_442 : StackLang.HolProg 64 :=
.seq RemovedBody570_428 RemovedBody570_441

def RemovedBody570_443 : StackLang.HolProg 64 :=
.seq RemovedBody570_427 RemovedBody570_442

def RemovedBody570_444 : StackLang.HolProg 64 :=
.seq RemovedBody570_426 RemovedBody570_443

def RemovedBody570_445 : StackLang.HolProg 64 :=
.seq RemovedBody570_425 RemovedBody570_444

def RemovedBody570_446 : StackLang.HolProg 64 :=
.seq RemovedBody570_424 RemovedBody570_445

def RemovedBody570_447 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody570_448 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody570_449 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody570_450 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody570_451 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody570_452 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody570_453 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody570_454 : StackLang.HolProg 64 :=
.seq RemovedBody570_452 RemovedBody570_453

def RemovedBody570_455 : StackLang.HolProg 64 :=
.seq RemovedBody570_451 RemovedBody570_454

def RemovedBody570_456 : StackLang.HolProg 64 :=
.seq RemovedBody570_450 RemovedBody570_455

def RemovedBody570_457 : StackLang.HolProg 64 :=
.seq RemovedBody570_449 RemovedBody570_456

def RemovedBody570_458 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody570_459 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def RemovedBody570_460 : StackLang.HolProg 64 :=
.seq RemovedBody570_458 RemovedBody570_459

def RemovedBody570_461 : StackLang.HolProg 64 :=
.call (some (RemovedBody570_457, 0, 570, 16)) (Sum.inl 476) (some (RemovedBody570_460, 570, 17))

def RemovedBody570_462 : StackLang.HolProg 64 :=
.seq RemovedBody570_448 RemovedBody570_461

def RemovedBody570_463 : StackLang.HolProg 64 :=
.seq RemovedBody570_447 RemovedBody570_462

def RemovedBody570_464 : StackLang.HolProg 64 :=
.seq RemovedBody570_446 RemovedBody570_463

def RemovedBody570_465 : StackLang.HolProg 64 :=
.seq RemovedBody570_417 RemovedBody570_464

def RemovedBody570_466 : StackLang.HolProg 64 :=
.seq RemovedBody570_414 RemovedBody570_465

def RemovedBody570_467 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody570_468 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody570_469 : StackLang.HolProg 64 :=
.seq RemovedBody570_467 RemovedBody570_468

def RemovedBody570_470 : StackLang.HolProg 64 :=
.seq RemovedBody570_466 RemovedBody570_469

def RemovedBody570_471 : StackLang.HolProg 64 :=
.seq RemovedBody570_413 RemovedBody570_470

def RemovedBody570_472 : StackLang.HolProg 64 :=
.seq RemovedBody570_412 RemovedBody570_471

def RemovedBody570_473 : StackLang.HolProg 64 :=
.seq RemovedBody570_411 RemovedBody570_472

def RemovedBody570_474 : StackLang.HolProg 64 :=
.seq RemovedBody570_410 RemovedBody570_473

def RemovedBody570_475 : StackLang.HolProg 64 :=
.seq RemovedBody570_409 RemovedBody570_474

def RemovedBody570_476 : StackLang.HolProg 64 :=
.seq RemovedBody570_408 RemovedBody570_475

def RemovedBody570_477 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody570_478 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody570_479 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 0 48#64))

def RemovedBody570_480 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 2 32#64)

def RemovedBody570_481 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody570_482 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody570_483 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1985#64)

def RemovedBody570_484 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody570_485 : StackLang.HolProg 64 :=
.seq RemovedBody570_483 RemovedBody570_484

def RemovedBody570_486 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody570_487 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 2#64)

def RemovedBody570_488 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 1

def RemovedBody570_489 : StackLang.HolProg 64 :=
.seq RemovedBody570_487 RemovedBody570_488

def RemovedBody570_490 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody570_491 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) RemovedBody570_489 RemovedBody570_490

def RemovedBody570_492 : StackLang.HolProg 64 :=
.seq RemovedBody570_486 RemovedBody570_491

def RemovedBody570_493 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def RemovedBody570_494 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody570_495 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 570 19

def RemovedBody570_496 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody570_497 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody570_498 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody570_499 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody570_500 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def RemovedBody570_501 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def RemovedBody570_502 : StackLang.HolProg 64 :=
.seq RemovedBody570_500 RemovedBody570_501

def RemovedBody570_503 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def RemovedBody570_504 : StackLang.HolProg 64 :=
.seq RemovedBody570_502 RemovedBody570_503

def RemovedBody570_505 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody570_506 : StackLang.HolProg 64 :=
.seq RemovedBody570_504 RemovedBody570_505

def RemovedBody570_507 : StackLang.HolProg 64 :=
.seq RemovedBody570_499 RemovedBody570_506

def RemovedBody570_508 : StackLang.HolProg 64 :=
.seq RemovedBody570_498 RemovedBody570_507

def RemovedBody570_509 : StackLang.HolProg 64 :=
.seq RemovedBody570_497 RemovedBody570_508

def RemovedBody570_510 : StackLang.HolProg 64 :=
.seq RemovedBody570_496 RemovedBody570_509

def RemovedBody570_511 : StackLang.HolProg 64 :=
.seq RemovedBody570_495 RemovedBody570_510

def RemovedBody570_512 : StackLang.HolProg 64 :=
.seq RemovedBody570_494 RemovedBody570_511

def RemovedBody570_513 : StackLang.HolProg 64 :=
.seq RemovedBody570_493 RemovedBody570_512

def RemovedBody570_514 : StackLang.HolProg 64 :=
.seq RemovedBody570_492 RemovedBody570_513

def RemovedBody570_515 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody570_516 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody570_517 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody570_518 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody570_519 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody570_520 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody570_521 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 0 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def RemovedBody570_522 : StackLang.HolProg 64 :=
.seq RemovedBody570_520 RemovedBody570_521

def RemovedBody570_523 : StackLang.HolProg 64 :=
.seq RemovedBody570_519 RemovedBody570_522

def RemovedBody570_524 : StackLang.HolProg 64 :=
.seq RemovedBody570_518 RemovedBody570_523

def RemovedBody570_525 : StackLang.HolProg 64 :=
.seq RemovedBody570_517 RemovedBody570_524

def RemovedBody570_526 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody570_527 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def RemovedBody570_528 : StackLang.HolProg 64 :=
.seq RemovedBody570_526 RemovedBody570_527

def RemovedBody570_529 : StackLang.HolProg 64 :=
.call (some (RemovedBody570_525, 0, 570, 18)) (Sum.inl 146) (some (RemovedBody570_528, 570, 19))

def RemovedBody570_530 : StackLang.HolProg 64 :=
.seq RemovedBody570_516 RemovedBody570_529

def RemovedBody570_531 : StackLang.HolProg 64 :=
.seq RemovedBody570_515 RemovedBody570_530

def RemovedBody570_532 : StackLang.HolProg 64 :=
.seq RemovedBody570_514 RemovedBody570_531

def RemovedBody570_533 : StackLang.HolProg 64 :=
.seq RemovedBody570_485 RemovedBody570_532

def RemovedBody570_534 : StackLang.HolProg 64 :=
.seq RemovedBody570_482 RemovedBody570_533

def RemovedBody570_535 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody570_536 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 1 0
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 0)))

def RemovedBody570_537 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody570_538 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1986#64)

def RemovedBody570_539 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody570_540 : StackLang.HolProg 64 :=
.seq RemovedBody570_538 RemovedBody570_539

def RemovedBody570_541 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody570_542 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 2#64)

def RemovedBody570_543 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 1

def RemovedBody570_544 : StackLang.HolProg 64 :=
.seq RemovedBody570_542 RemovedBody570_543

def RemovedBody570_545 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody570_546 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) RemovedBody570_544 RemovedBody570_545

def RemovedBody570_547 : StackLang.HolProg 64 :=
.seq RemovedBody570_541 RemovedBody570_546

def RemovedBody570_548 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def RemovedBody570_549 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody570_550 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 570 21

def RemovedBody570_551 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody570_552 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody570_553 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody570_554 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody570_555 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def RemovedBody570_556 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def RemovedBody570_557 : StackLang.HolProg 64 :=
.seq RemovedBody570_555 RemovedBody570_556

def RemovedBody570_558 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def RemovedBody570_559 : StackLang.HolProg 64 :=
.seq RemovedBody570_557 RemovedBody570_558

def RemovedBody570_560 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody570_561 : StackLang.HolProg 64 :=
.seq RemovedBody570_559 RemovedBody570_560

def RemovedBody570_562 : StackLang.HolProg 64 :=
.seq RemovedBody570_554 RemovedBody570_561

def RemovedBody570_563 : StackLang.HolProg 64 :=
.seq RemovedBody570_553 RemovedBody570_562

def RemovedBody570_564 : StackLang.HolProg 64 :=
.seq RemovedBody570_552 RemovedBody570_563

def RemovedBody570_565 : StackLang.HolProg 64 :=
.seq RemovedBody570_551 RemovedBody570_564

def RemovedBody570_566 : StackLang.HolProg 64 :=
.seq RemovedBody570_550 RemovedBody570_565

def RemovedBody570_567 : StackLang.HolProg 64 :=
.seq RemovedBody570_549 RemovedBody570_566

def RemovedBody570_568 : StackLang.HolProg 64 :=
.seq RemovedBody570_548 RemovedBody570_567

def RemovedBody570_569 : StackLang.HolProg 64 :=
.seq RemovedBody570_547 RemovedBody570_568

def RemovedBody570_570 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody570_571 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody570_572 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody570_573 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody570_574 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody570_575 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody570_576 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody570_577 : StackLang.HolProg 64 :=
.seq RemovedBody570_575 RemovedBody570_576

def RemovedBody570_578 : StackLang.HolProg 64 :=
.seq RemovedBody570_574 RemovedBody570_577

def RemovedBody570_579 : StackLang.HolProg 64 :=
.seq RemovedBody570_573 RemovedBody570_578

def RemovedBody570_580 : StackLang.HolProg 64 :=
.seq RemovedBody570_572 RemovedBody570_579

def RemovedBody570_581 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody570_582 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def RemovedBody570_583 : StackLang.HolProg 64 :=
.seq RemovedBody570_581 RemovedBody570_582

def RemovedBody570_584 : StackLang.HolProg 64 :=
.call (some (RemovedBody570_580, 0, 570, 20)) (Sum.inl 476) (some (RemovedBody570_583, 570, 21))

def RemovedBody570_585 : StackLang.HolProg 64 :=
.seq RemovedBody570_571 RemovedBody570_584

def RemovedBody570_586 : StackLang.HolProg 64 :=
.seq RemovedBody570_570 RemovedBody570_585

def RemovedBody570_587 : StackLang.HolProg 64 :=
.seq RemovedBody570_569 RemovedBody570_586

def RemovedBody570_588 : StackLang.HolProg 64 :=
.seq RemovedBody570_540 RemovedBody570_587

def RemovedBody570_589 : StackLang.HolProg 64 :=
.seq RemovedBody570_537 RemovedBody570_588

def RemovedBody570_590 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody570_591 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody570_592 : StackLang.HolProg 64 :=
.seq RemovedBody570_590 RemovedBody570_591

def RemovedBody570_593 : StackLang.HolProg 64 :=
.seq RemovedBody570_589 RemovedBody570_592

def RemovedBody570_594 : StackLang.HolProg 64 :=
.seq RemovedBody570_536 RemovedBody570_593

def RemovedBody570_595 : StackLang.HolProg 64 :=
.seq RemovedBody570_535 RemovedBody570_594

def RemovedBody570_596 : StackLang.HolProg 64 :=
.seq RemovedBody570_534 RemovedBody570_595

def RemovedBody570_597 : StackLang.HolProg 64 :=
.seq RemovedBody570_481 RemovedBody570_596

def RemovedBody570_598 : StackLang.HolProg 64 :=
.seq RemovedBody570_480 RemovedBody570_597

def RemovedBody570_599 : StackLang.HolProg 64 :=
.seq RemovedBody570_479 RemovedBody570_598

def RemovedBody570_600 : StackLang.HolProg 64 :=
.seq RemovedBody570_478 RemovedBody570_599

def RemovedBody570_601 : StackLang.HolProg 64 :=
.seq RemovedBody570_477 RemovedBody570_600

def RemovedBody570_602 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.notEqual) 2 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1) RemovedBody570_476 RemovedBody570_601

def RemovedBody570_603 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody570_604 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 1#64)

def RemovedBody570_605 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody570_606 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody570_607 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1987#64)

def RemovedBody570_608 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody570_609 : StackLang.HolProg 64 :=
.seq RemovedBody570_607 RemovedBody570_608

def RemovedBody570_610 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody570_611 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 2#64)

def RemovedBody570_612 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 1

def RemovedBody570_613 : StackLang.HolProg 64 :=
.seq RemovedBody570_611 RemovedBody570_612

def RemovedBody570_614 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody570_615 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) RemovedBody570_613 RemovedBody570_614

def RemovedBody570_616 : StackLang.HolProg 64 :=
.seq RemovedBody570_610 RemovedBody570_615

def RemovedBody570_617 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def RemovedBody570_618 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody570_619 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 570 23

def RemovedBody570_620 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody570_621 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody570_622 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody570_623 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody570_624 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def RemovedBody570_625 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def RemovedBody570_626 : StackLang.HolProg 64 :=
.seq RemovedBody570_624 RemovedBody570_625

def RemovedBody570_627 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def RemovedBody570_628 : StackLang.HolProg 64 :=
.seq RemovedBody570_626 RemovedBody570_627

def RemovedBody570_629 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody570_630 : StackLang.HolProg 64 :=
.seq RemovedBody570_628 RemovedBody570_629

def RemovedBody570_631 : StackLang.HolProg 64 :=
.seq RemovedBody570_623 RemovedBody570_630

def RemovedBody570_632 : StackLang.HolProg 64 :=
.seq RemovedBody570_622 RemovedBody570_631

def RemovedBody570_633 : StackLang.HolProg 64 :=
.seq RemovedBody570_621 RemovedBody570_632

def RemovedBody570_634 : StackLang.HolProg 64 :=
.seq RemovedBody570_620 RemovedBody570_633

def RemovedBody570_635 : StackLang.HolProg 64 :=
.seq RemovedBody570_619 RemovedBody570_634

def RemovedBody570_636 : StackLang.HolProg 64 :=
.seq RemovedBody570_618 RemovedBody570_635

def RemovedBody570_637 : StackLang.HolProg 64 :=
.seq RemovedBody570_617 RemovedBody570_636

def RemovedBody570_638 : StackLang.HolProg 64 :=
.seq RemovedBody570_616 RemovedBody570_637

def RemovedBody570_639 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody570_640 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody570_641 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody570_642 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody570_643 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody570_644 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody570_645 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 24#64))

def RemovedBody570_646 : StackLang.HolProg 64 :=
.seq RemovedBody570_644 RemovedBody570_645

def RemovedBody570_647 : StackLang.HolProg 64 :=
.seq RemovedBody570_643 RemovedBody570_646

def RemovedBody570_648 : StackLang.HolProg 64 :=
.seq RemovedBody570_642 RemovedBody570_647

def RemovedBody570_649 : StackLang.HolProg 64 :=
.seq RemovedBody570_641 RemovedBody570_648

def RemovedBody570_650 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 24#64))

def RemovedBody570_651 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def RemovedBody570_652 : StackLang.HolProg 64 :=
.seq RemovedBody570_650 RemovedBody570_651

def RemovedBody570_653 : StackLang.HolProg 64 :=
.call (some (RemovedBody570_649, 0, 570, 22)) (Sum.inl 490) (some (RemovedBody570_652, 570, 23))

def RemovedBody570_654 : StackLang.HolProg 64 :=
.seq RemovedBody570_640 RemovedBody570_653

def RemovedBody570_655 : StackLang.HolProg 64 :=
.seq RemovedBody570_639 RemovedBody570_654

def RemovedBody570_656 : StackLang.HolProg 64 :=
.seq RemovedBody570_638 RemovedBody570_655

def RemovedBody570_657 : StackLang.HolProg 64 :=
.seq RemovedBody570_609 RemovedBody570_656

def RemovedBody570_658 : StackLang.HolProg 64 :=
.seq RemovedBody570_606 RemovedBody570_657

def RemovedBody570_659 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody570_660 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 0#64)

def RemovedBody570_661 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody570_662 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 32#64)))

def RemovedBody570_663 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 0

def RemovedBody570_664 : StackLang.HolProg 64 :=
.seq RemovedBody570_662 RemovedBody570_663

def RemovedBody570_665 : StackLang.HolProg 64 :=
.seq RemovedBody570_661 RemovedBody570_664

def RemovedBody570_666 : StackLang.HolProg 64 :=
.seq RemovedBody570_660 RemovedBody570_665

def RemovedBody570_667 : StackLang.HolProg 64 :=
.seq RemovedBody570_659 RemovedBody570_666

def RemovedBody570_668 : StackLang.HolProg 64 :=
.seq RemovedBody570_658 RemovedBody570_667

def RemovedBody570_669 : StackLang.HolProg 64 :=
.seq RemovedBody570_605 RemovedBody570_668

def RemovedBody570_670 : StackLang.HolProg 64 :=
.seq RemovedBody570_604 RemovedBody570_669

def RemovedBody570_671 : StackLang.HolProg 64 :=
.seq RemovedBody570_603 RemovedBody570_670

def RemovedBody570_672 : StackLang.HolProg 64 :=
.seq RemovedBody570_602 RemovedBody570_671

def RemovedBody570_673 : StackLang.HolProg 64 :=
.seq RemovedBody570_407 RemovedBody570_672

def RemovedBody570_674 : StackLang.HolProg 64 :=
.seq RemovedBody570_406 RemovedBody570_673

def RemovedBody570_675 : StackLang.HolProg 64 :=
.seq RemovedBody570_405 RemovedBody570_674

def RemovedBody570_676 : StackLang.HolProg 64 :=
.seq RemovedBody570_404 RemovedBody570_675

def RemovedBody570_677 : StackLang.HolProg 64 :=
.seq RemovedBody570_349 RemovedBody570_676

def RemovedBody570_678 : StackLang.HolProg 64 :=
.seq RemovedBody570_346 RemovedBody570_677

def RemovedBody570_679 : StackLang.HolProg 64 :=
.seq RemovedBody570_345 RemovedBody570_678

def RemovedBody570_680 : StackLang.HolProg 64 :=
.seq RemovedBody570_292 RemovedBody570_679

def RemovedBody570_681 : StackLang.HolProg 64 :=
.seq RemovedBody570_291 RemovedBody570_680

def RemovedBody570_682 : StackLang.HolProg 64 :=
.seq RemovedBody570_290 RemovedBody570_681

def RemovedBody570_683 : StackLang.HolProg 64 :=
.seq RemovedBody570_237 RemovedBody570_682

def RemovedBody570_684 : StackLang.HolProg 64 :=
.seq RemovedBody570_234 RemovedBody570_683

def RemovedBody570_685 : StackLang.HolProg 64 :=
.seq RemovedBody570_233 RemovedBody570_684

def RemovedBody570_686 : StackLang.HolProg 64 :=
.seq RemovedBody570_176 RemovedBody570_685

def RemovedBody570_687 : StackLang.HolProg 64 :=
.seq RemovedBody570_173 RemovedBody570_686

def RemovedBody570_688 : StackLang.HolProg 64 :=
.seq RemovedBody570_172 RemovedBody570_687

def RemovedBody570_689 : StackLang.HolProg 64 :=
.seq RemovedBody570_119 RemovedBody570_688

def RemovedBody570_690 : StackLang.HolProg 64 :=
.seq RemovedBody570_116 RemovedBody570_689

def RemovedBody570_691 : StackLang.HolProg 64 :=
.seq RemovedBody570_115 RemovedBody570_690

def RemovedBody570_692 : StackLang.HolProg 64 :=
.seq RemovedBody570_62 RemovedBody570_691

def RemovedBody570_693 : StackLang.HolProg 64 :=
.seq RemovedBody570_61 RemovedBody570_692

def RemovedBody570_694 : StackLang.HolProg 64 :=
.seq RemovedBody570_60 RemovedBody570_693

def RemovedBody570_695 : StackLang.HolProg 64 :=
.seq RemovedBody570_7 RemovedBody570_694

def RemovedBody570_696 : StackLang.HolProg 64 :=
.seq RemovedBody570_6 RemovedBody570_695

def Removed570 : Nat × StackLang.HolProg 64 := (570, RemovedBody570_696)
theorem Removed570_eq : StackRemove.progComp false riscvConfig.addrOffset (riscvConfig.regCount - (riscvConfig.avoidRegs.length + 3)) Alloc570 = Removed570 := by
  kernel_rfl
#print axioms Removed570_eq
end InitECandidate.Proofs.BackendStages
