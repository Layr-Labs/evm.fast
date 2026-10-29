import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.BackendStages.Removed822
import Flapjack.Compiler.Backend.Backend
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
namespace InitECandidate.Proofs.BackendStages
def NamedBody822_0 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 32#64)))

def NamedBody822_1 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 2#64)

def NamedBody822_2 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 10

def NamedBody822_3 : StackLang.HolProg 64 :=
.seq NamedBody822_1 NamedBody822_2

def NamedBody822_4 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody822_5 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) NamedBody822_3 NamedBody822_4

def NamedBody822_6 : StackLang.HolProg 64 :=
.seq NamedBody822_0 NamedBody822_5

def NamedBody822_7 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody822_8 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 10
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551592#64))

def NamedBody822_9 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsl 10 10
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 1#64)))

def NamedBody822_10 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 10 10
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 26)))

def NamedBody822_11 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 10
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 10 18446744073709551360#64))

def NamedBody822_12 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 12
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 10 112#64))

def NamedBody822_13 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody822_14 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 11
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 12 96#64))

def NamedBody822_15 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody822_16 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 0#64)

def NamedBody822_17 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody822_18 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 10#64)

def NamedBody822_19 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody822_20 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 10
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551480#64))

def NamedBody822_21 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 8#64)

def NamedBody822_22 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody822_23 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def NamedBody822_24 : StackLang.HolProg 64 :=
.seq NamedBody822_22 NamedBody822_23

def NamedBody822_25 : StackLang.HolProg 64 :=
.seq NamedBody822_21 NamedBody822_24

def NamedBody822_26 : StackLang.HolProg 64 :=
.seq NamedBody822_20 NamedBody822_25

def NamedBody822_27 : StackLang.HolProg 64 :=
.seq NamedBody822_19 NamedBody822_26

def NamedBody822_28 : StackLang.HolProg 64 :=
.seq NamedBody822_18 NamedBody822_27

def NamedBody822_29 : StackLang.HolProg 64 :=
.seq NamedBody822_17 NamedBody822_28

def NamedBody822_30 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody822_31 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.equal) 11 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 10) NamedBody822_29 NamedBody822_30

def NamedBody822_32 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody822_33 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody822_34 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 10 11
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 11)))

def NamedBody822_35 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 11 160#64)

def NamedBody822_36 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 24#64))

def NamedBody822_37 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 12
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody822_38 : StackLang.HolProg 64 :=
.seq NamedBody822_36 NamedBody822_37

def NamedBody822_39 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody822_40 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 4093#64)

def NamedBody822_41 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody822_42 : StackLang.HolProg 64 :=
.seq NamedBody822_40 NamedBody822_41

def NamedBody822_43 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody822_44 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 2#64)

def NamedBody822_45 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 10

def NamedBody822_46 : StackLang.HolProg 64 :=
.seq NamedBody822_44 NamedBody822_45

def NamedBody822_47 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody822_48 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) NamedBody822_46 NamedBody822_47

def NamedBody822_49 : StackLang.HolProg 64 :=
.seq NamedBody822_43 NamedBody822_48

def NamedBody822_50 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def NamedBody822_51 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody822_52 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 822 3

def NamedBody822_53 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody822_54 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody822_55 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody822_56 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody822_57 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def NamedBody822_58 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def NamedBody822_59 : StackLang.HolProg 64 :=
.seq NamedBody822_57 NamedBody822_58

def NamedBody822_60 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def NamedBody822_61 : StackLang.HolProg 64 :=
.seq NamedBody822_59 NamedBody822_60

def NamedBody822_62 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody822_63 : StackLang.HolProg 64 :=
.seq NamedBody822_61 NamedBody822_62

def NamedBody822_64 : StackLang.HolProg 64 :=
.seq NamedBody822_56 NamedBody822_63

def NamedBody822_65 : StackLang.HolProg 64 :=
.seq NamedBody822_55 NamedBody822_64

def NamedBody822_66 : StackLang.HolProg 64 :=
.seq NamedBody822_54 NamedBody822_65

def NamedBody822_67 : StackLang.HolProg 64 :=
.seq NamedBody822_53 NamedBody822_66

def NamedBody822_68 : StackLang.HolProg 64 :=
.seq NamedBody822_52 NamedBody822_67

def NamedBody822_69 : StackLang.HolProg 64 :=
.seq NamedBody822_51 NamedBody822_68

def NamedBody822_70 : StackLang.HolProg 64 :=
.seq NamedBody822_50 NamedBody822_69

def NamedBody822_71 : StackLang.HolProg 64 :=
.seq NamedBody822_49 NamedBody822_70

def NamedBody822_72 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody822_73 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody822_74 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody822_75 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody822_76 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody822_77 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody822_78 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 12 10
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 10)))

