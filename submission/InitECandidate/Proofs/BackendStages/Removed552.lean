import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.BackendStages.Alloc552
import Flapjack.Compiler.Backend.Backend
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
namespace InitECandidate.Proofs.BackendStages
def RemovedBody552_0 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 80#64)))

def RemovedBody552_1 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 2#64)

def RemovedBody552_2 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 1

def RemovedBody552_3 : StackLang.HolProg 64 :=
.seq RemovedBody552_1 RemovedBody552_2

def RemovedBody552_4 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody552_5 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) RemovedBody552_3 RemovedBody552_4

def RemovedBody552_6 : StackLang.HolProg 64 :=
.seq RemovedBody552_0 RemovedBody552_5

def RemovedBody552_7 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 72#64))

def RemovedBody552_8 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody552_9 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1868#64)

def RemovedBody552_10 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody552_11 : StackLang.HolProg 64 :=
.seq RemovedBody552_9 RemovedBody552_10

def RemovedBody552_12 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody552_13 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 2#64)

def RemovedBody552_14 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 1

def RemovedBody552_15 : StackLang.HolProg 64 :=
.seq RemovedBody552_13 RemovedBody552_14

def RemovedBody552_16 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody552_17 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) RemovedBody552_15 RemovedBody552_16

def RemovedBody552_18 : StackLang.HolProg 64 :=
.seq RemovedBody552_12 RemovedBody552_17

def RemovedBody552_19 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def RemovedBody552_20 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody552_21 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 552 3

def RemovedBody552_22 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody552_23 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody552_24 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody552_25 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody552_26 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def RemovedBody552_27 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def RemovedBody552_28 : StackLang.HolProg 64 :=
.seq RemovedBody552_26 RemovedBody552_27

def RemovedBody552_29 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def RemovedBody552_30 : StackLang.HolProg 64 :=
.seq RemovedBody552_28 RemovedBody552_29

def RemovedBody552_31 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody552_32 : StackLang.HolProg 64 :=
.seq RemovedBody552_30 RemovedBody552_31

def RemovedBody552_33 : StackLang.HolProg 64 :=
.seq RemovedBody552_25 RemovedBody552_32

def RemovedBody552_34 : StackLang.HolProg 64 :=
.seq RemovedBody552_24 RemovedBody552_33

def RemovedBody552_35 : StackLang.HolProg 64 :=
.seq RemovedBody552_23 RemovedBody552_34

def RemovedBody552_36 : StackLang.HolProg 64 :=
.seq RemovedBody552_22 RemovedBody552_35

def RemovedBody552_37 : StackLang.HolProg 64 :=
.seq RemovedBody552_21 RemovedBody552_36

def RemovedBody552_38 : StackLang.HolProg 64 :=
.seq RemovedBody552_20 RemovedBody552_37

def RemovedBody552_39 : StackLang.HolProg 64 :=
.seq RemovedBody552_19 RemovedBody552_38

def RemovedBody552_40 : StackLang.HolProg 64 :=
.seq RemovedBody552_18 RemovedBody552_39

def RemovedBody552_41 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody552_42 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody552_43 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody552_44 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody552_45 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody552_46 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody552_47 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody552_48 : StackLang.HolProg 64 :=
.seq RemovedBody552_46 RemovedBody552_47

def RemovedBody552_49 : StackLang.HolProg 64 :=
.seq RemovedBody552_45 RemovedBody552_48

def RemovedBody552_50 : StackLang.HolProg 64 :=
.seq RemovedBody552_44 RemovedBody552_49

def RemovedBody552_51 : StackLang.HolProg 64 :=
.seq RemovedBody552_43 RemovedBody552_50

def RemovedBody552_52 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody552_53 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def RemovedBody552_54 : StackLang.HolProg 64 :=
.seq RemovedBody552_52 RemovedBody552_53

def RemovedBody552_55 : StackLang.HolProg 64 :=
.call (some (RemovedBody552_51, 0, 552, 2)) (Sum.inl 492) (some (RemovedBody552_54, 552, 3))

def RemovedBody552_56 : StackLang.HolProg 64 :=
.seq RemovedBody552_42 RemovedBody552_55

def RemovedBody552_57 : StackLang.HolProg 64 :=
.seq RemovedBody552_41 RemovedBody552_56

def RemovedBody552_58 : StackLang.HolProg 64 :=
.seq RemovedBody552_40 RemovedBody552_57

def RemovedBody552_59 : StackLang.HolProg 64 :=
.seq RemovedBody552_11 RemovedBody552_58

def RemovedBody552_60 : StackLang.HolProg 64 :=
.seq RemovedBody552_8 RemovedBody552_59

def RemovedBody552_61 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody552_62 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody552_63 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody552_64 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1869#64)

def RemovedBody552_65 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody552_66 : StackLang.HolProg 64 :=
.seq RemovedBody552_64 RemovedBody552_65

def RemovedBody552_67 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody552_68 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 2#64)

