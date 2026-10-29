import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.BackendStages.Removed405
import Flapjack.Compiler.Backend.Backend
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
namespace InitECandidate.Proofs.BackendStages
def NamedBody405_0 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 16#64)))

def NamedBody405_1 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 2#64)

def NamedBody405_2 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 10

def NamedBody405_3 : StackLang.HolProg 64 :=
.seq NamedBody405_1 NamedBody405_2

def NamedBody405_4 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody405_5 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) NamedBody405_3 NamedBody405_4

def NamedBody405_6 : StackLang.HolProg 64 :=
.seq NamedBody405_0 NamedBody405_5

def NamedBody405_7 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody405_8 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody405_9 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1206#64)

def NamedBody405_10 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody405_11 : StackLang.HolProg 64 :=
.seq NamedBody405_9 NamedBody405_10

def NamedBody405_12 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody405_13 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 2#64)

def NamedBody405_14 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 10

def NamedBody405_15 : StackLang.HolProg 64 :=
.seq NamedBody405_13 NamedBody405_14

def NamedBody405_16 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody405_17 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) NamedBody405_15 NamedBody405_16

def NamedBody405_18 : StackLang.HolProg 64 :=
.seq NamedBody405_12 NamedBody405_17

def NamedBody405_19 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def NamedBody405_20 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody405_21 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 405 3

def NamedBody405_22 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody405_23 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody405_24 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody405_25 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody405_26 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def NamedBody405_27 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def NamedBody405_28 : StackLang.HolProg 64 :=
.seq NamedBody405_26 NamedBody405_27

def NamedBody405_29 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def NamedBody405_30 : StackLang.HolProg 64 :=
.seq NamedBody405_28 NamedBody405_29

def NamedBody405_31 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody405_32 : StackLang.HolProg 64 :=
.seq NamedBody405_30 NamedBody405_31

def NamedBody405_33 : StackLang.HolProg 64 :=
.seq NamedBody405_25 NamedBody405_32

def NamedBody405_34 : StackLang.HolProg 64 :=
.seq NamedBody405_24 NamedBody405_33

def NamedBody405_35 : StackLang.HolProg 64 :=
.seq NamedBody405_23 NamedBody405_34

def NamedBody405_36 : StackLang.HolProg 64 :=
.seq NamedBody405_22 NamedBody405_35

def NamedBody405_37 : StackLang.HolProg 64 :=
.seq NamedBody405_21 NamedBody405_36

def NamedBody405_38 : StackLang.HolProg 64 :=
.seq NamedBody405_20 NamedBody405_37

def NamedBody405_39 : StackLang.HolProg 64 :=
.seq NamedBody405_19 NamedBody405_38

def NamedBody405_40 : StackLang.HolProg 64 :=
.seq NamedBody405_18 NamedBody405_39

def NamedBody405_41 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody405_42 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody405_43 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody405_44 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody405_45 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody405_46 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody405_47 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 11 10
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 10)))

def NamedBody405_48 : StackLang.HolProg 64 :=
.seq NamedBody405_46 NamedBody405_47

def NamedBody405_49 : StackLang.HolProg 64 :=
.seq NamedBody405_45 NamedBody405_48

def NamedBody405_50 : StackLang.HolProg 64 :=
.seq NamedBody405_44 NamedBody405_49

def NamedBody405_51 : StackLang.HolProg 64 :=
.seq NamedBody405_43 NamedBody405_50

def NamedBody405_52 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody405_53 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def NamedBody405_54 : StackLang.HolProg 64 :=
.seq NamedBody405_52 NamedBody405_53

def NamedBody405_55 : StackLang.HolProg 64 :=
.call (some (NamedBody405_51, 1, 405, 2)) (Sum.inl 404) (some (NamedBody405_54, 405, 3))

def NamedBody405_56 : StackLang.HolProg 64 :=
.seq NamedBody405_42 NamedBody405_55

def NamedBody405_57 : StackLang.HolProg 64 :=
.seq NamedBody405_41 NamedBody405_56

def NamedBody405_58 : StackLang.HolProg 64 :=
.seq NamedBody405_40 NamedBody405_57

def NamedBody405_59 : StackLang.HolProg 64 :=
.seq NamedBody405_11 NamedBody405_58

def NamedBody405_60 : StackLang.HolProg 64 :=
.seq NamedBody405_8 NamedBody405_59

def NamedBody405_61 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody405_62 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody405_63 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 1#64)

def NamedBody405_64 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody405_65 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody405_66 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody405_67 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1207#64)

def NamedBody405_68 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody405_69 : StackLang.HolProg 64 :=
.seq NamedBody405_67 NamedBody405_68

def NamedBody405_70 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody405_71 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 2#64)

def NamedBody405_72 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 10

def NamedBody405_73 : StackLang.HolProg 64 :=
.seq NamedBody405_71 NamedBody405_72

def NamedBody405_74 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody405_75 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) NamedBody405_73 NamedBody405_74

def NamedBody405_76 : StackLang.HolProg 64 :=
.seq NamedBody405_70 NamedBody405_75

def NamedBody405_77 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def NamedBody405_78 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody405_79 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 405 5

def NamedBody405_80 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody405_81 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody405_82 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody405_83 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody405_84 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def NamedBody405_85 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def NamedBody405_86 : StackLang.HolProg 64 :=
.seq NamedBody405_84 NamedBody405_85

