import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.BackendStages.Removed566
import Flapjack.Compiler.Backend.Backend
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
namespace InitECandidate.Proofs.BackendStages
def NamedBody566_0 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 32#64)))

def NamedBody566_1 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 2#64)

def NamedBody566_2 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 10

def NamedBody566_3 : StackLang.HolProg 64 :=
.seq NamedBody566_1 NamedBody566_2

def NamedBody566_4 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody566_5 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) NamedBody566_3 NamedBody566_4

def NamedBody566_6 : StackLang.HolProg 64 :=
.seq NamedBody566_0 NamedBody566_5

def NamedBody566_7 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 24#64))

def NamedBody566_8 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody566_9 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1934#64)

def NamedBody566_10 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody566_11 : StackLang.HolProg 64 :=
.seq NamedBody566_9 NamedBody566_10

def NamedBody566_12 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody566_13 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 2#64)

def NamedBody566_14 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 10

def NamedBody566_15 : StackLang.HolProg 64 :=
.seq NamedBody566_13 NamedBody566_14

def NamedBody566_16 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody566_17 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) NamedBody566_15 NamedBody566_16

def NamedBody566_18 : StackLang.HolProg 64 :=
.seq NamedBody566_12 NamedBody566_17

def NamedBody566_19 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def NamedBody566_20 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody566_21 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 566 3

def NamedBody566_22 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody566_23 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody566_24 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody566_25 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody566_26 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def NamedBody566_27 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def NamedBody566_28 : StackLang.HolProg 64 :=
.seq NamedBody566_26 NamedBody566_27

def NamedBody566_29 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def NamedBody566_30 : StackLang.HolProg 64 :=
.seq NamedBody566_28 NamedBody566_29

def NamedBody566_31 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody566_32 : StackLang.HolProg 64 :=
.seq NamedBody566_30 NamedBody566_31

def NamedBody566_33 : StackLang.HolProg 64 :=
.seq NamedBody566_25 NamedBody566_32

def NamedBody566_34 : StackLang.HolProg 64 :=
.seq NamedBody566_24 NamedBody566_33

def NamedBody566_35 : StackLang.HolProg 64 :=
.seq NamedBody566_23 NamedBody566_34

def NamedBody566_36 : StackLang.HolProg 64 :=
.seq NamedBody566_22 NamedBody566_35

def NamedBody566_37 : StackLang.HolProg 64 :=
.seq NamedBody566_21 NamedBody566_36

def NamedBody566_38 : StackLang.HolProg 64 :=
.seq NamedBody566_20 NamedBody566_37

def NamedBody566_39 : StackLang.HolProg 64 :=
.seq NamedBody566_19 NamedBody566_38

def NamedBody566_40 : StackLang.HolProg 64 :=
.seq NamedBody566_18 NamedBody566_39

def NamedBody566_41 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody566_42 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody566_43 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody566_44 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody566_45 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody566_46 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody566_47 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 1 10
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 10)))

def NamedBody566_48 : StackLang.HolProg 64 :=
.seq NamedBody566_46 NamedBody566_47

def NamedBody566_49 : StackLang.HolProg 64 :=
.seq NamedBody566_45 NamedBody566_48

def NamedBody566_50 : StackLang.HolProg 64 :=
.seq NamedBody566_44 NamedBody566_49

def NamedBody566_51 : StackLang.HolProg 64 :=
.seq NamedBody566_43 NamedBody566_50

def NamedBody566_52 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody566_53 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def NamedBody566_54 : StackLang.HolProg 64 :=
.seq NamedBody566_52 NamedBody566_53

def NamedBody566_55 : StackLang.HolProg 64 :=
.call (some (NamedBody566_51, 1, 566, 2)) (Sum.inl 475) (some (NamedBody566_54, 566, 3))

def NamedBody566_56 : StackLang.HolProg 64 :=
.seq NamedBody566_42 NamedBody566_55

def NamedBody566_57 : StackLang.HolProg 64 :=
.seq NamedBody566_41 NamedBody566_56

def NamedBody566_58 : StackLang.HolProg 64 :=
.seq NamedBody566_40 NamedBody566_57

def NamedBody566_59 : StackLang.HolProg 64 :=
.seq NamedBody566_11 NamedBody566_58

def NamedBody566_60 : StackLang.HolProg 64 :=
.seq NamedBody566_8 NamedBody566_59

def NamedBody566_61 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody566_62 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 10 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def NamedBody566_63 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody566_64 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1935#64)

