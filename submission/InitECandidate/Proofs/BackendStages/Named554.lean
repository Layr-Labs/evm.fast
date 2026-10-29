import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.BackendStages.Removed554
import Flapjack.Compiler.Backend.Backend
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
namespace InitECandidate.Proofs.BackendStages
def NamedBody554_0 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 32#64)))

def NamedBody554_1 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 2#64)

def NamedBody554_2 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 10

def NamedBody554_3 : StackLang.HolProg 64 :=
.seq NamedBody554_1 NamedBody554_2

def NamedBody554_4 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody554_5 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) NamedBody554_3 NamedBody554_4

def NamedBody554_6 : StackLang.HolProg 64 :=
.seq NamedBody554_0 NamedBody554_5

def NamedBody554_7 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 24#64))

def NamedBody554_8 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody554_9 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1879#64)

def NamedBody554_10 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody554_11 : StackLang.HolProg 64 :=
.seq NamedBody554_9 NamedBody554_10

def NamedBody554_12 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody554_13 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 2#64)

def NamedBody554_14 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 10

def NamedBody554_15 : StackLang.HolProg 64 :=
.seq NamedBody554_13 NamedBody554_14

def NamedBody554_16 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody554_17 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) NamedBody554_15 NamedBody554_16

def NamedBody554_18 : StackLang.HolProg 64 :=
.seq NamedBody554_12 NamedBody554_17

def NamedBody554_19 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def NamedBody554_20 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody554_21 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 554 3

def NamedBody554_22 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody554_23 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody554_24 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody554_25 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody554_26 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def NamedBody554_27 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def NamedBody554_28 : StackLang.HolProg 64 :=
.seq NamedBody554_26 NamedBody554_27

def NamedBody554_29 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def NamedBody554_30 : StackLang.HolProg 64 :=
.seq NamedBody554_28 NamedBody554_29

def NamedBody554_31 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody554_32 : StackLang.HolProg 64 :=
.seq NamedBody554_30 NamedBody554_31

def NamedBody554_33 : StackLang.HolProg 64 :=
.seq NamedBody554_25 NamedBody554_32

def NamedBody554_34 : StackLang.HolProg 64 :=
.seq NamedBody554_24 NamedBody554_33

def NamedBody554_35 : StackLang.HolProg 64 :=
.seq NamedBody554_23 NamedBody554_34

def NamedBody554_36 : StackLang.HolProg 64 :=
.seq NamedBody554_22 NamedBody554_35

def NamedBody554_37 : StackLang.HolProg 64 :=
.seq NamedBody554_21 NamedBody554_36

def NamedBody554_38 : StackLang.HolProg 64 :=
.seq NamedBody554_20 NamedBody554_37

def NamedBody554_39 : StackLang.HolProg 64 :=
.seq NamedBody554_19 NamedBody554_38

def NamedBody554_40 : StackLang.HolProg 64 :=
.seq NamedBody554_18 NamedBody554_39

def NamedBody554_41 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody554_42 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody554_43 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody554_44 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody554_45 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody554_46 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody554_47 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 1 10
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 10)))

def NamedBody554_48 : StackLang.HolProg 64 :=
.seq NamedBody554_46 NamedBody554_47

def NamedBody554_49 : StackLang.HolProg 64 :=
.seq NamedBody554_45 NamedBody554_48

def NamedBody554_50 : StackLang.HolProg 64 :=
.seq NamedBody554_44 NamedBody554_49

def NamedBody554_51 : StackLang.HolProg 64 :=
.seq NamedBody554_43 NamedBody554_50

def NamedBody554_52 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody554_53 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def NamedBody554_54 : StackLang.HolProg 64 :=
.seq NamedBody554_52 NamedBody554_53

def NamedBody554_55 : StackLang.HolProg 64 :=
.call (some (NamedBody554_51, 1, 554, 2)) (Sum.inl 475) (some (NamedBody554_54, 554, 3))

def NamedBody554_56 : StackLang.HolProg 64 :=
.seq NamedBody554_42 NamedBody554_55

def NamedBody554_57 : StackLang.HolProg 64 :=
.seq NamedBody554_41 NamedBody554_56

def NamedBody554_58 : StackLang.HolProg 64 :=
.seq NamedBody554_40 NamedBody554_57

def NamedBody554_59 : StackLang.HolProg 64 :=
.seq NamedBody554_11 NamedBody554_58

def NamedBody554_60 : StackLang.HolProg 64 :=
.seq NamedBody554_8 NamedBody554_59

def NamedBody554_61 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody554_62 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 10 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def NamedBody554_63 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody554_64 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1880#64)