def NamedBody405_87 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def NamedBody405_88 : StackLang.HolProg 64 :=
.seq NamedBody405_86 NamedBody405_87

def NamedBody405_89 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody405_90 : StackLang.HolProg 64 :=
.seq NamedBody405_88 NamedBody405_89

def NamedBody405_91 : StackLang.HolProg 64 :=
.seq NamedBody405_83 NamedBody405_90

def NamedBody405_92 : StackLang.HolProg 64 :=
.seq NamedBody405_82 NamedBody405_91

def NamedBody405_93 : StackLang.HolProg 64 :=
.seq NamedBody405_81 NamedBody405_92

def NamedBody405_94 : StackLang.HolProg 64 :=
.seq NamedBody405_80 NamedBody405_93

def NamedBody405_95 : StackLang.HolProg 64 :=
.seq NamedBody405_79 NamedBody405_94

def NamedBody405_96 : StackLang.HolProg 64 :=
.seq NamedBody405_78 NamedBody405_95

def NamedBody405_97 : StackLang.HolProg 64 :=
.seq NamedBody405_77 NamedBody405_96

def NamedBody405_98 : StackLang.HolProg 64 :=
.seq NamedBody405_76 NamedBody405_97

def NamedBody405_99 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody405_100 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody405_101 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody405_102 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody405_103 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody405_104 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody405_105 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 11 10
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 10)))

def NamedBody405_106 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody405_107 : StackLang.HolProg 64 :=
.seq NamedBody405_105 NamedBody405_106

def NamedBody405_108 : StackLang.HolProg 64 :=
.seq NamedBody405_104 NamedBody405_107

def NamedBody405_109 : StackLang.HolProg 64 :=
.seq NamedBody405_103 NamedBody405_108

def NamedBody405_110 : StackLang.HolProg 64 :=
.seq NamedBody405_102 NamedBody405_109

def NamedBody405_111 : StackLang.HolProg 64 :=
.seq NamedBody405_101 NamedBody405_110

def NamedBody405_112 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody405_113 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def NamedBody405_114 : StackLang.HolProg 64 :=
.seq NamedBody405_112 NamedBody405_113

def NamedBody405_115 : StackLang.HolProg 64 :=
.call (some (NamedBody405_111, 1, 405, 4)) (Sum.inl 394) (some (NamedBody405_114, 405, 5))

def NamedBody405_116 : StackLang.HolProg 64 :=
.seq NamedBody405_100 NamedBody405_115

def NamedBody405_117 : StackLang.HolProg 64 :=
.seq NamedBody405_99 NamedBody405_116

def NamedBody405_118 : StackLang.HolProg 64 :=
.seq NamedBody405_98 NamedBody405_117

def NamedBody405_119 : StackLang.HolProg 64 :=
.seq NamedBody405_69 NamedBody405_118

def NamedBody405_120 : StackLang.HolProg 64 :=
.seq NamedBody405_66 NamedBody405_119

def NamedBody405_121 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody405_122 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody405_123 : StackLang.HolProg 64 :=
.seq NamedBody405_121 NamedBody405_122

def NamedBody405_124 : StackLang.HolProg 64 :=
.seq NamedBody405_120 NamedBody405_123

def NamedBody405_125 : StackLang.HolProg 64 :=
.seq NamedBody405_65 NamedBody405_124

def NamedBody405_126 : StackLang.HolProg 64 :=
.seq NamedBody405_64 NamedBody405_125

def NamedBody405_127 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody405_128 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody405_129 : StackLang.HolProg 64 :=
.seq NamedBody405_127 NamedBody405_128

def NamedBody405_130 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.equal) 11 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1) NamedBody405_126 NamedBody405_129

def NamedBody405_131 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody405_132 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 10 11
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 11)))

def NamedBody405_133 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 16#64)))

def NamedBody405_134 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 1

def NamedBody405_135 : StackLang.HolProg 64 :=
.seq NamedBody405_133 NamedBody405_134

def NamedBody405_136 : StackLang.HolProg 64 :=
.seq NamedBody405_132 NamedBody405_135

def NamedBody405_137 : StackLang.HolProg 64 :=
.seq NamedBody405_131 NamedBody405_136

def NamedBody405_138 : StackLang.HolProg 64 :=
.seq NamedBody405_130 NamedBody405_137

def NamedBody405_139 : StackLang.HolProg 64 :=
.seq NamedBody405_63 NamedBody405_138

def NamedBody405_140 : StackLang.HolProg 64 :=
.seq NamedBody405_62 NamedBody405_139

def NamedBody405_141 : StackLang.HolProg 64 :=
.seq NamedBody405_61 NamedBody405_140

def NamedBody405_142 : StackLang.HolProg 64 :=
.seq NamedBody405_60 NamedBody405_141

def NamedBody405_143 : StackLang.HolProg 64 :=
.seq NamedBody405_7 NamedBody405_142

def NamedBody405_144 : StackLang.HolProg 64 :=
.seq NamedBody405_6 NamedBody405_143

def Named405 : Nat × StackLang.HolProg 64 := (405, NamedBody405_144)
theorem Named405_eq : StackNames.progCompEntryHOL RiscVConfig.riscvNames Removed405 = Named405 := by
  kernel_rfl
#print axioms Named405_eq
end InitECandidate.Proofs.BackendStages