def NamedBody566_65 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody566_66 : StackLang.HolProg 64 :=
.seq NamedBody566_64 NamedBody566_65

def NamedBody566_67 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody566_68 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 2#64)

def NamedBody566_69 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 10

def NamedBody566_70 : StackLang.HolProg 64 :=
.seq NamedBody566_68 NamedBody566_69

def NamedBody566_71 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody566_72 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) NamedBody566_70 NamedBody566_71

def NamedBody566_73 : StackLang.HolProg 64 :=
.seq NamedBody566_67 NamedBody566_72

def NamedBody566_74 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def NamedBody566_75 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody566_76 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 566 5

def NamedBody566_77 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody566_78 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody566_79 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody566_80 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody566_81 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def NamedBody566_82 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def NamedBody566_83 : StackLang.HolProg 64 :=
.seq NamedBody566_81 NamedBody566_82

def NamedBody566_84 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def NamedBody566_85 : StackLang.HolProg 64 :=
.seq NamedBody566_83 NamedBody566_84

def NamedBody566_86 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody566_87 : StackLang.HolProg 64 :=
.seq NamedBody566_85 NamedBody566_86

def NamedBody566_88 : StackLang.HolProg 64 :=
.seq NamedBody566_80 NamedBody566_87

def NamedBody566_89 : StackLang.HolProg 64 :=
.seq NamedBody566_79 NamedBody566_88

def NamedBody566_90 : StackLang.HolProg 64 :=
.seq NamedBody566_78 NamedBody566_89

def NamedBody566_91 : StackLang.HolProg 64 :=
.seq NamedBody566_77 NamedBody566_90

def NamedBody566_92 : StackLang.HolProg 64 :=
.seq NamedBody566_76 NamedBody566_91

def NamedBody566_93 : StackLang.HolProg 64 :=
.seq NamedBody566_75 NamedBody566_92

def NamedBody566_94 : StackLang.HolProg 64 :=
.seq NamedBody566_74 NamedBody566_93

def NamedBody566_95 : StackLang.HolProg 64 :=
.seq NamedBody566_73 NamedBody566_94

def NamedBody566_96 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody566_97 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody566_98 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody566_99 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody566_100 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody566_101 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody566_102 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 1 10
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 10)))

def NamedBody566_103 : StackLang.HolProg 64 :=
.seq NamedBody566_101 NamedBody566_102

def NamedBody566_104 : StackLang.HolProg 64 :=
.seq NamedBody566_100 NamedBody566_103

def NamedBody566_105 : StackLang.HolProg 64 :=
.seq NamedBody566_99 NamedBody566_104

def NamedBody566_106 : StackLang.HolProg 64 :=
.seq NamedBody566_98 NamedBody566_105

def NamedBody566_107 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody566_108 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def NamedBody566_109 : StackLang.HolProg 64 :=
.seq NamedBody566_107 NamedBody566_108

def NamedBody566_110 : StackLang.HolProg 64 :=
.call (some (NamedBody566_106, 1, 566, 4)) (Sum.inl 466) (some (NamedBody566_109, 566, 5))

def NamedBody566_111 : StackLang.HolProg 64 :=
.seq NamedBody566_97 NamedBody566_110

def NamedBody566_112 : StackLang.HolProg 64 :=
.seq NamedBody566_96 NamedBody566_111

def NamedBody566_113 : StackLang.HolProg 64 :=
.seq NamedBody566_95 NamedBody566_112

def NamedBody566_114 : StackLang.HolProg 64 :=
.seq NamedBody566_66 NamedBody566_113

def NamedBody566_115 : StackLang.HolProg 64 :=
.seq NamedBody566_63 NamedBody566_114

def NamedBody566_116 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody566_117 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 10 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def NamedBody566_118 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody566_119 : StackLang.HolProg 64 :=
.seq NamedBody566_117 NamedBody566_118

def NamedBody566_120 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody566_121 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1936#64)

def NamedBody566_122 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody566_123 : StackLang.HolProg 64 :=
.seq NamedBody566_121 NamedBody566_122

def NamedBody566_124 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody566_125 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 2#64)

def NamedBody566_126 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 10

def NamedBody566_127 : StackLang.HolProg 64 :=
.seq NamedBody566_125 NamedBody566_126

def NamedBody566_128 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody566_129 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) NamedBody566_127 NamedBody566_128