def NamedBody822_79 : StackLang.HolProg 64 :=
.seq NamedBody822_77 NamedBody822_78

def NamedBody822_80 : StackLang.HolProg 64 :=
.seq NamedBody822_76 NamedBody822_79

def NamedBody822_81 : StackLang.HolProg 64 :=
.seq NamedBody822_75 NamedBody822_80

def NamedBody822_82 : StackLang.HolProg 64 :=
.seq NamedBody822_74 NamedBody822_81

def NamedBody822_83 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody822_84 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def NamedBody822_85 : StackLang.HolProg 64 :=
.seq NamedBody822_83 NamedBody822_84

def NamedBody822_86 : StackLang.HolProg 64 :=
.call (some (NamedBody822_82, 1, 822, 2)) (Sum.inl 94) (some (NamedBody822_85, 822, 3))

def NamedBody822_87 : StackLang.HolProg 64 :=
.seq NamedBody822_73 NamedBody822_86

def NamedBody822_88 : StackLang.HolProg 64 :=
.seq NamedBody822_72 NamedBody822_87

def NamedBody822_89 : StackLang.HolProg 64 :=
.seq NamedBody822_71 NamedBody822_88

def NamedBody822_90 : StackLang.HolProg 64 :=
.seq NamedBody822_42 NamedBody822_89

def NamedBody822_91 : StackLang.HolProg 64 :=
.seq NamedBody822_39 NamedBody822_90

def NamedBody822_92 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody822_93 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody822_94 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 0#64)

def NamedBody822_95 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody822_96 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 10#64)

def NamedBody822_97 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody822_98 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551480#64))

def NamedBody822_99 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 8#64)

def NamedBody822_100 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody822_101 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def NamedBody822_102 : StackLang.HolProg 64 :=
.seq NamedBody822_100 NamedBody822_101

def NamedBody822_103 : StackLang.HolProg 64 :=
.seq NamedBody822_99 NamedBody822_102

def NamedBody822_104 : StackLang.HolProg 64 :=
.seq NamedBody822_98 NamedBody822_103

def NamedBody822_105 : StackLang.HolProg 64 :=
.seq NamedBody822_97 NamedBody822_104

def NamedBody822_106 : StackLang.HolProg 64 :=
.seq NamedBody822_96 NamedBody822_105

def NamedBody822_107 : StackLang.HolProg 64 :=
.seq NamedBody822_95 NamedBody822_106

def NamedBody822_108 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody822_109 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.notEqual) 11 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1) NamedBody822_107 NamedBody822_108

def NamedBody822_110 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody822_111 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody822_112 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 10 12
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 12)))

def NamedBody822_113 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 12
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody822_114 : StackLang.HolProg 64 :=
.seq NamedBody822_112 NamedBody822_113

def NamedBody822_115 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody822_116 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 4094#64)

def NamedBody822_117 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody822_118 : StackLang.HolProg 64 :=
.seq NamedBody822_116 NamedBody822_117

def NamedBody822_119 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody822_120 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 2#64)

def NamedBody822_121 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 10

def NamedBody822_122 : StackLang.HolProg 64 :=
.seq NamedBody822_120 NamedBody822_121

def NamedBody822_123 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody822_124 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) NamedBody822_122 NamedBody822_123

def NamedBody822_125 : StackLang.HolProg 64 :=
.seq NamedBody822_119 NamedBody822_124

def NamedBody822_126 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def NamedBody822_127 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody822_128 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 822 5

def NamedBody822_129 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody822_130 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody822_131 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody822_132 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody822_133 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def NamedBody822_134 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def NamedBody822_135 : StackLang.HolProg 64 :=
.seq NamedBody822_133 NamedBody822_134

def NamedBody822_136 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def NamedBody822_137 : StackLang.HolProg 64 :=
.seq NamedBody822_135 NamedBody822_136

def NamedBody822_138 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody822_139 : StackLang.HolProg 64 :=
.seq NamedBody822_137 NamedBody822_138

def NamedBody822_140 : StackLang.HolProg 64 :=
.seq NamedBody822_132 NamedBody822_139

def NamedBody822_141 : StackLang.HolProg 64 :=
.seq NamedBody822_131 NamedBody822_140

def NamedBody822_142 : StackLang.HolProg 64 :=
.seq NamedBody822_130 NamedBody822_141

def NamedBody822_143 : StackLang.HolProg 64 :=
.seq NamedBody822_129 NamedBody822_142

def NamedBody822_144 : StackLang.HolProg 64 :=
.seq NamedBody822_128 NamedBody822_143

def NamedBody822_145 : StackLang.HolProg 64 :=
.seq NamedBody822_127 NamedBody822_144

def NamedBody822_146 : StackLang.HolProg 64 :=
.seq NamedBody822_126 NamedBody822_145

def NamedBody822_147 : StackLang.HolProg 64 :=
.seq NamedBody822_125 NamedBody822_146