def RemovedBody552_69 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 1

def RemovedBody552_70 : StackLang.HolProg 64 :=
.seq RemovedBody552_68 RemovedBody552_69

def RemovedBody552_71 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody552_72 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) RemovedBody552_70 RemovedBody552_71

def RemovedBody552_73 : StackLang.HolProg 64 :=
.seq RemovedBody552_67 RemovedBody552_72

def RemovedBody552_74 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def RemovedBody552_75 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody552_76 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 552 5

def RemovedBody552_77 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody552_78 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody552_79 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody552_80 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody552_81 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def RemovedBody552_82 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def RemovedBody552_83 : StackLang.HolProg 64 :=
.seq RemovedBody552_81 RemovedBody552_82

def RemovedBody552_84 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def RemovedBody552_85 : StackLang.HolProg 64 :=
.seq RemovedBody552_83 RemovedBody552_84

def RemovedBody552_86 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody552_87 : StackLang.HolProg 64 :=
.seq RemovedBody552_85 RemovedBody552_86

def RemovedBody552_88 : StackLang.HolProg 64 :=
.seq RemovedBody552_80 RemovedBody552_87

def RemovedBody552_89 : StackLang.HolProg 64 :=
.seq RemovedBody552_79 RemovedBody552_88

def RemovedBody552_90 : StackLang.HolProg 64 :=
.seq RemovedBody552_78 RemovedBody552_89

def RemovedBody552_91 : StackLang.HolProg 64 :=
.seq RemovedBody552_77 RemovedBody552_90

def RemovedBody552_92 : StackLang.HolProg 64 :=
.seq RemovedBody552_76 RemovedBody552_91

def RemovedBody552_93 : StackLang.HolProg 64 :=
.seq RemovedBody552_75 RemovedBody552_92

def RemovedBody552_94 : StackLang.HolProg 64 :=
.seq RemovedBody552_74 RemovedBody552_93

def RemovedBody552_95 : StackLang.HolProg 64 :=
.seq RemovedBody552_73 RemovedBody552_94

def RemovedBody552_96 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody552_97 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody552_98 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody552_99 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody552_100 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody552_101 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody552_102 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 0 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def RemovedBody552_103 : StackLang.HolProg 64 :=
.seq RemovedBody552_101 RemovedBody552_102

def RemovedBody552_104 : StackLang.HolProg 64 :=
.seq RemovedBody552_100 RemovedBody552_103

def RemovedBody552_105 : StackLang.HolProg 64 :=
.seq RemovedBody552_99 RemovedBody552_104

def RemovedBody552_106 : StackLang.HolProg 64 :=
.seq RemovedBody552_98 RemovedBody552_105

def RemovedBody552_107 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody552_108 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def RemovedBody552_109 : StackLang.HolProg 64 :=
.seq RemovedBody552_107 RemovedBody552_108

def RemovedBody552_110 : StackLang.HolProg 64 :=
.call (some (RemovedBody552_106, 0, 552, 4)) (Sum.inl 475) (some (RemovedBody552_109, 552, 5))

def RemovedBody552_111 : StackLang.HolProg 64 :=
.seq RemovedBody552_97 RemovedBody552_110

def RemovedBody552_112 : StackLang.HolProg 64 :=
.seq RemovedBody552_96 RemovedBody552_111

def RemovedBody552_113 : StackLang.HolProg 64 :=
.seq RemovedBody552_95 RemovedBody552_112

def RemovedBody552_114 : StackLang.HolProg 64 :=
.seq RemovedBody552_66 RemovedBody552_113

def RemovedBody552_115 : StackLang.HolProg 64 :=
.seq RemovedBody552_63 RemovedBody552_114

def RemovedBody552_116 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody552_117 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 4
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 48#64))

def RemovedBody552_118 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 2
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 32#64))

def RemovedBody552_119 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 24#64))

def RemovedBody552_120 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 3
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody552_121 : StackLang.HolProg 64 :=
.seq RemovedBody552_119 RemovedBody552_120

def RemovedBody552_122 : StackLang.HolProg 64 :=
.seq RemovedBody552_118 RemovedBody552_121

def RemovedBody552_123 : StackLang.HolProg 64 :=
.seq RemovedBody552_117 RemovedBody552_122

def RemovedBody552_124 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody552_125 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1870#64)

def RemovedBody552_126 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody552_127 : StackLang.HolProg 64 :=
.seq RemovedBody552_125 RemovedBody552_126

def RemovedBody552_128 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody552_129 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 2#64)

def RemovedBody552_130 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 1

def RemovedBody552_131 : StackLang.HolProg 64 :=
.seq RemovedBody552_129 RemovedBody552_130

def RemovedBody552_132 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody552_133 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) RemovedBody552_131 RemovedBody552_132

def RemovedBody552_134 : StackLang.HolProg 64 :=
.seq RemovedBody552_128 RemovedBody552_133

