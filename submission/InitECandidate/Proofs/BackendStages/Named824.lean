import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.BackendStages.Removed824
import Flapjack.Compiler.Backend.Backend
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
namespace InitECandidate.Proofs.BackendStages
def NamedBody824_0 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 32#64)))

def NamedBody824_1 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 2#64)

def NamedBody824_2 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 10

def NamedBody824_3 : StackLang.HolProg 64 :=
.seq NamedBody824_1 NamedBody824_2

def NamedBody824_4 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody824_5 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) NamedBody824_3 NamedBody824_4

def NamedBody824_6 : StackLang.HolProg 64 :=
.seq NamedBody824_0 NamedBody824_5

def NamedBody824_7 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody824_8 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 10
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551592#64))

def NamedBody824_9 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsl 10 10
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 1#64)))

def NamedBody824_10 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 10 10
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 26)))

def NamedBody824_11 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 10
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 10 18446744073709551360#64))

def NamedBody824_12 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 12
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 10 112#64))

def NamedBody824_13 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody824_14 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 11
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 12 96#64))

def NamedBody824_15 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody824_16 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 0#64)

def NamedBody824_17 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody824_18 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 10#64)

def NamedBody824_19 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody824_20 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 10
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551480#64))

def NamedBody824_21 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 8#64)

def NamedBody824_22 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody824_23 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def NamedBody824_24 : StackLang.HolProg 64 :=
.seq NamedBody824_22 NamedBody824_23

def NamedBody824_25 : StackLang.HolProg 64 :=
.seq NamedBody824_21 NamedBody824_24

def NamedBody824_26 : StackLang.HolProg 64 :=
.seq NamedBody824_20 NamedBody824_25

def NamedBody824_27 : StackLang.HolProg 64 :=
.seq NamedBody824_19 NamedBody824_26

def NamedBody824_28 : StackLang.HolProg 64 :=
.seq NamedBody824_18 NamedBody824_27

def NamedBody824_29 : StackLang.HolProg 64 :=
.seq NamedBody824_17 NamedBody824_28

def NamedBody824_30 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody824_31 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.equal) 11 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 10) NamedBody824_29 NamedBody824_30

def NamedBody824_32 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody824_33 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody824_34 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 10 11
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 11)))

def NamedBody824_35 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 11 288#64)

def NamedBody824_36 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 24#64))

def NamedBody824_37 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 12
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody824_38 : StackLang.HolProg 64 :=
.seq NamedBody824_36 NamedBody824_37

def NamedBody824_39 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody824_40 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 4102#64)

def NamedBody824_41 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody824_42 : StackLang.HolProg 64 :=
.seq NamedBody824_40 NamedBody824_41

def NamedBody824_43 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody824_44 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 2#64)

def NamedBody824_45 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 10

def NamedBody824_46 : StackLang.HolProg 64 :=
.seq NamedBody824_44 NamedBody824_45

def NamedBody824_47 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody824_48 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) NamedBody824_46 NamedBody824_47

def NamedBody824_49 : StackLang.HolProg 64 :=
.seq NamedBody824_43 NamedBody824_48

def NamedBody824_50 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def NamedBody824_51 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody824_52 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 824 3

def NamedBody824_53 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody824_54 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody824_55 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody824_56 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody824_57 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def NamedBody824_58 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def NamedBody824_59 : StackLang.HolProg 64 :=
.seq NamedBody824_57 NamedBody824_58

def NamedBody824_60 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def NamedBody824_61 : StackLang.HolProg 64 :=
.seq NamedBody824_59 NamedBody824_60

def NamedBody824_62 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody824_63 : StackLang.HolProg 64 :=
.seq NamedBody824_61 NamedBody824_62

def NamedBody824_64 : StackLang.HolProg 64 :=
.seq NamedBody824_56 NamedBody824_63

def NamedBody824_65 : StackLang.HolProg 64 :=
.seq NamedBody824_55 NamedBody824_64

def NamedBody824_66 : StackLang.HolProg 64 :=
.seq NamedBody824_54 NamedBody824_65

def NamedBody824_67 : StackLang.HolProg 64 :=
.seq NamedBody824_53 NamedBody824_66

def NamedBody824_68 : StackLang.HolProg 64 :=
.seq NamedBody824_52 NamedBody824_67

def NamedBody824_69 : StackLang.HolProg 64 :=
.seq NamedBody824_51 NamedBody824_68

def NamedBody824_70 : StackLang.HolProg 64 :=
.seq NamedBody824_50 NamedBody824_69

def NamedBody824_71 : StackLang.HolProg 64 :=
.seq NamedBody824_49 NamedBody824_70

def NamedBody824_72 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody824_73 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody824_74 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody824_75 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody824_76 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody824_77 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody824_78 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 12 10
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 10)))

