import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.BackendStages.Removed455
import Flapjack.Compiler.Backend.Backend
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
namespace InitECandidate.Proofs.BackendStages
def NamedBody455_0 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 16#64)))

def NamedBody455_1 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 2#64)

def NamedBody455_2 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 10

def NamedBody455_3 : StackLang.HolProg 64 :=
.seq NamedBody455_1 NamedBody455_2

def NamedBody455_4 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody455_5 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) NamedBody455_3 NamedBody455_4

def NamedBody455_6 : StackLang.HolProg 64 :=
.seq NamedBody455_0 NamedBody455_5

def NamedBody455_7 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody455_8 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody455_9 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1397#64)

def NamedBody455_10 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody455_11 : StackLang.HolProg 64 :=
.seq NamedBody455_9 NamedBody455_10

def NamedBody455_12 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody455_13 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 2#64)

def NamedBody455_14 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 10

def NamedBody455_15 : StackLang.HolProg 64 :=
.seq NamedBody455_13 NamedBody455_14

def NamedBody455_16 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody455_17 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) NamedBody455_15 NamedBody455_16

def NamedBody455_18 : StackLang.HolProg 64 :=
.seq NamedBody455_12 NamedBody455_17

def NamedBody455_19 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def NamedBody455_20 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody455_21 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 455 3

def NamedBody455_22 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody455_23 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody455_24 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody455_25 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody455_26 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def NamedBody455_27 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def NamedBody455_28 : StackLang.HolProg 64 :=
.seq NamedBody455_26 NamedBody455_27

def NamedBody455_29 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def NamedBody455_30 : StackLang.HolProg 64 :=
.seq NamedBody455_28 NamedBody455_29

def NamedBody455_31 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody455_32 : StackLang.HolProg 64 :=
.seq NamedBody455_30 NamedBody455_31

def NamedBody455_33 : StackLang.HolProg 64 :=
.seq NamedBody455_25 NamedBody455_32

def NamedBody455_34 : StackLang.HolProg 64 :=
.seq NamedBody455_24 NamedBody455_33

def NamedBody455_35 : StackLang.HolProg 64 :=
.seq NamedBody455_23 NamedBody455_34

def NamedBody455_36 : StackLang.HolProg 64 :=
.seq NamedBody455_22 NamedBody455_35

def NamedBody455_37 : StackLang.HolProg 64 :=
.seq NamedBody455_21 NamedBody455_36

def NamedBody455_38 : StackLang.HolProg 64 :=
.seq NamedBody455_20 NamedBody455_37

def NamedBody455_39 : StackLang.HolProg 64 :=
.seq NamedBody455_19 NamedBody455_38

def NamedBody455_40 : StackLang.HolProg 64 :=
.seq NamedBody455_18 NamedBody455_39

def NamedBody455_41 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody455_42 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody455_43 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody455_44 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody455_45 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody455_46 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody455_47 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody455_48 : StackLang.HolProg 64 :=
.seq NamedBody455_46 NamedBody455_47

def NamedBody455_49 : StackLang.HolProg 64 :=
.seq NamedBody455_45 NamedBody455_48

def NamedBody455_50 : StackLang.HolProg 64 :=
.seq NamedBody455_44 NamedBody455_49

def NamedBody455_51 : StackLang.HolProg 64 :=
.seq NamedBody455_43 NamedBody455_50

def NamedBody455_52 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody455_53 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def NamedBody455_54 : StackLang.HolProg 64 :=
.seq NamedBody455_52 NamedBody455_53

def NamedBody455_55 : StackLang.HolProg 64 :=
.call (some (NamedBody455_51, 1, 455, 2)) (Sum.inl 454) (some (NamedBody455_54, 455, 3))

def NamedBody455_56 : StackLang.HolProg 64 :=
.seq NamedBody455_42 NamedBody455_55

def NamedBody455_57 : StackLang.HolProg 64 :=
.seq NamedBody455_41 NamedBody455_56

def NamedBody455_58 : StackLang.HolProg 64 :=
.seq NamedBody455_40 NamedBody455_57

def NamedBody455_59 : StackLang.HolProg 64 :=
.seq NamedBody455_11 NamedBody455_58

def NamedBody455_60 : StackLang.HolProg 64 :=
.seq NamedBody455_8 NamedBody455_59

def NamedBody455_61 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody455_62 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody455_63 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody455_64 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1398#64)

def NamedBody455_65 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody455_66 : StackLang.HolProg 64 :=
.seq NamedBody455_64 NamedBody455_65

def NamedBody455_67 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody455_68 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 2#64)

def NamedBody455_69 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 10

def NamedBody455_70 : StackLang.HolProg 64 :=
.seq NamedBody455_68 NamedBody455_69

def NamedBody455_71 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody455_72 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) NamedBody455_70 NamedBody455_71

