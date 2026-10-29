import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.BackendStages.Removed146
import Flapjack.Compiler.Backend.Backend
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
namespace InitECandidate.Proofs.BackendStages
def NamedBody146_0 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 40#64)))

def NamedBody146_1 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 2#64)

def NamedBody146_2 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 10

def NamedBody146_3 : StackLang.HolProg 64 :=
.seq NamedBody146_1 NamedBody146_2

def NamedBody146_4 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody146_5 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) NamedBody146_3 NamedBody146_4

def NamedBody146_6 : StackLang.HolProg 64 :=
.seq NamedBody146_0 NamedBody146_5

def NamedBody146_7 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 6 11
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 11)))

def NamedBody146_8 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 11 32#64)

def NamedBody146_9 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody146_10 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 11 1#64)

def NamedBody146_11 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody146_12 : StackLang.HolProg 64 :=
.seq NamedBody146_10 NamedBody146_11

def NamedBody146_13 : StackLang.HolProg 64 :=
.seq NamedBody146_9 NamedBody146_12

def NamedBody146_14 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody146_15 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 11 0#64)

def NamedBody146_16 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody146_17 : StackLang.HolProg 64 :=
.seq NamedBody146_15 NamedBody146_16

def NamedBody146_18 : StackLang.HolProg 64 :=
.seq NamedBody146_14 NamedBody146_17

def NamedBody146_19 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.equal) 6 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 11) NamedBody146_13 NamedBody146_18

def NamedBody146_20 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody146_21 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 7 10
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 10)))

def NamedBody146_22 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.and 10 7
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 7#64)))

def NamedBody146_23 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 12 0#64)

def NamedBody146_24 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody146_25 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 1#64)

def NamedBody146_26 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody146_27 : StackLang.HolProg 64 :=
.seq NamedBody146_25 NamedBody146_26

def NamedBody146_28 : StackLang.HolProg 64 :=
.seq NamedBody146_24 NamedBody146_27

def NamedBody146_29 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody146_30 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 0#64)

def NamedBody146_31 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody146_32 : StackLang.HolProg 64 :=
.seq NamedBody146_30 NamedBody146_31

def NamedBody146_33 : StackLang.HolProg 64 :=
.seq NamedBody146_29 NamedBody146_32

def NamedBody146_34 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.equal) 10 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 12) NamedBody146_28 NamedBody146_33

def NamedBody146_35 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody146_36 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody146_37 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.and 10 10
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 11)))

def NamedBody146_38 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody146_39 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 10
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 7 0#64))

def NamedBody146_40 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 32#64))

def NamedBody146_41 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 7
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 24#64))

def NamedBody146_42 : StackLang.HolProg 64 :=
.seq NamedBody146_40 NamedBody146_41

def NamedBody146_43 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody146_44 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 112#64)

def NamedBody146_45 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody146_46 : StackLang.HolProg 64 :=
.seq NamedBody146_44 NamedBody146_45

def NamedBody146_47 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody146_48 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 2#64)

def NamedBody146_49 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 10

def NamedBody146_50 : StackLang.HolProg 64 :=
.seq NamedBody146_48 NamedBody146_49

def NamedBody146_51 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody146_52 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) NamedBody146_50 NamedBody146_51

def NamedBody146_53 : StackLang.HolProg 64 :=
.seq NamedBody146_47 NamedBody146_52

def NamedBody146_54 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def NamedBody146_55 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody146_56 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 146 3

def NamedBody146_57 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody146_58 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody146_59 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody146_60 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody146_61 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def NamedBody146_62 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def NamedBody146_63 : StackLang.HolProg 64 :=
.seq NamedBody146_61 NamedBody146_62

def NamedBody146_64 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def NamedBody146_65 : StackLang.HolProg 64 :=
.seq NamedBody146_63 NamedBody146_64

def NamedBody146_66 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody146_67 : StackLang.HolProg 64 :=
.seq NamedBody146_65 NamedBody146_66

def NamedBody146_68 : StackLang.HolProg 64 :=
.seq NamedBody146_60 NamedBody146_67

def NamedBody146_69 : StackLang.HolProg 64 :=
.seq NamedBody146_59 NamedBody146_68

def NamedBody146_70 : StackLang.HolProg 64 :=
.seq NamedBody146_58 NamedBody146_69

def NamedBody146_71 : StackLang.HolProg 64 :=
.seq NamedBody146_57 NamedBody146_70