def NamedBody824_79 : StackLang.HolProg 64 :=
.seq NamedBody824_77 NamedBody824_78

def NamedBody824_80 : StackLang.HolProg 64 :=
.seq NamedBody824_76 NamedBody824_79

def NamedBody824_81 : StackLang.HolProg 64 :=
.seq NamedBody824_75 NamedBody824_80

def NamedBody824_82 : StackLang.HolProg 64 :=
.seq NamedBody824_74 NamedBody824_81

def NamedBody824_83 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody824_84 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def NamedBody824_85 : StackLang.HolProg 64 :=
.seq NamedBody824_83 NamedBody824_84

def NamedBody824_86 : StackLang.HolProg 64 :=
.call (some (NamedBody824_82, 1, 824, 2)) (Sum.inl 94) (some (NamedBody824_85, 824, 3))

def NamedBody824_87 : StackLang.HolProg 64 :=
.seq NamedBody824_73 NamedBody824_86

def NamedBody824_88 : StackLang.HolProg 64 :=
.seq NamedBody824_72 NamedBody824_87

def NamedBody824_89 : StackLang.HolProg 64 :=
.seq NamedBody824_71 NamedBody824_88

def NamedBody824_90 : StackLang.HolProg 64 :=
.seq NamedBody824_42 NamedBody824_89

def NamedBody824_91 : StackLang.HolProg 64 :=
.seq NamedBody824_39 NamedBody824_90

def NamedBody824_92 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody824_93 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody824_94 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 0#64)

def NamedBody824_95 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody824_96 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 10#64)

def NamedBody824_97 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody824_98 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551480#64))

def NamedBody824_99 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 8#64)

def NamedBody824_100 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody824_101 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def NamedBody824_102 : StackLang.HolProg 64 :=
.seq NamedBody824_100 NamedBody824_101

def NamedBody824_103 : StackLang.HolProg 64 :=
.seq NamedBody824_99 NamedBody824_102

def NamedBody824_104 : StackLang.HolProg 64 :=
.seq NamedBody824_98 NamedBody824_103

def NamedBody824_105 : StackLang.HolProg 64 :=
.seq NamedBody824_97 NamedBody824_104

def NamedBody824_106 : StackLang.HolProg 64 :=
.seq NamedBody824_96 NamedBody824_105

def NamedBody824_107 : StackLang.HolProg 64 :=
.seq NamedBody824_95 NamedBody824_106

def NamedBody824_108 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody824_109 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.notEqual) 11 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1) NamedBody824_107 NamedBody824_108

def NamedBody824_110 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody824_111 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody824_112 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 10 12
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 12)))

def NamedBody824_113 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 12
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody824_114 : StackLang.HolProg 64 :=
.seq NamedBody824_112 NamedBody824_113

def NamedBody824_115 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody824_116 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 4103#64)

def NamedBody824_117 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody824_118 : StackLang.HolProg 64 :=
.seq NamedBody824_116 NamedBody824_117

def NamedBody824_119 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody824_120 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 2#64)

def NamedBody824_121 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 10

def NamedBody824_122 : StackLang.HolProg 64 :=
.seq NamedBody824_120 NamedBody824_121

def NamedBody824_123 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody824_124 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) NamedBody824_122 NamedBody824_123

def NamedBody824_125 : StackLang.HolProg 64 :=
.seq NamedBody824_119 NamedBody824_124

def NamedBody824_126 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def NamedBody824_127 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody824_128 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 824 5

def NamedBody824_129 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody824_130 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody824_131 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody824_132 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody824_133 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def NamedBody824_134 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def NamedBody824_135 : StackLang.HolProg 64 :=
.seq NamedBody824_133 NamedBody824_134

def NamedBody824_136 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def NamedBody824_137 : StackLang.HolProg 64 :=
.seq NamedBody824_135 NamedBody824_136

def NamedBody824_138 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody824_139 : StackLang.HolProg 64 :=
.seq NamedBody824_137 NamedBody824_138

def NamedBody824_140 : StackLang.HolProg 64 :=
.seq NamedBody824_132 NamedBody824_139

def NamedBody824_141 : StackLang.HolProg 64 :=
.seq NamedBody824_131 NamedBody824_140

def NamedBody824_142 : StackLang.HolProg 64 :=
.seq NamedBody824_130 NamedBody824_141

def NamedBody824_143 : StackLang.HolProg 64 :=
.seq NamedBody824_129 NamedBody824_142

def NamedBody824_144 : StackLang.HolProg 64 :=
.seq NamedBody824_128 NamedBody824_143

def NamedBody824_145 : StackLang.HolProg 64 :=
.seq NamedBody824_127 NamedBody824_144

def NamedBody824_146 : StackLang.HolProg 64 :=
.seq NamedBody824_126 NamedBody824_145