def NamedBody822_148 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody822_149 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody822_150 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody822_151 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody822_152 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody822_153 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody822_154 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 5 10
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 10)))

def NamedBody822_155 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 13
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody822_156 : StackLang.HolProg 64 :=
.seq NamedBody822_154 NamedBody822_155

def NamedBody822_157 : StackLang.HolProg 64 :=
.seq NamedBody822_153 NamedBody822_156

def NamedBody822_158 : StackLang.HolProg 64 :=
.seq NamedBody822_152 NamedBody822_157

def NamedBody822_159 : StackLang.HolProg 64 :=
.seq NamedBody822_151 NamedBody822_158

def NamedBody822_160 : StackLang.HolProg 64 :=
.seq NamedBody822_150 NamedBody822_159

def NamedBody822_161 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 13
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody822_162 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def NamedBody822_163 : StackLang.HolProg 64 :=
.seq NamedBody822_161 NamedBody822_162

def NamedBody822_164 : StackLang.HolProg 64 :=
.call (some (NamedBody822_160, 1, 822, 4)) (Sum.inl 819) (some (NamedBody822_163, 822, 5))

def NamedBody822_165 : StackLang.HolProg 64 :=
.seq NamedBody822_149 NamedBody822_164

def NamedBody822_166 : StackLang.HolProg 64 :=
.seq NamedBody822_148 NamedBody822_165

def NamedBody822_167 : StackLang.HolProg 64 :=
.seq NamedBody822_147 NamedBody822_166

def NamedBody822_168 : StackLang.HolProg 64 :=
.seq NamedBody822_118 NamedBody822_167

def NamedBody822_169 : StackLang.HolProg 64 :=
.seq NamedBody822_115 NamedBody822_168

def NamedBody822_170 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody822_171 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody822_172 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 11 12000#64)

def NamedBody822_173 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 1 13
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 13)))

def NamedBody822_174 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith (Flapjack.Compiler.Encoders.Asm.HolArith.longMul 12 1 1 11))

def NamedBody822_175 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 11 5
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 5)))

def NamedBody822_176 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith (Flapjack.Compiler.Encoders.Asm.HolArith.longMul 12 1 1 11))

def NamedBody822_177 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 10 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def NamedBody822_178 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 11 1000#64)

def NamedBody822_179 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 13
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody822_180 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody822_181 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 4095#64)

def NamedBody822_182 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody822_183 : StackLang.HolProg 64 :=
.seq NamedBody822_181 NamedBody822_182

def NamedBody822_184 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody822_185 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 2#64)

def NamedBody822_186 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 10

def NamedBody822_187 : StackLang.HolProg 64 :=
.seq NamedBody822_185 NamedBody822_186

def NamedBody822_188 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody822_189 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) NamedBody822_187 NamedBody822_188

def NamedBody822_190 : StackLang.HolProg 64 :=
.seq NamedBody822_184 NamedBody822_189

def NamedBody822_191 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def NamedBody822_192 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody822_193 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 822 7

def NamedBody822_194 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody822_195 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody822_196 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody822_197 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody822_198 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def NamedBody822_199 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def NamedBody822_200 : StackLang.HolProg 64 :=
.seq NamedBody822_198 NamedBody822_199

def NamedBody822_201 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def NamedBody822_202 : StackLang.HolProg 64 :=
.seq NamedBody822_200 NamedBody822_201

def NamedBody822_203 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody822_204 : StackLang.HolProg 64 :=
.seq NamedBody822_202 NamedBody822_203

def NamedBody822_205 : StackLang.HolProg 64 :=
.seq NamedBody822_197 NamedBody822_204

def NamedBody822_206 : StackLang.HolProg 64 :=
.seq NamedBody822_196 NamedBody822_205

def NamedBody822_207 : StackLang.HolProg 64 :=
.seq NamedBody822_195 NamedBody822_206

def NamedBody822_208 : StackLang.HolProg 64 :=
.seq NamedBody822_194 NamedBody822_207

def NamedBody822_209 : StackLang.HolProg 64 :=
.seq NamedBody822_193 NamedBody822_208

def NamedBody822_210 : StackLang.HolProg 64 :=
.seq NamedBody822_192 NamedBody822_209

def NamedBody822_211 : StackLang.HolProg 64 :=
.seq NamedBody822_191 NamedBody822_210

def NamedBody822_212 : StackLang.HolProg 64 :=
.seq NamedBody822_190 NamedBody822_211

def NamedBody822_213 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody822_214 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody822_215 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody822_216 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody822_217 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody822_218 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody822_219 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 1 10
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 10)))

def NamedBody822_220 : StackLang.HolProg 64 :=
.seq NamedBody822_218 NamedBody822_219

