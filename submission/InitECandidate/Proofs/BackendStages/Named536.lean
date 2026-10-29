import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.BackendStages.Removed536
import Flapjack.Compiler.Backend.Backend
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
namespace InitECandidate.Proofs.BackendStages
def NamedBody536_0 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 56#64)))

def NamedBody536_1 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 2#64)

def NamedBody536_2 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 10

def NamedBody536_3 : StackLang.HolProg 64 :=
.seq NamedBody536_1 NamedBody536_2

def NamedBody536_4 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody536_5 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) NamedBody536_3 NamedBody536_4

def NamedBody536_6 : StackLang.HolProg 64 :=
.seq NamedBody536_0 NamedBody536_5

def NamedBody536_7 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 11 10
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 10)))

def NamedBody536_8 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 0#64)

def NamedBody536_9 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody536_10 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 2#64)

def NamedBody536_11 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 48#64))

def NamedBody536_12 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 11
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 40#64))

def NamedBody536_13 : StackLang.HolProg 64 :=
.seq NamedBody536_11 NamedBody536_12

def NamedBody536_14 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody536_15 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1775#64)

def NamedBody536_16 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody536_17 : StackLang.HolProg 64 :=
.seq NamedBody536_15 NamedBody536_16

def NamedBody536_18 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody536_19 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 2#64)

def NamedBody536_20 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 10

def NamedBody536_21 : StackLang.HolProg 64 :=
.seq NamedBody536_19 NamedBody536_20

def NamedBody536_22 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody536_23 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) NamedBody536_21 NamedBody536_22

def NamedBody536_24 : StackLang.HolProg 64 :=
.seq NamedBody536_18 NamedBody536_23

def NamedBody536_25 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def NamedBody536_26 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody536_27 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 536 3

def NamedBody536_28 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody536_29 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody536_30 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody536_31 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody536_32 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def NamedBody536_33 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def NamedBody536_34 : StackLang.HolProg 64 :=
.seq NamedBody536_32 NamedBody536_33

def NamedBody536_35 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def NamedBody536_36 : StackLang.HolProg 64 :=
.seq NamedBody536_34 NamedBody536_35

def NamedBody536_37 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody536_38 : StackLang.HolProg 64 :=
.seq NamedBody536_36 NamedBody536_37

def NamedBody536_39 : StackLang.HolProg 64 :=
.seq NamedBody536_31 NamedBody536_38

def NamedBody536_40 : StackLang.HolProg 64 :=
.seq NamedBody536_30 NamedBody536_39

def NamedBody536_41 : StackLang.HolProg 64 :=
.seq NamedBody536_29 NamedBody536_40

def NamedBody536_42 : StackLang.HolProg 64 :=
.seq NamedBody536_28 NamedBody536_41

def NamedBody536_43 : StackLang.HolProg 64 :=
.seq NamedBody536_27 NamedBody536_42

def NamedBody536_44 : StackLang.HolProg 64 :=
.seq NamedBody536_26 NamedBody536_43

def NamedBody536_45 : StackLang.HolProg 64 :=
.seq NamedBody536_25 NamedBody536_44

def NamedBody536_46 : StackLang.HolProg 64 :=
.seq NamedBody536_24 NamedBody536_45

def NamedBody536_47 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody536_48 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody536_49 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody536_50 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody536_51 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody536_52 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody536_53 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody536_54 : StackLang.HolProg 64 :=
.seq NamedBody536_52 NamedBody536_53

def NamedBody536_55 : StackLang.HolProg 64 :=
.seq NamedBody536_51 NamedBody536_54

def NamedBody536_56 : StackLang.HolProg 64 :=
.seq NamedBody536_50 NamedBody536_55

def NamedBody536_57 : StackLang.HolProg 64 :=
.seq NamedBody536_49 NamedBody536_56

def NamedBody536_58 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody536_59 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def NamedBody536_60 : StackLang.HolProg 64 :=
.seq NamedBody536_58 NamedBody536_59

def NamedBody536_61 : StackLang.HolProg 64 :=
.call (some (NamedBody536_57, 1, 536, 2)) (Sum.inl 470) (some (NamedBody536_60, 536, 3))

def NamedBody536_62 : StackLang.HolProg 64 :=
.seq NamedBody536_48 NamedBody536_61

def NamedBody536_63 : StackLang.HolProg 64 :=
.seq NamedBody536_47 NamedBody536_62

def NamedBody536_64 : StackLang.HolProg 64 :=
.seq NamedBody536_46 NamedBody536_63

def NamedBody536_65 : StackLang.HolProg 64 :=
.seq NamedBody536_17 NamedBody536_64

def NamedBody536_66 : StackLang.HolProg 64 :=
.seq NamedBody536_14 NamedBody536_65

def NamedBody536_67 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody536_68 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody536_69 : StackLang.HolProg 64 :=
.seq NamedBody536_67 NamedBody536_68

def NamedBody536_70 : StackLang.HolProg 64 :=
.seq NamedBody536_66 NamedBody536_69

def NamedBody536_71 : StackLang.HolProg 64 :=
.seq NamedBody536_13 NamedBody536_70

def NamedBody536_72 : StackLang.HolProg 64 :=
.seq NamedBody536_10 NamedBody536_71

def NamedBody536_73 : StackLang.HolProg 64 :=
.seq NamedBody536_9 NamedBody536_72

def NamedBody536_74 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody536_75 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 3#64)

def NamedBody536_76 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 48#64))

def NamedBody536_77 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 11
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 40#64))

def NamedBody536_78 : StackLang.HolProg 64 :=
.seq NamedBody536_76 NamedBody536_77

def NamedBody536_79 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody536_80 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1776#64)

def NamedBody536_81 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody536_82 : StackLang.HolProg 64 :=
.seq NamedBody536_80 NamedBody536_81