def NamedBody824_147 : StackLang.HolProg 64 :=
.seq NamedBody824_125 NamedBody824_146

def NamedBody824_148 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody824_149 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody824_150 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody824_151 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody824_152 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody824_153 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody824_154 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 5 10
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 10)))

def NamedBody824_155 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 13
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody824_156 : StackLang.HolProg 64 :=
.seq NamedBody824_154 NamedBody824_155

def NamedBody824_157 : StackLang.HolProg 64 :=
.seq NamedBody824_153 NamedBody824_156

def NamedBody824_158 : StackLang.HolProg 64 :=
.seq NamedBody824_152 NamedBody824_157

def NamedBody824_159 : StackLang.HolProg 64 :=
.seq NamedBody824_151 NamedBody824_158

def NamedBody824_160 : StackLang.HolProg 64 :=
.seq NamedBody824_150 NamedBody824_159

def NamedBody824_161 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 13
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody824_162 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def NamedBody824_163 : StackLang.HolProg 64 :=
.seq NamedBody824_161 NamedBody824_162

def NamedBody824_164 : StackLang.HolProg 64 :=
.call (some (NamedBody824_160, 1, 824, 4)) (Sum.inl 820) (some (NamedBody824_163, 824, 5))

def NamedBody824_165 : StackLang.HolProg 64 :=
.seq NamedBody824_149 NamedBody824_164

def NamedBody824_166 : StackLang.HolProg 64 :=
.seq NamedBody824_148 NamedBody824_165

def NamedBody824_167 : StackLang.HolProg 64 :=
.seq NamedBody824_147 NamedBody824_166

def NamedBody824_168 : StackLang.HolProg 64 :=
.seq NamedBody824_118 NamedBody824_167

def NamedBody824_169 : StackLang.HolProg 64 :=
.seq NamedBody824_115 NamedBody824_168

def NamedBody824_170 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody824_171 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody824_172 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 11 22500#64)

def NamedBody824_173 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 1 13
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 13)))

def NamedBody824_174 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith (Flapjack.Compiler.Encoders.Asm.HolArith.longMul 12 1 1 11))

def NamedBody824_175 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 11 5
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 5)))

def NamedBody824_176 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith (Flapjack.Compiler.Encoders.Asm.HolArith.longMul 12 1 1 11))

def NamedBody824_177 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 10 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def NamedBody824_178 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 11 1000#64)

def NamedBody824_179 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 13
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody824_180 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody824_181 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 4104#64)

def NamedBody824_182 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody824_183 : StackLang.HolProg 64 :=
.seq NamedBody824_181 NamedBody824_182

def NamedBody824_184 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody824_185 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 2#64)

def NamedBody824_186 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 10

def NamedBody824_187 : StackLang.HolProg 64 :=
.seq NamedBody824_185 NamedBody824_186

def NamedBody824_188 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody824_189 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) NamedBody824_187 NamedBody824_188

def NamedBody824_190 : StackLang.HolProg 64 :=
.seq NamedBody824_184 NamedBody824_189

def NamedBody824_191 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def NamedBody824_192 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody824_193 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 824 7

def NamedBody824_194 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody824_195 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody824_196 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody824_197 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody824_198 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def NamedBody824_199 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def NamedBody824_200 : StackLang.HolProg 64 :=
.seq NamedBody824_198 NamedBody824_199

def NamedBody824_201 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def NamedBody824_202 : StackLang.HolProg 64 :=
.seq NamedBody824_200 NamedBody824_201

def NamedBody824_203 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody824_204 : StackLang.HolProg 64 :=
.seq NamedBody824_202 NamedBody824_203

def NamedBody824_205 : StackLang.HolProg 64 :=
.seq NamedBody824_197 NamedBody824_204

def NamedBody824_206 : StackLang.HolProg 64 :=
.seq NamedBody824_196 NamedBody824_205

def NamedBody824_207 : StackLang.HolProg 64 :=
.seq NamedBody824_195 NamedBody824_206

def NamedBody824_208 : StackLang.HolProg 64 :=
.seq NamedBody824_194 NamedBody824_207

def NamedBody824_209 : StackLang.HolProg 64 :=
.seq NamedBody824_193 NamedBody824_208

def NamedBody824_210 : StackLang.HolProg 64 :=
.seq NamedBody824_192 NamedBody824_209

def NamedBody824_211 : StackLang.HolProg 64 :=
.seq NamedBody824_191 NamedBody824_210

def NamedBody824_212 : StackLang.HolProg 64 :=
.seq NamedBody824_190 NamedBody824_211

def NamedBody824_213 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody824_214 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody824_215 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody824_216 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody824_217 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody824_218 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody824_219 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 1 10
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 10)))

def NamedBody824_220 : StackLang.HolProg 64 :=
.seq NamedBody824_218 NamedBody824_219