def NamedBody146_72 : StackLang.HolProg 64 :=
.seq NamedBody146_56 NamedBody146_71

def NamedBody146_73 : StackLang.HolProg 64 :=
.seq NamedBody146_55 NamedBody146_72

def NamedBody146_74 : StackLang.HolProg 64 :=
.seq NamedBody146_54 NamedBody146_73

def NamedBody146_75 : StackLang.HolProg 64 :=
.seq NamedBody146_53 NamedBody146_74

def NamedBody146_76 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody146_77 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody146_78 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody146_79 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody146_80 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody146_81 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody146_82 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 11 10
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 10)))

def NamedBody146_83 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 24#64))

def NamedBody146_84 : StackLang.HolProg 64 :=
.seq NamedBody146_82 NamedBody146_83

def NamedBody146_85 : StackLang.HolProg 64 :=
.seq NamedBody146_81 NamedBody146_84

def NamedBody146_86 : StackLang.HolProg 64 :=
.seq NamedBody146_80 NamedBody146_85

def NamedBody146_87 : StackLang.HolProg 64 :=
.seq NamedBody146_79 NamedBody146_86

def NamedBody146_88 : StackLang.HolProg 64 :=
.seq NamedBody146_78 NamedBody146_87

def NamedBody146_89 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 24#64))

def NamedBody146_90 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def NamedBody146_91 : StackLang.HolProg 64 :=
.seq NamedBody146_89 NamedBody146_90

def NamedBody146_92 : StackLang.HolProg 64 :=
.call (some (NamedBody146_88, 1, 146, 2)) (Sum.inl 84) (some (NamedBody146_91, 146, 3))

def NamedBody146_93 : StackLang.HolProg 64 :=
.seq NamedBody146_77 NamedBody146_92

def NamedBody146_94 : StackLang.HolProg 64 :=
.seq NamedBody146_76 NamedBody146_93

def NamedBody146_95 : StackLang.HolProg 64 :=
.seq NamedBody146_75 NamedBody146_94

def NamedBody146_96 : StackLang.HolProg 64 :=
.seq NamedBody146_46 NamedBody146_95

def NamedBody146_97 : StackLang.HolProg 64 :=
.seq NamedBody146_43 NamedBody146_96

def NamedBody146_98 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody146_99 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody146_100 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 10
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 1 8#64))

def NamedBody146_101 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 11
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 24#64))

def NamedBody146_102 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody146_103 : StackLang.HolProg 64 :=
.seq NamedBody146_101 NamedBody146_102

def NamedBody146_104 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody146_105 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 113#64)

def NamedBody146_106 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody146_107 : StackLang.HolProg 64 :=
.seq NamedBody146_105 NamedBody146_106

def NamedBody146_108 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody146_109 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 2#64)

def NamedBody146_110 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 10

def NamedBody146_111 : StackLang.HolProg 64 :=
.seq NamedBody146_109 NamedBody146_110

def NamedBody146_112 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody146_113 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) NamedBody146_111 NamedBody146_112

def NamedBody146_114 : StackLang.HolProg 64 :=
.seq NamedBody146_108 NamedBody146_113

def NamedBody146_115 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def NamedBody146_116 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody146_117 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 146 5

def NamedBody146_118 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody146_119 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody146_120 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody146_121 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody146_122 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def NamedBody146_123 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def NamedBody146_124 : StackLang.HolProg 64 :=
.seq NamedBody146_122 NamedBody146_123

def NamedBody146_125 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def NamedBody146_126 : StackLang.HolProg 64 :=
.seq NamedBody146_124 NamedBody146_125

def NamedBody146_127 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody146_128 : StackLang.HolProg 64 :=
.seq NamedBody146_126 NamedBody146_127

def NamedBody146_129 : StackLang.HolProg 64 :=
.seq NamedBody146_121 NamedBody146_128

def NamedBody146_130 : StackLang.HolProg 64 :=
.seq NamedBody146_120 NamedBody146_129

def NamedBody146_131 : StackLang.HolProg 64 :=
.seq NamedBody146_119 NamedBody146_130

def NamedBody146_132 : StackLang.HolProg 64 :=
.seq NamedBody146_118 NamedBody146_131

def NamedBody146_133 : StackLang.HolProg 64 :=
.seq NamedBody146_117 NamedBody146_132