def NamedBody822_221 : StackLang.HolProg 64 :=
.seq NamedBody822_217 NamedBody822_220

def NamedBody822_222 : StackLang.HolProg 64 :=
.seq NamedBody822_216 NamedBody822_221

def NamedBody822_223 : StackLang.HolProg 64 :=
.seq NamedBody822_215 NamedBody822_222

def NamedBody822_224 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody822_225 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def NamedBody822_226 : StackLang.HolProg 64 :=
.seq NamedBody822_224 NamedBody822_225

def NamedBody822_227 : StackLang.HolProg 64 :=
.call (some (NamedBody822_223, 1, 822, 6)) (Sum.inl 94) (some (NamedBody822_226, 822, 7))

def NamedBody822_228 : StackLang.HolProg 64 :=
.seq NamedBody822_214 NamedBody822_227

def NamedBody822_229 : StackLang.HolProg 64 :=
.seq NamedBody822_213 NamedBody822_228

def NamedBody822_230 : StackLang.HolProg 64 :=
.seq NamedBody822_212 NamedBody822_229

def NamedBody822_231 : StackLang.HolProg 64 :=
.seq NamedBody822_183 NamedBody822_230

def NamedBody822_232 : StackLang.HolProg 64 :=
.seq NamedBody822_180 NamedBody822_231

def NamedBody822_233 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody822_234 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 10 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def NamedBody822_235 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody822_236 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 4096#64)

def NamedBody822_237 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody822_238 : StackLang.HolProg 64 :=
.seq NamedBody822_236 NamedBody822_237

def NamedBody822_239 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody822_240 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 2#64)

def NamedBody822_241 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 10

def NamedBody822_242 : StackLang.HolProg 64 :=
.seq NamedBody822_240 NamedBody822_241

def NamedBody822_243 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody822_244 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) NamedBody822_242 NamedBody822_243

def NamedBody822_245 : StackLang.HolProg 64 :=
.seq NamedBody822_239 NamedBody822_244

def NamedBody822_246 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def NamedBody822_247 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody822_248 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 822 9

def NamedBody822_249 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody822_250 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody822_251 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody822_252 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody822_253 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def NamedBody822_254 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def NamedBody822_255 : StackLang.HolProg 64 :=
.seq NamedBody822_253 NamedBody822_254

def NamedBody822_256 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def NamedBody822_257 : StackLang.HolProg 64 :=
.seq NamedBody822_255 NamedBody822_256

def NamedBody822_258 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody822_259 : StackLang.HolProg 64 :=
.seq NamedBody822_257 NamedBody822_258

def NamedBody822_260 : StackLang.HolProg 64 :=
.seq NamedBody822_252 NamedBody822_259

def NamedBody822_261 : StackLang.HolProg 64 :=
.seq NamedBody822_251 NamedBody822_260

def NamedBody822_262 : StackLang.HolProg 64 :=
.seq NamedBody822_250 NamedBody822_261

def NamedBody822_263 : StackLang.HolProg 64 :=
.seq NamedBody822_249 NamedBody822_262

def NamedBody822_264 : StackLang.HolProg 64 :=
.seq NamedBody822_248 NamedBody822_263

def NamedBody822_265 : StackLang.HolProg 64 :=
.seq NamedBody822_247 NamedBody822_264

def NamedBody822_266 : StackLang.HolProg 64 :=
.seq NamedBody822_246 NamedBody822_265

def NamedBody822_267 : StackLang.HolProg 64 :=
.seq NamedBody822_245 NamedBody822_266

def NamedBody822_268 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody822_269 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody822_270 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody822_271 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody822_272 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody822_273 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody822_274 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody822_275 : StackLang.HolProg 64 :=
.seq NamedBody822_273 NamedBody822_274

def NamedBody822_276 : StackLang.HolProg 64 :=
.seq NamedBody822_272 NamedBody822_275

def NamedBody822_277 : StackLang.HolProg 64 :=
.seq NamedBody822_271 NamedBody822_276

def NamedBody822_278 : StackLang.HolProg 64 :=
.seq NamedBody822_270 NamedBody822_277

def NamedBody822_279 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody822_280 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def NamedBody822_281 : StackLang.HolProg 64 :=
.seq NamedBody822_279 NamedBody822_280

def NamedBody822_282 : StackLang.HolProg 64 :=
.call (some (NamedBody822_278, 1, 822, 8)) (Sum.inl 470) (some (NamedBody822_281, 822, 9))

def NamedBody822_283 : StackLang.HolProg 64 :=
.seq NamedBody822_269 NamedBody822_282

def NamedBody822_284 : StackLang.HolProg 64 :=
.seq NamedBody822_268 NamedBody822_283

def NamedBody822_285 : StackLang.HolProg 64 :=
.seq NamedBody822_267 NamedBody822_284