def NamedBody554_65 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody554_66 : StackLang.HolProg 64 :=
.seq NamedBody554_64 NamedBody554_65

def NamedBody554_67 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody554_68 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 2#64)

def NamedBody554_69 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 10

def NamedBody554_70 : StackLang.HolProg 64 :=
.seq NamedBody554_68 NamedBody554_69

def NamedBody554_71 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody554_72 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) NamedBody554_70 NamedBody554_71

def NamedBody554_73 : StackLang.HolProg 64 :=
.seq NamedBody554_67 NamedBody554_72

def NamedBody554_74 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def NamedBody554_75 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody554_76 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 554 5

def NamedBody554_77 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody554_78 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody554_79 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody554_80 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody554_81 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def NamedBody554_82 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def NamedBody554_83 : StackLang.HolProg 64 :=
.seq NamedBody554_81 NamedBody554_82

def NamedBody554_84 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def NamedBody554_85 : StackLang.HolProg 64 :=
.seq NamedBody554_83 NamedBody554_84

def NamedBody554_86 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody554_87 : StackLang.HolProg 64 :=
.seq NamedBody554_85 NamedBody554_86

def NamedBody554_88 : StackLang.HolProg 64 :=
.seq NamedBody554_80 NamedBody554_87

def NamedBody554_89 : StackLang.HolProg 64 :=
.seq NamedBody554_79 NamedBody554_88

def NamedBody554_90 : StackLang.HolProg 64 :=
.seq NamedBody554_78 NamedBody554_89

def NamedBody554_91 : StackLang.HolProg 64 :=
.seq NamedBody554_77 NamedBody554_90

def NamedBody554_92 : StackLang.HolProg 64 :=
.seq NamedBody554_76 NamedBody554_91

def NamedBody554_93 : StackLang.HolProg 64 :=
.seq NamedBody554_75 NamedBody554_92

def NamedBody554_94 : StackLang.HolProg 64 :=
.seq NamedBody554_74 NamedBody554_93

def NamedBody554_95 : StackLang.HolProg 64 :=
.seq NamedBody554_73 NamedBody554_94

def NamedBody554_96 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody554_97 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody554_98 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody554_99 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody554_100 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody554_101 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody554_102 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 1 10
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 10)))

def NamedBody554_103 : StackLang.HolProg 64 :=
.seq NamedBody554_101 NamedBody554_102

def NamedBody554_104 : StackLang.HolProg 64 :=
.seq NamedBody554_100 NamedBody554_103

def NamedBody554_105 : StackLang.HolProg 64 :=
.seq NamedBody554_99 NamedBody554_104

def NamedBody554_106 : StackLang.HolProg 64 :=
.seq NamedBody554_98 NamedBody554_105

def NamedBody554_107 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody554_108 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def NamedBody554_109 : StackLang.HolProg 64 :=
.seq NamedBody554_107 NamedBody554_108

def NamedBody554_110 : StackLang.HolProg 64 :=
.call (some (NamedBody554_106, 1, 554, 4)) (Sum.inl 466) (some (NamedBody554_109, 554, 5))

def NamedBody554_111 : StackLang.HolProg 64 :=
.seq NamedBody554_97 NamedBody554_110

def NamedBody554_112 : StackLang.HolProg 64 :=
.seq NamedBody554_96 NamedBody554_111

def NamedBody554_113 : StackLang.HolProg 64 :=
.seq NamedBody554_95 NamedBody554_112

def NamedBody554_114 : StackLang.HolProg 64 :=
.seq NamedBody554_66 NamedBody554_113

def NamedBody554_115 : StackLang.HolProg 64 :=
.seq NamedBody554_63 NamedBody554_114

def NamedBody554_116 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody554_117 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 10 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def NamedBody554_118 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody554_119 : StackLang.HolProg 64 :=
.seq NamedBody554_117 NamedBody554_118

def NamedBody554_120 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody554_121 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1881#64)

def NamedBody554_122 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody554_123 : StackLang.HolProg 64 :=
.seq NamedBody554_121 NamedBody554_122

def NamedBody554_124 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody554_125 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 2#64)

def NamedBody554_126 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 10

def NamedBody554_127 : StackLang.HolProg 64 :=
.seq NamedBody554_125 NamedBody554_126

def NamedBody554_128 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody554_129 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) NamedBody554_127 NamedBody554_128

def NamedBody554_130 : StackLang.HolProg 64 :=
.seq NamedBody554_124 NamedBody554_129

def NamedBody554_131 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def NamedBody554_132 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody554_133 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 554 7