def NamedBody146_134 : StackLang.HolProg 64 :=
.seq NamedBody146_116 NamedBody146_133

def NamedBody146_135 : StackLang.HolProg 64 :=
.seq NamedBody146_115 NamedBody146_134

def NamedBody146_136 : StackLang.HolProg 64 :=
.seq NamedBody146_114 NamedBody146_135

def NamedBody146_137 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody146_138 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody146_139 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody146_140 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody146_141 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody146_142 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody146_143 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 11 10
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 10)))

def NamedBody146_144 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody146_145 : StackLang.HolProg 64 :=
.seq NamedBody146_143 NamedBody146_144

def NamedBody146_146 : StackLang.HolProg 64 :=
.seq NamedBody146_142 NamedBody146_145

def NamedBody146_147 : StackLang.HolProg 64 :=
.seq NamedBody146_141 NamedBody146_146

def NamedBody146_148 : StackLang.HolProg 64 :=
.seq NamedBody146_140 NamedBody146_147

def NamedBody146_149 : StackLang.HolProg 64 :=
.seq NamedBody146_139 NamedBody146_148

def NamedBody146_150 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody146_151 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def NamedBody146_152 : StackLang.HolProg 64 :=
.seq NamedBody146_150 NamedBody146_151

def NamedBody146_153 : StackLang.HolProg 64 :=
.call (some (NamedBody146_149, 1, 146, 4)) (Sum.inl 84) (some (NamedBody146_152, 146, 5))

def NamedBody146_154 : StackLang.HolProg 64 :=
.seq NamedBody146_138 NamedBody146_153

def NamedBody146_155 : StackLang.HolProg 64 :=
.seq NamedBody146_137 NamedBody146_154

def NamedBody146_156 : StackLang.HolProg 64 :=
.seq NamedBody146_136 NamedBody146_155

def NamedBody146_157 : StackLang.HolProg 64 :=
.seq NamedBody146_107 NamedBody146_156

def NamedBody146_158 : StackLang.HolProg 64 :=
.seq NamedBody146_104 NamedBody146_157

def NamedBody146_159 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody146_160 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody146_161 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 10
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 1 16#64))

def NamedBody146_162 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 11
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody146_163 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody146_164 : StackLang.HolProg 64 :=
.seq NamedBody146_162 NamedBody146_163

def NamedBody146_165 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody146_166 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 114#64)

def NamedBody146_167 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody146_168 : StackLang.HolProg 64 :=
.seq NamedBody146_166 NamedBody146_167

def NamedBody146_169 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody146_170 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 2#64)

def NamedBody146_171 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 10

def NamedBody146_172 : StackLang.HolProg 64 :=
.seq NamedBody146_170 NamedBody146_171

def NamedBody146_173 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody146_174 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) NamedBody146_172 NamedBody146_173

def NamedBody146_175 : StackLang.HolProg 64 :=
.seq NamedBody146_169 NamedBody146_174

def NamedBody146_176 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def NamedBody146_177 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody146_178 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 146 7

def NamedBody146_179 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody146_180 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody146_181 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody146_182 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody146_183 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def NamedBody146_184 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def NamedBody146_185 : StackLang.HolProg 64 :=
.seq NamedBody146_183 NamedBody146_184

def NamedBody146_186 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def NamedBody146_187 : StackLang.HolProg 64 :=
.seq NamedBody146_185 NamedBody146_186

def NamedBody146_188 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody146_189 : StackLang.HolProg 64 :=
.seq NamedBody146_187 NamedBody146_188

def NamedBody146_190 : StackLang.HolProg 64 :=
.seq NamedBody146_182 NamedBody146_189

def NamedBody146_191 : StackLang.HolProg 64 :=
.seq NamedBody146_181 NamedBody146_190

def NamedBody146_192 : StackLang.HolProg 64 :=
.seq NamedBody146_180 NamedBody146_191

def NamedBody146_193 : StackLang.HolProg 64 :=
.seq NamedBody146_179 NamedBody146_192

def NamedBody146_194 : StackLang.HolProg 64 :=
.seq NamedBody146_178 NamedBody146_193

def NamedBody146_195 : StackLang.HolProg 64 :=
.seq NamedBody146_177 NamedBody146_194

def NamedBody146_196 : StackLang.HolProg 64 :=
.seq NamedBody146_176 NamedBody146_195