def RemovedBody552_135 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def RemovedBody552_136 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody552_137 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 552 7

def RemovedBody552_138 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody552_139 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody552_140 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody552_141 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody552_142 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def RemovedBody552_143 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def RemovedBody552_144 : StackLang.HolProg 64 :=
.seq RemovedBody552_142 RemovedBody552_143

def RemovedBody552_145 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def RemovedBody552_146 : StackLang.HolProg 64 :=
.seq RemovedBody552_144 RemovedBody552_145

def RemovedBody552_147 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody552_148 : StackLang.HolProg 64 :=
.seq RemovedBody552_146 RemovedBody552_147

def RemovedBody552_149 : StackLang.HolProg 64 :=
.seq RemovedBody552_141 RemovedBody552_148

def RemovedBody552_150 : StackLang.HolProg 64 :=
.seq RemovedBody552_140 RemovedBody552_149

def RemovedBody552_151 : StackLang.HolProg 64 :=
.seq RemovedBody552_139 RemovedBody552_150

def RemovedBody552_152 : StackLang.HolProg 64 :=
.seq RemovedBody552_138 RemovedBody552_151

def RemovedBody552_153 : StackLang.HolProg 64 :=
.seq RemovedBody552_137 RemovedBody552_152

def RemovedBody552_154 : StackLang.HolProg 64 :=
.seq RemovedBody552_136 RemovedBody552_153

def RemovedBody552_155 : StackLang.HolProg 64 :=
.seq RemovedBody552_135 RemovedBody552_154

def RemovedBody552_156 : StackLang.HolProg 64 :=
.seq RemovedBody552_134 RemovedBody552_155

def RemovedBody552_157 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody552_158 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody552_159 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody552_160 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody552_161 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody552_162 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody552_163 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 0 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def RemovedBody552_164 : StackLang.HolProg 64 :=
.seq RemovedBody552_162 RemovedBody552_163

def RemovedBody552_165 : StackLang.HolProg 64 :=
.seq RemovedBody552_161 RemovedBody552_164

def RemovedBody552_166 : StackLang.HolProg 64 :=
.seq RemovedBody552_160 RemovedBody552_165

def RemovedBody552_167 : StackLang.HolProg 64 :=
.seq RemovedBody552_159 RemovedBody552_166

def RemovedBody552_168 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody552_169 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def RemovedBody552_170 : StackLang.HolProg 64 :=
.seq RemovedBody552_168 RemovedBody552_169

def RemovedBody552_171 : StackLang.HolProg 64 :=
.call (some (RemovedBody552_167, 0, 552, 6)) (Sum.inl 475) (some (RemovedBody552_170, 552, 7))

def RemovedBody552_172 : StackLang.HolProg 64 :=
.seq RemovedBody552_158 RemovedBody552_171

def RemovedBody552_173 : StackLang.HolProg 64 :=
.seq RemovedBody552_157 RemovedBody552_172

def RemovedBody552_174 : StackLang.HolProg 64 :=
.seq RemovedBody552_156 RemovedBody552_173

def RemovedBody552_175 : StackLang.HolProg 64 :=
.seq RemovedBody552_127 RemovedBody552_174

def RemovedBody552_176 : StackLang.HolProg 64 :=
.seq RemovedBody552_124 RemovedBody552_175

def RemovedBody552_177 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody552_178 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 100#64)

def RemovedBody552_179 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 2
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 64#64))

def RemovedBody552_180 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 56#64))

def RemovedBody552_181 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 3
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 40#64))

def RemovedBody552_182 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 4
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody552_183 : StackLang.HolProg 64 :=
.seq RemovedBody552_181 RemovedBody552_182

def RemovedBody552_184 : StackLang.HolProg 64 :=
.seq RemovedBody552_180 RemovedBody552_183

def RemovedBody552_185 : StackLang.HolProg 64 :=
.seq RemovedBody552_179 RemovedBody552_184

def RemovedBody552_186 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody552_187 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1871#64)

def RemovedBody552_188 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody552_189 : StackLang.HolProg 64 :=
.seq RemovedBody552_187 RemovedBody552_188

def RemovedBody552_190 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody552_191 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 2#64)

def RemovedBody552_192 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 1

def RemovedBody552_193 : StackLang.HolProg 64 :=
.seq RemovedBody552_191 RemovedBody552_192

def RemovedBody552_194 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody552_195 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) RemovedBody552_193 RemovedBody552_194

def RemovedBody552_196 : StackLang.HolProg 64 :=
.seq RemovedBody552_190 RemovedBody552_195

def RemovedBody552_197 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def RemovedBody552_198 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody552_199 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 552 9

def RemovedBody552_200 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody552_201 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody552_202 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody552_203 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody552_204 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def RemovedBody552_205 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def RemovedBody552_206 : StackLang.HolProg 64 :=
.seq RemovedBody552_204 RemovedBody552_205

