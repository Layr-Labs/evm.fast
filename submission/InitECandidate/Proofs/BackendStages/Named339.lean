import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.BackendStages.Removed339
import Flapjack.Compiler.Backend.Backend
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
namespace InitECandidate.Proofs.BackendStages
def NamedBody339_0 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody339_1 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 2#64)

def NamedBody339_2 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 10

def NamedBody339_3 : StackLang.HolProg 64 :=
.seq NamedBody339_1 NamedBody339_2

def NamedBody339_4 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody339_5 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) NamedBody339_3 NamedBody339_4

def NamedBody339_6 : StackLang.HolProg 64 :=
.seq NamedBody339_0 NamedBody339_5

def NamedBody339_7 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody339_8 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsl 11 11
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 4#64)))

def NamedBody339_9 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody339_10 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 11 11
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 10)))

def NamedBody339_11 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 10
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 11 0#64))

def NamedBody339_12 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody339_13 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 11
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 11 8#64))

def NamedBody339_14 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody339_15 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 12
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody339_16 : StackLang.HolProg 64 :=
.seq NamedBody339_14 NamedBody339_15

def NamedBody339_17 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody339_18 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 973#64)

def NamedBody339_19 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody339_20 : StackLang.HolProg 64 :=
.seq NamedBody339_18 NamedBody339_19

def NamedBody339_21 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody339_22 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 2#64)

def NamedBody339_23 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 10

def NamedBody339_24 : StackLang.HolProg 64 :=
.seq NamedBody339_22 NamedBody339_23

def NamedBody339_25 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody339_26 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) NamedBody339_24 NamedBody339_25

def NamedBody339_27 : StackLang.HolProg 64 :=
.seq NamedBody339_21 NamedBody339_26

def NamedBody339_28 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def NamedBody339_29 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody339_30 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 339 3

def NamedBody339_31 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody339_32 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody339_33 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody339_34 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody339_35 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def NamedBody339_36 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def NamedBody339_37 : StackLang.HolProg 64 :=
.seq NamedBody339_35 NamedBody339_36

def NamedBody339_38 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def NamedBody339_39 : StackLang.HolProg 64 :=
.seq NamedBody339_37 NamedBody339_38

def NamedBody339_40 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody339_41 : StackLang.HolProg 64 :=
.seq NamedBody339_39 NamedBody339_40

def NamedBody339_42 : StackLang.HolProg 64 :=
.seq NamedBody339_34 NamedBody339_41

def NamedBody339_43 : StackLang.HolProg 64 :=
.seq NamedBody339_33 NamedBody339_42

def NamedBody339_44 : StackLang.HolProg 64 :=
.seq NamedBody339_32 NamedBody339_43

def NamedBody339_45 : StackLang.HolProg 64 :=
.seq NamedBody339_31 NamedBody339_44

def NamedBody339_46 : StackLang.HolProg 64 :=
.seq NamedBody339_30 NamedBody339_45

def NamedBody339_47 : StackLang.HolProg 64 :=
.seq NamedBody339_29 NamedBody339_46

def NamedBody339_48 : StackLang.HolProg 64 :=
.seq NamedBody339_28 NamedBody339_47

def NamedBody339_49 : StackLang.HolProg 64 :=
.seq NamedBody339_27 NamedBody339_48

def NamedBody339_50 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody339_51 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody339_52 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody339_53 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody339_54 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody339_55 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody339_56 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 13 10
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 10)))

def NamedBody339_57 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 5
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody339_58 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody339_59 : StackLang.HolProg 64 :=
.seq NamedBody339_57 NamedBody339_58

def NamedBody339_60 : StackLang.HolProg 64 :=
.seq NamedBody339_56 NamedBody339_59

def NamedBody339_61 : StackLang.HolProg 64 :=
.seq NamedBody339_55 NamedBody339_60

def NamedBody339_62 : StackLang.HolProg 64 :=
.seq NamedBody339_54 NamedBody339_61

def NamedBody339_63 : StackLang.HolProg 64 :=
.seq NamedBody339_53 NamedBody339_62

def NamedBody339_64 : StackLang.HolProg 64 :=
.seq NamedBody339_52 NamedBody339_63

def NamedBody339_65 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 5
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody339_66 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody339_67 : StackLang.HolProg 64 :=
.seq NamedBody339_65 NamedBody339_66

def NamedBody339_68 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def NamedBody339_69 : StackLang.HolProg 64 :=
.seq NamedBody339_67 NamedBody339_68

def NamedBody339_70 : StackLang.HolProg 64 :=
.call (some (NamedBody339_64, 1, 339, 2)) (Sum.inl 161) (some (NamedBody339_69, 339, 3))

def NamedBody339_71 : StackLang.HolProg 64 :=
.seq NamedBody339_51 NamedBody339_70

def NamedBody339_72 : StackLang.HolProg 64 :=
.seq NamedBody339_50 NamedBody339_71

def NamedBody339_73 : StackLang.HolProg 64 :=
.seq NamedBody339_49 NamedBody339_72

def NamedBody339_74 : StackLang.HolProg 64 :=
.seq NamedBody339_20 NamedBody339_73

def NamedBody339_75 : StackLang.HolProg 64 :=
.seq NamedBody339_17 NamedBody339_74