def NamedBody536_83 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody536_84 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 2#64)

def NamedBody536_85 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 10

def NamedBody536_86 : StackLang.HolProg 64 :=
.seq NamedBody536_84 NamedBody536_85

def NamedBody536_87 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody536_88 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) NamedBody536_86 NamedBody536_87

def NamedBody536_89 : StackLang.HolProg 64 :=
.seq NamedBody536_83 NamedBody536_88

def NamedBody536_90 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def NamedBody536_91 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody536_92 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 536 5

def NamedBody536_93 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody536_94 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody536_95 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody536_96 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody536_97 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def NamedBody536_98 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def NamedBody536_99 : StackLang.HolProg 64 :=
.seq NamedBody536_97 NamedBody536_98

def NamedBody536_100 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def NamedBody536_101 : StackLang.HolProg 64 :=
.seq NamedBody536_99 NamedBody536_100

def NamedBody536_102 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody536_103 : StackLang.HolProg 64 :=
.seq NamedBody536_101 NamedBody536_102

def NamedBody536_104 : StackLang.HolProg 64 :=
.seq NamedBody536_96 NamedBody536_103

def NamedBody536_105 : StackLang.HolProg 64 :=
.seq NamedBody536_95 NamedBody536_104

def NamedBody536_106 : StackLang.HolProg 64 :=
.seq NamedBody536_94 NamedBody536_105

def NamedBody536_107 : StackLang.HolProg 64 :=
.seq NamedBody536_93 NamedBody536_106

def NamedBody536_108 : StackLang.HolProg 64 :=
.seq NamedBody536_92 NamedBody536_107

def NamedBody536_109 : StackLang.HolProg 64 :=
.seq NamedBody536_91 NamedBody536_108

def NamedBody536_110 : StackLang.HolProg 64 :=
.seq NamedBody536_90 NamedBody536_109

def NamedBody536_111 : StackLang.HolProg 64 :=
.seq NamedBody536_89 NamedBody536_110

def NamedBody536_112 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody536_113 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody536_114 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody536_115 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody536_116 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody536_117 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody536_118 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody536_119 : StackLang.HolProg 64 :=
.seq NamedBody536_117 NamedBody536_118

def NamedBody536_120 : StackLang.HolProg 64 :=
.seq NamedBody536_116 NamedBody536_119

def NamedBody536_121 : StackLang.HolProg 64 :=
.seq NamedBody536_115 NamedBody536_120

def NamedBody536_122 : StackLang.HolProg 64 :=
.seq NamedBody536_114 NamedBody536_121

def NamedBody536_123 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody536_124 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def NamedBody536_125 : StackLang.HolProg 64 :=
.seq NamedBody536_123 NamedBody536_124

def NamedBody536_126 : StackLang.HolProg 64 :=
.call (some (NamedBody536_122, 1, 536, 4)) (Sum.inl 470) (some (NamedBody536_125, 536, 5))

def NamedBody536_127 : StackLang.HolProg 64 :=
.seq NamedBody536_113 NamedBody536_126

def NamedBody536_128 : StackLang.HolProg 64 :=
.seq NamedBody536_112 NamedBody536_127

def NamedBody536_129 : StackLang.HolProg 64 :=
.seq NamedBody536_111 NamedBody536_128

def NamedBody536_130 : StackLang.HolProg 64 :=
.seq NamedBody536_82 NamedBody536_129

def NamedBody536_131 : StackLang.HolProg 64 :=
.seq NamedBody536_79 NamedBody536_130

def NamedBody536_132 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody536_133 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody536_134 : StackLang.HolProg 64 :=
.seq NamedBody536_132 NamedBody536_133

def NamedBody536_135 : StackLang.HolProg 64 :=
.seq NamedBody536_131 NamedBody536_134

def NamedBody536_136 : StackLang.HolProg 64 :=
.seq NamedBody536_78 NamedBody536_135

def NamedBody536_137 : StackLang.HolProg 64 :=
.seq NamedBody536_75 NamedBody536_136

def NamedBody536_138 : StackLang.HolProg 64 :=
.seq NamedBody536_74 NamedBody536_137

def NamedBody536_139 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.equal) 11 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 10) NamedBody536_73 NamedBody536_138

def NamedBody536_140 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody536_141 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody536_142 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody536_143 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1777#64)

def NamedBody536_144 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody536_145 : StackLang.HolProg 64 :=
.seq NamedBody536_143 NamedBody536_144

def NamedBody536_146 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody536_147 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 2#64)

def NamedBody536_148 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 10

def NamedBody536_149 : StackLang.HolProg 64 :=
.seq NamedBody536_147 NamedBody536_148

def NamedBody536_150 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody536_151 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) NamedBody536_149 NamedBody536_150

def NamedBody536_152 : StackLang.HolProg 64 :=
.seq NamedBody536_146 NamedBody536_151

def NamedBody536_153 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def NamedBody536_154 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody536_155 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 536 7

def NamedBody536_156 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody536_157 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody536_158 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody536_159 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody536_160 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def NamedBody536_161 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def NamedBody536_162 : StackLang.HolProg 64 :=
.seq NamedBody536_160 NamedBody536_161

def NamedBody536_163 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def NamedBody536_164 : StackLang.HolProg 64 :=
.seq NamedBody536_162 NamedBody536_163

def NamedBody536_165 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody536_166 : StackLang.HolProg 64 :=
.seq NamedBody536_164 NamedBody536_165

def NamedBody536_167 : StackLang.HolProg 64 :=
.seq NamedBody536_159 NamedBody536_166

def NamedBody536_168 : StackLang.HolProg 64 :=
.seq NamedBody536_158 NamedBody536_167

def NamedBody536_169 : StackLang.HolProg 64 :=
.seq NamedBody536_157 NamedBody536_168