def NamedBody824_221 : StackLang.HolProg 64 :=
.seq NamedBody824_217 NamedBody824_220

def NamedBody824_222 : StackLang.HolProg 64 :=
.seq NamedBody824_216 NamedBody824_221

def NamedBody824_223 : StackLang.HolProg 64 :=
.seq NamedBody824_215 NamedBody824_222

def NamedBody824_224 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody824_225 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def NamedBody824_226 : StackLang.HolProg 64 :=
.seq NamedBody824_224 NamedBody824_225

def NamedBody824_227 : StackLang.HolProg 64 :=
.call (some (NamedBody824_223, 1, 824, 6)) (Sum.inl 94) (some (NamedBody824_226, 824, 7))

def NamedBody824_228 : StackLang.HolProg 64 :=
.seq NamedBody824_214 NamedBody824_227

def NamedBody824_229 : StackLang.HolProg 64 :=
.seq NamedBody824_213 NamedBody824_228

def NamedBody824_230 : StackLang.HolProg 64 :=
.seq NamedBody824_212 NamedBody824_229

def NamedBody824_231 : StackLang.HolProg 64 :=
.seq NamedBody824_183 NamedBody824_230

def NamedBody824_232 : StackLang.HolProg 64 :=
.seq NamedBody824_180 NamedBody824_231

def NamedBody824_233 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody824_234 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 10 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def NamedBody824_235 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody824_236 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 4105#64)

def NamedBody824_237 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody824_238 : StackLang.HolProg 64 :=
.seq NamedBody824_236 NamedBody824_237

def NamedBody824_239 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody824_240 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 2#64)

def NamedBody824_241 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 10

def NamedBody824_242 : StackLang.HolProg 64 :=
.seq NamedBody824_240 NamedBody824_241

def NamedBody824_243 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody824_244 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) NamedBody824_242 NamedBody824_243

def NamedBody824_245 : StackLang.HolProg 64 :=
.seq NamedBody824_239 NamedBody824_244

def NamedBody824_246 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def NamedBody824_247 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody824_248 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 824 9

def NamedBody824_249 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody824_250 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody824_251 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody824_252 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody824_253 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def NamedBody824_254 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def NamedBody824_255 : StackLang.HolProg 64 :=
.seq NamedBody824_253 NamedBody824_254

def NamedBody824_256 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def NamedBody824_257 : StackLang.HolProg 64 :=
.seq NamedBody824_255 NamedBody824_256

def NamedBody824_258 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody824_259 : StackLang.HolProg 64 :=
.seq NamedBody824_257 NamedBody824_258

def NamedBody824_260 : StackLang.HolProg 64 :=
.seq NamedBody824_252 NamedBody824_259

def NamedBody824_261 : StackLang.HolProg 64 :=
.seq NamedBody824_251 NamedBody824_260

def NamedBody824_262 : StackLang.HolProg 64 :=
.seq NamedBody824_250 NamedBody824_261

def NamedBody824_263 : StackLang.HolProg 64 :=
.seq NamedBody824_249 NamedBody824_262

def NamedBody824_264 : StackLang.HolProg 64 :=
.seq NamedBody824_248 NamedBody824_263

def NamedBody824_265 : StackLang.HolProg 64 :=
.seq NamedBody824_247 NamedBody824_264

def NamedBody824_266 : StackLang.HolProg 64 :=
.seq NamedBody824_246 NamedBody824_265

def NamedBody824_267 : StackLang.HolProg 64 :=
.seq NamedBody824_245 NamedBody824_266

def NamedBody824_268 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody824_269 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody824_270 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody824_271 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody824_272 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody824_273 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody824_274 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody824_275 : StackLang.HolProg 64 :=
.seq NamedBody824_273 NamedBody824_274

def NamedBody824_276 : StackLang.HolProg 64 :=
.seq NamedBody824_272 NamedBody824_275

def NamedBody824_277 : StackLang.HolProg 64 :=
.seq NamedBody824_271 NamedBody824_276

def NamedBody824_278 : StackLang.HolProg 64 :=
.seq NamedBody824_270 NamedBody824_277

def NamedBody824_279 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody824_280 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def NamedBody824_281 : StackLang.HolProg 64 :=
.seq NamedBody824_279 NamedBody824_280

def NamedBody824_282 : StackLang.HolProg 64 :=
.call (some (NamedBody824_278, 1, 824, 8)) (Sum.inl 470) (some (NamedBody824_281, 824, 9))

def NamedBody824_283 : StackLang.HolProg 64 :=
.seq NamedBody824_269 NamedBody824_282

def NamedBody824_284 : StackLang.HolProg 64 :=
.seq NamedBody824_268 NamedBody824_283

def NamedBody824_285 : StackLang.HolProg 64 :=
.seq NamedBody824_267 NamedBody824_284