def NamedBody822_286 : StackLang.HolProg 64 :=
.seq NamedBody822_238 NamedBody822_285

def NamedBody822_287 : StackLang.HolProg 64 :=
.seq NamedBody822_235 NamedBody822_286

def NamedBody822_288 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody822_289 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 128#64)

def NamedBody822_290 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody822_291 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody822_292 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 4097#64)

def NamedBody822_293 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody822_294 : StackLang.HolProg 64 :=
.seq NamedBody822_292 NamedBody822_293

def NamedBody822_295 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody822_296 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 2#64)

def NamedBody822_297 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 10

def NamedBody822_298 : StackLang.HolProg 64 :=
.seq NamedBody822_296 NamedBody822_297

def NamedBody822_299 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody822_300 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) NamedBody822_298 NamedBody822_299

def NamedBody822_301 : StackLang.HolProg 64 :=
.seq NamedBody822_295 NamedBody822_300

def NamedBody822_302 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def NamedBody822_303 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody822_304 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 822 11

def NamedBody822_305 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody822_306 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody822_307 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody822_308 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody822_309 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def NamedBody822_310 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def NamedBody822_311 : StackLang.HolProg 64 :=
.seq NamedBody822_309 NamedBody822_310

def NamedBody822_312 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def NamedBody822_313 : StackLang.HolProg 64 :=
.seq NamedBody822_311 NamedBody822_312

def NamedBody822_314 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody822_315 : StackLang.HolProg 64 :=
.seq NamedBody822_313 NamedBody822_314

def NamedBody822_316 : StackLang.HolProg 64 :=
.seq NamedBody822_308 NamedBody822_315

def NamedBody822_317 : StackLang.HolProg 64 :=
.seq NamedBody822_307 NamedBody822_316

def NamedBody822_318 : StackLang.HolProg 64 :=
.seq NamedBody822_306 NamedBody822_317

def NamedBody822_319 : StackLang.HolProg 64 :=
.seq NamedBody822_305 NamedBody822_318

def NamedBody822_320 : StackLang.HolProg 64 :=
.seq NamedBody822_304 NamedBody822_319

def NamedBody822_321 : StackLang.HolProg 64 :=
.seq NamedBody822_303 NamedBody822_320

def NamedBody822_322 : StackLang.HolProg 64 :=
.seq NamedBody822_302 NamedBody822_321

def NamedBody822_323 : StackLang.HolProg 64 :=
.seq NamedBody822_301 NamedBody822_322

def NamedBody822_324 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody822_325 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody822_326 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody822_327 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody822_328 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody822_329 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody822_330 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 12 10
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 10)))

def NamedBody822_331 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody822_332 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 11
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody822_333 : StackLang.HolProg 64 :=
.seq NamedBody822_331 NamedBody822_332

def NamedBody822_334 : StackLang.HolProg 64 :=
.seq NamedBody822_330 NamedBody822_333

def NamedBody822_335 : StackLang.HolProg 64 :=
.seq NamedBody822_329 NamedBody822_334

def NamedBody822_336 : StackLang.HolProg 64 :=
.seq NamedBody822_328 NamedBody822_335

def NamedBody822_337 : StackLang.HolProg 64 :=
.seq NamedBody822_327 NamedBody822_336

def NamedBody822_338 : StackLang.HolProg 64 :=
.seq NamedBody822_326 NamedBody822_337

def NamedBody822_339 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody822_340 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 11
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody822_341 : StackLang.HolProg 64 :=
.seq NamedBody822_339 NamedBody822_340

def NamedBody822_342 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def NamedBody822_343 : StackLang.HolProg 64 :=
.seq NamedBody822_341 NamedBody822_342

def NamedBody822_344 : StackLang.HolProg 64 :=
.call (some (NamedBody822_338, 1, 822, 10)) (Sum.inl 68) (some (NamedBody822_343, 822, 11))

def NamedBody822_345 : StackLang.HolProg 64 :=
.seq NamedBody822_325 NamedBody822_344

def NamedBody822_346 : StackLang.HolProg 64 :=
.seq NamedBody822_324 NamedBody822_345

def NamedBody822_347 : StackLang.HolProg 64 :=
.seq NamedBody822_323 NamedBody822_346

def NamedBody822_348 : StackLang.HolProg 64 :=
.seq NamedBody822_294 NamedBody822_347

def NamedBody822_349 : StackLang.HolProg 64 :=
.seq NamedBody822_291 NamedBody822_348

def NamedBody822_350 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody822_351 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody822_352 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 10
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 1 88#64))

def NamedBody822_353 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 12
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody822_354 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody822_355 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 4098#64)

def NamedBody822_356 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody822_357 : StackLang.HolProg 64 :=
.seq NamedBody822_355 NamedBody822_356

def NamedBody822_358 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody822_359 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 2#64)

def NamedBody822_360 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 10

