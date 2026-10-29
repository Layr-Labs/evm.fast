import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.BackendStages.Alloc535
import Flapjack.Compiler.Backend.Backend
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
namespace InitECandidate.Proofs.BackendStages
def RemovedBody535_0 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 16#64)))

def RemovedBody535_1 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 2#64)

def RemovedBody535_2 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 1

def RemovedBody535_3 : StackLang.HolProg 64 :=
.seq RemovedBody535_1 RemovedBody535_2

def RemovedBody535_4 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody535_5 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) RemovedBody535_3 RemovedBody535_4

def RemovedBody535_6 : StackLang.HolProg 64 :=
.seq RemovedBody535_0 RemovedBody535_5

def RemovedBody535_7 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody535_8 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody535_9 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1772#64)

def RemovedBody535_10 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody535_11 : StackLang.HolProg 64 :=
.seq RemovedBody535_9 RemovedBody535_10

def RemovedBody535_12 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody535_13 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 2#64)

def RemovedBody535_14 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 1

def RemovedBody535_15 : StackLang.HolProg 64 :=
.seq RemovedBody535_13 RemovedBody535_14

def RemovedBody535_16 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody535_17 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) RemovedBody535_15 RemovedBody535_16

def RemovedBody535_18 : StackLang.HolProg 64 :=
.seq RemovedBody535_12 RemovedBody535_17

def RemovedBody535_19 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def RemovedBody535_20 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody535_21 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 535 3

def RemovedBody535_22 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody535_23 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody535_24 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody535_25 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody535_26 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def RemovedBody535_27 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def RemovedBody535_28 : StackLang.HolProg 64 :=
.seq RemovedBody535_26 RemovedBody535_27

def RemovedBody535_29 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def RemovedBody535_30 : StackLang.HolProg 64 :=
.seq RemovedBody535_28 RemovedBody535_29

def RemovedBody535_31 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody535_32 : StackLang.HolProg 64 :=
.seq RemovedBody535_30 RemovedBody535_31

def RemovedBody535_33 : StackLang.HolProg 64 :=
.seq RemovedBody535_25 RemovedBody535_32

def RemovedBody535_34 : StackLang.HolProg 64 :=
.seq RemovedBody535_24 RemovedBody535_33

def RemovedBody535_35 : StackLang.HolProg 64 :=
.seq RemovedBody535_23 RemovedBody535_34

def RemovedBody535_36 : StackLang.HolProg 64 :=
.seq RemovedBody535_22 RemovedBody535_35

def RemovedBody535_37 : StackLang.HolProg 64 :=
.seq RemovedBody535_21 RemovedBody535_36

def RemovedBody535_38 : StackLang.HolProg 64 :=
.seq RemovedBody535_20 RemovedBody535_37

def RemovedBody535_39 : StackLang.HolProg 64 :=
.seq RemovedBody535_19 RemovedBody535_38

def RemovedBody535_40 : StackLang.HolProg 64 :=
.seq RemovedBody535_18 RemovedBody535_39

def RemovedBody535_41 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody535_42 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody535_43 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody535_44 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody535_45 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody535_46 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody535_47 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody535_48 : StackLang.HolProg 64 :=
.seq RemovedBody535_46 RemovedBody535_47

def RemovedBody535_49 : StackLang.HolProg 64 :=
.seq RemovedBody535_45 RemovedBody535_48

def RemovedBody535_50 : StackLang.HolProg 64 :=
.seq RemovedBody535_44 RemovedBody535_49

def RemovedBody535_51 : StackLang.HolProg 64 :=
.seq RemovedBody535_43 RemovedBody535_50

def RemovedBody535_52 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody535_53 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def RemovedBody535_54 : StackLang.HolProg 64 :=
.seq RemovedBody535_52 RemovedBody535_53

def RemovedBody535_55 : StackLang.HolProg 64 :=
.call (some (RemovedBody535_51, 0, 535, 2)) (Sum.inl 475) (some (RemovedBody535_54, 535, 3))

def RemovedBody535_56 : StackLang.HolProg 64 :=
.seq RemovedBody535_42 RemovedBody535_55

def RemovedBody535_57 : StackLang.HolProg 64 :=
.seq RemovedBody535_41 RemovedBody535_56

def RemovedBody535_58 : StackLang.HolProg 64 :=
.seq RemovedBody535_40 RemovedBody535_57

def RemovedBody535_59 : StackLang.HolProg 64 :=
.seq RemovedBody535_11 RemovedBody535_58

def RemovedBody535_60 : StackLang.HolProg 64 :=
.seq RemovedBody535_8 RemovedBody535_59

def RemovedBody535_61 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody535_62 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 2#64)

def RemovedBody535_63 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody535_64 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody535_65 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1773#64)

def RemovedBody535_66 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody535_67 : StackLang.HolProg 64 :=
.seq RemovedBody535_65 RemovedBody535_66

def RemovedBody535_68 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody535_69 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 2#64)

def RemovedBody535_70 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 1