def NamedBody146_197 : StackLang.HolProg 64 :=
.seq NamedBody146_175 NamedBody146_196

def NamedBody146_198 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody146_199 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody146_200 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody146_201 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody146_202 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody146_203 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody146_204 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 11 10
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 10)))

def NamedBody146_205 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody146_206 : StackLang.HolProg 64 :=
.seq NamedBody146_204 NamedBody146_205

def NamedBody146_207 : StackLang.HolProg 64 :=
.seq NamedBody146_203 NamedBody146_206

def NamedBody146_208 : StackLang.HolProg 64 :=
.seq NamedBody146_202 NamedBody146_207

def NamedBody146_209 : StackLang.HolProg 64 :=
.seq NamedBody146_201 NamedBody146_208

def NamedBody146_210 : StackLang.HolProg 64 :=
.seq NamedBody146_200 NamedBody146_209

def NamedBody146_211 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody146_212 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def NamedBody146_213 : StackLang.HolProg 64 :=
.seq NamedBody146_211 NamedBody146_212

def NamedBody146_214 : StackLang.HolProg 64 :=
.call (some (NamedBody146_210, 1, 146, 6)) (Sum.inl 84) (some (NamedBody146_213, 146, 7))

def NamedBody146_215 : StackLang.HolProg 64 :=
.seq NamedBody146_199 NamedBody146_214

def NamedBody146_216 : StackLang.HolProg 64 :=
.seq NamedBody146_198 NamedBody146_215

def NamedBody146_217 : StackLang.HolProg 64 :=
.seq NamedBody146_197 NamedBody146_216

def NamedBody146_218 : StackLang.HolProg 64 :=
.seq NamedBody146_168 NamedBody146_217

def NamedBody146_219 : StackLang.HolProg 64 :=
.seq NamedBody146_165 NamedBody146_218

def NamedBody146_220 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody146_221 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody146_222 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 10
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 1 24#64))

def NamedBody146_223 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 11
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody146_224 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody146_225 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 115#64)

def NamedBody146_226 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody146_227 : StackLang.HolProg 64 :=
.seq NamedBody146_225 NamedBody146_226

def NamedBody146_228 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody146_229 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 2#64)

def NamedBody146_230 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 10

def NamedBody146_231 : StackLang.HolProg 64 :=
.seq NamedBody146_229 NamedBody146_230

def NamedBody146_232 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody146_233 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) NamedBody146_231 NamedBody146_232

def NamedBody146_234 : StackLang.HolProg 64 :=
.seq NamedBody146_228 NamedBody146_233

def NamedBody146_235 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def NamedBody146_236 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody146_237 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 146 9

def NamedBody146_238 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody146_239 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody146_240 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody146_241 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody146_242 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def NamedBody146_243 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def NamedBody146_244 : StackLang.HolProg 64 :=
.seq NamedBody146_242 NamedBody146_243

def NamedBody146_245 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def NamedBody146_246 : StackLang.HolProg 64 :=
.seq NamedBody146_244 NamedBody146_245

def NamedBody146_247 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody146_248 : StackLang.HolProg 64 :=
.seq NamedBody146_246 NamedBody146_247

def NamedBody146_249 : StackLang.HolProg 64 :=
.seq NamedBody146_241 NamedBody146_248

def NamedBody146_250 : StackLang.HolProg 64 :=
.seq NamedBody146_240 NamedBody146_249

def NamedBody146_251 : StackLang.HolProg 64 :=
.seq NamedBody146_239 NamedBody146_250

def NamedBody146_252 : StackLang.HolProg 64 :=
.seq NamedBody146_238 NamedBody146_251

def NamedBody146_253 : StackLang.HolProg 64 :=
.seq NamedBody146_237 NamedBody146_252

def NamedBody146_254 : StackLang.HolProg 64 :=
.seq NamedBody146_236 NamedBody146_253

def NamedBody146_255 : StackLang.HolProg 64 :=
.seq NamedBody146_235 NamedBody146_254

def NamedBody146_256 : StackLang.HolProg 64 :=
.seq NamedBody146_234 NamedBody146_255

def NamedBody146_257 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody146_258 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody146_259 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody146_260 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody146_261 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody146_262 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody146_263 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 8 10
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 10)))

def NamedBody146_264 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 5
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 32#64))

def NamedBody146_265 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 13
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 24#64))