def NamedBody536_170 : StackLang.HolProg 64 :=
.seq NamedBody536_156 NamedBody536_169

def NamedBody536_171 : StackLang.HolProg 64 :=
.seq NamedBody536_155 NamedBody536_170

def NamedBody536_172 : StackLang.HolProg 64 :=
.seq NamedBody536_154 NamedBody536_171

def NamedBody536_173 : StackLang.HolProg 64 :=
.seq NamedBody536_153 NamedBody536_172

def NamedBody536_174 : StackLang.HolProg 64 :=
.seq NamedBody536_152 NamedBody536_173

def NamedBody536_175 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody536_176 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody536_177 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody536_178 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody536_179 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody536_180 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody536_181 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 1 10
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 10)))

def NamedBody536_182 : StackLang.HolProg 64 :=
.seq NamedBody536_180 NamedBody536_181

def NamedBody536_183 : StackLang.HolProg 64 :=
.seq NamedBody536_179 NamedBody536_182

def NamedBody536_184 : StackLang.HolProg 64 :=
.seq NamedBody536_178 NamedBody536_183

def NamedBody536_185 : StackLang.HolProg 64 :=
.seq NamedBody536_177 NamedBody536_184

def NamedBody536_186 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody536_187 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def NamedBody536_188 : StackLang.HolProg 64 :=
.seq NamedBody536_186 NamedBody536_187

def NamedBody536_189 : StackLang.HolProg 64 :=
.call (some (NamedBody536_185, 1, 536, 6)) (Sum.inl 69) (some (NamedBody536_188, 536, 7))

def NamedBody536_190 : StackLang.HolProg 64 :=
.seq NamedBody536_176 NamedBody536_189

def NamedBody536_191 : StackLang.HolProg 64 :=
.seq NamedBody536_175 NamedBody536_190

def NamedBody536_192 : StackLang.HolProg 64 :=
.seq NamedBody536_174 NamedBody536_191

def NamedBody536_193 : StackLang.HolProg 64 :=
.seq NamedBody536_145 NamedBody536_192

def NamedBody536_194 : StackLang.HolProg 64 :=
.seq NamedBody536_142 NamedBody536_193

def NamedBody536_195 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody536_196 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 32#64)

def NamedBody536_197 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 24#64))

def NamedBody536_198 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody536_199 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1778#64)

def NamedBody536_200 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody536_201 : StackLang.HolProg 64 :=
.seq NamedBody536_199 NamedBody536_200

def NamedBody536_202 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody536_203 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 2#64)

def NamedBody536_204 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 10

def NamedBody536_205 : StackLang.HolProg 64 :=
.seq NamedBody536_203 NamedBody536_204

def NamedBody536_206 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody536_207 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) NamedBody536_205 NamedBody536_206

def NamedBody536_208 : StackLang.HolProg 64 :=
.seq NamedBody536_202 NamedBody536_207

def NamedBody536_209 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def NamedBody536_210 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody536_211 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 536 9

def NamedBody536_212 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody536_213 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody536_214 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody536_215 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody536_216 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def NamedBody536_217 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def NamedBody536_218 : StackLang.HolProg 64 :=
.seq NamedBody536_216 NamedBody536_217

def NamedBody536_219 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def NamedBody536_220 : StackLang.HolProg 64 :=
.seq NamedBody536_218 NamedBody536_219

def NamedBody536_221 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody536_222 : StackLang.HolProg 64 :=
.seq NamedBody536_220 NamedBody536_221

def NamedBody536_223 : StackLang.HolProg 64 :=
.seq NamedBody536_215 NamedBody536_222

def NamedBody536_224 : StackLang.HolProg 64 :=
.seq NamedBody536_214 NamedBody536_223

def NamedBody536_225 : StackLang.HolProg 64 :=
.seq NamedBody536_213 NamedBody536_224

def NamedBody536_226 : StackLang.HolProg 64 :=
.seq NamedBody536_212 NamedBody536_225

def NamedBody536_227 : StackLang.HolProg 64 :=
.seq NamedBody536_211 NamedBody536_226

def NamedBody536_228 : StackLang.HolProg 64 :=
.seq NamedBody536_210 NamedBody536_227

def NamedBody536_229 : StackLang.HolProg 64 :=
.seq NamedBody536_209 NamedBody536_228

def NamedBody536_230 : StackLang.HolProg 64 :=
.seq NamedBody536_208 NamedBody536_229

def NamedBody536_231 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody536_232 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody536_233 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody536_234 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody536_235 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody536_236 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody536_237 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 5 10
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 10)))

def NamedBody536_238 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 13
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 40#64))

def NamedBody536_239 : StackLang.HolProg 64 :=
.seq NamedBody536_237 NamedBody536_238

def NamedBody536_240 : StackLang.HolProg 64 :=
.seq NamedBody536_236 NamedBody536_239

def NamedBody536_241 : StackLang.HolProg 64 :=
.seq NamedBody536_235 NamedBody536_240

def NamedBody536_242 : StackLang.HolProg 64 :=
.seq NamedBody536_234 NamedBody536_241

def NamedBody536_243 : StackLang.HolProg 64 :=
.seq NamedBody536_233 NamedBody536_242

def NamedBody536_244 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 13
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 40#64))

def NamedBody536_245 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def NamedBody536_246 : StackLang.HolProg 64 :=
.seq NamedBody536_244 NamedBody536_245

def NamedBody536_247 : StackLang.HolProg 64 :=
.call (some (NamedBody536_243, 1, 536, 8)) (Sum.inl 68) (some (NamedBody536_246, 536, 9))

def NamedBody536_248 : StackLang.HolProg 64 :=
.seq NamedBody536_232 NamedBody536_247