def RemovedBody535_71 : StackLang.HolProg 64 :=
.seq RemovedBody535_69 RemovedBody535_70

def RemovedBody535_72 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody535_73 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) RemovedBody535_71 RemovedBody535_72

def RemovedBody535_74 : StackLang.HolProg 64 :=
.seq RemovedBody535_68 RemovedBody535_73

def RemovedBody535_75 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def RemovedBody535_76 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody535_77 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 535 5

def RemovedBody535_78 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody535_79 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody535_80 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody535_81 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody535_82 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def RemovedBody535_83 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def RemovedBody535_84 : StackLang.HolProg 64 :=
.seq RemovedBody535_82 RemovedBody535_83

def RemovedBody535_85 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def RemovedBody535_86 : StackLang.HolProg 64 :=
.seq RemovedBody535_84 RemovedBody535_85

def RemovedBody535_87 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody535_88 : StackLang.HolProg 64 :=
.seq RemovedBody535_86 RemovedBody535_87

def RemovedBody535_89 : StackLang.HolProg 64 :=
.seq RemovedBody535_81 RemovedBody535_88

def RemovedBody535_90 : StackLang.HolProg 64 :=
.seq RemovedBody535_80 RemovedBody535_89

def RemovedBody535_91 : StackLang.HolProg 64 :=
.seq RemovedBody535_79 RemovedBody535_90

def RemovedBody535_92 : StackLang.HolProg 64 :=
.seq RemovedBody535_78 RemovedBody535_91

def RemovedBody535_93 : StackLang.HolProg 64 :=
.seq RemovedBody535_77 RemovedBody535_92

def RemovedBody535_94 : StackLang.HolProg 64 :=
.seq RemovedBody535_76 RemovedBody535_93

def RemovedBody535_95 : StackLang.HolProg 64 :=
.seq RemovedBody535_75 RemovedBody535_94

def RemovedBody535_96 : StackLang.HolProg 64 :=
.seq RemovedBody535_74 RemovedBody535_95

def RemovedBody535_97 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody535_98 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody535_99 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody535_100 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody535_101 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody535_102 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody535_103 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody535_104 : StackLang.HolProg 64 :=
.seq RemovedBody535_102 RemovedBody535_103

def RemovedBody535_105 : StackLang.HolProg 64 :=
.seq RemovedBody535_101 RemovedBody535_104

def RemovedBody535_106 : StackLang.HolProg 64 :=
.seq RemovedBody535_100 RemovedBody535_105

def RemovedBody535_107 : StackLang.HolProg 64 :=
.seq RemovedBody535_99 RemovedBody535_106

def RemovedBody535_108 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody535_109 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def RemovedBody535_110 : StackLang.HolProg 64 :=
.seq RemovedBody535_108 RemovedBody535_109

def RemovedBody535_111 : StackLang.HolProg 64 :=
.call (some (RemovedBody535_107, 0, 535, 4)) (Sum.inl 470) (some (RemovedBody535_110, 535, 5))

def RemovedBody535_112 : StackLang.HolProg 64 :=
.seq RemovedBody535_98 RemovedBody535_111

def RemovedBody535_113 : StackLang.HolProg 64 :=
.seq RemovedBody535_97 RemovedBody535_112

def RemovedBody535_114 : StackLang.HolProg 64 :=
.seq RemovedBody535_96 RemovedBody535_113

def RemovedBody535_115 : StackLang.HolProg 64 :=
.seq RemovedBody535_67 RemovedBody535_114

def RemovedBody535_116 : StackLang.HolProg 64 :=
.seq RemovedBody535_64 RemovedBody535_115

def RemovedBody535_117 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody535_118 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 1#64)

def RemovedBody535_119 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody535_120 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody535_121 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1774#64)

def RemovedBody535_122 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody535_123 : StackLang.HolProg 64 :=
.seq RemovedBody535_121 RemovedBody535_122

def RemovedBody535_124 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody535_125 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 2#64)

def RemovedBody535_126 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 1

def RemovedBody535_127 : StackLang.HolProg 64 :=
.seq RemovedBody535_125 RemovedBody535_126

def RemovedBody535_128 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody535_129 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) RemovedBody535_127 RemovedBody535_128

def RemovedBody535_130 : StackLang.HolProg 64 :=
.seq RemovedBody535_124 RemovedBody535_129

def RemovedBody535_131 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def RemovedBody535_132 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody535_133 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 535 7

def RemovedBody535_134 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody535_135 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody535_136 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody535_137 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody535_138 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def RemovedBody535_139 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def RemovedBody535_140 : StackLang.HolProg 64 :=
.seq RemovedBody535_138 RemovedBody535_139

def RemovedBody535_141 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def RemovedBody535_142 : StackLang.HolProg 64 :=
.seq RemovedBody535_140 RemovedBody535_141

def RemovedBody535_143 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody535_144 : StackLang.HolProg 64 :=
.seq RemovedBody535_142 RemovedBody535_143