def NamedBody566_130 : StackLang.HolProg 64 :=
.seq NamedBody566_124 NamedBody566_129

def NamedBody566_131 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def NamedBody566_132 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody566_133 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 566 7

def NamedBody566_134 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody566_135 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody566_136 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody566_137 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody566_138 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def NamedBody566_139 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def NamedBody566_140 : StackLang.HolProg 64 :=
.seq NamedBody566_138 NamedBody566_139

def NamedBody566_141 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def NamedBody566_142 : StackLang.HolProg 64 :=
.seq NamedBody566_140 NamedBody566_141

def NamedBody566_143 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody566_144 : StackLang.HolProg 64 :=
.seq NamedBody566_142 NamedBody566_143

def NamedBody566_145 : StackLang.HolProg 64 :=
.seq NamedBody566_137 NamedBody566_144

def NamedBody566_146 : StackLang.HolProg 64 :=
.seq NamedBody566_136 NamedBody566_145

def NamedBody566_147 : StackLang.HolProg 64 :=
.seq NamedBody566_135 NamedBody566_146

def NamedBody566_148 : StackLang.HolProg 64 :=
.seq NamedBody566_134 NamedBody566_147

def NamedBody566_149 : StackLang.HolProg 64 :=
.seq NamedBody566_133 NamedBody566_148

def NamedBody566_150 : StackLang.HolProg 64 :=
.seq NamedBody566_132 NamedBody566_149

def NamedBody566_151 : StackLang.HolProg 64 :=
.seq NamedBody566_131 NamedBody566_150

def NamedBody566_152 : StackLang.HolProg 64 :=
.seq NamedBody566_130 NamedBody566_151

def NamedBody566_153 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody566_154 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody566_155 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody566_156 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody566_157 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody566_158 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody566_159 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 1 10
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 10)))

def NamedBody566_160 : StackLang.HolProg 64 :=
.seq NamedBody566_158 NamedBody566_159

def NamedBody566_161 : StackLang.HolProg 64 :=
.seq NamedBody566_157 NamedBody566_160

def NamedBody566_162 : StackLang.HolProg 64 :=
.seq NamedBody566_156 NamedBody566_161

def NamedBody566_163 : StackLang.HolProg 64 :=
.seq NamedBody566_155 NamedBody566_162

def NamedBody566_164 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody566_165 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def NamedBody566_166 : StackLang.HolProg 64 :=
.seq NamedBody566_164 NamedBody566_165

def NamedBody566_167 : StackLang.HolProg 64 :=
.call (some (NamedBody566_163, 1, 566, 6)) (Sum.inl 495) (some (NamedBody566_166, 566, 7))

def NamedBody566_168 : StackLang.HolProg 64 :=
.seq NamedBody566_154 NamedBody566_167

def NamedBody566_169 : StackLang.HolProg 64 :=
.seq NamedBody566_153 NamedBody566_168

def NamedBody566_170 : StackLang.HolProg 64 :=
.seq NamedBody566_152 NamedBody566_169

def NamedBody566_171 : StackLang.HolProg 64 :=
.seq NamedBody566_123 NamedBody566_170

def NamedBody566_172 : StackLang.HolProg 64 :=
.seq NamedBody566_120 NamedBody566_171

def NamedBody566_173 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody566_174 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody566_175 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 10 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 100#64)))

def NamedBody566_176 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody566_177 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody566_178 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1937#64)

def NamedBody566_179 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody566_180 : StackLang.HolProg 64 :=
.seq NamedBody566_178 NamedBody566_179

def NamedBody566_181 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody566_182 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 2#64)

def NamedBody566_183 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 10

def NamedBody566_184 : StackLang.HolProg 64 :=
.seq NamedBody566_182 NamedBody566_183

def NamedBody566_185 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody566_186 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) NamedBody566_184 NamedBody566_185

def NamedBody566_187 : StackLang.HolProg 64 :=
.seq NamedBody566_181 NamedBody566_186

def NamedBody566_188 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def NamedBody566_189 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody566_190 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 566 9

def NamedBody566_191 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody566_192 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody566_193 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody566_194 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody566_195 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def NamedBody566_196 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def NamedBody566_197 : StackLang.HolProg 64 :=
.seq NamedBody566_195 NamedBody566_196

def NamedBody566_198 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def NamedBody566_199 : StackLang.HolProg 64 :=
.seq NamedBody566_197 NamedBody566_198

