import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.BackendStages.Removed484
import Flapjack.Compiler.Backend.Backend
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
namespace InitECandidate.Proofs.BackendStages
def NamedBody484_0 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 40#64)))

def NamedBody484_1 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 2#64)

def NamedBody484_2 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 10

def NamedBody484_3 : StackLang.HolProg 64 :=
.seq NamedBody484_1 NamedBody484_2

def NamedBody484_4 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody484_5 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) NamedBody484_3 NamedBody484_4

def NamedBody484_6 : StackLang.HolProg 64 :=
.seq NamedBody484_0 NamedBody484_5

def NamedBody484_7 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody484_8 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 6 0#64)

def NamedBody484_9 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 7 12
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 12)))

def NamedBody484_10 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody484_11 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody484_12 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 12 11
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 7)))

def NamedBody484_13 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody484_14 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody484_15 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 12 13
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 13)))

def NamedBody484_16 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 13
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody484_17 : StackLang.HolProg 64 :=
.seq NamedBody484_15 NamedBody484_16

def NamedBody484_18 : StackLang.HolProg 64 :=
.seq NamedBody484_14 NamedBody484_17

def NamedBody484_19 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody484_20 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 13
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody484_21 : StackLang.HolProg 64 :=
.seq NamedBody484_19 NamedBody484_20

def NamedBody484_22 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 13 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 12) NamedBody484_18 NamedBody484_21

def NamedBody484_23 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody484_24 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 11 10
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 10)))

def NamedBody484_25 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 10 5
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 5)))

def NamedBody484_26 : StackLang.HolProg 64 :=
.seq NamedBody484_24 NamedBody484_25

def NamedBody484_27 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 11 7
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 11)))

def NamedBody484_28 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 32#64))

def NamedBody484_29 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 12
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 24#64))

def NamedBody484_30 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 10
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody484_31 : StackLang.HolProg 64 :=
.seq NamedBody484_29 NamedBody484_30

def NamedBody484_32 : StackLang.HolProg 64 :=
.seq NamedBody484_28 NamedBody484_31

def NamedBody484_33 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody484_34 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1521#64)

def NamedBody484_35 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody484_36 : StackLang.HolProg 64 :=
.seq NamedBody484_34 NamedBody484_35

def NamedBody484_37 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody484_38 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 2#64)

def NamedBody484_39 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 10

def NamedBody484_40 : StackLang.HolProg 64 :=
.seq NamedBody484_38 NamedBody484_39

def NamedBody484_41 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody484_42 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) NamedBody484_40 NamedBody484_41

def NamedBody484_43 : StackLang.HolProg 64 :=
.seq NamedBody484_37 NamedBody484_42

def NamedBody484_44 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def NamedBody484_45 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody484_46 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 484 3

def NamedBody484_47 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody484_48 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody484_49 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody484_50 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody484_51 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def NamedBody484_52 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def NamedBody484_53 : StackLang.HolProg 64 :=
.seq NamedBody484_51 NamedBody484_52

def NamedBody484_54 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def NamedBody484_55 : StackLang.HolProg 64 :=
.seq NamedBody484_53 NamedBody484_54

def NamedBody484_56 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody484_57 : StackLang.HolProg 64 :=
.seq NamedBody484_55 NamedBody484_56

def NamedBody484_58 : StackLang.HolProg 64 :=
.seq NamedBody484_50 NamedBody484_57

def NamedBody484_59 : StackLang.HolProg 64 :=
.seq NamedBody484_49 NamedBody484_58

def NamedBody484_60 : StackLang.HolProg 64 :=
.seq NamedBody484_48 NamedBody484_59

def NamedBody484_61 : StackLang.HolProg 64 :=
.seq NamedBody484_47 NamedBody484_60

def NamedBody484_62 : StackLang.HolProg 64 :=
.seq NamedBody484_46 NamedBody484_61

def NamedBody484_63 : StackLang.HolProg 64 :=
.seq NamedBody484_45 NamedBody484_62

def NamedBody484_64 : StackLang.HolProg 64 :=
.seq NamedBody484_44 NamedBody484_63

def NamedBody484_65 : StackLang.HolProg 64 :=
.seq NamedBody484_43 NamedBody484_64

def NamedBody484_66 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody484_67 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody484_68 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody484_69 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody484_70 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody484_71 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody484_72 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 6
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 24#64))

def NamedBody484_73 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 13
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody484_74 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 5
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody484_75 : StackLang.HolProg 64 :=
.seq NamedBody484_73 NamedBody484_74

def NamedBody484_76 : StackLang.HolProg 64 :=
.seq NamedBody484_72 NamedBody484_75

def NamedBody484_77 : StackLang.HolProg 64 :=
.seq NamedBody484_71 NamedBody484_76