def RemovedBody535_145 : StackLang.HolProg 64 :=
.seq RemovedBody535_137 RemovedBody535_144

def RemovedBody535_146 : StackLang.HolProg 64 :=
.seq RemovedBody535_136 RemovedBody535_145

def RemovedBody535_147 : StackLang.HolProg 64 :=
.seq RemovedBody535_135 RemovedBody535_146

def RemovedBody535_148 : StackLang.HolProg 64 :=
.seq RemovedBody535_134 RemovedBody535_147

def RemovedBody535_149 : StackLang.HolProg 64 :=
.seq RemovedBody535_133 RemovedBody535_148

def RemovedBody535_150 : StackLang.HolProg 64 :=
.seq RemovedBody535_132 RemovedBody535_149

def RemovedBody535_151 : StackLang.HolProg 64 :=
.seq RemovedBody535_131 RemovedBody535_150

def RemovedBody535_152 : StackLang.HolProg 64 :=
.seq RemovedBody535_130 RemovedBody535_151

def RemovedBody535_153 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody535_154 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody535_155 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody535_156 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody535_157 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody535_158 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody535_159 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody535_160 : StackLang.HolProg 64 :=
.seq RemovedBody535_158 RemovedBody535_159

def RemovedBody535_161 : StackLang.HolProg 64 :=
.seq RemovedBody535_157 RemovedBody535_160

def RemovedBody535_162 : StackLang.HolProg 64 :=
.seq RemovedBody535_156 RemovedBody535_161

def RemovedBody535_163 : StackLang.HolProg 64 :=
.seq RemovedBody535_155 RemovedBody535_162

def RemovedBody535_164 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody535_165 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def RemovedBody535_166 : StackLang.HolProg 64 :=
.seq RemovedBody535_164 RemovedBody535_165

def RemovedBody535_167 : StackLang.HolProg 64 :=
.call (some (RemovedBody535_163, 0, 535, 6)) (Sum.inl 490) (some (RemovedBody535_166, 535, 7))

def RemovedBody535_168 : StackLang.HolProg 64 :=
.seq RemovedBody535_154 RemovedBody535_167

def RemovedBody535_169 : StackLang.HolProg 64 :=
.seq RemovedBody535_153 RemovedBody535_168

def RemovedBody535_170 : StackLang.HolProg 64 :=
.seq RemovedBody535_152 RemovedBody535_169

def RemovedBody535_171 : StackLang.HolProg 64 :=
.seq RemovedBody535_123 RemovedBody535_170

def RemovedBody535_172 : StackLang.HolProg 64 :=
.seq RemovedBody535_120 RemovedBody535_171

def RemovedBody535_173 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody535_174 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 0#64)

def RemovedBody535_175 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody535_176 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 16#64)))

def RemovedBody535_177 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 0

def RemovedBody535_178 : StackLang.HolProg 64 :=
.seq RemovedBody535_176 RemovedBody535_177

def RemovedBody535_179 : StackLang.HolProg 64 :=
.seq RemovedBody535_175 RemovedBody535_178

def RemovedBody535_180 : StackLang.HolProg 64 :=
.seq RemovedBody535_174 RemovedBody535_179

def RemovedBody535_181 : StackLang.HolProg 64 :=
.seq RemovedBody535_173 RemovedBody535_180

def RemovedBody535_182 : StackLang.HolProg 64 :=
.seq RemovedBody535_172 RemovedBody535_181

def RemovedBody535_183 : StackLang.HolProg 64 :=
.seq RemovedBody535_119 RemovedBody535_182

def RemovedBody535_184 : StackLang.HolProg 64 :=
.seq RemovedBody535_118 RemovedBody535_183

def RemovedBody535_185 : StackLang.HolProg 64 :=
.seq RemovedBody535_117 RemovedBody535_184

def RemovedBody535_186 : StackLang.HolProg 64 :=
.seq RemovedBody535_116 RemovedBody535_185

def RemovedBody535_187 : StackLang.HolProg 64 :=
.seq RemovedBody535_63 RemovedBody535_186

def RemovedBody535_188 : StackLang.HolProg 64 :=
.seq RemovedBody535_62 RemovedBody535_187

def RemovedBody535_189 : StackLang.HolProg 64 :=
.seq RemovedBody535_61 RemovedBody535_188

def RemovedBody535_190 : StackLang.HolProg 64 :=
.seq RemovedBody535_60 RemovedBody535_189

def RemovedBody535_191 : StackLang.HolProg 64 :=
.seq RemovedBody535_7 RemovedBody535_190

def RemovedBody535_192 : StackLang.HolProg 64 :=
.seq RemovedBody535_6 RemovedBody535_191

def Removed535 : Nat × StackLang.HolProg 64 := (535, RemovedBody535_192)
theorem Removed535_eq : StackRemove.progComp false riscvConfig.addrOffset (riscvConfig.regCount - (riscvConfig.avoidRegs.length + 3)) Alloc535 = Removed535 := by
  kernel_rfl
#print axioms Removed535_eq
end InitECandidate.Proofs.BackendStages