def NamedBody566_200 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody566_201 : StackLang.HolProg 64 :=
.seq NamedBody566_199 NamedBody566_200

def NamedBody566_202 : StackLang.HolProg 64 :=
.seq NamedBody566_194 NamedBody566_201

def NamedBody566_203 : StackLang.HolProg 64 :=
.seq NamedBody566_193 NamedBody566_202

def NamedBody566_204 : StackLang.HolProg 64 :=
.seq NamedBody566_192 NamedBody566_203

def NamedBody566_205 : StackLang.HolProg 64 :=
.seq NamedBody566_191 NamedBody566_204

def NamedBody566_206 : StackLang.HolProg 64 :=
.seq NamedBody566_190 NamedBody566_205

def NamedBody566_207 : StackLang.HolProg 64 :=
.seq NamedBody566_189 NamedBody566_206

def NamedBody566_208 : StackLang.HolProg 64 :=
.seq NamedBody566_188 NamedBody566_207

def NamedBody566_209 : StackLang.HolProg 64 :=
.seq NamedBody566_187 NamedBody566_208

def NamedBody566_210 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody566_211 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody566_212 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody566_213 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody566_214 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody566_215 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody566_216 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 11
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody566_217 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody566_218 : StackLang.HolProg 64 :=
.seq NamedBody566_216 NamedBody566_217

def NamedBody566_219 : StackLang.HolProg 64 :=
.seq NamedBody566_215 NamedBody566_218

def NamedBody566_220 : StackLang.HolProg 64 :=
.seq NamedBody566_214 NamedBody566_219

def NamedBody566_221 : StackLang.HolProg 64 :=
.seq NamedBody566_213 NamedBody566_220

def NamedBody566_222 : StackLang.HolProg 64 :=
.seq NamedBody566_212 NamedBody566_221

def NamedBody566_223 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 11
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody566_224 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody566_225 : StackLang.HolProg 64 :=
.seq NamedBody566_223 NamedBody566_224

def NamedBody566_226 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def NamedBody566_227 : StackLang.HolProg 64 :=
.seq NamedBody566_225 NamedBody566_226

def NamedBody566_228 : StackLang.HolProg 64 :=
.call (some (NamedBody566_222, 1, 566, 8)) (Sum.inl 470) (some (NamedBody566_227, 566, 9))

def NamedBody566_229 : StackLang.HolProg 64 :=
.seq NamedBody566_211 NamedBody566_228

def NamedBody566_230 : StackLang.HolProg 64 :=
.seq NamedBody566_210 NamedBody566_229

def NamedBody566_231 : StackLang.HolProg 64 :=
.seq NamedBody566_209 NamedBody566_230

def NamedBody566_232 : StackLang.HolProg 64 :=
.seq NamedBody566_180 NamedBody566_231

def NamedBody566_233 : StackLang.HolProg 64 :=
.seq NamedBody566_177 NamedBody566_232

def NamedBody566_234 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody566_235 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 10 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def NamedBody566_236 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody566_237 : StackLang.HolProg 64 :=
.seq NamedBody566_235 NamedBody566_236

def NamedBody566_238 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody566_239 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1938#64)

def NamedBody566_240 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody566_241 : StackLang.HolProg 64 :=
.seq NamedBody566_239 NamedBody566_240

def NamedBody566_242 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody566_243 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 2#64)

def NamedBody566_244 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 10

def NamedBody566_245 : StackLang.HolProg 64 :=
.seq NamedBody566_243 NamedBody566_244

def NamedBody566_246 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody566_247 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) NamedBody566_245 NamedBody566_246

def NamedBody566_248 : StackLang.HolProg 64 :=
.seq NamedBody566_242 NamedBody566_247

def NamedBody566_249 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def NamedBody566_250 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody566_251 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 566 11

def NamedBody566_252 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody566_253 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody566_254 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody566_255 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody566_256 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def NamedBody566_257 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def NamedBody566_258 : StackLang.HolProg 64 :=
.seq NamedBody566_256 NamedBody566_257

def NamedBody566_259 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def NamedBody566_260 : StackLang.HolProg 64 :=
.seq NamedBody566_258 NamedBody566_259

def NamedBody566_261 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody566_262 : StackLang.HolProg 64 :=
.seq NamedBody566_260 NamedBody566_261

def NamedBody566_263 : StackLang.HolProg 64 :=
.seq NamedBody566_255 NamedBody566_262