def NamedBody146_266 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 12
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody146_267 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 11
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody146_268 : StackLang.HolProg 64 :=
.seq NamedBody146_266 NamedBody146_267

def NamedBody146_269 : StackLang.HolProg 64 :=
.seq NamedBody146_265 NamedBody146_268

def NamedBody146_270 : StackLang.HolProg 64 :=
.seq NamedBody146_264 NamedBody146_269

def NamedBody146_271 : StackLang.HolProg 64 :=
.seq NamedBody146_263 NamedBody146_270

def NamedBody146_272 : StackLang.HolProg 64 :=
.seq NamedBody146_262 NamedBody146_271

def NamedBody146_273 : StackLang.HolProg 64 :=
.seq NamedBody146_261 NamedBody146_272

def NamedBody146_274 : StackLang.HolProg 64 :=
.seq NamedBody146_260 NamedBody146_273

def NamedBody146_275 : StackLang.HolProg 64 :=
.seq NamedBody146_259 NamedBody146_274

def NamedBody146_276 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 5
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 32#64))

def NamedBody146_277 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 13
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 24#64))

def NamedBody146_278 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 12
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody146_279 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 11
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody146_280 : StackLang.HolProg 64 :=
.seq NamedBody146_278 NamedBody146_279

def NamedBody146_281 : StackLang.HolProg 64 :=
.seq NamedBody146_277 NamedBody146_280

def NamedBody146_282 : StackLang.HolProg 64 :=
.seq NamedBody146_276 NamedBody146_281

def NamedBody146_283 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def NamedBody146_284 : StackLang.HolProg 64 :=
.seq NamedBody146_282 NamedBody146_283

def NamedBody146_285 : StackLang.HolProg 64 :=
.call (some (NamedBody146_275, 1, 146, 8)) (Sum.inl 84) (some (NamedBody146_284, 146, 9))

def NamedBody146_286 : StackLang.HolProg 64 :=
.seq NamedBody146_258 NamedBody146_285

def NamedBody146_287 : StackLang.HolProg 64 :=
.seq NamedBody146_257 NamedBody146_286

def NamedBody146_288 : StackLang.HolProg 64 :=
.seq NamedBody146_256 NamedBody146_287

def NamedBody146_289 : StackLang.HolProg 64 :=
.seq NamedBody146_227 NamedBody146_288

def NamedBody146_290 : StackLang.HolProg 64 :=
.seq NamedBody146_224 NamedBody146_289

def NamedBody146_291 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody146_292 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 10 8
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 8)))

def NamedBody146_293 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 40#64)))

def NamedBody146_294 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 5

def NamedBody146_295 : StackLang.HolProg 64 :=
.seq NamedBody146_293 NamedBody146_294

def NamedBody146_296 : StackLang.HolProg 64 :=
.seq NamedBody146_292 NamedBody146_295

def NamedBody146_297 : StackLang.HolProg 64 :=
.seq NamedBody146_291 NamedBody146_296

def NamedBody146_298 : StackLang.HolProg 64 :=
.seq NamedBody146_290 NamedBody146_297

def NamedBody146_299 : StackLang.HolProg 64 :=
.seq NamedBody146_223 NamedBody146_298

def NamedBody146_300 : StackLang.HolProg 64 :=
.seq NamedBody146_222 NamedBody146_299

def NamedBody146_301 : StackLang.HolProg 64 :=
.seq NamedBody146_221 NamedBody146_300

def NamedBody146_302 : StackLang.HolProg 64 :=
.seq NamedBody146_220 NamedBody146_301

def NamedBody146_303 : StackLang.HolProg 64 :=
.seq NamedBody146_219 NamedBody146_302

def NamedBody146_304 : StackLang.HolProg 64 :=
.seq NamedBody146_164 NamedBody146_303

def NamedBody146_305 : StackLang.HolProg 64 :=
.seq NamedBody146_161 NamedBody146_304

def NamedBody146_306 : StackLang.HolProg 64 :=
.seq NamedBody146_160 NamedBody146_305

def NamedBody146_307 : StackLang.HolProg 64 :=
.seq NamedBody146_159 NamedBody146_306

def NamedBody146_308 : StackLang.HolProg 64 :=
.seq NamedBody146_158 NamedBody146_307

def NamedBody146_309 : StackLang.HolProg 64 :=
.seq NamedBody146_103 NamedBody146_308

def NamedBody146_310 : StackLang.HolProg 64 :=
.seq NamedBody146_100 NamedBody146_309