def NamedBody455_73 : StackLang.HolProg 64 :=
.seq NamedBody455_67 NamedBody455_72

def NamedBody455_74 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def NamedBody455_75 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody455_76 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 455 5

def NamedBody455_77 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody455_78 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody455_79 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody455_80 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody455_81 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def NamedBody455_82 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def NamedBody455_83 : StackLang.HolProg 64 :=
.seq NamedBody455_81 NamedBody455_82

def NamedBody455_84 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def NamedBody455_85 : StackLang.HolProg 64 :=
.seq NamedBody455_83 NamedBody455_84

def NamedBody455_86 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody455_87 : StackLang.HolProg 64 :=
.seq NamedBody455_85 NamedBody455_86

def NamedBody455_88 : StackLang.HolProg 64 :=
.seq NamedBody455_80 NamedBody455_87

def NamedBody455_89 : StackLang.HolProg 64 :=
.seq NamedBody455_79 NamedBody455_88

def NamedBody455_90 : StackLang.HolProg 64 :=
.seq NamedBody455_78 NamedBody455_89

def NamedBody455_91 : StackLang.HolProg 64 :=
.seq NamedBody455_77 NamedBody455_90

def NamedBody455_92 : StackLang.HolProg 64 :=
.seq NamedBody455_76 NamedBody455_91

def NamedBody455_93 : StackLang.HolProg 64 :=
.seq NamedBody455_75 NamedBody455_92

def NamedBody455_94 : StackLang.HolProg 64 :=
.seq NamedBody455_74 NamedBody455_93

def NamedBody455_95 : StackLang.HolProg 64 :=
.seq NamedBody455_73 NamedBody455_94

def NamedBody455_96 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody455_97 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody455_98 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody455_99 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody455_100 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody455_101 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody455_102 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody455_103 : StackLang.HolProg 64 :=
.seq NamedBody455_101 NamedBody455_102

def NamedBody455_104 : StackLang.HolProg 64 :=
.seq NamedBody455_100 NamedBody455_103

def NamedBody455_105 : StackLang.HolProg 64 :=
.seq NamedBody455_99 NamedBody455_104

def NamedBody455_106 : StackLang.HolProg 64 :=
.seq NamedBody455_98 NamedBody455_105

def NamedBody455_107 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody455_108 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def NamedBody455_109 : StackLang.HolProg 64 :=
.seq NamedBody455_107 NamedBody455_108

def NamedBody455_110 : StackLang.HolProg 64 :=
.call (some (NamedBody455_106, 1, 455, 4)) (Sum.inl 433) (some (NamedBody455_109, 455, 5))

def NamedBody455_111 : StackLang.HolProg 64 :=
.seq NamedBody455_97 NamedBody455_110

def NamedBody455_112 : StackLang.HolProg 64 :=
.seq NamedBody455_96 NamedBody455_111

def NamedBody455_113 : StackLang.HolProg 64 :=
.seq NamedBody455_95 NamedBody455_112

def NamedBody455_114 : StackLang.HolProg 64 :=
.seq NamedBody455_66 NamedBody455_113

def NamedBody455_115 : StackLang.HolProg 64 :=
.seq NamedBody455_63 NamedBody455_114

def NamedBody455_116 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody455_117 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 0#64)

def NamedBody455_118 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody455_119 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 16#64)))

def NamedBody455_120 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 1

def NamedBody455_121 : StackLang.HolProg 64 :=
.seq NamedBody455_119 NamedBody455_120

def NamedBody455_122 : StackLang.HolProg 64 :=
.seq NamedBody455_118 NamedBody455_121

def NamedBody455_123 : StackLang.HolProg 64 :=
.seq NamedBody455_117 NamedBody455_122

def NamedBody455_124 : StackLang.HolProg 64 :=
.seq NamedBody455_116 NamedBody455_123

def NamedBody455_125 : StackLang.HolProg 64 :=
.seq NamedBody455_115 NamedBody455_124

def NamedBody455_126 : StackLang.HolProg 64 :=
.seq NamedBody455_62 NamedBody455_125

def NamedBody455_127 : StackLang.HolProg 64 :=
.seq NamedBody455_61 NamedBody455_126

def NamedBody455_128 : StackLang.HolProg 64 :=
.seq NamedBody455_60 NamedBody455_127

def NamedBody455_129 : StackLang.HolProg 64 :=
.seq NamedBody455_7 NamedBody455_128

def NamedBody455_130 : StackLang.HolProg 64 :=
.seq NamedBody455_6 NamedBody455_129

def Named455 : Nat × StackLang.HolProg 64 := (455, NamedBody455_130)
theorem Named455_eq : StackNames.progCompEntryHOL RiscVConfig.riscvNames Removed455 = Named455 := by
  kernel_rfl
#print axioms Named455_eq
end InitECandidate.Proofs.BackendStages