def NamedBody554_134 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody554_135 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody554_136 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody554_137 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody554_138 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def NamedBody554_139 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def NamedBody554_140 : StackLang.HolProg 64 :=
.seq NamedBody554_138 NamedBody554_139

def NamedBody554_141 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def NamedBody554_142 : StackLang.HolProg 64 :=
.seq NamedBody554_140 NamedBody554_141

def NamedBody554_143 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody554_144 : StackLang.HolProg 64 :=
.seq NamedBody554_142 NamedBody554_143

def NamedBody554_145 : StackLang.HolProg 64 :=
.seq NamedBody554_137 NamedBody554_144

def NamedBody554_146 : StackLang.HolProg 64 :=
.seq NamedBody554_136 NamedBody554_145

def NamedBody554_147 : StackLang.HolProg 64 :=
.seq NamedBody554_135 NamedBody554_146

def NamedBody554_148 : StackLang.HolProg 64 :=
.seq NamedBody554_134 NamedBody554_147

def NamedBody554_149 : StackLang.HolProg 64 :=
.seq NamedBody554_133 NamedBody554_148

def NamedBody554_150 : StackLang.HolProg 64 :=
.seq NamedBody554_132 NamedBody554_149

def NamedBody554_151 : StackLang.HolProg 64 :=
.seq NamedBody554_131 NamedBody554_150

def NamedBody554_152 : StackLang.HolProg 64 :=
.seq NamedBody554_130 NamedBody554_151

def NamedBody554_153 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody554_154 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody554_155 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody554_156 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody554_157 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody554_158 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody554_159 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 1 10
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 10)))

def NamedBody554_160 : StackLang.HolProg 64 :=
.seq NamedBody554_158 NamedBody554_159

def NamedBody554_161 : StackLang.HolProg 64 :=
.seq NamedBody554_157 NamedBody554_160

def NamedBody554_162 : StackLang.HolProg 64 :=
.seq NamedBody554_156 NamedBody554_161

def NamedBody554_163 : StackLang.HolProg 64 :=
.seq NamedBody554_155 NamedBody554_162

def NamedBody554_164 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody554_165 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def NamedBody554_166 : StackLang.HolProg 64 :=
.seq NamedBody554_164 NamedBody554_165

def NamedBody554_167 : StackLang.HolProg 64 :=
.call (some (NamedBody554_163, 1, 554, 6)) (Sum.inl 495) (some (NamedBody554_166, 554, 7))

def NamedBody554_168 : StackLang.HolProg 64 :=
.seq NamedBody554_154 NamedBody554_167

def NamedBody554_169 : StackLang.HolProg 64 :=
.seq NamedBody554_153 NamedBody554_168

def NamedBody554_170 : StackLang.HolProg 64 :=
.seq NamedBody554_152 NamedBody554_169

def NamedBody554_171 : StackLang.HolProg 64 :=
.seq NamedBody554_123 NamedBody554_170

def NamedBody554_172 : StackLang.HolProg 64 :=
.seq NamedBody554_120 NamedBody554_171

def NamedBody554_173 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody554_174 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 10 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def NamedBody554_175 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody554_176 : StackLang.HolProg 64 :=
.seq NamedBody554_174 NamedBody554_175

def NamedBody554_177 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody554_178 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1882#64)

def NamedBody554_179 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody554_180 : StackLang.HolProg 64 :=
.seq NamedBody554_178 NamedBody554_179

def NamedBody554_181 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody554_182 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 2#64)

def NamedBody554_183 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 10

def NamedBody554_184 : StackLang.HolProg 64 :=
.seq NamedBody554_182 NamedBody554_183

def NamedBody554_185 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody554_186 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) NamedBody554_184 NamedBody554_185

def NamedBody554_187 : StackLang.HolProg 64 :=
.seq NamedBody554_181 NamedBody554_186

def NamedBody554_188 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def NamedBody554_189 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody554_190 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 554 9

def NamedBody554_191 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody554_192 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody554_193 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody554_194 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody554_195 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def NamedBody554_196 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def NamedBody554_197 : StackLang.HolProg 64 :=
.seq NamedBody554_195 NamedBody554_196

def NamedBody554_198 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def NamedBody554_199 : StackLang.HolProg 64 :=
.seq NamedBody554_197 NamedBody554_198

def NamedBody554_200 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody554_201 : StackLang.HolProg 64 :=
.seq NamedBody554_199 NamedBody554_200

def NamedBody554_202 : StackLang.HolProg 64 :=
.seq NamedBody554_194 NamedBody554_201