def NamedBody566_264 : StackLang.HolProg 64 :=
.seq NamedBody566_254 NamedBody566_263

def NamedBody566_265 : StackLang.HolProg 64 :=
.seq NamedBody566_253 NamedBody566_264

def NamedBody566_266 : StackLang.HolProg 64 :=
.seq NamedBody566_252 NamedBody566_265

def NamedBody566_267 : StackLang.HolProg 64 :=
.seq NamedBody566_251 NamedBody566_266

def NamedBody566_268 : StackLang.HolProg 64 :=
.seq NamedBody566_250 NamedBody566_267

def NamedBody566_269 : StackLang.HolProg 64 :=
.seq NamedBody566_249 NamedBody566_268

def NamedBody566_270 : StackLang.HolProg 64 :=
.seq NamedBody566_248 NamedBody566_269

def NamedBody566_271 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody566_272 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody566_273 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody566_274 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody566_275 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody566_276 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody566_277 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody566_278 : StackLang.HolProg 64 :=
.seq NamedBody566_276 NamedBody566_277

def NamedBody566_279 : StackLang.HolProg 64 :=
.seq NamedBody566_275 NamedBody566_278

def NamedBody566_280 : StackLang.HolProg 64 :=
.seq NamedBody566_274 NamedBody566_279

def NamedBody566_281 : StackLang.HolProg 64 :=
.seq NamedBody566_273 NamedBody566_280

def NamedBody566_282 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody566_283 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def NamedBody566_284 : StackLang.HolProg 64 :=
.seq NamedBody566_282 NamedBody566_283

def NamedBody566_285 : StackLang.HolProg 64 :=
.call (some (NamedBody566_281, 1, 566, 10)) (Sum.inl 496) (some (NamedBody566_284, 566, 11))

def NamedBody566_286 : StackLang.HolProg 64 :=
.seq NamedBody566_272 NamedBody566_285

def NamedBody566_287 : StackLang.HolProg 64 :=
.seq NamedBody566_271 NamedBody566_286

def NamedBody566_288 : StackLang.HolProg 64 :=
.seq NamedBody566_270 NamedBody566_287

def NamedBody566_289 : StackLang.HolProg 64 :=
.seq NamedBody566_241 NamedBody566_288

def NamedBody566_290 : StackLang.HolProg 64 :=
.seq NamedBody566_238 NamedBody566_289

def NamedBody566_291 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody566_292 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 10 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def NamedBody566_293 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody566_294 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1939#64)

def NamedBody566_295 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody566_296 : StackLang.HolProg 64 :=
.seq NamedBody566_294 NamedBody566_295

def NamedBody566_297 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody566_298 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 2#64)

def NamedBody566_299 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 10

def NamedBody566_300 : StackLang.HolProg 64 :=
.seq NamedBody566_298 NamedBody566_299

def NamedBody566_301 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody566_302 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) NamedBody566_300 NamedBody566_301

def NamedBody566_303 : StackLang.HolProg 64 :=
.seq NamedBody566_297 NamedBody566_302

def NamedBody566_304 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def NamedBody566_305 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody566_306 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 566 13

def NamedBody566_307 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody566_308 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody566_309 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody566_310 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody566_311 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def NamedBody566_312 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def NamedBody566_313 : StackLang.HolProg 64 :=
.seq NamedBody566_311 NamedBody566_312

def NamedBody566_314 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def NamedBody566_315 : StackLang.HolProg 64 :=
.seq NamedBody566_313 NamedBody566_314

def NamedBody566_316 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody566_317 : StackLang.HolProg 64 :=
.seq NamedBody566_315 NamedBody566_316

def NamedBody566_318 : StackLang.HolProg 64 :=
.seq NamedBody566_310 NamedBody566_317

def NamedBody566_319 : StackLang.HolProg 64 :=
.seq NamedBody566_309 NamedBody566_318

def NamedBody566_320 : StackLang.HolProg 64 :=
.seq NamedBody566_308 NamedBody566_319

def NamedBody566_321 : StackLang.HolProg 64 :=
.seq NamedBody566_307 NamedBody566_320

def NamedBody566_322 : StackLang.HolProg 64 :=
.seq NamedBody566_306 NamedBody566_321

def NamedBody566_323 : StackLang.HolProg 64 :=
.seq NamedBody566_305 NamedBody566_322

def NamedBody566_324 : StackLang.HolProg 64 :=
.seq NamedBody566_304 NamedBody566_323