def RemovedBody552_207 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def RemovedBody552_208 : StackLang.HolProg 64 :=
.seq RemovedBody552_206 RemovedBody552_207

def RemovedBody552_209 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody552_210 : StackLang.HolProg 64 :=
.seq RemovedBody552_208 RemovedBody552_209

def RemovedBody552_211 : StackLang.HolProg 64 :=
.seq RemovedBody552_203 RemovedBody552_210

def RemovedBody552_212 : StackLang.HolProg 64 :=
.seq RemovedBody552_202 RemovedBody552_211

def RemovedBody552_213 : StackLang.HolProg 64 :=
.seq RemovedBody552_201 RemovedBody552_212

def RemovedBody552_214 : StackLang.HolProg 64 :=
.seq RemovedBody552_200 RemovedBody552_213

def RemovedBody552_215 : StackLang.HolProg 64 :=
.seq RemovedBody552_199 RemovedBody552_214

def RemovedBody552_216 : StackLang.HolProg 64 :=
.seq RemovedBody552_198 RemovedBody552_215

def RemovedBody552_217 : StackLang.HolProg 64 :=
.seq RemovedBody552_197 RemovedBody552_216

def RemovedBody552_218 : StackLang.HolProg 64 :=
.seq RemovedBody552_196 RemovedBody552_217

def RemovedBody552_219 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody552_220 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody552_221 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody552_222 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody552_223 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody552_224 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody552_225 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 4
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 48#64))

def RemovedBody552_226 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 40#64))

def RemovedBody552_227 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 48#64))

def RemovedBody552_228 : StackLang.HolProg 64 :=
.seq RemovedBody552_226 RemovedBody552_227

def RemovedBody552_229 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 2
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 32#64))

def RemovedBody552_230 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 24#64))

def RemovedBody552_231 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 3
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody552_232 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody552_233 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 40#64))

def RemovedBody552_234 : StackLang.HolProg 64 :=
.seq RemovedBody552_232 RemovedBody552_233

def RemovedBody552_235 : StackLang.HolProg 64 :=
.seq RemovedBody552_231 RemovedBody552_234

def RemovedBody552_236 : StackLang.HolProg 64 :=
.seq RemovedBody552_230 RemovedBody552_235

def RemovedBody552_237 : StackLang.HolProg 64 :=
.seq RemovedBody552_229 RemovedBody552_236

def RemovedBody552_238 : StackLang.HolProg 64 :=
.seq RemovedBody552_228 RemovedBody552_237

def RemovedBody552_239 : StackLang.HolProg 64 :=
.seq RemovedBody552_225 RemovedBody552_238

def RemovedBody552_240 : StackLang.HolProg 64 :=
.seq RemovedBody552_224 RemovedBody552_239

def RemovedBody552_241 : StackLang.HolProg 64 :=
.seq RemovedBody552_223 RemovedBody552_240

def RemovedBody552_242 : StackLang.HolProg 64 :=
.seq RemovedBody552_222 RemovedBody552_241

def RemovedBody552_243 : StackLang.HolProg 64 :=
.seq RemovedBody552_221 RemovedBody552_242

def RemovedBody552_244 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 4
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 48#64))

def RemovedBody552_245 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 40#64))

def RemovedBody552_246 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 48#64))

def RemovedBody552_247 : StackLang.HolProg 64 :=
.seq RemovedBody552_245 RemovedBody552_246

def RemovedBody552_248 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 2
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 32#64))

def RemovedBody552_249 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 24#64))

def RemovedBody552_250 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 3
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody552_251 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody552_252 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 40#64))

def RemovedBody552_253 : StackLang.HolProg 64 :=
.seq RemovedBody552_251 RemovedBody552_252

def RemovedBody552_254 : StackLang.HolProg 64 :=
.seq RemovedBody552_250 RemovedBody552_253

def RemovedBody552_255 : StackLang.HolProg 64 :=
.seq RemovedBody552_249 RemovedBody552_254

def RemovedBody552_256 : StackLang.HolProg 64 :=
.seq RemovedBody552_248 RemovedBody552_255

def RemovedBody552_257 : StackLang.HolProg 64 :=
.seq RemovedBody552_247 RemovedBody552_256

def RemovedBody552_258 : StackLang.HolProg 64 :=
.seq RemovedBody552_244 RemovedBody552_257

def RemovedBody552_259 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def RemovedBody552_260 : StackLang.HolProg 64 :=
.seq RemovedBody552_258 RemovedBody552_259

def RemovedBody552_261 : StackLang.HolProg 64 :=
.call (some (RemovedBody552_243, 0, 552, 8)) (Sum.inl 470) (some (RemovedBody552_260, 552, 9))

def RemovedBody552_262 : StackLang.HolProg 64 :=
.seq RemovedBody552_220 RemovedBody552_261

def RemovedBody552_263 : StackLang.HolProg 64 :=
.seq RemovedBody552_219 RemovedBody552_262