def NamedBody554_203 : StackLang.HolProg 64 :=
.seq NamedBody554_193 NamedBody554_202

def NamedBody554_204 : StackLang.HolProg 64 :=
.seq NamedBody554_192 NamedBody554_203

def NamedBody554_205 : StackLang.HolProg 64 :=
.seq NamedBody554_191 NamedBody554_204

def NamedBody554_206 : StackLang.HolProg 64 :=
.seq NamedBody554_190 NamedBody554_205

def NamedBody554_207 : StackLang.HolProg 64 :=
.seq NamedBody554_189 NamedBody554_206

def NamedBody554_208 : StackLang.HolProg 64 :=
.seq NamedBody554_188 NamedBody554_207

def NamedBody554_209 : StackLang.HolProg 64 :=
.seq NamedBody554_187 NamedBody554_208

def NamedBody554_210 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody554_211 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody554_212 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody554_213 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody554_214 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody554_215 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody554_216 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 11
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody554_217 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody554_218 : StackLang.HolProg 64 :=
.seq NamedBody554_216 NamedBody554_217

def NamedBody554_219 : StackLang.HolProg 64 :=
.seq NamedBody554_215 NamedBody554_218

def NamedBody554_220 : StackLang.HolProg 64 :=
.seq NamedBody554_214 NamedBody554_219

def NamedBody554_221 : StackLang.HolProg 64 :=
.seq NamedBody554_213 NamedBody554_220

def NamedBody554_222 : StackLang.HolProg 64 :=
.seq NamedBody554_212 NamedBody554_221

def NamedBody554_223 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 11
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody554_224 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody554_225 : StackLang.HolProg 64 :=
.seq NamedBody554_223 NamedBody554_224

def NamedBody554_226 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def NamedBody554_227 : StackLang.HolProg 64 :=
.seq NamedBody554_225 NamedBody554_226

def NamedBody554_228 : StackLang.HolProg 64 :=
.call (some (NamedBody554_222, 1, 554, 8)) (Sum.inl 470) (some (NamedBody554_227, 554, 9))

def NamedBody554_229 : StackLang.HolProg 64 :=
.seq NamedBody554_211 NamedBody554_228

def NamedBody554_230 : StackLang.HolProg 64 :=
.seq NamedBody554_210 NamedBody554_229

def NamedBody554_231 : StackLang.HolProg 64 :=
.seq NamedBody554_209 NamedBody554_230

def NamedBody554_232 : StackLang.HolProg 64 :=
.seq NamedBody554_180 NamedBody554_231

def NamedBody554_233 : StackLang.HolProg 64 :=
.seq NamedBody554_177 NamedBody554_232

def NamedBody554_234 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody554_235 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 10 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def NamedBody554_236 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody554_237 : StackLang.HolProg 64 :=
.seq NamedBody554_235 NamedBody554_236

def NamedBody554_238 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody554_239 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1883#64)

def NamedBody554_240 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody554_241 : StackLang.HolProg 64 :=
.seq NamedBody554_239 NamedBody554_240

def NamedBody554_242 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody554_243 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 2#64)

def NamedBody554_244 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 10

def NamedBody554_245 : StackLang.HolProg 64 :=
.seq NamedBody554_243 NamedBody554_244

def NamedBody554_246 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody554_247 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) NamedBody554_245 NamedBody554_246

def NamedBody554_248 : StackLang.HolProg 64 :=
.seq NamedBody554_242 NamedBody554_247

def NamedBody554_249 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def NamedBody554_250 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody554_251 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 554 11

def NamedBody554_252 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody554_253 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody554_254 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody554_255 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody554_256 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def NamedBody554_257 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def NamedBody554_258 : StackLang.HolProg 64 :=
.seq NamedBody554_256 NamedBody554_257

def NamedBody554_259 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def NamedBody554_260 : StackLang.HolProg 64 :=
.seq NamedBody554_258 NamedBody554_259

def NamedBody554_261 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody554_262 : StackLang.HolProg 64 :=
.seq NamedBody554_260 NamedBody554_261

def NamedBody554_263 : StackLang.HolProg 64 :=
.seq NamedBody554_255 NamedBody554_262

def NamedBody554_264 : StackLang.HolProg 64 :=
.seq NamedBody554_254 NamedBody554_263

def NamedBody554_265 : StackLang.HolProg 64 :=
.seq NamedBody554_253 NamedBody554_264

def NamedBody554_266 : StackLang.HolProg 64 :=
.seq NamedBody554_252 NamedBody554_265

def NamedBody554_267 : StackLang.HolProg 64 :=
.seq NamedBody554_251 NamedBody554_266