def NamedBody536_249 : StackLang.HolProg 64 :=
.seq NamedBody536_231 NamedBody536_248

def NamedBody536_250 : StackLang.HolProg 64 :=
.seq NamedBody536_230 NamedBody536_249

def NamedBody536_251 : StackLang.HolProg 64 :=
.seq NamedBody536_201 NamedBody536_250

def NamedBody536_252 : StackLang.HolProg 64 :=
.seq NamedBody536_198 NamedBody536_251

def NamedBody536_253 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody536_254 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551592#64))

def NamedBody536_255 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsl 1 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 1#64)))

def NamedBody536_256 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 1 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 26)))

def NamedBody536_257 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 1 18446744073709551360#64))

def NamedBody536_258 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 10
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 1 48#64))

def NamedBody536_259 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody536_260 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 11
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 1 56#64))

def NamedBody536_261 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody536_262 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 1 0#64))

def NamedBody536_263 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 12 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 1#64)))

def NamedBody536_264 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 5
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 40#64))

def NamedBody536_265 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 13
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 32#64))

def NamedBody536_266 : StackLang.HolProg 64 :=
.seq NamedBody536_264 NamedBody536_265

def NamedBody536_267 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody536_268 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1779#64)

def NamedBody536_269 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody536_270 : StackLang.HolProg 64 :=
.seq NamedBody536_268 NamedBody536_269

def NamedBody536_271 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody536_272 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 2#64)

def NamedBody536_273 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 10

def NamedBody536_274 : StackLang.HolProg 64 :=
.seq NamedBody536_272 NamedBody536_273

def NamedBody536_275 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody536_276 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) NamedBody536_274 NamedBody536_275

def NamedBody536_277 : StackLang.HolProg 64 :=
.seq NamedBody536_271 NamedBody536_276

def NamedBody536_278 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def NamedBody536_279 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody536_280 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 536 11

def NamedBody536_281 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody536_282 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody536_283 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody536_284 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody536_285 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def NamedBody536_286 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def NamedBody536_287 : StackLang.HolProg 64 :=
.seq NamedBody536_285 NamedBody536_286

def NamedBody536_288 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def NamedBody536_289 : StackLang.HolProg 64 :=
.seq NamedBody536_287 NamedBody536_288

def NamedBody536_290 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody536_291 : StackLang.HolProg 64 :=
.seq NamedBody536_289 NamedBody536_290

def NamedBody536_292 : StackLang.HolProg 64 :=
.seq NamedBody536_284 NamedBody536_291

def NamedBody536_293 : StackLang.HolProg 64 :=
.seq NamedBody536_283 NamedBody536_292

def NamedBody536_294 : StackLang.HolProg 64 :=
.seq NamedBody536_282 NamedBody536_293

def NamedBody536_295 : StackLang.HolProg 64 :=
.seq NamedBody536_281 NamedBody536_294

def NamedBody536_296 : StackLang.HolProg 64 :=
.seq NamedBody536_280 NamedBody536_295

def NamedBody536_297 : StackLang.HolProg 64 :=
.seq NamedBody536_279 NamedBody536_296

def NamedBody536_298 : StackLang.HolProg 64 :=
.seq NamedBody536_278 NamedBody536_297

def NamedBody536_299 : StackLang.HolProg 64 :=
.seq NamedBody536_277 NamedBody536_298

def NamedBody536_300 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody536_301 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody536_302 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody536_303 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody536_304 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody536_305 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody536_306 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 40#64))

def NamedBody536_307 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 11
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 32#64))

def NamedBody536_308 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 24#64))

def NamedBody536_309 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 40#64))

def NamedBody536_310 : StackLang.HolProg 64 :=
.seq NamedBody536_308 NamedBody536_309

def NamedBody536_311 : StackLang.HolProg 64 :=
.seq NamedBody536_307 NamedBody536_310

def NamedBody536_312 : StackLang.HolProg 64 :=
.seq NamedBody536_306 NamedBody536_311

def NamedBody536_313 : StackLang.HolProg 64 :=
.seq NamedBody536_305 NamedBody536_312

def NamedBody536_314 : StackLang.HolProg 64 :=
.seq NamedBody536_304 NamedBody536_313

def NamedBody536_315 : StackLang.HolProg 64 :=
.seq NamedBody536_303 NamedBody536_314

def NamedBody536_316 : StackLang.HolProg 64 :=
.seq NamedBody536_302 NamedBody536_315

def NamedBody536_317 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 40#64))

def NamedBody536_318 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 11
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 32#64))

def NamedBody536_319 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 24#64))

def NamedBody536_320 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 40#64))

def NamedBody536_321 : StackLang.HolProg 64 :=
.seq NamedBody536_319 NamedBody536_320

def NamedBody536_322 : StackLang.HolProg 64 :=
.seq NamedBody536_318 NamedBody536_321

def NamedBody536_323 : StackLang.HolProg 64 :=
.seq NamedBody536_317 NamedBody536_322

def NamedBody536_324 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def NamedBody536_325 : StackLang.HolProg 64 :=
.seq NamedBody536_323 NamedBody536_324

def NamedBody536_326 : StackLang.HolProg 64 :=
.call (some (NamedBody536_316, 1, 536, 10)) (Sum.inl 484) (some (NamedBody536_325, 536, 11))

def NamedBody536_327 : StackLang.HolProg 64 :=
.seq NamedBody536_301 NamedBody536_326

def NamedBody536_328 : StackLang.HolProg 64 :=
.seq NamedBody536_300 NamedBody536_327

def NamedBody536_329 : StackLang.HolProg 64 :=
.seq NamedBody536_299 NamedBody536_328

def NamedBody536_330 : StackLang.HolProg 64 :=
.seq NamedBody536_270 NamedBody536_329