def RemovedBody552_264 : StackLang.HolProg 64 :=
.seq RemovedBody552_218 RemovedBody552_263

def RemovedBody552_265 : StackLang.HolProg 64 :=
.seq RemovedBody552_189 RemovedBody552_264

def RemovedBody552_266 : StackLang.HolProg 64 :=
.seq RemovedBody552_186 RemovedBody552_265

def RemovedBody552_267 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody552_268 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551592#64))

def RemovedBody552_269 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsl 1 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 1#64)))

def RemovedBody552_270 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 1 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 26)))

def RemovedBody552_271 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 5
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 1 18446744073709551336#64))

def RemovedBody552_272 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 1 0
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 0)))

def RemovedBody552_273 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 5
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 32#64))

def RemovedBody552_274 : StackLang.HolProg 64 :=
.seq RemovedBody552_272 RemovedBody552_273

def RemovedBody552_275 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody552_276 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1872#64)

def RemovedBody552_277 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody552_278 : StackLang.HolProg 64 :=
.seq RemovedBody552_276 RemovedBody552_277

def RemovedBody552_279 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody552_280 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 2#64)

def RemovedBody552_281 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 1

def RemovedBody552_282 : StackLang.HolProg 64 :=
.seq RemovedBody552_280 RemovedBody552_281

def RemovedBody552_283 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody552_284 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) RemovedBody552_282 RemovedBody552_283

def RemovedBody552_285 : StackLang.HolProg 64 :=
.seq RemovedBody552_279 RemovedBody552_284

def RemovedBody552_286 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def RemovedBody552_287 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody552_288 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 552 11

def RemovedBody552_289 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody552_290 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody552_291 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody552_292 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody552_293 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def RemovedBody552_294 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def RemovedBody552_295 : StackLang.HolProg 64 :=
.seq RemovedBody552_293 RemovedBody552_294

def RemovedBody552_296 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def RemovedBody552_297 : StackLang.HolProg 64 :=
.seq RemovedBody552_295 RemovedBody552_296

def RemovedBody552_298 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody552_299 : StackLang.HolProg 64 :=
.seq RemovedBody552_297 RemovedBody552_298

def RemovedBody552_300 : StackLang.HolProg 64 :=
.seq RemovedBody552_292 RemovedBody552_299

def RemovedBody552_301 : StackLang.HolProg 64 :=
.seq RemovedBody552_291 RemovedBody552_300

def RemovedBody552_302 : StackLang.HolProg 64 :=
.seq RemovedBody552_290 RemovedBody552_301

def RemovedBody552_303 : StackLang.HolProg 64 :=
.seq RemovedBody552_289 RemovedBody552_302

def RemovedBody552_304 : StackLang.HolProg 64 :=
.seq RemovedBody552_288 RemovedBody552_303

def RemovedBody552_305 : StackLang.HolProg 64 :=
.seq RemovedBody552_287 RemovedBody552_304

def RemovedBody552_306 : StackLang.HolProg 64 :=
.seq RemovedBody552_286 RemovedBody552_305

def RemovedBody552_307 : StackLang.HolProg 64 :=
.seq RemovedBody552_285 RemovedBody552_306

def RemovedBody552_308 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody552_309 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody552_310 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody552_311 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody552_312 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody552_313 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody552_314 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 4
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 64#64))

def RemovedBody552_315 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 3
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 56#64))

def RemovedBody552_316 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 5
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 48#64))

def RemovedBody552_317 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 6
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 40#64))

def RemovedBody552_318 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 2
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 32#64))

def RemovedBody552_319 : StackLang.HolProg 64 :=
.seq RemovedBody552_317 RemovedBody552_318

def RemovedBody552_320 : StackLang.HolProg 64 :=
.seq RemovedBody552_316 RemovedBody552_319

def RemovedBody552_321 : StackLang.HolProg 64 :=
.seq RemovedBody552_315 RemovedBody552_320

def RemovedBody552_322 : StackLang.HolProg 64 :=
.seq RemovedBody552_314 RemovedBody552_321

def RemovedBody552_323 : StackLang.HolProg 64 :=
.seq RemovedBody552_313 RemovedBody552_322

def RemovedBody552_324 : StackLang.HolProg 64 :=
.seq RemovedBody552_312 RemovedBody552_323

def RemovedBody552_325 : StackLang.HolProg 64 :=
.seq RemovedBody552_311 RemovedBody552_324

def RemovedBody552_326 : StackLang.HolProg 64 :=
.seq RemovedBody552_310 RemovedBody552_325

def RemovedBody552_327 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 4
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 64#64))

def RemovedBody552_328 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 3
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 56#64))

def RemovedBody552_329 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 5
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 48#64))

def RemovedBody552_330 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 6
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 40#64))

def RemovedBody552_331 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 2
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 32#64))

def RemovedBody552_332 : StackLang.HolProg 64 :=
.seq RemovedBody552_330 RemovedBody552_331