def NamedBody554_268 : StackLang.HolProg 64 :=
.seq NamedBody554_250 NamedBody554_267

def NamedBody554_269 : StackLang.HolProg 64 :=
.seq NamedBody554_249 NamedBody554_268

def NamedBody554_270 : StackLang.HolProg 64 :=
.seq NamedBody554_248 NamedBody554_269

def NamedBody554_271 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody554_272 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody554_273 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody554_274 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody554_275 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody554_276 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody554_277 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody554_278 : StackLang.HolProg 64 :=
.seq NamedBody554_276 NamedBody554_277

def NamedBody554_279 : StackLang.HolProg 64 :=
.seq NamedBody554_275 NamedBody554_278

def NamedBody554_280 : StackLang.HolProg 64 :=
.seq NamedBody554_274 NamedBody554_279

def NamedBody554_281 : StackLang.HolProg 64 :=
.seq NamedBody554_273 NamedBody554_280

def NamedBody554_282 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody554_283 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def NamedBody554_284 : StackLang.HolProg 64 :=
.seq NamedBody554_282 NamedBody554_283

def NamedBody554_285 : StackLang.HolProg 64 :=
.call (some (NamedBody554_281, 1, 554, 10)) (Sum.inl 496) (some (NamedBody554_284, 554, 11))

def NamedBody554_286 : StackLang.HolProg 64 :=
.seq NamedBody554_272 NamedBody554_285

def NamedBody554_287 : StackLang.HolProg 64 :=
.seq NamedBody554_271 NamedBody554_286

def NamedBody554_288 : StackLang.HolProg 64 :=
.seq NamedBody554_270 NamedBody554_287

def NamedBody554_289 : StackLang.HolProg 64 :=
.seq NamedBody554_241 NamedBody554_288

def NamedBody554_290 : StackLang.HolProg 64 :=
.seq NamedBody554_238 NamedBody554_289

def NamedBody554_291 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody554_292 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 10 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def NamedBody554_293 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody554_294 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1884#64)

def NamedBody554_295 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody554_296 : StackLang.HolProg 64 :=
.seq NamedBody554_294 NamedBody554_295

def NamedBody554_297 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody554_298 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 2#64)

def NamedBody554_299 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 10

def NamedBody554_300 : StackLang.HolProg 64 :=
.seq NamedBody554_298 NamedBody554_299

def NamedBody554_301 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody554_302 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) NamedBody554_300 NamedBody554_301

def NamedBody554_303 : StackLang.HolProg 64 :=
.seq NamedBody554_297 NamedBody554_302

def NamedBody554_304 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def NamedBody554_305 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody554_306 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 554 13

def NamedBody554_307 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody554_308 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody554_309 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody554_310 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody554_311 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def NamedBody554_312 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def NamedBody554_313 : StackLang.HolProg 64 :=
.seq NamedBody554_311 NamedBody554_312

def NamedBody554_314 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def NamedBody554_315 : StackLang.HolProg 64 :=
.seq NamedBody554_313 NamedBody554_314

def NamedBody554_316 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody554_317 : StackLang.HolProg 64 :=
.seq NamedBody554_315 NamedBody554_316

def NamedBody554_318 : StackLang.HolProg 64 :=
.seq NamedBody554_310 NamedBody554_317

def NamedBody554_319 : StackLang.HolProg 64 :=
.seq NamedBody554_309 NamedBody554_318

def NamedBody554_320 : StackLang.HolProg 64 :=
.seq NamedBody554_308 NamedBody554_319

def NamedBody554_321 : StackLang.HolProg 64 :=
.seq NamedBody554_307 NamedBody554_320

def NamedBody554_322 : StackLang.HolProg 64 :=
.seq NamedBody554_306 NamedBody554_321

def NamedBody554_323 : StackLang.HolProg 64 :=
.seq NamedBody554_305 NamedBody554_322

def NamedBody554_324 : StackLang.HolProg 64 :=
.seq NamedBody554_304 NamedBody554_323

def NamedBody554_325 : StackLang.HolProg 64 :=
.seq NamedBody554_303 NamedBody554_324

def NamedBody554_326 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody554_327 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody554_328 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody554_329 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody554_330 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody554_331 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody554_332 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 1 10
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 10)))

def NamedBody554_333 : StackLang.HolProg 64 :=
.seq NamedBody554_331 NamedBody554_332

def NamedBody554_334 : StackLang.HolProg 64 :=
.seq NamedBody554_330 NamedBody554_333

def NamedBody554_335 : StackLang.HolProg 64 :=
.seq NamedBody554_329 NamedBody554_334