def NamedBody536_331 : StackLang.HolProg 64 :=
.seq NamedBody536_267 NamedBody536_330

def NamedBody536_332 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody536_333 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 10 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def NamedBody536_334 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 11
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 32#64))

def NamedBody536_335 : StackLang.HolProg 64 :=
.seq NamedBody536_333 NamedBody536_334

def NamedBody536_336 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody536_337 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1780#64)

def NamedBody536_338 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody536_339 : StackLang.HolProg 64 :=
.seq NamedBody536_337 NamedBody536_338

def NamedBody536_340 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody536_341 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 2#64)

def NamedBody536_342 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 10

def NamedBody536_343 : StackLang.HolProg 64 :=
.seq NamedBody536_341 NamedBody536_342

def NamedBody536_344 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody536_345 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) NamedBody536_343 NamedBody536_344

def NamedBody536_346 : StackLang.HolProg 64 :=
.seq NamedBody536_340 NamedBody536_345

def NamedBody536_347 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def NamedBody536_348 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody536_349 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 536 13

def NamedBody536_350 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody536_351 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody536_352 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody536_353 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody536_354 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def NamedBody536_355 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def NamedBody536_356 : StackLang.HolProg 64 :=
.seq NamedBody536_354 NamedBody536_355

def NamedBody536_357 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def NamedBody536_358 : StackLang.HolProg 64 :=
.seq NamedBody536_356 NamedBody536_357

def NamedBody536_359 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody536_360 : StackLang.HolProg 64 :=
.seq NamedBody536_358 NamedBody536_359

def NamedBody536_361 : StackLang.HolProg 64 :=
.seq NamedBody536_353 NamedBody536_360

def NamedBody536_362 : StackLang.HolProg 64 :=
.seq NamedBody536_352 NamedBody536_361

def NamedBody536_363 : StackLang.HolProg 64 :=
.seq NamedBody536_351 NamedBody536_362

def NamedBody536_364 : StackLang.HolProg 64 :=
.seq NamedBody536_350 NamedBody536_363

def NamedBody536_365 : StackLang.HolProg 64 :=
.seq NamedBody536_349 NamedBody536_364

def NamedBody536_366 : StackLang.HolProg 64 :=
.seq NamedBody536_348 NamedBody536_365

def NamedBody536_367 : StackLang.HolProg 64 :=
.seq NamedBody536_347 NamedBody536_366

def NamedBody536_368 : StackLang.HolProg 64 :=
.seq NamedBody536_346 NamedBody536_367

def NamedBody536_369 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody536_370 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody536_371 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody536_372 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody536_373 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody536_374 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody536_375 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 5 10
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 10)))

def NamedBody536_376 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 40#64))

def NamedBody536_377 : StackLang.HolProg 64 :=
.seq NamedBody536_375 NamedBody536_376

def NamedBody536_378 : StackLang.HolProg 64 :=
.seq NamedBody536_374 NamedBody536_377

def NamedBody536_379 : StackLang.HolProg 64 :=
.seq NamedBody536_373 NamedBody536_378

def NamedBody536_380 : StackLang.HolProg 64 :=
.seq NamedBody536_372 NamedBody536_379

def NamedBody536_381 : StackLang.HolProg 64 :=
.seq NamedBody536_371 NamedBody536_380

def NamedBody536_382 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 40#64))

def NamedBody536_383 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def NamedBody536_384 : StackLang.HolProg 64 :=
.seq NamedBody536_382 NamedBody536_383

def NamedBody536_385 : StackLang.HolProg 64 :=
.call (some (NamedBody536_381, 1, 536, 12)) (Sum.inl 146) (some (NamedBody536_384, 536, 13))

def NamedBody536_386 : StackLang.HolProg 64 :=
.seq NamedBody536_370 NamedBody536_385

def NamedBody536_387 : StackLang.HolProg 64 :=
.seq NamedBody536_369 NamedBody536_386

def NamedBody536_388 : StackLang.HolProg 64 :=
.seq NamedBody536_368 NamedBody536_387

def NamedBody536_389 : StackLang.HolProg 64 :=
.seq NamedBody536_339 NamedBody536_388

def NamedBody536_390 : StackLang.HolProg 64 :=
.seq NamedBody536_336 NamedBody536_389

def NamedBody536_391 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody536_392 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 10 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def NamedBody536_393 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 13
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 40#64))

def NamedBody536_394 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 11
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 24#64))

def NamedBody536_395 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 5
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody536_396 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 12
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody536_397 : StackLang.HolProg 64 :=
.seq NamedBody536_395 NamedBody536_396

def NamedBody536_398 : StackLang.HolProg 64 :=
.seq NamedBody536_394 NamedBody536_397

def NamedBody536_399 : StackLang.HolProg 64 :=
.seq NamedBody536_393 NamedBody536_398

def NamedBody536_400 : StackLang.HolProg 64 :=
.seq NamedBody536_392 NamedBody536_399

def NamedBody536_401 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody536_402 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1781#64)

def NamedBody536_403 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody536_404 : StackLang.HolProg 64 :=
.seq NamedBody536_402 NamedBody536_403

def NamedBody536_405 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody536_406 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 2#64)

def NamedBody536_407 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 10

def NamedBody536_408 : StackLang.HolProg 64 :=
.seq NamedBody536_406 NamedBody536_407

def NamedBody536_409 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody536_410 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) NamedBody536_408 NamedBody536_409

def NamedBody536_411 : StackLang.HolProg 64 :=
.seq NamedBody536_405 NamedBody536_410

def NamedBody536_412 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def NamedBody536_413 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody536_414 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 536 15

def NamedBody536_415 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody536_416 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody536_417 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody536_418 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody536_419 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def NamedBody536_420 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def NamedBody536_421 : StackLang.HolProg 64 :=
.seq NamedBody536_419 NamedBody536_420