def NamedBody824_286 : StackLang.HolProg 64 :=
.seq NamedBody824_238 NamedBody824_285

def NamedBody824_287 : StackLang.HolProg 64 :=
.seq NamedBody824_235 NamedBody824_286

def NamedBody824_288 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody824_289 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 256#64)

def NamedBody824_290 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody824_291 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody824_292 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 4106#64)

def NamedBody824_293 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody824_294 : StackLang.HolProg 64 :=
.seq NamedBody824_292 NamedBody824_293

def NamedBody824_295 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody824_296 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 2#64)

def NamedBody824_297 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 10

def NamedBody824_298 : StackLang.HolProg 64 :=
.seq NamedBody824_296 NamedBody824_297

def NamedBody824_299 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody824_300 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) NamedBody824_298 NamedBody824_299

def NamedBody824_301 : StackLang.HolProg 64 :=
.seq NamedBody824_295 NamedBody824_300

def NamedBody824_302 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def NamedBody824_303 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody824_304 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 824 11

def NamedBody824_305 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody824_306 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody824_307 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody824_308 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody824_309 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def NamedBody824_310 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def NamedBody824_311 : StackLang.HolProg 64 :=
.seq NamedBody824_309 NamedBody824_310

def NamedBody824_312 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def NamedBody824_313 : StackLang.HolProg 64 :=
.seq NamedBody824_311 NamedBody824_312

def NamedBody824_314 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody824_315 : StackLang.HolProg 64 :=
.seq NamedBody824_313 NamedBody824_314

def NamedBody824_316 : StackLang.HolProg 64 :=
.seq NamedBody824_308 NamedBody824_315

def NamedBody824_317 : StackLang.HolProg 64 :=
.seq NamedBody824_307 NamedBody824_316

def NamedBody824_318 : StackLang.HolProg 64 :=
.seq NamedBody824_306 NamedBody824_317

def NamedBody824_319 : StackLang.HolProg 64 :=
.seq NamedBody824_305 NamedBody824_318

def NamedBody824_320 : StackLang.HolProg 64 :=
.seq NamedBody824_304 NamedBody824_319

def NamedBody824_321 : StackLang.HolProg 64 :=
.seq NamedBody824_303 NamedBody824_320

def NamedBody824_322 : StackLang.HolProg 64 :=
.seq NamedBody824_302 NamedBody824_321

def NamedBody824_323 : StackLang.HolProg 64 :=
.seq NamedBody824_301 NamedBody824_322

def NamedBody824_324 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody824_325 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody824_326 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody824_327 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody824_328 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody824_329 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody824_330 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 12 10
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 10)))

def NamedBody824_331 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody824_332 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 11
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody824_333 : StackLang.HolProg 64 :=
.seq NamedBody824_331 NamedBody824_332

def NamedBody824_334 : StackLang.HolProg 64 :=
.seq NamedBody824_330 NamedBody824_333

def NamedBody824_335 : StackLang.HolProg 64 :=
.seq NamedBody824_329 NamedBody824_334

def NamedBody824_336 : StackLang.HolProg 64 :=
.seq NamedBody824_328 NamedBody824_335

def NamedBody824_337 : StackLang.HolProg 64 :=
.seq NamedBody824_327 NamedBody824_336

def NamedBody824_338 : StackLang.HolProg 64 :=
.seq NamedBody824_326 NamedBody824_337

def NamedBody824_339 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody824_340 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 11
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody824_341 : StackLang.HolProg 64 :=
.seq NamedBody824_339 NamedBody824_340

def NamedBody824_342 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def NamedBody824_343 : StackLang.HolProg 64 :=
.seq NamedBody824_341 NamedBody824_342

def NamedBody824_344 : StackLang.HolProg 64 :=
.call (some (NamedBody824_338, 1, 824, 10)) (Sum.inl 68) (some (NamedBody824_343, 824, 11))

def NamedBody824_345 : StackLang.HolProg 64 :=
.seq NamedBody824_325 NamedBody824_344

def NamedBody824_346 : StackLang.HolProg 64 :=
.seq NamedBody824_324 NamedBody824_345

def NamedBody824_347 : StackLang.HolProg 64 :=
.seq NamedBody824_323 NamedBody824_346

def NamedBody824_348 : StackLang.HolProg 64 :=
.seq NamedBody824_294 NamedBody824_347

def NamedBody824_349 : StackLang.HolProg 64 :=
.seq NamedBody824_291 NamedBody824_348

def NamedBody824_350 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody824_351 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody824_352 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 10
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 1 88#64))

def NamedBody824_353 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 12
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody824_354 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody824_355 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 4107#64)

def NamedBody824_356 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody824_357 : StackLang.HolProg 64 :=
.seq NamedBody824_355 NamedBody824_356

def NamedBody824_358 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody824_359 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 2#64)

def NamedBody824_360 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 10