def NamedBody554_336 : StackLang.HolProg 64 :=
.seq NamedBody554_328 NamedBody554_335

def NamedBody554_337 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody554_338 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def NamedBody554_339 : StackLang.HolProg 64 :=
.seq NamedBody554_337 NamedBody554_338

def NamedBody554_340 : StackLang.HolProg 64 :=
.call (some (NamedBody554_336, 1, 554, 12)) (Sum.inl 407) (some (NamedBody554_339, 554, 13))

def NamedBody554_341 : StackLang.HolProg 64 :=
.seq NamedBody554_327 NamedBody554_340

def NamedBody554_342 : StackLang.HolProg 64 :=
.seq NamedBody554_326 NamedBody554_341

def NamedBody554_343 : StackLang.HolProg 64 :=
.seq NamedBody554_325 NamedBody554_342

def NamedBody554_344 : StackLang.HolProg 64 :=
.seq NamedBody554_296 NamedBody554_343

def NamedBody554_345 : StackLang.HolProg 64 :=
.seq NamedBody554_293 NamedBody554_344

def NamedBody554_346 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody554_347 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody554_348 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 10
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 1 8#64))

def NamedBody554_349 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody554_350 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 11
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 1 16#64))

def NamedBody554_351 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody554_352 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 12
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 1 24#64))

def NamedBody554_353 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody554_354 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 13
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 1 32#64))

def NamedBody554_355 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody554_356 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody554_357 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1885#64)

def NamedBody554_358 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody554_359 : StackLang.HolProg 64 :=
.seq NamedBody554_357 NamedBody554_358

def NamedBody554_360 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody554_361 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 2#64)

def NamedBody554_362 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 10

def NamedBody554_363 : StackLang.HolProg 64 :=
.seq NamedBody554_361 NamedBody554_362

def NamedBody554_364 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody554_365 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) NamedBody554_363 NamedBody554_364

def NamedBody554_366 : StackLang.HolProg 64 :=
.seq NamedBody554_360 NamedBody554_365

def NamedBody554_367 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def NamedBody554_368 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody554_369 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 554 15

def NamedBody554_370 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody554_371 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody554_372 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody554_373 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody554_374 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def NamedBody554_375 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def NamedBody554_376 : StackLang.HolProg 64 :=
.seq NamedBody554_374 NamedBody554_375

def NamedBody554_377 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def NamedBody554_378 : StackLang.HolProg 64 :=
.seq NamedBody554_376 NamedBody554_377

def NamedBody554_379 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody554_380 : StackLang.HolProg 64 :=
.seq NamedBody554_378 NamedBody554_379

def NamedBody554_381 : StackLang.HolProg 64 :=
.seq NamedBody554_373 NamedBody554_380

def NamedBody554_382 : StackLang.HolProg 64 :=
.seq NamedBody554_372 NamedBody554_381

def NamedBody554_383 : StackLang.HolProg 64 :=
.seq NamedBody554_371 NamedBody554_382

def NamedBody554_384 : StackLang.HolProg 64 :=
.seq NamedBody554_370 NamedBody554_383

def NamedBody554_385 : StackLang.HolProg 64 :=
.seq NamedBody554_369 NamedBody554_384

def NamedBody554_386 : StackLang.HolProg 64 :=
.seq NamedBody554_368 NamedBody554_385

def NamedBody554_387 : StackLang.HolProg 64 :=
.seq NamedBody554_367 NamedBody554_386

def NamedBody554_388 : StackLang.HolProg 64 :=
.seq NamedBody554_366 NamedBody554_387

def NamedBody554_389 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody554_390 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody554_391 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody554_392 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody554_393 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody554_394 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody554_395 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody554_396 : StackLang.HolProg 64 :=
.seq NamedBody554_394 NamedBody554_395

def NamedBody554_397 : StackLang.HolProg 64 :=
.seq NamedBody554_393 NamedBody554_396

def NamedBody554_398 : StackLang.HolProg 64 :=
.seq NamedBody554_392 NamedBody554_397

def NamedBody554_399 : StackLang.HolProg 64 :=
.seq NamedBody554_391 NamedBody554_398

def NamedBody554_400 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody554_401 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def NamedBody554_402 : StackLang.HolProg 64 :=
.seq NamedBody554_400 NamedBody554_401

def NamedBody554_403 : StackLang.HolProg 64 :=
.call (some (NamedBody554_399, 1, 554, 14)) (Sum.inl 476) (some (NamedBody554_402, 554, 15))