def NamedBody566_325 : StackLang.HolProg 64 :=
.seq NamedBody566_303 NamedBody566_324

def NamedBody566_326 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody566_327 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody566_328 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody566_329 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody566_330 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody566_331 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody566_332 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody566_333 : StackLang.HolProg 64 :=
.seq NamedBody566_331 NamedBody566_332

def NamedBody566_334 : StackLang.HolProg 64 :=
.seq NamedBody566_330 NamedBody566_333

def NamedBody566_335 : StackLang.HolProg 64 :=
.seq NamedBody566_329 NamedBody566_334

def NamedBody566_336 : StackLang.HolProg 64 :=
.seq NamedBody566_328 NamedBody566_335

def NamedBody566_337 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody566_338 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def NamedBody566_339 : StackLang.HolProg 64 :=
.seq NamedBody566_337 NamedBody566_338

def NamedBody566_340 : StackLang.HolProg 64 :=
.call (some (NamedBody566_336, 1, 566, 12)) (Sum.inl 565) (some (NamedBody566_339, 566, 13))

def NamedBody566_341 : StackLang.HolProg 64 :=
.seq NamedBody566_327 NamedBody566_340

def NamedBody566_342 : StackLang.HolProg 64 :=
.seq NamedBody566_326 NamedBody566_341

def NamedBody566_343 : StackLang.HolProg 64 :=
.seq NamedBody566_325 NamedBody566_342

def NamedBody566_344 : StackLang.HolProg 64 :=
.seq NamedBody566_296 NamedBody566_343

def NamedBody566_345 : StackLang.HolProg 64 :=
.seq NamedBody566_293 NamedBody566_344

def NamedBody566_346 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody566_347 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 10 11
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 11)))

def NamedBody566_348 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody566_349 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1940#64)

def NamedBody566_350 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody566_351 : StackLang.HolProg 64 :=
.seq NamedBody566_349 NamedBody566_350

def NamedBody566_352 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody566_353 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 2#64)

def NamedBody566_354 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 10

def NamedBody566_355 : StackLang.HolProg 64 :=
.seq NamedBody566_353 NamedBody566_354

def NamedBody566_356 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody566_357 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) NamedBody566_355 NamedBody566_356

def NamedBody566_358 : StackLang.HolProg 64 :=
.seq NamedBody566_352 NamedBody566_357

def NamedBody566_359 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def NamedBody566_360 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody566_361 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 566 15

def NamedBody566_362 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody566_363 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody566_364 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody566_365 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody566_366 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def NamedBody566_367 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def NamedBody566_368 : StackLang.HolProg 64 :=
.seq NamedBody566_366 NamedBody566_367

def NamedBody566_369 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def NamedBody566_370 : StackLang.HolProg 64 :=
.seq NamedBody566_368 NamedBody566_369

def NamedBody566_371 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody566_372 : StackLang.HolProg 64 :=
.seq NamedBody566_370 NamedBody566_371

def NamedBody566_373 : StackLang.HolProg 64 :=
.seq NamedBody566_365 NamedBody566_372

def NamedBody566_374 : StackLang.HolProg 64 :=
.seq NamedBody566_364 NamedBody566_373

def NamedBody566_375 : StackLang.HolProg 64 :=
.seq NamedBody566_363 NamedBody566_374

def NamedBody566_376 : StackLang.HolProg 64 :=
.seq NamedBody566_362 NamedBody566_375

def NamedBody566_377 : StackLang.HolProg 64 :=
.seq NamedBody566_361 NamedBody566_376

def NamedBody566_378 : StackLang.HolProg 64 :=
.seq NamedBody566_360 NamedBody566_377

def NamedBody566_379 : StackLang.HolProg 64 :=
.seq NamedBody566_359 NamedBody566_378

def NamedBody566_380 : StackLang.HolProg 64 :=
.seq NamedBody566_358 NamedBody566_379

def NamedBody566_381 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody566_382 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody566_383 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody566_384 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody566_385 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody566_386 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody566_387 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody566_388 : StackLang.HolProg 64 :=
.seq NamedBody566_386 NamedBody566_387

def NamedBody566_389 : StackLang.HolProg 64 :=
.seq NamedBody566_385 NamedBody566_388

def NamedBody566_390 : StackLang.HolProg 64 :=
.seq NamedBody566_384 NamedBody566_389

def NamedBody566_391 : StackLang.HolProg 64 :=
.seq NamedBody566_383 NamedBody566_390