def NamedBody536_422 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def NamedBody536_423 : StackLang.HolProg 64 :=
.seq NamedBody536_421 NamedBody536_422

def NamedBody536_424 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody536_425 : StackLang.HolProg 64 :=
.seq NamedBody536_423 NamedBody536_424

def NamedBody536_426 : StackLang.HolProg 64 :=
.seq NamedBody536_418 NamedBody536_425

def NamedBody536_427 : StackLang.HolProg 64 :=
.seq NamedBody536_417 NamedBody536_426

def NamedBody536_428 : StackLang.HolProg 64 :=
.seq NamedBody536_416 NamedBody536_427

def NamedBody536_429 : StackLang.HolProg 64 :=
.seq NamedBody536_415 NamedBody536_428

def NamedBody536_430 : StackLang.HolProg 64 :=
.seq NamedBody536_414 NamedBody536_429

def NamedBody536_431 : StackLang.HolProg 64 :=
.seq NamedBody536_413 NamedBody536_430

def NamedBody536_432 : StackLang.HolProg 64 :=
.seq NamedBody536_412 NamedBody536_431

def NamedBody536_433 : StackLang.HolProg 64 :=
.seq NamedBody536_411 NamedBody536_432

def NamedBody536_434 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody536_435 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody536_436 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody536_437 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody536_438 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody536_439 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody536_440 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 13
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 40#64))

def NamedBody536_441 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 32#64))

def NamedBody536_442 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 40#64))

def NamedBody536_443 : StackLang.HolProg 64 :=
.seq NamedBody536_441 NamedBody536_442

def NamedBody536_444 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 11
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 24#64))

def NamedBody536_445 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody536_446 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 12
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody536_447 : StackLang.HolProg 64 :=
.seq NamedBody536_445 NamedBody536_446

def NamedBody536_448 : StackLang.HolProg 64 :=
.seq NamedBody536_444 NamedBody536_447

def NamedBody536_449 : StackLang.HolProg 64 :=
.seq NamedBody536_443 NamedBody536_448

def NamedBody536_450 : StackLang.HolProg 64 :=
.seq NamedBody536_440 NamedBody536_449

def NamedBody536_451 : StackLang.HolProg 64 :=
.seq NamedBody536_439 NamedBody536_450

def NamedBody536_452 : StackLang.HolProg 64 :=
.seq NamedBody536_438 NamedBody536_451

def NamedBody536_453 : StackLang.HolProg 64 :=
.seq NamedBody536_437 NamedBody536_452

def NamedBody536_454 : StackLang.HolProg 64 :=
.seq NamedBody536_436 NamedBody536_453

def NamedBody536_455 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 13
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 40#64))

def NamedBody536_456 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 32#64))

def NamedBody536_457 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 40#64))

def NamedBody536_458 : StackLang.HolProg 64 :=
.seq NamedBody536_456 NamedBody536_457

def NamedBody536_459 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 11
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 24#64))

def NamedBody536_460 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody536_461 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 12
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody536_462 : StackLang.HolProg 64 :=
.seq NamedBody536_460 NamedBody536_461

def NamedBody536_463 : StackLang.HolProg 64 :=
.seq NamedBody536_459 NamedBody536_462

def NamedBody536_464 : StackLang.HolProg 64 :=
.seq NamedBody536_458 NamedBody536_463

def NamedBody536_465 : StackLang.HolProg 64 :=
.seq NamedBody536_455 NamedBody536_464

def NamedBody536_466 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def NamedBody536_467 : StackLang.HolProg 64 :=
.seq NamedBody536_465 NamedBody536_466

def NamedBody536_468 : StackLang.HolProg 64 :=
.call (some (NamedBody536_454, 1, 536, 14)) (Sum.inl 70) (some (NamedBody536_467, 536, 15))

def NamedBody536_469 : StackLang.HolProg 64 :=
.seq NamedBody536_435 NamedBody536_468

def NamedBody536_470 : StackLang.HolProg 64 :=
.seq NamedBody536_434 NamedBody536_469

def NamedBody536_471 : StackLang.HolProg 64 :=
.seq NamedBody536_433 NamedBody536_470

def NamedBody536_472 : StackLang.HolProg 64 :=
.seq NamedBody536_404 NamedBody536_471

def NamedBody536_473 : StackLang.HolProg 64 :=
.seq NamedBody536_401 NamedBody536_472

def NamedBody536_474 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody536_475 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 10 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def NamedBody536_476 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody536_477 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1782#64)

def NamedBody536_478 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody536_479 : StackLang.HolProg 64 :=
.seq NamedBody536_477 NamedBody536_478

def NamedBody536_480 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody536_481 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 2#64)

def NamedBody536_482 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 10

def NamedBody536_483 : StackLang.HolProg 64 :=
.seq NamedBody536_481 NamedBody536_482

def NamedBody536_484 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody536_485 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) NamedBody536_483 NamedBody536_484

def NamedBody536_486 : StackLang.HolProg 64 :=
.seq NamedBody536_480 NamedBody536_485

def NamedBody536_487 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def NamedBody536_488 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody536_489 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 536 17

def NamedBody536_490 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody536_491 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody536_492 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody536_493 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody536_494 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def NamedBody536_495 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def NamedBody536_496 : StackLang.HolProg 64 :=
.seq NamedBody536_494 NamedBody536_495

def NamedBody536_497 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def NamedBody536_498 : StackLang.HolProg 64 :=
.seq NamedBody536_496 NamedBody536_497

def NamedBody536_499 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody536_500 : StackLang.HolProg 64 :=
.seq NamedBody536_498 NamedBody536_499

def NamedBody536_501 : StackLang.HolProg 64 :=
.seq NamedBody536_493 NamedBody536_500