def NamedBody339_76 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody339_77 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody339_78 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 0#64)

def NamedBody339_79 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody339_80 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 15#64)

def NamedBody339_81 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody339_82 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 10
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551480#64))

def NamedBody339_83 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 6#64)

def NamedBody339_84 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody339_85 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def NamedBody339_86 : StackLang.HolProg 64 :=
.seq NamedBody339_84 NamedBody339_85

def NamedBody339_87 : StackLang.HolProg 64 :=
.seq NamedBody339_83 NamedBody339_86

def NamedBody339_88 : StackLang.HolProg 64 :=
.seq NamedBody339_82 NamedBody339_87

def NamedBody339_89 : StackLang.HolProg 64 :=
.seq NamedBody339_81 NamedBody339_88

def NamedBody339_90 : StackLang.HolProg 64 :=
.seq NamedBody339_80 NamedBody339_89

def NamedBody339_91 : StackLang.HolProg 64 :=
.seq NamedBody339_79 NamedBody339_90

def NamedBody339_92 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody339_93 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.notEqual) 13 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 10) NamedBody339_91 NamedBody339_92

def NamedBody339_94 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody339_95 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody339_96 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody339_97 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody339_98 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 16#64)

def NamedBody339_99 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody339_100 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551480#64))

def NamedBody339_101 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 6#64)

def NamedBody339_102 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody339_103 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def NamedBody339_104 : StackLang.HolProg 64 :=
.seq NamedBody339_102 NamedBody339_103

def NamedBody339_105 : StackLang.HolProg 64 :=
.seq NamedBody339_101 NamedBody339_104

def NamedBody339_106 : StackLang.HolProg 64 :=
.seq NamedBody339_100 NamedBody339_105

def NamedBody339_107 : StackLang.HolProg 64 :=
.seq NamedBody339_99 NamedBody339_106

def NamedBody339_108 : StackLang.HolProg 64 :=
.seq NamedBody339_98 NamedBody339_107

def NamedBody339_109 : StackLang.HolProg 64 :=
.seq NamedBody339_97 NamedBody339_108

def NamedBody339_110 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody339_111 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.notEqual) 12 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1) NamedBody339_109 NamedBody339_110

def NamedBody339_112 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody339_113 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody339_114 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 10 11
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 11)))

def NamedBody339_115 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody339_116 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 5

def NamedBody339_117 : StackLang.HolProg 64 :=
.seq NamedBody339_115 NamedBody339_116

def NamedBody339_118 : StackLang.HolProg 64 :=
.seq NamedBody339_114 NamedBody339_117

def NamedBody339_119 : StackLang.HolProg 64 :=
.seq NamedBody339_113 NamedBody339_118

def NamedBody339_120 : StackLang.HolProg 64 :=
.seq NamedBody339_112 NamedBody339_119

def NamedBody339_121 : StackLang.HolProg 64 :=
.seq NamedBody339_111 NamedBody339_120

def NamedBody339_122 : StackLang.HolProg 64 :=
.seq NamedBody339_96 NamedBody339_121

def NamedBody339_123 : StackLang.HolProg 64 :=
.seq NamedBody339_95 NamedBody339_122

def NamedBody339_124 : StackLang.HolProg 64 :=
.seq NamedBody339_94 NamedBody339_123

def NamedBody339_125 : StackLang.HolProg 64 :=
.seq NamedBody339_93 NamedBody339_124

def NamedBody339_126 : StackLang.HolProg 64 :=
.seq NamedBody339_78 NamedBody339_125

def NamedBody339_127 : StackLang.HolProg 64 :=
.seq NamedBody339_77 NamedBody339_126

def NamedBody339_128 : StackLang.HolProg 64 :=
.seq NamedBody339_76 NamedBody339_127

def NamedBody339_129 : StackLang.HolProg 64 :=
.seq NamedBody339_75 NamedBody339_128

def NamedBody339_130 : StackLang.HolProg 64 :=
.seq NamedBody339_16 NamedBody339_129

def NamedBody339_131 : StackLang.HolProg 64 :=
.seq NamedBody339_13 NamedBody339_130

def NamedBody339_132 : StackLang.HolProg 64 :=
.seq NamedBody339_12 NamedBody339_131

def NamedBody339_133 : StackLang.HolProg 64 :=
.seq NamedBody339_11 NamedBody339_132

def NamedBody339_134 : StackLang.HolProg 64 :=
.seq NamedBody339_10 NamedBody339_133

def NamedBody339_135 : StackLang.HolProg 64 :=
.seq NamedBody339_9 NamedBody339_134

def NamedBody339_136 : StackLang.HolProg 64 :=
.seq NamedBody339_8 NamedBody339_135

def NamedBody339_137 : StackLang.HolProg 64 :=
.seq NamedBody339_7 NamedBody339_136

def NamedBody339_138 : StackLang.HolProg 64 :=
.seq NamedBody339_6 NamedBody339_137

def Named339 : Nat × StackLang.HolProg 64 := (339, NamedBody339_138)
theorem Named339_eq : StackNames.progCompEntryHOL RiscVConfig.riscvNames Removed339 = Named339 := by
  kernel_rfl
#print axioms Named339_eq
end InitECandidate.Proofs.BackendStages