def NamedBody824_361 : StackLang.HolProg 64 :=
.seq NamedBody824_359 NamedBody824_360

def NamedBody824_362 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody824_363 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) NamedBody824_361 NamedBody824_362

def NamedBody824_364 : StackLang.HolProg 64 :=
.seq NamedBody824_358 NamedBody824_363

def NamedBody824_365 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def NamedBody824_366 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody824_367 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 824 13

def NamedBody824_368 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody824_369 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody824_370 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody824_371 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody824_372 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def NamedBody824_373 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def NamedBody824_374 : StackLang.HolProg 64 :=
.seq NamedBody824_372 NamedBody824_373

def NamedBody824_375 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def NamedBody824_376 : StackLang.HolProg 64 :=
.seq NamedBody824_374 NamedBody824_375

def NamedBody824_377 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody824_378 : StackLang.HolProg 64 :=
.seq NamedBody824_376 NamedBody824_377

def NamedBody824_379 : StackLang.HolProg 64 :=
.seq NamedBody824_371 NamedBody824_378

def NamedBody824_380 : StackLang.HolProg 64 :=
.seq NamedBody824_370 NamedBody824_379

def NamedBody824_381 : StackLang.HolProg 64 :=
.seq NamedBody824_369 NamedBody824_380

def NamedBody824_382 : StackLang.HolProg 64 :=
.seq NamedBody824_368 NamedBody824_381

def NamedBody824_383 : StackLang.HolProg 64 :=
.seq NamedBody824_367 NamedBody824_382

def NamedBody824_384 : StackLang.HolProg 64 :=
.seq NamedBody824_366 NamedBody824_383

def NamedBody824_385 : StackLang.HolProg 64 :=
.seq NamedBody824_365 NamedBody824_384

def NamedBody824_386 : StackLang.HolProg 64 :=
.seq NamedBody824_364 NamedBody824_385

def NamedBody824_387 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody824_388 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody824_389 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody824_390 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody824_391 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody824_392 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody824_393 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 1 10
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 10)))

def NamedBody824_394 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 12
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 24#64))

def NamedBody824_395 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 11
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody824_396 : StackLang.HolProg 64 :=
.seq NamedBody824_394 NamedBody824_395

def NamedBody824_397 : StackLang.HolProg 64 :=
.seq NamedBody824_393 NamedBody824_396

def NamedBody824_398 : StackLang.HolProg 64 :=
.seq NamedBody824_392 NamedBody824_397

def NamedBody824_399 : StackLang.HolProg 64 :=
.seq NamedBody824_391 NamedBody824_398

def NamedBody824_400 : StackLang.HolProg 64 :=
.seq NamedBody824_390 NamedBody824_399

def NamedBody824_401 : StackLang.HolProg 64 :=
.seq NamedBody824_389 NamedBody824_400

def NamedBody824_402 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 12
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 24#64))

def NamedBody824_403 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 11
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody824_404 : StackLang.HolProg 64 :=
.seq NamedBody824_402 NamedBody824_403

def NamedBody824_405 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def NamedBody824_406 : StackLang.HolProg 64 :=
.seq NamedBody824_404 NamedBody824_405

def NamedBody824_407 : StackLang.HolProg 64 :=
.call (some (NamedBody824_401, 1, 824, 12)) (Sum.inl 813) (some (NamedBody824_406, 824, 13))

def NamedBody824_408 : StackLang.HolProg 64 :=
.seq NamedBody824_388 NamedBody824_407

def NamedBody824_409 : StackLang.HolProg 64 :=
.seq NamedBody824_387 NamedBody824_408

def NamedBody824_410 : StackLang.HolProg 64 :=
.seq NamedBody824_386 NamedBody824_409

def NamedBody824_411 : StackLang.HolProg 64 :=
.seq NamedBody824_357 NamedBody824_410

def NamedBody824_412 : StackLang.HolProg 64 :=
.seq NamedBody824_354 NamedBody824_411

def NamedBody824_413 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody824_414 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody824_415 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 0#64)

def NamedBody824_416 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody824_417 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 10#64)

def NamedBody824_418 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody824_419 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551480#64))

def NamedBody824_420 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 8#64)

def NamedBody824_421 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody824_422 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def NamedBody824_423 : StackLang.HolProg 64 :=
.seq NamedBody824_421 NamedBody824_422

def NamedBody824_424 : StackLang.HolProg 64 :=
.seq NamedBody824_420 NamedBody824_423

def NamedBody824_425 : StackLang.HolProg 64 :=
.seq NamedBody824_419 NamedBody824_424

def NamedBody824_426 : StackLang.HolProg 64 :=
.seq NamedBody824_418 NamedBody824_425

def NamedBody824_427 : StackLang.HolProg 64 :=
.seq NamedBody824_417 NamedBody824_426