def NamedBody536_502 : StackLang.HolProg 64 :=
.seq NamedBody536_492 NamedBody536_501

def NamedBody536_503 : StackLang.HolProg 64 :=
.seq NamedBody536_491 NamedBody536_502

def NamedBody536_504 : StackLang.HolProg 64 :=
.seq NamedBody536_490 NamedBody536_503

def NamedBody536_505 : StackLang.HolProg 64 :=
.seq NamedBody536_489 NamedBody536_504

def NamedBody536_506 : StackLang.HolProg 64 :=
.seq NamedBody536_488 NamedBody536_505

def NamedBody536_507 : StackLang.HolProg 64 :=
.seq NamedBody536_487 NamedBody536_506

def NamedBody536_508 : StackLang.HolProg 64 :=
.seq NamedBody536_486 NamedBody536_507

def NamedBody536_509 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody536_510 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody536_511 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody536_512 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody536_513 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody536_514 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody536_515 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 40#64))

def NamedBody536_516 : StackLang.HolProg 64 :=
.seq NamedBody536_514 NamedBody536_515

def NamedBody536_517 : StackLang.HolProg 64 :=
.seq NamedBody536_513 NamedBody536_516

def NamedBody536_518 : StackLang.HolProg 64 :=
.seq NamedBody536_512 NamedBody536_517

def NamedBody536_519 : StackLang.HolProg 64 :=
.seq NamedBody536_511 NamedBody536_518

def NamedBody536_520 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 40#64))

def NamedBody536_521 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def NamedBody536_522 : StackLang.HolProg 64 :=
.seq NamedBody536_520 NamedBody536_521

def NamedBody536_523 : StackLang.HolProg 64 :=
.call (some (NamedBody536_519, 1, 536, 16)) (Sum.inl 476) (some (NamedBody536_522, 536, 17))

def NamedBody536_524 : StackLang.HolProg 64 :=
.seq NamedBody536_510 NamedBody536_523

def NamedBody536_525 : StackLang.HolProg 64 :=
.seq NamedBody536_509 NamedBody536_524

def NamedBody536_526 : StackLang.HolProg 64 :=
.seq NamedBody536_508 NamedBody536_525

def NamedBody536_527 : StackLang.HolProg 64 :=
.seq NamedBody536_479 NamedBody536_526

def NamedBody536_528 : StackLang.HolProg 64 :=
.seq NamedBody536_476 NamedBody536_527

def NamedBody536_529 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody536_530 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody536_531 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 10 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 1#64)))

def NamedBody536_532 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody536_533 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody536_534 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1783#64)

def NamedBody536_535 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody536_536 : StackLang.HolProg 64 :=
.seq NamedBody536_534 NamedBody536_535

def NamedBody536_537 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody536_538 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 2#64)

def NamedBody536_539 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 10

def NamedBody536_540 : StackLang.HolProg 64 :=
.seq NamedBody536_538 NamedBody536_539

def NamedBody536_541 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody536_542 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) NamedBody536_540 NamedBody536_541

def NamedBody536_543 : StackLang.HolProg 64 :=
.seq NamedBody536_537 NamedBody536_542

def NamedBody536_544 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def NamedBody536_545 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody536_546 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 536 19

def NamedBody536_547 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody536_548 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody536_549 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody536_550 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody536_551 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def NamedBody536_552 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def NamedBody536_553 : StackLang.HolProg 64 :=
.seq NamedBody536_551 NamedBody536_552

def NamedBody536_554 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def NamedBody536_555 : StackLang.HolProg 64 :=
.seq NamedBody536_553 NamedBody536_554

def NamedBody536_556 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody536_557 : StackLang.HolProg 64 :=
.seq NamedBody536_555 NamedBody536_556

def NamedBody536_558 : StackLang.HolProg 64 :=
.seq NamedBody536_550 NamedBody536_557

def NamedBody536_559 : StackLang.HolProg 64 :=
.seq NamedBody536_549 NamedBody536_558

def NamedBody536_560 : StackLang.HolProg 64 :=
.seq NamedBody536_548 NamedBody536_559

def NamedBody536_561 : StackLang.HolProg 64 :=
.seq NamedBody536_547 NamedBody536_560

def NamedBody536_562 : StackLang.HolProg 64 :=
.seq NamedBody536_546 NamedBody536_561

def NamedBody536_563 : StackLang.HolProg 64 :=
.seq NamedBody536_545 NamedBody536_562

def NamedBody536_564 : StackLang.HolProg 64 :=
.seq NamedBody536_544 NamedBody536_563

def NamedBody536_565 : StackLang.HolProg 64 :=
.seq NamedBody536_543 NamedBody536_564

def NamedBody536_566 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody536_567 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody536_568 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody536_569 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody536_570 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody536_571 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody536_572 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 48#64))

def NamedBody536_573 : StackLang.HolProg 64 :=
.seq NamedBody536_571 NamedBody536_572

def NamedBody536_574 : StackLang.HolProg 64 :=
.seq NamedBody536_570 NamedBody536_573

def NamedBody536_575 : StackLang.HolProg 64 :=
.seq NamedBody536_569 NamedBody536_574

def NamedBody536_576 : StackLang.HolProg 64 :=
.seq NamedBody536_568 NamedBody536_575

def NamedBody536_577 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 48#64))

def NamedBody536_578 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def NamedBody536_579 : StackLang.HolProg 64 :=
.seq NamedBody536_577 NamedBody536_578

def NamedBody536_580 : StackLang.HolProg 64 :=
.call (some (NamedBody536_576, 1, 536, 18)) (Sum.inl 490) (some (NamedBody536_579, 536, 19))

def NamedBody536_581 : StackLang.HolProg 64 :=
.seq NamedBody536_567 NamedBody536_580