def NamedBody566_392 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody566_393 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def NamedBody566_394 : StackLang.HolProg 64 :=
.seq NamedBody566_392 NamedBody566_393

def NamedBody566_395 : StackLang.HolProg 64 :=
.call (some (NamedBody566_391, 1, 566, 14)) (Sum.inl 477) (some (NamedBody566_394, 566, 15))

def NamedBody566_396 : StackLang.HolProg 64 :=
.seq NamedBody566_382 NamedBody566_395

def NamedBody566_397 : StackLang.HolProg 64 :=
.seq NamedBody566_381 NamedBody566_396

def NamedBody566_398 : StackLang.HolProg 64 :=
.seq NamedBody566_380 NamedBody566_397

def NamedBody566_399 : StackLang.HolProg 64 :=
.seq NamedBody566_351 NamedBody566_398

def NamedBody566_400 : StackLang.HolProg 64 :=
.seq NamedBody566_348 NamedBody566_399

def NamedBody566_401 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody566_402 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 1#64)

def NamedBody566_403 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody566_404 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody566_405 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1941#64)

def NamedBody566_406 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody566_407 : StackLang.HolProg 64 :=
.seq NamedBody566_405 NamedBody566_406

def NamedBody566_408 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody566_409 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 2#64)

def NamedBody566_410 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 10

def NamedBody566_411 : StackLang.HolProg 64 :=
.seq NamedBody566_409 NamedBody566_410

def NamedBody566_412 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody566_413 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) NamedBody566_411 NamedBody566_412

def NamedBody566_414 : StackLang.HolProg 64 :=
.seq NamedBody566_408 NamedBody566_413

def NamedBody566_415 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def NamedBody566_416 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody566_417 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 566 17

def NamedBody566_418 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody566_419 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody566_420 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody566_421 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody566_422 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def NamedBody566_423 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def NamedBody566_424 : StackLang.HolProg 64 :=
.seq NamedBody566_422 NamedBody566_423

def NamedBody566_425 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def NamedBody566_426 : StackLang.HolProg 64 :=
.seq NamedBody566_424 NamedBody566_425

def NamedBody566_427 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody566_428 : StackLang.HolProg 64 :=
.seq NamedBody566_426 NamedBody566_427

def NamedBody566_429 : StackLang.HolProg 64 :=
.seq NamedBody566_421 NamedBody566_428

def NamedBody566_430 : StackLang.HolProg 64 :=
.seq NamedBody566_420 NamedBody566_429

def NamedBody566_431 : StackLang.HolProg 64 :=
.seq NamedBody566_419 NamedBody566_430

def NamedBody566_432 : StackLang.HolProg 64 :=
.seq NamedBody566_418 NamedBody566_431

def NamedBody566_433 : StackLang.HolProg 64 :=
.seq NamedBody566_417 NamedBody566_432

def NamedBody566_434 : StackLang.HolProg 64 :=
.seq NamedBody566_416 NamedBody566_433

def NamedBody566_435 : StackLang.HolProg 64 :=
.seq NamedBody566_415 NamedBody566_434

def NamedBody566_436 : StackLang.HolProg 64 :=
.seq NamedBody566_414 NamedBody566_435

def NamedBody566_437 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody566_438 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody566_439 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody566_440 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody566_441 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody566_442 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody566_443 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 24#64))

def NamedBody566_444 : StackLang.HolProg 64 :=
.seq NamedBody566_442 NamedBody566_443

def NamedBody566_445 : StackLang.HolProg 64 :=
.seq NamedBody566_441 NamedBody566_444

def NamedBody566_446 : StackLang.HolProg 64 :=
.seq NamedBody566_440 NamedBody566_445

def NamedBody566_447 : StackLang.HolProg 64 :=
.seq NamedBody566_439 NamedBody566_446

def NamedBody566_448 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 24#64))

def NamedBody566_449 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def NamedBody566_450 : StackLang.HolProg 64 :=
.seq NamedBody566_448 NamedBody566_449

def NamedBody566_451 : StackLang.HolProg 64 :=
.call (some (NamedBody566_447, 1, 566, 16)) (Sum.inl 490) (some (NamedBody566_450, 566, 17))

def NamedBody566_452 : StackLang.HolProg 64 :=
.seq NamedBody566_438 NamedBody566_451

def NamedBody566_453 : StackLang.HolProg 64 :=
.seq NamedBody566_437 NamedBody566_452