def NamedBody822_361 : StackLang.HolProg 64 :=
.seq NamedBody822_359 NamedBody822_360

def NamedBody822_362 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody822_363 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) NamedBody822_361 NamedBody822_362

def NamedBody822_364 : StackLang.HolProg 64 :=
.seq NamedBody822_358 NamedBody822_363

def NamedBody822_365 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def NamedBody822_366 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody822_367 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 822 13

def NamedBody822_368 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody822_369 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody822_370 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody822_371 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody822_372 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def NamedBody822_373 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def NamedBody822_374 : StackLang.HolProg 64 :=
.seq NamedBody822_372 NamedBody822_373

def NamedBody822_375 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def NamedBody822_376 : StackLang.HolProg 64 :=
.seq NamedBody822_374 NamedBody822_375

def NamedBody822_377 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody822_378 : StackLang.HolProg 64 :=
.seq NamedBody822_376 NamedBody822_377

def NamedBody822_379 : StackLang.HolProg 64 :=
.seq NamedBody822_371 NamedBody822_378

def NamedBody822_380 : StackLang.HolProg 64 :=
.seq NamedBody822_370 NamedBody822_379

def NamedBody822_381 : StackLang.HolProg 64 :=
.seq NamedBody822_369 NamedBody822_380

def NamedBody822_382 : StackLang.HolProg 64 :=
.seq NamedBody822_368 NamedBody822_381

def NamedBody822_383 : StackLang.HolProg 64 :=
.seq NamedBody822_367 NamedBody822_382

def NamedBody822_384 : StackLang.HolProg 64 :=
.seq NamedBody822_366 NamedBody822_383

def NamedBody822_385 : StackLang.HolProg 64 :=
.seq NamedBody822_365 NamedBody822_384

def NamedBody822_386 : StackLang.HolProg 64 :=
.seq NamedBody822_364 NamedBody822_385

def NamedBody822_387 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody822_388 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody822_389 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody822_390 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody822_391 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody822_392 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody822_393 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 1 10
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 10)))

def NamedBody822_394 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 12
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 24#64))

def NamedBody822_395 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 11
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody822_396 : StackLang.HolProg 64 :=
.seq NamedBody822_394 NamedBody822_395

def NamedBody822_397 : StackLang.HolProg 64 :=
.seq NamedBody822_393 NamedBody822_396

def NamedBody822_398 : StackLang.HolProg 64 :=
.seq NamedBody822_392 NamedBody822_397

def NamedBody822_399 : StackLang.HolProg 64 :=
.seq NamedBody822_391 NamedBody822_398

def NamedBody822_400 : StackLang.HolProg 64 :=
.seq NamedBody822_390 NamedBody822_399

def NamedBody822_401 : StackLang.HolProg 64 :=
.seq NamedBody822_389 NamedBody822_400

def NamedBody822_402 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 12
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 24#64))

def NamedBody822_403 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 11
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody822_404 : StackLang.HolProg 64 :=
.seq NamedBody822_402 NamedBody822_403

def NamedBody822_405 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def NamedBody822_406 : StackLang.HolProg 64 :=
.seq NamedBody822_404 NamedBody822_405

def NamedBody822_407 : StackLang.HolProg 64 :=
.call (some (NamedBody822_401, 1, 822, 12)) (Sum.inl 811) (some (NamedBody822_406, 822, 13))

def NamedBody822_408 : StackLang.HolProg 64 :=
.seq NamedBody822_388 NamedBody822_407

def NamedBody822_409 : StackLang.HolProg 64 :=
.seq NamedBody822_387 NamedBody822_408

def NamedBody822_410 : StackLang.HolProg 64 :=
.seq NamedBody822_386 NamedBody822_409

def NamedBody822_411 : StackLang.HolProg 64 :=
.seq NamedBody822_357 NamedBody822_410

def NamedBody822_412 : StackLang.HolProg 64 :=
.seq NamedBody822_354 NamedBody822_411

def NamedBody822_413 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody822_414 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody822_415 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 0#64)

def NamedBody822_416 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody822_417 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 10#64)

def NamedBody822_418 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody822_419 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551480#64))

def NamedBody822_420 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 8#64)

def NamedBody822_421 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody822_422 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def NamedBody822_423 : StackLang.HolProg 64 :=
.seq NamedBody822_421 NamedBody822_422

def NamedBody822_424 : StackLang.HolProg 64 :=
.seq NamedBody822_420 NamedBody822_423

def NamedBody822_425 : StackLang.HolProg 64 :=
.seq NamedBody822_419 NamedBody822_424

def NamedBody822_426 : StackLang.HolProg 64 :=
.seq NamedBody822_418 NamedBody822_425

def NamedBody822_427 : StackLang.HolProg 64 :=
.seq NamedBody822_417 NamedBody822_426

