import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.BackendStages.Removed272
import Flapjack.Compiler.Backend.Backend
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
namespace InitECandidate.Proofs.BackendStages
def NamedBody272_0 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody272_1 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 2#64)

def NamedBody272_2 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 10

def NamedBody272_3 : StackLang.HolProg 64 :=
.seq NamedBody272_1 NamedBody272_2

def NamedBody272_4 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody272_5 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) NamedBody272_3 NamedBody272_4

def NamedBody272_6 : StackLang.HolProg 64 :=
.seq NamedBody272_0 NamedBody272_5

def NamedBody272_7 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody272_8 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsl 11 11
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 4#64)))

def NamedBody272_9 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody272_10 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 11 11
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 10)))

def NamedBody272_11 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 10
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 11 0#64))

def NamedBody272_12 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody272_13 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 11
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 11 8#64))

def NamedBody272_14 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody272_15 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 12
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody272_16 : StackLang.HolProg 64 :=
.seq NamedBody272_14 NamedBody272_15

def NamedBody272_17 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody272_18 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 659#64)

def NamedBody272_19 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody272_20 : StackLang.HolProg 64 :=
.seq NamedBody272_18 NamedBody272_19

def NamedBody272_21 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody272_22 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 2#64)

def NamedBody272_23 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 10

def NamedBody272_24 : StackLang.HolProg 64 :=
.seq NamedBody272_22 NamedBody272_23

def NamedBody272_25 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody272_26 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) NamedBody272_24 NamedBody272_25

def NamedBody272_27 : StackLang.HolProg 64 :=
.seq NamedBody272_21 NamedBody272_26

def NamedBody272_28 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def NamedBody272_29 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody272_30 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 272 3

def NamedBody272_31 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody272_32 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody272_33 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody272_34 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody272_35 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def NamedBody272_36 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def NamedBody272_37 : StackLang.HolProg 64 :=
.seq NamedBody272_35 NamedBody272_36

def NamedBody272_38 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def NamedBody272_39 : StackLang.HolProg 64 :=
.seq NamedBody272_37 NamedBody272_38

def NamedBody272_40 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody272_41 : StackLang.HolProg 64 :=
.seq NamedBody272_39 NamedBody272_40

def NamedBody272_42 : StackLang.HolProg 64 :=
.seq NamedBody272_34 NamedBody272_41

def NamedBody272_43 : StackLang.HolProg 64 :=
.seq NamedBody272_33 NamedBody272_42

def NamedBody272_44 : StackLang.HolProg 64 :=
.seq NamedBody272_32 NamedBody272_43

def NamedBody272_45 : StackLang.HolProg 64 :=
.seq NamedBody272_31 NamedBody272_44

def NamedBody272_46 : StackLang.HolProg 64 :=
.seq NamedBody272_30 NamedBody272_45

def NamedBody272_47 : StackLang.HolProg 64 :=
.seq NamedBody272_29 NamedBody272_46

def NamedBody272_48 : StackLang.HolProg 64 :=
.seq NamedBody272_28 NamedBody272_47

def NamedBody272_49 : StackLang.HolProg 64 :=
.seq NamedBody272_27 NamedBody272_48

def NamedBody272_50 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody272_51 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody272_52 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody272_53 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody272_54 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody272_55 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody272_56 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 13 10
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 10)))

def NamedBody272_57 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 5
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody272_58 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody272_59 : StackLang.HolProg 64 :=
.seq NamedBody272_57 NamedBody272_58

def NamedBody272_60 : StackLang.HolProg 64 :=
.seq NamedBody272_56 NamedBody272_59

def NamedBody272_61 : StackLang.HolProg 64 :=
.seq NamedBody272_55 NamedBody272_60

def NamedBody272_62 : StackLang.HolProg 64 :=
.seq NamedBody272_54 NamedBody272_61

def NamedBody272_63 : StackLang.HolProg 64 :=
.seq NamedBody272_53 NamedBody272_62

def NamedBody272_64 : StackLang.HolProg 64 :=
.seq NamedBody272_52 NamedBody272_63

def NamedBody272_65 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 5
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody272_66 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody272_67 : StackLang.HolProg 64 :=
.seq NamedBody272_65 NamedBody272_66

def NamedBody272_68 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def NamedBody272_69 : StackLang.HolProg 64 :=
.seq NamedBody272_67 NamedBody272_68

def NamedBody272_70 : StackLang.HolProg 64 :=
.call (some (NamedBody272_64, 1, 272, 2)) (Sum.inl 161) (some (NamedBody272_69, 272, 3))

def NamedBody272_71 : StackLang.HolProg 64 :=
.seq NamedBody272_51 NamedBody272_70

def NamedBody272_72 : StackLang.HolProg 64 :=
.seq NamedBody272_50 NamedBody272_71

def NamedBody272_73 : StackLang.HolProg 64 :=
.seq NamedBody272_49 NamedBody272_72

def NamedBody272_74 : StackLang.HolProg 64 :=
.seq NamedBody272_20 NamedBody272_73

def NamedBody272_75 : StackLang.HolProg 64 :=
.seq NamedBody272_17 NamedBody272_74