def NamedBody484_78 : StackLang.HolProg 64 :=
.seq NamedBody484_70 NamedBody484_77

def NamedBody484_79 : StackLang.HolProg 64 :=
.seq NamedBody484_69 NamedBody484_78

def NamedBody484_80 : StackLang.HolProg 64 :=
.seq NamedBody484_68 NamedBody484_79

def NamedBody484_81 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 6
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 24#64))

def NamedBody484_82 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 13
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody484_83 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 5
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody484_84 : StackLang.HolProg 64 :=
.seq NamedBody484_82 NamedBody484_83

def NamedBody484_85 : StackLang.HolProg 64 :=
.seq NamedBody484_81 NamedBody484_84

def NamedBody484_86 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def NamedBody484_87 : StackLang.HolProg 64 :=
.seq NamedBody484_85 NamedBody484_86

def NamedBody484_88 : StackLang.HolProg 64 :=
.call (some (NamedBody484_80, 1, 484, 2)) (Sum.inl 77) (some (NamedBody484_87, 484, 3))

def NamedBody484_89 : StackLang.HolProg 64 :=
.seq NamedBody484_67 NamedBody484_88

def NamedBody484_90 : StackLang.HolProg 64 :=
.seq NamedBody484_66 NamedBody484_89

def NamedBody484_91 : StackLang.HolProg 64 :=
.seq NamedBody484_65 NamedBody484_90

def NamedBody484_92 : StackLang.HolProg 64 :=
.seq NamedBody484_36 NamedBody484_91

def NamedBody484_93 : StackLang.HolProg 64 :=
.seq NamedBody484_33 NamedBody484_92

def NamedBody484_94 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody484_95 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody484_96 : StackLang.HolProg 64 :=
.seq NamedBody484_94 NamedBody484_95

def NamedBody484_97 : StackLang.HolProg 64 :=
.seq NamedBody484_93 NamedBody484_96

def NamedBody484_98 : StackLang.HolProg 64 :=
.seq NamedBody484_32 NamedBody484_97

def NamedBody484_99 : StackLang.HolProg 64 :=
.seq NamedBody484_27 NamedBody484_98

def NamedBody484_100 : StackLang.HolProg 64 :=
.seq NamedBody484_26 NamedBody484_99

def NamedBody484_101 : StackLang.HolProg 64 :=
.seq NamedBody484_23 NamedBody484_100

def NamedBody484_102 : StackLang.HolProg 64 :=
.seq NamedBody484_22 NamedBody484_101

def NamedBody484_103 : StackLang.HolProg 64 :=
.seq NamedBody484_13 NamedBody484_102

def NamedBody484_104 : StackLang.HolProg 64 :=
.seq NamedBody484_12 NamedBody484_103

def NamedBody484_105 : StackLang.HolProg 64 :=
.seq NamedBody484_11 NamedBody484_104

def NamedBody484_106 : StackLang.HolProg 64 :=
.seq NamedBody484_10 NamedBody484_105

def NamedBody484_107 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody484_108 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 32#64))

def NamedBody484_109 : StackLang.HolProg 64 :=
.seq NamedBody484_107 NamedBody484_108

def NamedBody484_110 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 7 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 11) NamedBody484_106 NamedBody484_109

def NamedBody484_111 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody484_112 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody484_113 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 10 6
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 5)))

def NamedBody484_114 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody484_115 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 11 13
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 6)))

def NamedBody484_116 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody484_117 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody484_118 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1522#64)

def NamedBody484_119 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody484_120 : StackLang.HolProg 64 :=
.seq NamedBody484_118 NamedBody484_119

def NamedBody484_121 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody484_122 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 2#64)

def NamedBody484_123 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 10

def NamedBody484_124 : StackLang.HolProg 64 :=
.seq NamedBody484_122 NamedBody484_123

def NamedBody484_125 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody484_126 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) NamedBody484_124 NamedBody484_125

def NamedBody484_127 : StackLang.HolProg 64 :=
.seq NamedBody484_121 NamedBody484_126

def NamedBody484_128 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def NamedBody484_129 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody484_130 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 484 5

def NamedBody484_131 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody484_132 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody484_133 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody484_134 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody484_135 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def NamedBody484_136 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def NamedBody484_137 : StackLang.HolProg 64 :=
.seq NamedBody484_135 NamedBody484_136

def NamedBody484_138 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def NamedBody484_139 : StackLang.HolProg 64 :=
.seq NamedBody484_137 NamedBody484_138

def NamedBody484_140 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody484_141 : StackLang.HolProg 64 :=
.seq NamedBody484_139 NamedBody484_140

def NamedBody484_142 : StackLang.HolProg 64 :=
.seq NamedBody484_134 NamedBody484_141