def NamedBody554_404 : StackLang.HolProg 64 :=
.seq NamedBody554_390 NamedBody554_403

def NamedBody554_405 : StackLang.HolProg 64 :=
.seq NamedBody554_389 NamedBody554_404

def NamedBody554_406 : StackLang.HolProg 64 :=
.seq NamedBody554_388 NamedBody554_405

def NamedBody554_407 : StackLang.HolProg 64 :=
.seq NamedBody554_359 NamedBody554_406

def NamedBody554_408 : StackLang.HolProg 64 :=
.seq NamedBody554_356 NamedBody554_407

def NamedBody554_409 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody554_410 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 1#64)

def NamedBody554_411 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody554_412 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody554_413 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1886#64)

def NamedBody554_414 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody554_415 : StackLang.HolProg 64 :=
.seq NamedBody554_413 NamedBody554_414

def NamedBody554_416 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody554_417 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 2#64)

def NamedBody554_418 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 10

def NamedBody554_419 : StackLang.HolProg 64 :=
.seq NamedBody554_417 NamedBody554_418

def NamedBody554_420 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody554_421 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) NamedBody554_419 NamedBody554_420

def NamedBody554_422 : StackLang.HolProg 64 :=
.seq NamedBody554_416 NamedBody554_421

def NamedBody554_423 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def NamedBody554_424 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody554_425 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 554 17

def NamedBody554_426 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody554_427 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody554_428 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody554_429 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody554_430 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def NamedBody554_431 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def NamedBody554_432 : StackLang.HolProg 64 :=
.seq NamedBody554_430 NamedBody554_431

def NamedBody554_433 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def NamedBody554_434 : StackLang.HolProg 64 :=
.seq NamedBody554_432 NamedBody554_433

def NamedBody554_435 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody554_436 : StackLang.HolProg 64 :=
.seq NamedBody554_434 NamedBody554_435

def NamedBody554_437 : StackLang.HolProg 64 :=
.seq NamedBody554_429 NamedBody554_436

def NamedBody554_438 : StackLang.HolProg 64 :=
.seq NamedBody554_428 NamedBody554_437

def NamedBody554_439 : StackLang.HolProg 64 :=
.seq NamedBody554_427 NamedBody554_438

def NamedBody554_440 : StackLang.HolProg 64 :=
.seq NamedBody554_426 NamedBody554_439

def NamedBody554_441 : StackLang.HolProg 64 :=
.seq NamedBody554_425 NamedBody554_440

def NamedBody554_442 : StackLang.HolProg 64 :=
.seq NamedBody554_424 NamedBody554_441

def NamedBody554_443 : StackLang.HolProg 64 :=
.seq NamedBody554_423 NamedBody554_442

def NamedBody554_444 : StackLang.HolProg 64 :=
.seq NamedBody554_422 NamedBody554_443

def NamedBody554_445 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody554_446 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody554_447 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody554_448 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody554_449 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody554_450 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody554_451 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 24#64))

def NamedBody554_452 : StackLang.HolProg 64 :=
.seq NamedBody554_450 NamedBody554_451

def NamedBody554_453 : StackLang.HolProg 64 :=
.seq NamedBody554_449 NamedBody554_452

def NamedBody554_454 : StackLang.HolProg 64 :=
.seq NamedBody554_448 NamedBody554_453

def NamedBody554_455 : StackLang.HolProg 64 :=
.seq NamedBody554_447 NamedBody554_454

def NamedBody554_456 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 24#64))

def NamedBody554_457 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def NamedBody554_458 : StackLang.HolProg 64 :=
.seq NamedBody554_456 NamedBody554_457

def NamedBody554_459 : StackLang.HolProg 64 :=
.call (some (NamedBody554_455, 1, 554, 16)) (Sum.inl 490) (some (NamedBody554_458, 554, 17))

def NamedBody554_460 : StackLang.HolProg 64 :=
.seq NamedBody554_446 NamedBody554_459

def NamedBody554_461 : StackLang.HolProg 64 :=
.seq NamedBody554_445 NamedBody554_460

def NamedBody554_462 : StackLang.HolProg 64 :=
.seq NamedBody554_444 NamedBody554_461

def NamedBody554_463 : StackLang.HolProg 64 :=
.seq NamedBody554_415 NamedBody554_462

def NamedBody554_464 : StackLang.HolProg 64 :=
.seq NamedBody554_412 NamedBody554_463

def NamedBody554_465 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody554_466 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 0#64)

def NamedBody554_467 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody554_468 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 32#64)))

def NamedBody554_469 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 1

def NamedBody554_470 : StackLang.HolProg 64 :=
.seq NamedBody554_468 NamedBody554_469