def NamedBody822_428 : StackLang.HolProg 64 :=
.seq NamedBody822_416 NamedBody822_427

def NamedBody822_429 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody822_430 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.notEqual) 1 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 10) NamedBody822_428 NamedBody822_429

def NamedBody822_431 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody822_432 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody822_433 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551592#64))

def NamedBody822_434 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsl 1 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 1#64)))

def NamedBody822_435 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 1 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 26)))

def NamedBody822_436 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 10
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 1 18446744073709551360#64))

def NamedBody822_437 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 10 10
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 120#64)))

def NamedBody822_438 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody822_439 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 11
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 10 0#64))

def NamedBody822_440 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody822_441 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 1 18446744073709551360#64))

def NamedBody822_442 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 1 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 128#64)))

def NamedBody822_443 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 128#64)

def NamedBody822_444 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody822_445 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 10
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 1 0#64))

def NamedBody822_446 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 0#64)

def NamedBody822_447 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody822_448 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 32#64)))

def NamedBody822_449 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 12

def NamedBody822_450 : StackLang.HolProg 64 :=
.seq NamedBody822_448 NamedBody822_449

def NamedBody822_451 : StackLang.HolProg 64 :=
.seq NamedBody822_447 NamedBody822_450

def NamedBody822_452 : StackLang.HolProg 64 :=
.seq NamedBody822_446 NamedBody822_451

def NamedBody822_453 : StackLang.HolProg 64 :=
.seq NamedBody822_445 NamedBody822_452

def NamedBody822_454 : StackLang.HolProg 64 :=
.seq NamedBody822_444 NamedBody822_453

def NamedBody822_455 : StackLang.HolProg 64 :=
.seq NamedBody822_443 NamedBody822_454

def NamedBody822_456 : StackLang.HolProg 64 :=
.seq NamedBody822_442 NamedBody822_455

def NamedBody822_457 : StackLang.HolProg 64 :=
.seq NamedBody822_441 NamedBody822_456

def NamedBody822_458 : StackLang.HolProg 64 :=
.seq NamedBody822_440 NamedBody822_457

def NamedBody822_459 : StackLang.HolProg 64 :=
.seq NamedBody822_439 NamedBody822_458

def NamedBody822_460 : StackLang.HolProg 64 :=
.seq NamedBody822_438 NamedBody822_459

def NamedBody822_461 : StackLang.HolProg 64 :=
.seq NamedBody822_437 NamedBody822_460

def NamedBody822_462 : StackLang.HolProg 64 :=
.seq NamedBody822_436 NamedBody822_461

def NamedBody822_463 : StackLang.HolProg 64 :=
.seq NamedBody822_435 NamedBody822_462

def NamedBody822_464 : StackLang.HolProg 64 :=
.seq NamedBody822_434 NamedBody822_463

def NamedBody822_465 : StackLang.HolProg 64 :=
.seq NamedBody822_433 NamedBody822_464

def NamedBody822_466 : StackLang.HolProg 64 :=
.seq NamedBody822_432 NamedBody822_465

def NamedBody822_467 : StackLang.HolProg 64 :=
.seq NamedBody822_431 NamedBody822_466

def NamedBody822_468 : StackLang.HolProg 64 :=
.seq NamedBody822_430 NamedBody822_467

def NamedBody822_469 : StackLang.HolProg 64 :=
.seq NamedBody822_415 NamedBody822_468

def NamedBody822_470 : StackLang.HolProg 64 :=
.seq NamedBody822_414 NamedBody822_469

def NamedBody822_471 : StackLang.HolProg 64 :=
.seq NamedBody822_413 NamedBody822_470

def NamedBody822_472 : StackLang.HolProg 64 :=
.seq NamedBody822_412 NamedBody822_471

def NamedBody822_473 : StackLang.HolProg 64 :=
.seq NamedBody822_353 NamedBody822_472

def NamedBody822_474 : StackLang.HolProg 64 :=
.seq NamedBody822_352 NamedBody822_473

def NamedBody822_475 : StackLang.HolProg 64 :=
.seq NamedBody822_351 NamedBody822_474

def NamedBody822_476 : StackLang.HolProg 64 :=
.seq NamedBody822_350 NamedBody822_475

def NamedBody822_477 : StackLang.HolProg 64 :=
.seq NamedBody822_349 NamedBody822_476

def NamedBody822_478 : StackLang.HolProg 64 :=
.seq NamedBody822_290 NamedBody822_477

def NamedBody822_479 : StackLang.HolProg 64 :=
.seq NamedBody822_289 NamedBody822_478

def NamedBody822_480 : StackLang.HolProg 64 :=
.seq NamedBody822_288 NamedBody822_479

def NamedBody822_481 : StackLang.HolProg 64 :=
.seq NamedBody822_287 NamedBody822_480