def NamedBody146_311 : StackLang.HolProg 64 :=
.seq NamedBody146_99 NamedBody146_310

def NamedBody146_312 : StackLang.HolProg 64 :=
.seq NamedBody146_98 NamedBody146_311

def NamedBody146_313 : StackLang.HolProg 64 :=
.seq NamedBody146_97 NamedBody146_312

def NamedBody146_314 : StackLang.HolProg 64 :=
.seq NamedBody146_42 NamedBody146_313

def NamedBody146_315 : StackLang.HolProg 64 :=
.seq NamedBody146_39 NamedBody146_314

def NamedBody146_316 : StackLang.HolProg 64 :=
.seq NamedBody146_38 NamedBody146_315

def NamedBody146_317 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody146_318 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.notEqual) 10 (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 0#64) NamedBody146_316 NamedBody146_317

def NamedBody146_319 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody146_320 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 0#64)

def NamedBody146_321 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 11 0#64)

def NamedBody146_322 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 12 0#64)

def NamedBody146_323 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 27 0#64)

def NamedBody146_324 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 5 0#64)

def NamedBody146_325 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody146_326 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody146_327 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody146_328 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody146_329 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody146_330 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 13 6
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 18446744073709551615#64)))

def NamedBody146_331 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody146_332 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 8 13
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 5)))

def NamedBody146_333 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody146_334 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 13 5
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 7)))

def NamedBody146_335 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load8 9
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 13 0#64))

def NamedBody146_336 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody146_337 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.and 13 8
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 7#64)))

def NamedBody146_338 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsl 13 13
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def NamedBody146_339 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody146_340 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsl 13 9
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 13)))

def NamedBody146_341 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody146_342 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 8 8
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def NamedBody146_343 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody146_344 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 9 0#64)

def NamedBody146_345 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody146_346 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody146_347 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 10 13
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 10)))

def NamedBody146_348 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody146_349 : StackLang.HolProg 64 :=
.seq NamedBody146_347 NamedBody146_348

def NamedBody146_350 : StackLang.HolProg 64 :=
.seq NamedBody146_346 NamedBody146_349

def NamedBody146_351 : StackLang.HolProg 64 :=
.seq NamedBody146_345 NamedBody146_350

def NamedBody146_352 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody146_353 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody146_354 : StackLang.HolProg 64 :=
.seq NamedBody146_352 NamedBody146_353

def NamedBody146_355 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.equal) 8 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 9) NamedBody146_351 NamedBody146_354

def NamedBody146_356 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody146_357 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody146_358 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 9 1#64)

def NamedBody146_359 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody146_360 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody146_361 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 11 13
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 11)))

def NamedBody146_362 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody146_363 : StackLang.HolProg 64 :=
.seq NamedBody146_361 NamedBody146_362

def NamedBody146_364 : StackLang.HolProg 64 :=
.seq NamedBody146_360 NamedBody146_363

def NamedBody146_365 : StackLang.HolProg 64 :=
.seq NamedBody146_359 NamedBody146_364

def NamedBody146_366 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody146_367 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody146_368 : StackLang.HolProg 64 :=
.seq NamedBody146_366 NamedBody146_367

def NamedBody146_369 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.equal) 8 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 9) NamedBody146_365 NamedBody146_368

def NamedBody146_370 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody146_371 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody146_372 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 9 2#64)

def NamedBody146_373 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody146_374 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody146_375 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 12 13
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 12)))

def NamedBody146_376 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody146_377 : StackLang.HolProg 64 :=
.seq NamedBody146_375 NamedBody146_376

def NamedBody146_378 : StackLang.HolProg 64 :=
.seq NamedBody146_374 NamedBody146_377

def NamedBody146_379 : StackLang.HolProg 64 :=
.seq NamedBody146_373 NamedBody146_378

def NamedBody146_380 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody146_381 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody146_382 : StackLang.HolProg 64 :=
.seq NamedBody146_380 NamedBody146_381

def NamedBody146_383 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.equal) 8 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 9) NamedBody146_379 NamedBody146_382

def NamedBody146_384 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody146_385 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody146_386 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 9 3#64)

def NamedBody146_387 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody146_388 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody146_389 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 27 13
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 27)))

def NamedBody146_390 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody146_391 : StackLang.HolProg 64 :=
.seq NamedBody146_389 NamedBody146_390

