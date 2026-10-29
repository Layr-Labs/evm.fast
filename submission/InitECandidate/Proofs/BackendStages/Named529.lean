import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.BackendStages.Removed529
import Flapjack.Compiler.Backend.Backend
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
namespace InitECandidate.Proofs.BackendStages
def NamedBody529_0 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 16#64)))

def NamedBody529_1 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 2#64)

def NamedBody529_2 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 10

def NamedBody529_3 : StackLang.HolProg 64 :=
.seq NamedBody529_1 NamedBody529_2

def NamedBody529_4 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody529_5 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) NamedBody529_3 NamedBody529_4

def NamedBody529_6 : StackLang.HolProg 64 :=
.seq NamedBody529_0 NamedBody529_5

def NamedBody529_7 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody529_8 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 1#64)

def NamedBody529_9 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody529_10 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody529_11 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1733#64)

def NamedBody529_12 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody529_13 : StackLang.HolProg 64 :=
.seq NamedBody529_11 NamedBody529_12

def NamedBody529_14 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody529_15 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 2#64)

def NamedBody529_16 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 10

def NamedBody529_17 : StackLang.HolProg 64 :=
.seq NamedBody529_15 NamedBody529_16

def NamedBody529_18 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody529_19 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) NamedBody529_17 NamedBody529_18

def NamedBody529_20 : StackLang.HolProg 64 :=
.seq NamedBody529_14 NamedBody529_19

def NamedBody529_21 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def NamedBody529_22 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody529_23 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 529 3

def NamedBody529_24 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody529_25 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody529_26 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody529_27 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody529_28 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def NamedBody529_29 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def NamedBody529_30 : StackLang.HolProg 64 :=
.seq NamedBody529_28 NamedBody529_29

def NamedBody529_31 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def NamedBody529_32 : StackLang.HolProg 64 :=
.seq NamedBody529_30 NamedBody529_31

def NamedBody529_33 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody529_34 : StackLang.HolProg 64 :=
.seq NamedBody529_32 NamedBody529_33

def NamedBody529_35 : StackLang.HolProg 64 :=
.seq NamedBody529_27 NamedBody529_34

def NamedBody529_36 : StackLang.HolProg 64 :=
.seq NamedBody529_26 NamedBody529_35

def NamedBody529_37 : StackLang.HolProg 64 :=
.seq NamedBody529_25 NamedBody529_36

def NamedBody529_38 : StackLang.HolProg 64 :=
.seq NamedBody529_24 NamedBody529_37

def NamedBody529_39 : StackLang.HolProg 64 :=
.seq NamedBody529_23 NamedBody529_38

def NamedBody529_40 : StackLang.HolProg 64 :=
.seq NamedBody529_22 NamedBody529_39

def NamedBody529_41 : StackLang.HolProg 64 :=
.seq NamedBody529_21 NamedBody529_40

def NamedBody529_42 : StackLang.HolProg 64 :=
.seq NamedBody529_20 NamedBody529_41

def NamedBody529_43 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody529_44 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody529_45 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody529_46 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody529_47 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody529_48 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody529_49 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody529_50 : StackLang.HolProg 64 :=
.seq NamedBody529_48 NamedBody529_49

def NamedBody529_51 : StackLang.HolProg 64 :=
.seq NamedBody529_47 NamedBody529_50

def NamedBody529_52 : StackLang.HolProg 64 :=
.seq NamedBody529_46 NamedBody529_51

def NamedBody529_53 : StackLang.HolProg 64 :=
.seq NamedBody529_45 NamedBody529_52

def NamedBody529_54 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody529_55 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def NamedBody529_56 : StackLang.HolProg 64 :=
.seq NamedBody529_54 NamedBody529_55

def NamedBody529_57 : StackLang.HolProg 64 :=
.call (some (NamedBody529_53, 1, 529, 2)) (Sum.inl 470) (some (NamedBody529_56, 529, 3))

def NamedBody529_58 : StackLang.HolProg 64 :=
.seq NamedBody529_44 NamedBody529_57

def NamedBody529_59 : StackLang.HolProg 64 :=
.seq NamedBody529_43 NamedBody529_58

def NamedBody529_60 : StackLang.HolProg 64 :=
.seq NamedBody529_42 NamedBody529_59

def NamedBody529_61 : StackLang.HolProg 64 :=
.seq NamedBody529_13 NamedBody529_60

def NamedBody529_62 : StackLang.HolProg 64 :=
.seq NamedBody529_10 NamedBody529_61

def NamedBody529_63 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody529_64 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 1#64)

def NamedBody529_65 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody529_66 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody529_67 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1734#64)

def NamedBody529_68 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody529_69 : StackLang.HolProg 64 :=
.seq NamedBody529_67 NamedBody529_68

def NamedBody529_70 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody529_71 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 2#64)

def NamedBody529_72 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 10

def NamedBody529_73 : StackLang.HolProg 64 :=
.seq NamedBody529_71 NamedBody529_72

def NamedBody529_74 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody529_75 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) NamedBody529_73 NamedBody529_74