def NamedBody484_143 : StackLang.HolProg 64 :=
.seq NamedBody484_133 NamedBody484_142

def NamedBody484_144 : StackLang.HolProg 64 :=
.seq NamedBody484_132 NamedBody484_143

def NamedBody484_145 : StackLang.HolProg 64 :=
.seq NamedBody484_131 NamedBody484_144

def NamedBody484_146 : StackLang.HolProg 64 :=
.seq NamedBody484_130 NamedBody484_145

def NamedBody484_147 : StackLang.HolProg 64 :=
.seq NamedBody484_129 NamedBody484_146

def NamedBody484_148 : StackLang.HolProg 64 :=
.seq NamedBody484_128 NamedBody484_147

def NamedBody484_149 : StackLang.HolProg 64 :=
.seq NamedBody484_127 NamedBody484_148

def NamedBody484_150 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody484_151 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody484_152 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody484_153 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody484_154 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody484_155 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody484_156 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 32#64))

def NamedBody484_157 : StackLang.HolProg 64 :=
.seq NamedBody484_155 NamedBody484_156

def NamedBody484_158 : StackLang.HolProg 64 :=
.seq NamedBody484_154 NamedBody484_157

def NamedBody484_159 : StackLang.HolProg 64 :=
.seq NamedBody484_153 NamedBody484_158

def NamedBody484_160 : StackLang.HolProg 64 :=
.seq NamedBody484_152 NamedBody484_159

def NamedBody484_161 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 32#64))

def NamedBody484_162 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def NamedBody484_163 : StackLang.HolProg 64 :=
.seq NamedBody484_161 NamedBody484_162

def NamedBody484_164 : StackLang.HolProg 64 :=
.call (some (NamedBody484_160, 1, 484, 4)) (Sum.inl 78) (some (NamedBody484_163, 484, 5))

def NamedBody484_165 : StackLang.HolProg 64 :=
.seq NamedBody484_151 NamedBody484_164

def NamedBody484_166 : StackLang.HolProg 64 :=
.seq NamedBody484_150 NamedBody484_165

def NamedBody484_167 : StackLang.HolProg 64 :=
.seq NamedBody484_149 NamedBody484_166

def NamedBody484_168 : StackLang.HolProg 64 :=
.seq NamedBody484_120 NamedBody484_167

def NamedBody484_169 : StackLang.HolProg 64 :=
.seq NamedBody484_117 NamedBody484_168

def NamedBody484_170 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody484_171 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 0#64)

def NamedBody484_172 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody484_173 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 40#64)))

def NamedBody484_174 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 1

def NamedBody484_175 : StackLang.HolProg 64 :=
.seq NamedBody484_173 NamedBody484_174

def NamedBody484_176 : StackLang.HolProg 64 :=
.seq NamedBody484_172 NamedBody484_175

def NamedBody484_177 : StackLang.HolProg 64 :=
.seq NamedBody484_171 NamedBody484_176

def NamedBody484_178 : StackLang.HolProg 64 :=
.seq NamedBody484_170 NamedBody484_177

def NamedBody484_179 : StackLang.HolProg 64 :=
.seq NamedBody484_169 NamedBody484_178

def NamedBody484_180 : StackLang.HolProg 64 :=
.seq NamedBody484_116 NamedBody484_179

def NamedBody484_181 : StackLang.HolProg 64 :=
.seq NamedBody484_115 NamedBody484_180

def NamedBody484_182 : StackLang.HolProg 64 :=
.seq NamedBody484_114 NamedBody484_181

def NamedBody484_183 : StackLang.HolProg 64 :=
.seq NamedBody484_113 NamedBody484_182

def NamedBody484_184 : StackLang.HolProg 64 :=
.seq NamedBody484_112 NamedBody484_183

def NamedBody484_185 : StackLang.HolProg 64 :=
.seq NamedBody484_111 NamedBody484_184

def NamedBody484_186 : StackLang.HolProg 64 :=
.seq NamedBody484_110 NamedBody484_185

def NamedBody484_187 : StackLang.HolProg 64 :=
.seq NamedBody484_9 NamedBody484_186

def NamedBody484_188 : StackLang.HolProg 64 :=
.seq NamedBody484_8 NamedBody484_187

def NamedBody484_189 : StackLang.HolProg 64 :=
.seq NamedBody484_7 NamedBody484_188

def NamedBody484_190 : StackLang.HolProg 64 :=
.seq NamedBody484_6 NamedBody484_189

def Named484 : Nat × StackLang.HolProg 64 := (484, NamedBody484_190)
theorem Named484_eq : StackNames.progCompEntryHOL RiscVConfig.riscvNames Removed484 = Named484 := by
  kernel_rfl
#print axioms Named484_eq
end InitECandidate.Proofs.BackendStages