def NamedBody822_482 : StackLang.HolProg 64 :=
.seq NamedBody822_234 NamedBody822_481

def NamedBody822_483 : StackLang.HolProg 64 :=
.seq NamedBody822_233 NamedBody822_482

def NamedBody822_484 : StackLang.HolProg 64 :=
.seq NamedBody822_232 NamedBody822_483

def NamedBody822_485 : StackLang.HolProg 64 :=
.seq NamedBody822_179 NamedBody822_484

def NamedBody822_486 : StackLang.HolProg 64 :=
.seq NamedBody822_178 NamedBody822_485

def NamedBody822_487 : StackLang.HolProg 64 :=
.seq NamedBody822_177 NamedBody822_486

def NamedBody822_488 : StackLang.HolProg 64 :=
.seq NamedBody822_176 NamedBody822_487

def NamedBody822_489 : StackLang.HolProg 64 :=
.seq NamedBody822_175 NamedBody822_488

def NamedBody822_490 : StackLang.HolProg 64 :=
.seq NamedBody822_174 NamedBody822_489

def NamedBody822_491 : StackLang.HolProg 64 :=
.seq NamedBody822_173 NamedBody822_490

def NamedBody822_492 : StackLang.HolProg 64 :=
.seq NamedBody822_172 NamedBody822_491

def NamedBody822_493 : StackLang.HolProg 64 :=
.seq NamedBody822_171 NamedBody822_492

def NamedBody822_494 : StackLang.HolProg 64 :=
.seq NamedBody822_170 NamedBody822_493

def NamedBody822_495 : StackLang.HolProg 64 :=
.seq NamedBody822_169 NamedBody822_494

def NamedBody822_496 : StackLang.HolProg 64 :=
.seq NamedBody822_114 NamedBody822_495

def NamedBody822_497 : StackLang.HolProg 64 :=
.seq NamedBody822_111 NamedBody822_496

def NamedBody822_498 : StackLang.HolProg 64 :=
.seq NamedBody822_110 NamedBody822_497

def NamedBody822_499 : StackLang.HolProg 64 :=
.seq NamedBody822_109 NamedBody822_498

def NamedBody822_500 : StackLang.HolProg 64 :=
.seq NamedBody822_94 NamedBody822_499

def NamedBody822_501 : StackLang.HolProg 64 :=
.seq NamedBody822_93 NamedBody822_500

def NamedBody822_502 : StackLang.HolProg 64 :=
.seq NamedBody822_92 NamedBody822_501

def NamedBody822_503 : StackLang.HolProg 64 :=
.seq NamedBody822_91 NamedBody822_502

def NamedBody822_504 : StackLang.HolProg 64 :=
.seq NamedBody822_38 NamedBody822_503

def NamedBody822_505 : StackLang.HolProg 64 :=
.seq NamedBody822_35 NamedBody822_504

def NamedBody822_506 : StackLang.HolProg 64 :=
.seq NamedBody822_34 NamedBody822_505

def NamedBody822_507 : StackLang.HolProg 64 :=
.seq NamedBody822_33 NamedBody822_506

def NamedBody822_508 : StackLang.HolProg 64 :=
.seq NamedBody822_32 NamedBody822_507

def NamedBody822_509 : StackLang.HolProg 64 :=
.seq NamedBody822_31 NamedBody822_508

def NamedBody822_510 : StackLang.HolProg 64 :=
.seq NamedBody822_16 NamedBody822_509

def NamedBody822_511 : StackLang.HolProg 64 :=
.seq NamedBody822_15 NamedBody822_510

def NamedBody822_512 : StackLang.HolProg 64 :=
.seq NamedBody822_14 NamedBody822_511

def NamedBody822_513 : StackLang.HolProg 64 :=
.seq NamedBody822_13 NamedBody822_512

def NamedBody822_514 : StackLang.HolProg 64 :=
.seq NamedBody822_12 NamedBody822_513

def NamedBody822_515 : StackLang.HolProg 64 :=
.seq NamedBody822_11 NamedBody822_514

def NamedBody822_516 : StackLang.HolProg 64 :=
.seq NamedBody822_10 NamedBody822_515

def NamedBody822_517 : StackLang.HolProg 64 :=
.seq NamedBody822_9 NamedBody822_516

def NamedBody822_518 : StackLang.HolProg 64 :=
.seq NamedBody822_8 NamedBody822_517

def NamedBody822_519 : StackLang.HolProg 64 :=
.seq NamedBody822_7 NamedBody822_518

def NamedBody822_520 : StackLang.HolProg 64 :=
.seq NamedBody822_6 NamedBody822_519

def Named822 : Nat × StackLang.HolProg 64 := (822, NamedBody822_520)
theorem Named822_eq : StackNames.progCompEntryHOL RiscVConfig.riscvNames Removed822 = Named822 := by
  kernel_rfl
#print axioms Named822_eq
end InitECandidate.Proofs.BackendStages