def RemovedBody552_333 : StackLang.HolProg 64 :=
.seq RemovedBody552_329 RemovedBody552_332

def RemovedBody552_334 : StackLang.HolProg 64 :=
.seq RemovedBody552_328 RemovedBody552_333

def RemovedBody552_335 : StackLang.HolProg 64 :=
.seq RemovedBody552_327 RemovedBody552_334

def RemovedBody552_336 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def RemovedBody552_337 : StackLang.HolProg 64 :=
.seq RemovedBody552_335 RemovedBody552_336

def RemovedBody552_338 : StackLang.HolProg 64 :=
.call (some (RemovedBody552_326, 0, 552, 10)) (Sum.inl 147) (some (RemovedBody552_337, 552, 11))

def RemovedBody552_339 : StackLang.HolProg 64 :=
.seq RemovedBody552_309 RemovedBody552_338

def RemovedBody552_340 : StackLang.HolProg 64 :=
.seq RemovedBody552_308 RemovedBody552_339

def RemovedBody552_341 : StackLang.HolProg 64 :=
.seq RemovedBody552_307 RemovedBody552_340

def RemovedBody552_342 : StackLang.HolProg 64 :=
.seq RemovedBody552_278 RemovedBody552_341

def RemovedBody552_343 : StackLang.HolProg 64 :=
.seq RemovedBody552_275 RemovedBody552_342

def RemovedBody552_344 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody552_345 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551592#64))

def RemovedBody552_346 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsl 0 0
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 1#64)))

def RemovedBody552_347 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 0 0
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 26)))

def RemovedBody552_348 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 0 18446744073709551360#64))

def RemovedBody552_349 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 0 112#64))

def RemovedBody552_350 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 0 32#64))

def RemovedBody552_351 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody552_352 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody552_353 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1873#64)

def RemovedBody552_354 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody552_355 : StackLang.HolProg 64 :=
.seq RemovedBody552_353 RemovedBody552_354

def RemovedBody552_356 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody552_357 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 2#64)

def RemovedBody552_358 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 1

def RemovedBody552_359 : StackLang.HolProg 64 :=
.seq RemovedBody552_357 RemovedBody552_358

def RemovedBody552_360 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody552_361 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) RemovedBody552_359 RemovedBody552_360

def RemovedBody552_362 : StackLang.HolProg 64 :=
.seq RemovedBody552_356 RemovedBody552_361

def RemovedBody552_363 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def RemovedBody552_364 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody552_365 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 552 13

def RemovedBody552_366 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody552_367 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody552_368 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody552_369 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody552_370 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def RemovedBody552_371 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def RemovedBody552_372 : StackLang.HolProg 64 :=
.seq RemovedBody552_370 RemovedBody552_371

def RemovedBody552_373 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def RemovedBody552_374 : StackLang.HolProg 64 :=
.seq RemovedBody552_372 RemovedBody552_373

def RemovedBody552_375 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody552_376 : StackLang.HolProg 64 :=
.seq RemovedBody552_374 RemovedBody552_375

def RemovedBody552_377 : StackLang.HolProg 64 :=
.seq RemovedBody552_369 RemovedBody552_376

def RemovedBody552_378 : StackLang.HolProg 64 :=
.seq RemovedBody552_368 RemovedBody552_377

def RemovedBody552_379 : StackLang.HolProg 64 :=
.seq RemovedBody552_367 RemovedBody552_378

def RemovedBody552_380 : StackLang.HolProg 64 :=
.seq RemovedBody552_366 RemovedBody552_379

def RemovedBody552_381 : StackLang.HolProg 64 :=
.seq RemovedBody552_365 RemovedBody552_380

def RemovedBody552_382 : StackLang.HolProg 64 :=
.seq RemovedBody552_364 RemovedBody552_381

def RemovedBody552_383 : StackLang.HolProg 64 :=
.seq RemovedBody552_363 RemovedBody552_382

def RemovedBody552_384 : StackLang.HolProg 64 :=
.seq RemovedBody552_362 RemovedBody552_383

def RemovedBody552_385 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody552_386 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody552_387 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody552_388 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody552_389 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody552_390 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody552_391 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody552_392 : StackLang.HolProg 64 :=
.seq RemovedBody552_390 RemovedBody552_391

def RemovedBody552_393 : StackLang.HolProg 64 :=
.seq RemovedBody552_389 RemovedBody552_392

def RemovedBody552_394 : StackLang.HolProg 64 :=
.seq RemovedBody552_388 RemovedBody552_393

def RemovedBody552_395 : StackLang.HolProg 64 :=
.seq RemovedBody552_387 RemovedBody552_394

def RemovedBody552_396 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody552_397 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def RemovedBody552_398 : StackLang.HolProg 64 :=
.seq RemovedBody552_396 RemovedBody552_397

def RemovedBody552_399 : StackLang.HolProg 64 :=
.call (some (RemovedBody552_395, 0, 552, 12)) (Sum.inl 426) (some (RemovedBody552_398, 552, 13))