def NamedBody272_76 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody272_77 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody272_78 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 0#64)

def NamedBody272_79 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody272_80 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 6#64)

def NamedBody272_81 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody272_82 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 10
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551480#64))

def NamedBody272_83 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 3#64)

def NamedBody272_84 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody272_85 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def NamedBody272_86 : StackLang.HolProg 64 :=
.seq NamedBody272_84 NamedBody272_85

def NamedBody272_87 : StackLang.HolProg 64 :=
.seq NamedBody272_83 NamedBody272_86

def NamedBody272_88 : StackLang.HolProg 64 :=
.seq NamedBody272_82 NamedBody272_87

def NamedBody272_89 : StackLang.HolProg 64 :=
.seq NamedBody272_81 NamedBody272_88

def NamedBody272_90 : StackLang.HolProg 64 :=
.seq NamedBody272_80 NamedBody272_89

def NamedBody272_91 : StackLang.HolProg 64 :=
.seq NamedBody272_79 NamedBody272_90

def NamedBody272_92 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody272_93 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.notEqual) 13 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 10) NamedBody272_91 NamedBody272_92

def NamedBody272_94 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody272_95 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody272_96 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody272_97 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody272_98 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 7#64)

def NamedBody272_99 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody272_100 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551480#64))

def NamedBody272_101 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 3#64)

def NamedBody272_102 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody272_103 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def NamedBody272_104 : StackLang.HolProg 64 :=
.seq NamedBody272_102 NamedBody272_103

def NamedBody272_105 : StackLang.HolProg 64 :=
.seq NamedBody272_101 NamedBody272_104

def NamedBody272_106 : StackLang.HolProg 64 :=
.seq NamedBody272_100 NamedBody272_105

def NamedBody272_107 : StackLang.HolProg 64 :=
.seq NamedBody272_99 NamedBody272_106

def NamedBody272_108 : StackLang.HolProg 64 :=
.seq NamedBody272_98 NamedBody272_107

def NamedBody272_109 : StackLang.HolProg 64 :=
.seq NamedBody272_97 NamedBody272_108

def NamedBody272_110 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody272_111 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.notEqual) 12 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1) NamedBody272_109 NamedBody272_110

def NamedBody272_112 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody272_113 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody272_114 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 10 11
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 11)))

def NamedBody272_115 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody272_116 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 5

def NamedBody272_117 : StackLang.HolProg 64 :=
.seq NamedBody272_115 NamedBody272_116

def NamedBody272_118 : StackLang.HolProg 64 :=
.seq NamedBody272_114 NamedBody272_117

def NamedBody272_119 : StackLang.HolProg 64 :=
.seq NamedBody272_113 NamedBody272_118

def NamedBody272_120 : StackLang.HolProg 64 :=
.seq NamedBody272_112 NamedBody272_119

def NamedBody272_121 : StackLang.HolProg 64 :=
.seq NamedBody272_111 NamedBody272_120

def NamedBody272_122 : StackLang.HolProg 64 :=
.seq NamedBody272_96 NamedBody272_121

def NamedBody272_123 : StackLang.HolProg 64 :=
.seq NamedBody272_95 NamedBody272_122

def NamedBody272_124 : StackLang.HolProg 64 :=
.seq NamedBody272_94 NamedBody272_123

def NamedBody272_125 : StackLang.HolProg 64 :=
.seq NamedBody272_93 NamedBody272_124

def NamedBody272_126 : StackLang.HolProg 64 :=
.seq NamedBody272_78 NamedBody272_125

def NamedBody272_127 : StackLang.HolProg 64 :=
.seq NamedBody272_77 NamedBody272_126

def NamedBody272_128 : StackLang.HolProg 64 :=
.seq NamedBody272_76 NamedBody272_127

def NamedBody272_129 : StackLang.HolProg 64 :=
.seq NamedBody272_75 NamedBody272_128

def NamedBody272_130 : StackLang.HolProg 64 :=
.seq NamedBody272_16 NamedBody272_129

def NamedBody272_131 : StackLang.HolProg 64 :=
.seq NamedBody272_13 NamedBody272_130

def NamedBody272_132 : StackLang.HolProg 64 :=
.seq NamedBody272_12 NamedBody272_131

def NamedBody272_133 : StackLang.HolProg 64 :=
.seq NamedBody272_11 NamedBody272_132

def NamedBody272_134 : StackLang.HolProg 64 :=
.seq NamedBody272_10 NamedBody272_133

def NamedBody272_135 : StackLang.HolProg 64 :=
.seq NamedBody272_9 NamedBody272_134

def NamedBody272_136 : StackLang.HolProg 64 :=
.seq NamedBody272_8 NamedBody272_135

def NamedBody272_137 : StackLang.HolProg 64 :=
.seq NamedBody272_7 NamedBody272_136

def NamedBody272_138 : StackLang.HolProg 64 :=
.seq NamedBody272_6 NamedBody272_137

def Named272 : Nat × StackLang.HolProg 64 := (272, NamedBody272_138)
theorem Named272_eq : StackNames.progCompEntryHOL RiscVConfig.riscvNames Removed272 = Named272 := by
  kernel_rfl
#print axioms Named272_eq
end InitECandidate.Proofs.BackendStages