def NamedBody824_428 : StackLang.HolProg 64 :=
.seq NamedBody824_416 NamedBody824_427

def NamedBody824_429 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody824_430 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.notEqual) 1 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 10) NamedBody824_428 NamedBody824_429

def NamedBody824_431 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody824_432 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody824_433 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551592#64))

def NamedBody824_434 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsl 1 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 1#64)))

def NamedBody824_435 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 1 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 26)))

def NamedBody824_436 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 10
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 1 18446744073709551360#64))

def NamedBody824_437 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 10 10
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 120#64)))

def NamedBody824_438 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody824_439 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 11
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 10 0#64))

def NamedBody824_440 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody824_441 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 1 18446744073709551360#64))

def NamedBody824_442 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 1 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 128#64)))

def NamedBody824_443 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 256#64)

def NamedBody824_444 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody824_445 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 10
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 1 0#64))

def NamedBody824_446 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 0#64)

def NamedBody824_447 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody824_448 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 32#64)))

def NamedBody824_449 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 12

def NamedBody824_450 : StackLang.HolProg 64 :=
.seq NamedBody824_448 NamedBody824_449

def NamedBody824_451 : StackLang.HolProg 64 :=
.seq NamedBody824_447 NamedBody824_450

def NamedBody824_452 : StackLang.HolProg 64 :=
.seq NamedBody824_446 NamedBody824_451

def NamedBody824_453 : StackLang.HolProg 64 :=
.seq NamedBody824_445 NamedBody824_452

def NamedBody824_454 : StackLang.HolProg 64 :=
.seq NamedBody824_444 NamedBody824_453

def NamedBody824_455 : StackLang.HolProg 64 :=
.seq NamedBody824_443 NamedBody824_454

def NamedBody824_456 : StackLang.HolProg 64 :=
.seq NamedBody824_442 NamedBody824_455

def NamedBody824_457 : StackLang.HolProg 64 :=
.seq NamedBody824_441 NamedBody824_456

def NamedBody824_458 : StackLang.HolProg 64 :=
.seq NamedBody824_440 NamedBody824_457

def NamedBody824_459 : StackLang.HolProg 64 :=
.seq NamedBody824_439 NamedBody824_458

def NamedBody824_460 : StackLang.HolProg 64 :=
.seq NamedBody824_438 NamedBody824_459

def NamedBody824_461 : StackLang.HolProg 64 :=
.seq NamedBody824_437 NamedBody824_460

def NamedBody824_462 : StackLang.HolProg 64 :=
.seq NamedBody824_436 NamedBody824_461

def NamedBody824_463 : StackLang.HolProg 64 :=
.seq NamedBody824_435 NamedBody824_462

def NamedBody824_464 : StackLang.HolProg 64 :=
.seq NamedBody824_434 NamedBody824_463

def NamedBody824_465 : StackLang.HolProg 64 :=
.seq NamedBody824_433 NamedBody824_464

def NamedBody824_466 : StackLang.HolProg 64 :=
.seq NamedBody824_432 NamedBody824_465

def NamedBody824_467 : StackLang.HolProg 64 :=
.seq NamedBody824_431 NamedBody824_466

def NamedBody824_468 : StackLang.HolProg 64 :=
.seq NamedBody824_430 NamedBody824_467

def NamedBody824_469 : StackLang.HolProg 64 :=
.seq NamedBody824_415 NamedBody824_468

def NamedBody824_470 : StackLang.HolProg 64 :=
.seq NamedBody824_414 NamedBody824_469

def NamedBody824_471 : StackLang.HolProg 64 :=
.seq NamedBody824_413 NamedBody824_470

def NamedBody824_472 : StackLang.HolProg 64 :=
.seq NamedBody824_412 NamedBody824_471

def NamedBody824_473 : StackLang.HolProg 64 :=
.seq NamedBody824_353 NamedBody824_472

def NamedBody824_474 : StackLang.HolProg 64 :=
.seq NamedBody824_352 NamedBody824_473

def NamedBody824_475 : StackLang.HolProg 64 :=
.seq NamedBody824_351 NamedBody824_474

def NamedBody824_476 : StackLang.HolProg 64 :=
.seq NamedBody824_350 NamedBody824_475

def NamedBody824_477 : StackLang.HolProg 64 :=
.seq NamedBody824_349 NamedBody824_476

def NamedBody824_478 : StackLang.HolProg 64 :=
.seq NamedBody824_290 NamedBody824_477

def NamedBody824_479 : StackLang.HolProg 64 :=
.seq NamedBody824_289 NamedBody824_478

def NamedBody824_480 : StackLang.HolProg 64 :=
.seq NamedBody824_288 NamedBody824_479

def NamedBody824_481 : StackLang.HolProg 64 :=
.seq NamedBody824_287 NamedBody824_480