def NamedBody529_76 : StackLang.HolProg 64 :=
.seq NamedBody529_70 NamedBody529_75

def NamedBody529_77 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def NamedBody529_78 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody529_79 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 529 5

def NamedBody529_80 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody529_81 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody529_82 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody529_83 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody529_84 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def NamedBody529_85 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def NamedBody529_86 : StackLang.HolProg 64 :=
.seq NamedBody529_84 NamedBody529_85

def NamedBody529_87 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def NamedBody529_88 : StackLang.HolProg 64 :=
.seq NamedBody529_86 NamedBody529_87

def NamedBody529_89 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody529_90 : StackLang.HolProg 64 :=
.seq NamedBody529_88 NamedBody529_89

def NamedBody529_91 : StackLang.HolProg 64 :=
.seq NamedBody529_83 NamedBody529_90

def NamedBody529_92 : StackLang.HolProg 64 :=
.seq NamedBody529_82 NamedBody529_91

def NamedBody529_93 : StackLang.HolProg 64 :=
.seq NamedBody529_81 NamedBody529_92

def NamedBody529_94 : StackLang.HolProg 64 :=
.seq NamedBody529_80 NamedBody529_93

def NamedBody529_95 : StackLang.HolProg 64 :=
.seq NamedBody529_79 NamedBody529_94

def NamedBody529_96 : StackLang.HolProg 64 :=
.seq NamedBody529_78 NamedBody529_95

def NamedBody529_97 : StackLang.HolProg 64 :=
.seq NamedBody529_77 NamedBody529_96

def NamedBody529_98 : StackLang.HolProg 64 :=
.seq NamedBody529_76 NamedBody529_97

def NamedBody529_99 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody529_100 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody529_101 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody529_102 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody529_103 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody529_104 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody529_105 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody529_106 : StackLang.HolProg 64 :=
.seq NamedBody529_104 NamedBody529_105

def NamedBody529_107 : StackLang.HolProg 64 :=
.seq NamedBody529_103 NamedBody529_106

def NamedBody529_108 : StackLang.HolProg 64 :=
.seq NamedBody529_102 NamedBody529_107

def NamedBody529_109 : StackLang.HolProg 64 :=
.seq NamedBody529_101 NamedBody529_108

def NamedBody529_110 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody529_111 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def NamedBody529_112 : StackLang.HolProg 64 :=
.seq NamedBody529_110 NamedBody529_111

def NamedBody529_113 : StackLang.HolProg 64 :=
.call (some (NamedBody529_109, 1, 529, 4)) (Sum.inl 490) (some (NamedBody529_112, 529, 5))

def NamedBody529_114 : StackLang.HolProg 64 :=
.seq NamedBody529_100 NamedBody529_113

def NamedBody529_115 : StackLang.HolProg 64 :=
.seq NamedBody529_99 NamedBody529_114

def NamedBody529_116 : StackLang.HolProg 64 :=
.seq NamedBody529_98 NamedBody529_115

def NamedBody529_117 : StackLang.HolProg 64 :=
.seq NamedBody529_69 NamedBody529_116

def NamedBody529_118 : StackLang.HolProg 64 :=
.seq NamedBody529_66 NamedBody529_117

def NamedBody529_119 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody529_120 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 0#64)

def NamedBody529_121 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody529_122 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 16#64)))

def NamedBody529_123 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 1

def NamedBody529_124 : StackLang.HolProg 64 :=
.seq NamedBody529_122 NamedBody529_123

def NamedBody529_125 : StackLang.HolProg 64 :=
.seq NamedBody529_121 NamedBody529_124

def NamedBody529_126 : StackLang.HolProg 64 :=
.seq NamedBody529_120 NamedBody529_125

def NamedBody529_127 : StackLang.HolProg 64 :=
.seq NamedBody529_119 NamedBody529_126

def NamedBody529_128 : StackLang.HolProg 64 :=
.seq NamedBody529_118 NamedBody529_127

def NamedBody529_129 : StackLang.HolProg 64 :=
.seq NamedBody529_65 NamedBody529_128

def NamedBody529_130 : StackLang.HolProg 64 :=
.seq NamedBody529_64 NamedBody529_129

def NamedBody529_131 : StackLang.HolProg 64 :=
.seq NamedBody529_63 NamedBody529_130

def NamedBody529_132 : StackLang.HolProg 64 :=
.seq NamedBody529_62 NamedBody529_131

def NamedBody529_133 : StackLang.HolProg 64 :=
.seq NamedBody529_9 NamedBody529_132

def NamedBody529_134 : StackLang.HolProg 64 :=
.seq NamedBody529_8 NamedBody529_133

def NamedBody529_135 : StackLang.HolProg 64 :=
.seq NamedBody529_7 NamedBody529_134

def NamedBody529_136 : StackLang.HolProg 64 :=
.seq NamedBody529_6 NamedBody529_135

def Named529 : Nat × StackLang.HolProg 64 := (529, NamedBody529_136)
theorem Named529_eq : StackNames.progCompEntryHOL RiscVConfig.riscvNames Removed529 = Named529 := by
  kernel_rfl
#print axioms Named529_eq
end InitECandidate.Proofs.BackendStages