def NamedBody554_471 : StackLang.HolProg 64 :=
.seq NamedBody554_467 NamedBody554_470

def NamedBody554_472 : StackLang.HolProg 64 :=
.seq NamedBody554_466 NamedBody554_471

def NamedBody554_473 : StackLang.HolProg 64 :=
.seq NamedBody554_465 NamedBody554_472

def NamedBody554_474 : StackLang.HolProg 64 :=
.seq NamedBody554_464 NamedBody554_473

def NamedBody554_475 : StackLang.HolProg 64 :=
.seq NamedBody554_411 NamedBody554_474

def NamedBody554_476 : StackLang.HolProg 64 :=
.seq NamedBody554_410 NamedBody554_475

def NamedBody554_477 : StackLang.HolProg 64 :=
.seq NamedBody554_409 NamedBody554_476

def NamedBody554_478 : StackLang.HolProg 64 :=
.seq NamedBody554_408 NamedBody554_477

def NamedBody554_479 : StackLang.HolProg 64 :=
.seq NamedBody554_355 NamedBody554_478

def NamedBody554_480 : StackLang.HolProg 64 :=
.seq NamedBody554_354 NamedBody554_479

def NamedBody554_481 : StackLang.HolProg 64 :=
.seq NamedBody554_353 NamedBody554_480

def NamedBody554_482 : StackLang.HolProg 64 :=
.seq NamedBody554_352 NamedBody554_481

def NamedBody554_483 : StackLang.HolProg 64 :=
.seq NamedBody554_351 NamedBody554_482

def NamedBody554_484 : StackLang.HolProg 64 :=
.seq NamedBody554_350 NamedBody554_483

def NamedBody554_485 : StackLang.HolProg 64 :=
.seq NamedBody554_349 NamedBody554_484

def NamedBody554_486 : StackLang.HolProg 64 :=
.seq NamedBody554_348 NamedBody554_485

def NamedBody554_487 : StackLang.HolProg 64 :=
.seq NamedBody554_347 NamedBody554_486

def NamedBody554_488 : StackLang.HolProg 64 :=
.seq NamedBody554_346 NamedBody554_487

def NamedBody554_489 : StackLang.HolProg 64 :=
.seq NamedBody554_345 NamedBody554_488

def NamedBody554_490 : StackLang.HolProg 64 :=
.seq NamedBody554_292 NamedBody554_489

def NamedBody554_491 : StackLang.HolProg 64 :=
.seq NamedBody554_291 NamedBody554_490

def NamedBody554_492 : StackLang.HolProg 64 :=
.seq NamedBody554_290 NamedBody554_491

def NamedBody554_493 : StackLang.HolProg 64 :=
.seq NamedBody554_237 NamedBody554_492

def NamedBody554_494 : StackLang.HolProg 64 :=
.seq NamedBody554_234 NamedBody554_493

def NamedBody554_495 : StackLang.HolProg 64 :=
.seq NamedBody554_233 NamedBody554_494

def NamedBody554_496 : StackLang.HolProg 64 :=
.seq NamedBody554_176 NamedBody554_495

def NamedBody554_497 : StackLang.HolProg 64 :=
.seq NamedBody554_173 NamedBody554_496

def NamedBody554_498 : StackLang.HolProg 64 :=
.seq NamedBody554_172 NamedBody554_497

def NamedBody554_499 : StackLang.HolProg 64 :=
.seq NamedBody554_119 NamedBody554_498

def NamedBody554_500 : StackLang.HolProg 64 :=
.seq NamedBody554_116 NamedBody554_499

def NamedBody554_501 : StackLang.HolProg 64 :=
.seq NamedBody554_115 NamedBody554_500

def NamedBody554_502 : StackLang.HolProg 64 :=
.seq NamedBody554_62 NamedBody554_501

def NamedBody554_503 : StackLang.HolProg 64 :=
.seq NamedBody554_61 NamedBody554_502

def NamedBody554_504 : StackLang.HolProg 64 :=
.seq NamedBody554_60 NamedBody554_503

def NamedBody554_505 : StackLang.HolProg 64 :=
.seq NamedBody554_7 NamedBody554_504

def NamedBody554_506 : StackLang.HolProg 64 :=
.seq NamedBody554_6 NamedBody554_505

def Named554 : Nat × StackLang.HolProg 64 := (554, NamedBody554_506)
theorem Named554_eq : StackNames.progCompEntryHOL RiscVConfig.riscvNames Removed554 = Named554 := by
  kernel_rfl
#print axioms Named554_eq
end InitECandidate.Proofs.BackendStages