def NamedBody566_454 : StackLang.HolProg 64 :=
.seq NamedBody566_436 NamedBody566_453

def NamedBody566_455 : StackLang.HolProg 64 :=
.seq NamedBody566_407 NamedBody566_454

def NamedBody566_456 : StackLang.HolProg 64 :=
.seq NamedBody566_404 NamedBody566_455

def NamedBody566_457 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody566_458 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 0#64)

def NamedBody566_459 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody566_460 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 32#64)))

def NamedBody566_461 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 1

def NamedBody566_462 : StackLang.HolProg 64 :=
.seq NamedBody566_460 NamedBody566_461

def NamedBody566_463 : StackLang.HolProg 64 :=
.seq NamedBody566_459 NamedBody566_462

def NamedBody566_464 : StackLang.HolProg 64 :=
.seq NamedBody566_458 NamedBody566_463

def NamedBody566_465 : StackLang.HolProg 64 :=
.seq NamedBody566_457 NamedBody566_464

def NamedBody566_466 : StackLang.HolProg 64 :=
.seq NamedBody566_456 NamedBody566_465

def NamedBody566_467 : StackLang.HolProg 64 :=
.seq NamedBody566_403 NamedBody566_466

def NamedBody566_468 : StackLang.HolProg 64 :=
.seq NamedBody566_402 NamedBody566_467

def NamedBody566_469 : StackLang.HolProg 64 :=
.seq NamedBody566_401 NamedBody566_468

def NamedBody566_470 : StackLang.HolProg 64 :=
.seq NamedBody566_400 NamedBody566_469

def NamedBody566_471 : StackLang.HolProg 64 :=
.seq NamedBody566_347 NamedBody566_470

def NamedBody566_472 : StackLang.HolProg 64 :=
.seq NamedBody566_346 NamedBody566_471

def NamedBody566_473 : StackLang.HolProg 64 :=
.seq NamedBody566_345 NamedBody566_472

def NamedBody566_474 : StackLang.HolProg 64 :=
.seq NamedBody566_292 NamedBody566_473

def NamedBody566_475 : StackLang.HolProg 64 :=
.seq NamedBody566_291 NamedBody566_474

def NamedBody566_476 : StackLang.HolProg 64 :=
.seq NamedBody566_290 NamedBody566_475

def NamedBody566_477 : StackLang.HolProg 64 :=
.seq NamedBody566_237 NamedBody566_476

def NamedBody566_478 : StackLang.HolProg 64 :=
.seq NamedBody566_234 NamedBody566_477

def NamedBody566_479 : StackLang.HolProg 64 :=
.seq NamedBody566_233 NamedBody566_478

def NamedBody566_480 : StackLang.HolProg 64 :=
.seq NamedBody566_176 NamedBody566_479

def NamedBody566_481 : StackLang.HolProg 64 :=
.seq NamedBody566_175 NamedBody566_480

def NamedBody566_482 : StackLang.HolProg 64 :=
.seq NamedBody566_174 NamedBody566_481

def NamedBody566_483 : StackLang.HolProg 64 :=
.seq NamedBody566_173 NamedBody566_482

def NamedBody566_484 : StackLang.HolProg 64 :=
.seq NamedBody566_172 NamedBody566_483

def NamedBody566_485 : StackLang.HolProg 64 :=
.seq NamedBody566_119 NamedBody566_484

def NamedBody566_486 : StackLang.HolProg 64 :=
.seq NamedBody566_116 NamedBody566_485

def NamedBody566_487 : StackLang.HolProg 64 :=
.seq NamedBody566_115 NamedBody566_486

def NamedBody566_488 : StackLang.HolProg 64 :=
.seq NamedBody566_62 NamedBody566_487

def NamedBody566_489 : StackLang.HolProg 64 :=
.seq NamedBody566_61 NamedBody566_488

def NamedBody566_490 : StackLang.HolProg 64 :=
.seq NamedBody566_60 NamedBody566_489

def NamedBody566_491 : StackLang.HolProg 64 :=
.seq NamedBody566_7 NamedBody566_490

def NamedBody566_492 : StackLang.HolProg 64 :=
.seq NamedBody566_6 NamedBody566_491

def Named566 : Nat × StackLang.HolProg 64 := (566, NamedBody566_492)
theorem Named566_eq : StackNames.progCompEntryHOL RiscVConfig.riscvNames Removed566 = Named566 := by
  kernel_rfl
#print axioms Named566_eq
end InitECandidate.Proofs.BackendStages