def RemovedBody552_400 : StackLang.HolProg 64 :=
.seq RemovedBody552_386 RemovedBody552_399

def RemovedBody552_401 : StackLang.HolProg 64 :=
.seq RemovedBody552_385 RemovedBody552_400

def RemovedBody552_402 : StackLang.HolProg 64 :=
.seq RemovedBody552_384 RemovedBody552_401

def RemovedBody552_403 : StackLang.HolProg 64 :=
.seq RemovedBody552_355 RemovedBody552_402

def RemovedBody552_404 : StackLang.HolProg 64 :=
.seq RemovedBody552_352 RemovedBody552_403

def RemovedBody552_405 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody552_406 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 1#64)

def RemovedBody552_407 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody552_408 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody552_409 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1874#64)

def RemovedBody552_410 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody552_411 : StackLang.HolProg 64 :=
.seq RemovedBody552_409 RemovedBody552_410

def RemovedBody552_412 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody552_413 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 2#64)

def RemovedBody552_414 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 1

def RemovedBody552_415 : StackLang.HolProg 64 :=
.seq RemovedBody552_413 RemovedBody552_414

def RemovedBody552_416 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody552_417 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) RemovedBody552_415 RemovedBody552_416

def RemovedBody552_418 : StackLang.HolProg 64 :=
.seq RemovedBody552_412 RemovedBody552_417

def RemovedBody552_419 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def RemovedBody552_420 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody552_421 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 552 15

def RemovedBody552_422 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody552_423 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody552_424 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody552_425 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody552_426 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def RemovedBody552_427 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def RemovedBody552_428 : StackLang.HolProg 64 :=
.seq RemovedBody552_426 RemovedBody552_427

def RemovedBody552_429 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def RemovedBody552_430 : StackLang.HolProg 64 :=
.seq RemovedBody552_428 RemovedBody552_429

def RemovedBody552_431 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody552_432 : StackLang.HolProg 64 :=
.seq RemovedBody552_430 RemovedBody552_431

def RemovedBody552_433 : StackLang.HolProg 64 :=
.seq RemovedBody552_425 RemovedBody552_432

def RemovedBody552_434 : StackLang.HolProg 64 :=
.seq RemovedBody552_424 RemovedBody552_433

def RemovedBody552_435 : StackLang.HolProg 64 :=
.seq RemovedBody552_423 RemovedBody552_434

def RemovedBody552_436 : StackLang.HolProg 64 :=
.seq RemovedBody552_422 RemovedBody552_435

def RemovedBody552_437 : StackLang.HolProg 64 :=
.seq RemovedBody552_421 RemovedBody552_436

def RemovedBody552_438 : StackLang.HolProg 64 :=
.seq RemovedBody552_420 RemovedBody552_437

def RemovedBody552_439 : StackLang.HolProg 64 :=
.seq RemovedBody552_419 RemovedBody552_438

def RemovedBody552_440 : StackLang.HolProg 64 :=
.seq RemovedBody552_418 RemovedBody552_439

def RemovedBody552_441 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody552_442 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody552_443 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody552_444 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody552_445 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody552_446 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody552_447 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 72#64))

def RemovedBody552_448 : StackLang.HolProg 64 :=
.seq RemovedBody552_446 RemovedBody552_447

def RemovedBody552_449 : StackLang.HolProg 64 :=
.seq RemovedBody552_445 RemovedBody552_448

def RemovedBody552_450 : StackLang.HolProg 64 :=
.seq RemovedBody552_444 RemovedBody552_449

def RemovedBody552_451 : StackLang.HolProg 64 :=
.seq RemovedBody552_443 RemovedBody552_450

def RemovedBody552_452 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 72#64))

def RemovedBody552_453 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def RemovedBody552_454 : StackLang.HolProg 64 :=
.seq RemovedBody552_452 RemovedBody552_453

def RemovedBody552_455 : StackLang.HolProg 64 :=
.call (some (RemovedBody552_451, 0, 552, 14)) (Sum.inl 490) (some (RemovedBody552_454, 552, 15))

def RemovedBody552_456 : StackLang.HolProg 64 :=
.seq RemovedBody552_442 RemovedBody552_455

def RemovedBody552_457 : StackLang.HolProg 64 :=
.seq RemovedBody552_441 RemovedBody552_456

def RemovedBody552_458 : StackLang.HolProg 64 :=
.seq RemovedBody552_440 RemovedBody552_457

def RemovedBody552_459 : StackLang.HolProg 64 :=
.seq RemovedBody552_411 RemovedBody552_458

def RemovedBody552_460 : StackLang.HolProg 64 :=
.seq RemovedBody552_408 RemovedBody552_459

def RemovedBody552_461 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody552_462 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 0#64)

def RemovedBody552_463 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody552_464 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 80#64)))

def RemovedBody552_465 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 0

def RemovedBody552_466 : StackLang.HolProg 64 :=
.seq RemovedBody552_464 RemovedBody552_465