def NamedBody536_582 : StackLang.HolProg 64 :=
.seq NamedBody536_566 NamedBody536_581

def NamedBody536_583 : StackLang.HolProg 64 :=
.seq NamedBody536_565 NamedBody536_582

def NamedBody536_584 : StackLang.HolProg 64 :=
.seq NamedBody536_536 NamedBody536_583

def NamedBody536_585 : StackLang.HolProg 64 :=
.seq NamedBody536_533 NamedBody536_584

def NamedBody536_586 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody536_587 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 0#64)

def NamedBody536_588 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody536_589 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 56#64)))

def NamedBody536_590 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 1

def NamedBody536_591 : StackLang.HolProg 64 :=
.seq NamedBody536_589 NamedBody536_590

def NamedBody536_592 : StackLang.HolProg 64 :=
.seq NamedBody536_588 NamedBody536_591

def NamedBody536_593 : StackLang.HolProg 64 :=
.seq NamedBody536_587 NamedBody536_592

def NamedBody536_594 : StackLang.HolProg 64 :=
.seq NamedBody536_586 NamedBody536_593

def NamedBody536_595 : StackLang.HolProg 64 :=
.seq NamedBody536_585 NamedBody536_594

def NamedBody536_596 : StackLang.HolProg 64 :=
.seq NamedBody536_532 NamedBody536_595

def NamedBody536_597 : StackLang.HolProg 64 :=
.seq NamedBody536_531 NamedBody536_596

def NamedBody536_598 : StackLang.HolProg 64 :=
.seq NamedBody536_530 NamedBody536_597

def NamedBody536_599 : StackLang.HolProg 64 :=
.seq NamedBody536_529 NamedBody536_598

def NamedBody536_600 : StackLang.HolProg 64 :=
.seq NamedBody536_528 NamedBody536_599

def NamedBody536_601 : StackLang.HolProg 64 :=
.seq NamedBody536_475 NamedBody536_600

def NamedBody536_602 : StackLang.HolProg 64 :=
.seq NamedBody536_474 NamedBody536_601

def NamedBody536_603 : StackLang.HolProg 64 :=
.seq NamedBody536_473 NamedBody536_602

def NamedBody536_604 : StackLang.HolProg 64 :=
.seq NamedBody536_400 NamedBody536_603

def NamedBody536_605 : StackLang.HolProg 64 :=
.seq NamedBody536_391 NamedBody536_604

def NamedBody536_606 : StackLang.HolProg 64 :=
.seq NamedBody536_390 NamedBody536_605

def NamedBody536_607 : StackLang.HolProg 64 :=
.seq NamedBody536_335 NamedBody536_606

def NamedBody536_608 : StackLang.HolProg 64 :=
.seq NamedBody536_332 NamedBody536_607

def NamedBody536_609 : StackLang.HolProg 64 :=
.seq NamedBody536_331 NamedBody536_608

def NamedBody536_610 : StackLang.HolProg 64 :=
.seq NamedBody536_266 NamedBody536_609

def NamedBody536_611 : StackLang.HolProg 64 :=
.seq NamedBody536_263 NamedBody536_610

def NamedBody536_612 : StackLang.HolProg 64 :=
.seq NamedBody536_262 NamedBody536_611

def NamedBody536_613 : StackLang.HolProg 64 :=
.seq NamedBody536_261 NamedBody536_612

def NamedBody536_614 : StackLang.HolProg 64 :=
.seq NamedBody536_260 NamedBody536_613

def NamedBody536_615 : StackLang.HolProg 64 :=
.seq NamedBody536_259 NamedBody536_614

def NamedBody536_616 : StackLang.HolProg 64 :=
.seq NamedBody536_258 NamedBody536_615

def NamedBody536_617 : StackLang.HolProg 64 :=
.seq NamedBody536_257 NamedBody536_616

def NamedBody536_618 : StackLang.HolProg 64 :=
.seq NamedBody536_256 NamedBody536_617

def NamedBody536_619 : StackLang.HolProg 64 :=
.seq NamedBody536_255 NamedBody536_618

def NamedBody536_620 : StackLang.HolProg 64 :=
.seq NamedBody536_254 NamedBody536_619

def NamedBody536_621 : StackLang.HolProg 64 :=
.seq NamedBody536_253 NamedBody536_620

def NamedBody536_622 : StackLang.HolProg 64 :=
.seq NamedBody536_252 NamedBody536_621

def NamedBody536_623 : StackLang.HolProg 64 :=
.seq NamedBody536_197 NamedBody536_622

def NamedBody536_624 : StackLang.HolProg 64 :=
.seq NamedBody536_196 NamedBody536_623

def NamedBody536_625 : StackLang.HolProg 64 :=
.seq NamedBody536_195 NamedBody536_624

def NamedBody536_626 : StackLang.HolProg 64 :=
.seq NamedBody536_194 NamedBody536_625

def NamedBody536_627 : StackLang.HolProg 64 :=
.seq NamedBody536_141 NamedBody536_626

def NamedBody536_628 : StackLang.HolProg 64 :=
.seq NamedBody536_140 NamedBody536_627

def NamedBody536_629 : StackLang.HolProg 64 :=
.seq NamedBody536_139 NamedBody536_628

def NamedBody536_630 : StackLang.HolProg 64 :=
.seq NamedBody536_8 NamedBody536_629

def NamedBody536_631 : StackLang.HolProg 64 :=
.seq NamedBody536_7 NamedBody536_630

def NamedBody536_632 : StackLang.HolProg 64 :=
.seq NamedBody536_6 NamedBody536_631

def Named536 : Nat × StackLang.HolProg 64 := (536, NamedBody536_632)
theorem Named536_eq : StackNames.progCompEntryHOL RiscVConfig.riscvNames Removed536 = Named536 := by
  kernel_rfl
#print axioms Named536_eq
end InitECandidate.Proofs.BackendStages