def NamedBody146_392 : StackLang.HolProg 64 :=
.seq NamedBody146_388 NamedBody146_391

def NamedBody146_393 : StackLang.HolProg 64 :=
.seq NamedBody146_387 NamedBody146_392

def NamedBody146_394 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody146_395 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody146_396 : StackLang.HolProg 64 :=
.seq NamedBody146_394 NamedBody146_395

def NamedBody146_397 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.equal) 8 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 9) NamedBody146_393 NamedBody146_396

def NamedBody146_398 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody146_399 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody146_400 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 5 5
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 1#64)))

def NamedBody146_401 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody146_402 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.continue 0

def NamedBody146_403 : StackLang.HolProg 64 :=
.seq NamedBody146_401 NamedBody146_402

def NamedBody146_404 : StackLang.HolProg 64 :=
.seq NamedBody146_400 NamedBody146_403

def NamedBody146_405 : StackLang.HolProg 64 :=
.seq NamedBody146_399 NamedBody146_404

def NamedBody146_406 : StackLang.HolProg 64 :=
.seq NamedBody146_398 NamedBody146_405

def NamedBody146_407 : StackLang.HolProg 64 :=
.seq NamedBody146_397 NamedBody146_406

def NamedBody146_408 : StackLang.HolProg 64 :=
.seq NamedBody146_386 NamedBody146_407

def NamedBody146_409 : StackLang.HolProg 64 :=
.seq NamedBody146_385 NamedBody146_408

def NamedBody146_410 : StackLang.HolProg 64 :=
.seq NamedBody146_384 NamedBody146_409

def NamedBody146_411 : StackLang.HolProg 64 :=
.seq NamedBody146_383 NamedBody146_410

def NamedBody146_412 : StackLang.HolProg 64 :=
.seq NamedBody146_372 NamedBody146_411

def NamedBody146_413 : StackLang.HolProg 64 :=
.seq NamedBody146_371 NamedBody146_412

def NamedBody146_414 : StackLang.HolProg 64 :=
.seq NamedBody146_370 NamedBody146_413

def NamedBody146_415 : StackLang.HolProg 64 :=
.seq NamedBody146_369 NamedBody146_414

def NamedBody146_416 : StackLang.HolProg 64 :=
.seq NamedBody146_358 NamedBody146_415

def NamedBody146_417 : StackLang.HolProg 64 :=
.seq NamedBody146_357 NamedBody146_416

def NamedBody146_418 : StackLang.HolProg 64 :=
.seq NamedBody146_356 NamedBody146_417

def NamedBody146_419 : StackLang.HolProg 64 :=
.seq NamedBody146_355 NamedBody146_418

def NamedBody146_420 : StackLang.HolProg 64 :=
.seq NamedBody146_344 NamedBody146_419

def NamedBody146_421 : StackLang.HolProg 64 :=
.seq NamedBody146_343 NamedBody146_420

def NamedBody146_422 : StackLang.HolProg 64 :=
.seq NamedBody146_342 NamedBody146_421

def NamedBody146_423 : StackLang.HolProg 64 :=
.seq NamedBody146_341 NamedBody146_422

def NamedBody146_424 : StackLang.HolProg 64 :=
.seq NamedBody146_340 NamedBody146_423

def NamedBody146_425 : StackLang.HolProg 64 :=
.seq NamedBody146_339 NamedBody146_424

def NamedBody146_426 : StackLang.HolProg 64 :=
.seq NamedBody146_338 NamedBody146_425

def NamedBody146_427 : StackLang.HolProg 64 :=
.seq NamedBody146_337 NamedBody146_426

def NamedBody146_428 : StackLang.HolProg 64 :=
.seq NamedBody146_336 NamedBody146_427

def NamedBody146_429 : StackLang.HolProg 64 :=
.seq NamedBody146_335 NamedBody146_428

def NamedBody146_430 : StackLang.HolProg 64 :=
.seq NamedBody146_334 NamedBody146_429

def NamedBody146_431 : StackLang.HolProg 64 :=
.seq NamedBody146_333 NamedBody146_430

def NamedBody146_432 : StackLang.HolProg 64 :=
.seq NamedBody146_332 NamedBody146_431

def NamedBody146_433 : StackLang.HolProg 64 :=
.seq NamedBody146_331 NamedBody146_432

def NamedBody146_434 : StackLang.HolProg 64 :=
.seq NamedBody146_330 NamedBody146_433