def RemovedBody552_467 : StackLang.HolProg 64 :=
.seq RemovedBody552_463 RemovedBody552_466

def RemovedBody552_468 : StackLang.HolProg 64 :=
.seq RemovedBody552_462 RemovedBody552_467

def RemovedBody552_469 : StackLang.HolProg 64 :=
.seq RemovedBody552_461 RemovedBody552_468

def RemovedBody552_470 : StackLang.HolProg 64 :=
.seq RemovedBody552_460 RemovedBody552_469

def RemovedBody552_471 : StackLang.HolProg 64 :=
.seq RemovedBody552_407 RemovedBody552_470

def RemovedBody552_472 : StackLang.HolProg 64 :=
.seq RemovedBody552_406 RemovedBody552_471

def RemovedBody552_473 : StackLang.HolProg 64 :=
.seq RemovedBody552_405 RemovedBody552_472

def RemovedBody552_474 : StackLang.HolProg 64 :=
.seq RemovedBody552_404 RemovedBody552_473

def RemovedBody552_475 : StackLang.HolProg 64 :=
.seq RemovedBody552_351 RemovedBody552_474

def RemovedBody552_476 : StackLang.HolProg 64 :=
.seq RemovedBody552_350 RemovedBody552_475

def RemovedBody552_477 : StackLang.HolProg 64 :=
.seq RemovedBody552_349 RemovedBody552_476

def RemovedBody552_478 : StackLang.HolProg 64 :=
.seq RemovedBody552_348 RemovedBody552_477

def RemovedBody552_479 : StackLang.HolProg 64 :=
.seq RemovedBody552_347 RemovedBody552_478

def RemovedBody552_480 : StackLang.HolProg 64 :=
.seq RemovedBody552_346 RemovedBody552_479

def RemovedBody552_481 : StackLang.HolProg 64 :=
.seq RemovedBody552_345 RemovedBody552_480

def RemovedBody552_482 : StackLang.HolProg 64 :=
.seq RemovedBody552_344 RemovedBody552_481

def RemovedBody552_483 : StackLang.HolProg 64 :=
.seq RemovedBody552_343 RemovedBody552_482

def RemovedBody552_484 : StackLang.HolProg 64 :=
.seq RemovedBody552_274 RemovedBody552_483

def RemovedBody552_485 : StackLang.HolProg 64 :=
.seq RemovedBody552_271 RemovedBody552_484

def RemovedBody552_486 : StackLang.HolProg 64 :=
.seq RemovedBody552_270 RemovedBody552_485

def RemovedBody552_487 : StackLang.HolProg 64 :=
.seq RemovedBody552_269 RemovedBody552_486

def RemovedBody552_488 : StackLang.HolProg 64 :=
.seq RemovedBody552_268 RemovedBody552_487

def RemovedBody552_489 : StackLang.HolProg 64 :=
.seq RemovedBody552_267 RemovedBody552_488

def RemovedBody552_490 : StackLang.HolProg 64 :=
.seq RemovedBody552_266 RemovedBody552_489

def RemovedBody552_491 : StackLang.HolProg 64 :=
.seq RemovedBody552_185 RemovedBody552_490

def RemovedBody552_492 : StackLang.HolProg 64 :=
.seq RemovedBody552_178 RemovedBody552_491

def RemovedBody552_493 : StackLang.HolProg 64 :=
.seq RemovedBody552_177 RemovedBody552_492

def RemovedBody552_494 : StackLang.HolProg 64 :=
.seq RemovedBody552_176 RemovedBody552_493

def RemovedBody552_495 : StackLang.HolProg 64 :=
.seq RemovedBody552_123 RemovedBody552_494

def RemovedBody552_496 : StackLang.HolProg 64 :=
.seq RemovedBody552_116 RemovedBody552_495

def RemovedBody552_497 : StackLang.HolProg 64 :=
.seq RemovedBody552_115 RemovedBody552_496

def RemovedBody552_498 : StackLang.HolProg 64 :=
.seq RemovedBody552_62 RemovedBody552_497

def RemovedBody552_499 : StackLang.HolProg 64 :=
.seq RemovedBody552_61 RemovedBody552_498

def RemovedBody552_500 : StackLang.HolProg 64 :=
.seq RemovedBody552_60 RemovedBody552_499

def RemovedBody552_501 : StackLang.HolProg 64 :=
.seq RemovedBody552_7 RemovedBody552_500

def RemovedBody552_502 : StackLang.HolProg 64 :=
.seq RemovedBody552_6 RemovedBody552_501

def Removed552 : Nat × StackLang.HolProg 64 := (552, RemovedBody552_502)
theorem Removed552_eq : StackRemove.progComp false riscvConfig.addrOffset (riscvConfig.regCount - (riscvConfig.avoidRegs.length + 3)) Alloc552 = Removed552 := by
  kernel_rfl
#print axioms Removed552_eq
end InitECandidate.Proofs.BackendStages