def NamedBody824_482 : StackLang.HolProg 64 :=
.seq NamedBody824_234 NamedBody824_481

def NamedBody824_483 : StackLang.HolProg 64 :=
.seq NamedBody824_233 NamedBody824_482

def NamedBody824_484 : StackLang.HolProg 64 :=
.seq NamedBody824_232 NamedBody824_483

def NamedBody824_485 : StackLang.HolProg 64 :=
.seq NamedBody824_179 NamedBody824_484

def NamedBody824_486 : StackLang.HolProg 64 :=
.seq NamedBody824_178 NamedBody824_485

def NamedBody824_487 : StackLang.HolProg 64 :=
.seq NamedBody824_177 NamedBody824_486

def NamedBody824_488 : StackLang.HolProg 64 :=
.seq NamedBody824_176 NamedBody824_487

def NamedBody824_489 : StackLang.HolProg 64 :=
.seq NamedBody824_175 NamedBody824_488

def NamedBody824_490 : StackLang.HolProg 64 :=
.seq NamedBody824_174 NamedBody824_489

def NamedBody824_491 : StackLang.HolProg 64 :=
.seq NamedBody824_173 NamedBody824_490

def NamedBody824_492 : StackLang.HolProg 64 :=
.seq NamedBody824_172 NamedBody824_491

def NamedBody824_493 : StackLang.HolProg 64 :=
.seq NamedBody824_171 NamedBody824_492

def NamedBody824_494 : StackLang.HolProg 64 :=
.seq NamedBody824_170 NamedBody824_493

def NamedBody824_495 : StackLang.HolProg 64 :=
.seq NamedBody824_169 NamedBody824_494

def NamedBody824_496 : StackLang.HolProg 64 :=
.seq NamedBody824_114 NamedBody824_495

def NamedBody824_497 : StackLang.HolProg 64 :=
.seq NamedBody824_111 NamedBody824_496

def NamedBody824_498 : StackLang.HolProg 64 :=
.seq NamedBody824_110 NamedBody824_497

def NamedBody824_499 : StackLang.HolProg 64 :=
.seq NamedBody824_109 NamedBody824_498

def NamedBody824_500 : StackLang.HolProg 64 :=
.seq NamedBody824_94 NamedBody824_499

def NamedBody824_501 : StackLang.HolProg 64 :=
.seq NamedBody824_93 NamedBody824_500

def NamedBody824_502 : StackLang.HolProg 64 :=
.seq NamedBody824_92 NamedBody824_501

def NamedBody824_503 : StackLang.HolProg 64 :=
.seq NamedBody824_91 NamedBody824_502

def NamedBody824_504 : StackLang.HolProg 64 :=
.seq NamedBody824_38 NamedBody824_503

def NamedBody824_505 : StackLang.HolProg 64 :=
.seq NamedBody824_35 NamedBody824_504

def NamedBody824_506 : StackLang.HolProg 64 :=
.seq NamedBody824_34 NamedBody824_505

def NamedBody824_507 : StackLang.HolProg 64 :=
.seq NamedBody824_33 NamedBody824_506

def NamedBody824_508 : StackLang.HolProg 64 :=
.seq NamedBody824_32 NamedBody824_507

def NamedBody824_509 : StackLang.HolProg 64 :=
.seq NamedBody824_31 NamedBody824_508

def NamedBody824_510 : StackLang.HolProg 64 :=
.seq NamedBody824_16 NamedBody824_509

def NamedBody824_511 : StackLang.HolProg 64 :=
.seq NamedBody824_15 NamedBody824_510

def NamedBody824_512 : StackLang.HolProg 64 :=
.seq NamedBody824_14 NamedBody824_511

def NamedBody824_513 : StackLang.HolProg 64 :=
.seq NamedBody824_13 NamedBody824_512

def NamedBody824_514 : StackLang.HolProg 64 :=
.seq NamedBody824_12 NamedBody824_513

def NamedBody824_515 : StackLang.HolProg 64 :=
.seq NamedBody824_11 NamedBody824_514

def NamedBody824_516 : StackLang.HolProg 64 :=
.seq NamedBody824_10 NamedBody824_515

def NamedBody824_517 : StackLang.HolProg 64 :=
.seq NamedBody824_9 NamedBody824_516

def NamedBody824_518 : StackLang.HolProg 64 :=
.seq NamedBody824_8 NamedBody824_517

def NamedBody824_519 : StackLang.HolProg 64 :=
.seq NamedBody824_7 NamedBody824_518

def NamedBody824_520 : StackLang.HolProg 64 :=
.seq NamedBody824_6 NamedBody824_519

def Named824 : Nat × StackLang.HolProg 64 := (824, NamedBody824_520)
theorem Named824_eq : StackNames.progCompEntryHOL RiscVConfig.riscvNames Removed824 = Named824 := by
  kernel_rfl
#print axioms Named824_eq
end InitECandidate.Proofs.BackendStages