def NamedBody146_435 : StackLang.HolProg 64 :=
.seq NamedBody146_329 NamedBody146_434

def NamedBody146_436 : StackLang.HolProg 64 :=
.seq NamedBody146_328 NamedBody146_435

def NamedBody146_437 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody146_438 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.break 0

def NamedBody146_439 : StackLang.HolProg 64 :=
.seq NamedBody146_437 NamedBody146_438

def NamedBody146_440 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 5 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 6) NamedBody146_436 NamedBody146_439

def NamedBody146_441 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody146_442 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody146_443 : StackLang.HolProg 64 :=
.seq NamedBody146_441 NamedBody146_442

def NamedBody146_444 : StackLang.HolProg 64 :=
.seq NamedBody146_440 NamedBody146_443

def NamedBody146_445 : StackLang.HolProg 64 :=
.seq NamedBody146_327 NamedBody146_444

def NamedBody146_446 : StackLang.HolProg 64 :=
.loop NamedBody146_445

def NamedBody146_447 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody146_448 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 13 27
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 27)))

def NamedBody146_449 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 40#64)))

def NamedBody146_450 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 1

def NamedBody146_451 : StackLang.HolProg 64 :=
.seq NamedBody146_449 NamedBody146_450

def NamedBody146_452 : StackLang.HolProg 64 :=
.seq NamedBody146_448 NamedBody146_451

def NamedBody146_453 : StackLang.HolProg 64 :=
.seq NamedBody146_447 NamedBody146_452

def NamedBody146_454 : StackLang.HolProg 64 :=
.seq NamedBody146_446 NamedBody146_453

def NamedBody146_455 : StackLang.HolProg 64 :=
.seq NamedBody146_326 NamedBody146_454

def NamedBody146_456 : StackLang.HolProg 64 :=
.seq NamedBody146_325 NamedBody146_455

def NamedBody146_457 : StackLang.HolProg 64 :=
.seq NamedBody146_324 NamedBody146_456

def NamedBody146_458 : StackLang.HolProg 64 :=
.seq NamedBody146_323 NamedBody146_457

def NamedBody146_459 : StackLang.HolProg 64 :=
.seq NamedBody146_322 NamedBody146_458

def NamedBody146_460 : StackLang.HolProg 64 :=
.seq NamedBody146_321 NamedBody146_459

def NamedBody146_461 : StackLang.HolProg 64 :=
.seq NamedBody146_320 NamedBody146_460

def NamedBody146_462 : StackLang.HolProg 64 :=
.seq NamedBody146_319 NamedBody146_461

def NamedBody146_463 : StackLang.HolProg 64 :=
.seq NamedBody146_318 NamedBody146_462

def NamedBody146_464 : StackLang.HolProg 64 :=
.seq NamedBody146_37 NamedBody146_463

def NamedBody146_465 : StackLang.HolProg 64 :=
.seq NamedBody146_36 NamedBody146_464

def NamedBody146_466 : StackLang.HolProg 64 :=
.seq NamedBody146_35 NamedBody146_465

def NamedBody146_467 : StackLang.HolProg 64 :=
.seq NamedBody146_34 NamedBody146_466

def NamedBody146_468 : StackLang.HolProg 64 :=
.seq NamedBody146_23 NamedBody146_467

def NamedBody146_469 : StackLang.HolProg 64 :=
.seq NamedBody146_22 NamedBody146_468

def NamedBody146_470 : StackLang.HolProg 64 :=
.seq NamedBody146_21 NamedBody146_469

def NamedBody146_471 : StackLang.HolProg 64 :=
.seq NamedBody146_20 NamedBody146_470

def NamedBody146_472 : StackLang.HolProg 64 :=
.seq NamedBody146_19 NamedBody146_471

def NamedBody146_473 : StackLang.HolProg 64 :=
.seq NamedBody146_8 NamedBody146_472

def NamedBody146_474 : StackLang.HolProg 64 :=
.seq NamedBody146_7 NamedBody146_473

def NamedBody146_475 : StackLang.HolProg 64 :=
.seq NamedBody146_6 NamedBody146_474

def Named146 : Nat × StackLang.HolProg 64 := (146, NamedBody146_475)
theorem Named146_eq : StackNames.progCompEntryHOL RiscVConfig.riscvNames Removed146 = Named146 := by
  kernel_rfl
#print axioms Named146_eq
end InitECandidate.Proofs.BackendStages
