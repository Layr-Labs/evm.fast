import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.BackendStages.Removed570
import Flapjack.Compiler.Backend.Backend
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
namespace InitECandidate.Proofs.BackendStages
def NamedBody570_0 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 32#64)))

def NamedBody570_1 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 2#64)

def NamedBody570_2 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 10

def NamedBody570_3 : StackLang.HolProg 64 :=
.seq NamedBody570_1 NamedBody570_2

def NamedBody570_4 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody570_5 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) NamedBody570_3 NamedBody570_4

def NamedBody570_6 : StackLang.HolProg 64 :=
.seq NamedBody570_0 NamedBody570_5

def NamedBody570_7 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 24#64))

def NamedBody570_8 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody570_9 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1977#64)

def NamedBody570_10 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody570_11 : StackLang.HolProg 64 :=
.seq NamedBody570_9 NamedBody570_10

def NamedBody570_12 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody570_13 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 2#64)

def NamedBody570_14 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 10

def NamedBody570_15 : StackLang.HolProg 64 :=
.seq NamedBody570_13 NamedBody570_14

def NamedBody570_16 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody570_17 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) NamedBody570_15 NamedBody570_16

def NamedBody570_18 : StackLang.HolProg 64 :=
.seq NamedBody570_12 NamedBody570_17

def NamedBody570_19 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def NamedBody570_20 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody570_21 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 570 3

def NamedBody570_22 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody570_23 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody570_24 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody570_25 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody570_26 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def NamedBody570_27 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def NamedBody570_28 : StackLang.HolProg 64 :=
.seq NamedBody570_26 NamedBody570_27

def NamedBody570_29 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def NamedBody570_30 : StackLang.HolProg 64 :=
.seq NamedBody570_28 NamedBody570_29

def NamedBody570_31 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody570_32 : StackLang.HolProg 64 :=
.seq NamedBody570_30 NamedBody570_31

def NamedBody570_33 : StackLang.HolProg 64 :=
.seq NamedBody570_25 NamedBody570_32

def NamedBody570_34 : StackLang.HolProg 64 :=
.seq NamedBody570_24 NamedBody570_33

def NamedBody570_35 : StackLang.HolProg 64 :=
.seq NamedBody570_23 NamedBody570_34

def NamedBody570_36 : StackLang.HolProg 64 :=
.seq NamedBody570_22 NamedBody570_35

def NamedBody570_37 : StackLang.HolProg 64 :=
.seq NamedBody570_21 NamedBody570_36

def NamedBody570_38 : StackLang.HolProg 64 :=
.seq NamedBody570_20 NamedBody570_37

def NamedBody570_39 : StackLang.HolProg 64 :=
.seq NamedBody570_19 NamedBody570_38

def NamedBody570_40 : StackLang.HolProg 64 :=
.seq NamedBody570_18 NamedBody570_39

def NamedBody570_41 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody570_42 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody570_43 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody570_44 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody570_45 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody570_46 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody570_47 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 1 10
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 10)))

def NamedBody570_48 : StackLang.HolProg 64 :=
.seq NamedBody570_46 NamedBody570_47

def NamedBody570_49 : StackLang.HolProg 64 :=
.seq NamedBody570_45 NamedBody570_48

def NamedBody570_50 : StackLang.HolProg 64 :=
.seq NamedBody570_44 NamedBody570_49

def NamedBody570_51 : StackLang.HolProg 64 :=
.seq NamedBody570_43 NamedBody570_50

def NamedBody570_52 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody570_53 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def NamedBody570_54 : StackLang.HolProg 64 :=
.seq NamedBody570_52 NamedBody570_53

def NamedBody570_55 : StackLang.HolProg 64 :=
.call (some (NamedBody570_51, 1, 570, 2)) (Sum.inl 475) (some (NamedBody570_54, 570, 3))

def NamedBody570_56 : StackLang.HolProg 64 :=
.seq NamedBody570_42 NamedBody570_55

def NamedBody570_57 : StackLang.HolProg 64 :=
.seq NamedBody570_41 NamedBody570_56

def NamedBody570_58 : StackLang.HolProg 64 :=
.seq NamedBody570_40 NamedBody570_57

def NamedBody570_59 : StackLang.HolProg 64 :=
.seq NamedBody570_11 NamedBody570_58

def NamedBody570_60 : StackLang.HolProg 64 :=
.seq NamedBody570_8 NamedBody570_59

def NamedBody570_61 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody570_62 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 10 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def NamedBody570_63 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody570_64 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1978#64)

def NamedBody570_65 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody570_66 : StackLang.HolProg 64 :=
.seq NamedBody570_64 NamedBody570_65

def NamedBody570_67 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody570_68 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 2#64)

def NamedBody570_69 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 10

def NamedBody570_70 : StackLang.HolProg 64 :=
.seq NamedBody570_68 NamedBody570_69

def NamedBody570_71 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody570_72 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) NamedBody570_70 NamedBody570_71

def NamedBody570_73 : StackLang.HolProg 64 :=
.seq NamedBody570_67 NamedBody570_72

def NamedBody570_74 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def NamedBody570_75 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody570_76 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 570 5

def NamedBody570_77 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody570_78 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody570_79 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody570_80 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody570_81 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def NamedBody570_82 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def NamedBody570_83 : StackLang.HolProg 64 :=
.seq NamedBody570_81 NamedBody570_82

def NamedBody570_84 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def NamedBody570_85 : StackLang.HolProg 64 :=
.seq NamedBody570_83 NamedBody570_84

def NamedBody570_86 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody570_87 : StackLang.HolProg 64 :=
.seq NamedBody570_85 NamedBody570_86

def NamedBody570_88 : StackLang.HolProg 64 :=
.seq NamedBody570_80 NamedBody570_87

def NamedBody570_89 : StackLang.HolProg 64 :=
.seq NamedBody570_79 NamedBody570_88

def NamedBody570_90 : StackLang.HolProg 64 :=
.seq NamedBody570_78 NamedBody570_89

def NamedBody570_91 : StackLang.HolProg 64 :=
.seq NamedBody570_77 NamedBody570_90

def NamedBody570_92 : StackLang.HolProg 64 :=
.seq NamedBody570_76 NamedBody570_91

def NamedBody570_93 : StackLang.HolProg 64 :=
.seq NamedBody570_75 NamedBody570_92

def NamedBody570_94 : StackLang.HolProg 64 :=
.seq NamedBody570_74 NamedBody570_93

def NamedBody570_95 : StackLang.HolProg 64 :=
.seq NamedBody570_73 NamedBody570_94

def NamedBody570_96 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody570_97 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody570_98 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody570_99 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody570_100 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody570_101 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody570_102 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 1 10
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 10)))

def NamedBody570_103 : StackLang.HolProg 64 :=
.seq NamedBody570_101 NamedBody570_102

def NamedBody570_104 : StackLang.HolProg 64 :=
.seq NamedBody570_100 NamedBody570_103

def NamedBody570_105 : StackLang.HolProg 64 :=
.seq NamedBody570_99 NamedBody570_104

def NamedBody570_106 : StackLang.HolProg 64 :=
.seq NamedBody570_98 NamedBody570_105

def NamedBody570_107 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody570_108 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def NamedBody570_109 : StackLang.HolProg 64 :=
.seq NamedBody570_107 NamedBody570_108

def NamedBody570_110 : StackLang.HolProg 64 :=
.call (some (NamedBody570_106, 1, 570, 4)) (Sum.inl 466) (some (NamedBody570_109, 570, 5))

def NamedBody570_111 : StackLang.HolProg 64 :=
.seq NamedBody570_97 NamedBody570_110

def NamedBody570_112 : StackLang.HolProg 64 :=
.seq NamedBody570_96 NamedBody570_111

def NamedBody570_113 : StackLang.HolProg 64 :=
.seq NamedBody570_95 NamedBody570_112

def NamedBody570_114 : StackLang.HolProg 64 :=
.seq NamedBody570_66 NamedBody570_113

def NamedBody570_115 : StackLang.HolProg 64 :=
.seq NamedBody570_63 NamedBody570_114

def NamedBody570_116 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody570_117 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 10 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def NamedBody570_118 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody570_119 : StackLang.HolProg 64 :=
.seq NamedBody570_117 NamedBody570_118

def NamedBody570_120 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody570_121 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1979#64)

def NamedBody570_122 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody570_123 : StackLang.HolProg 64 :=
.seq NamedBody570_121 NamedBody570_122

def NamedBody570_124 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody570_125 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 2#64)

def NamedBody570_126 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 10

def NamedBody570_127 : StackLang.HolProg 64 :=
.seq NamedBody570_125 NamedBody570_126

def NamedBody570_128 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody570_129 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) NamedBody570_127 NamedBody570_128

def NamedBody570_130 : StackLang.HolProg 64 :=
.seq NamedBody570_124 NamedBody570_129

def NamedBody570_131 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def NamedBody570_132 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody570_133 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 570 7

def NamedBody570_134 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody570_135 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody570_136 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody570_137 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody570_138 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def NamedBody570_139 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def NamedBody570_140 : StackLang.HolProg 64 :=
.seq NamedBody570_138 NamedBody570_139

def NamedBody570_141 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def NamedBody570_142 : StackLang.HolProg 64 :=
.seq NamedBody570_140 NamedBody570_141

def NamedBody570_143 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody570_144 : StackLang.HolProg 64 :=
.seq NamedBody570_142 NamedBody570_143

def NamedBody570_145 : StackLang.HolProg 64 :=
.seq NamedBody570_137 NamedBody570_144

def NamedBody570_146 : StackLang.HolProg 64 :=
.seq NamedBody570_136 NamedBody570_145

def NamedBody570_147 : StackLang.HolProg 64 :=
.seq NamedBody570_135 NamedBody570_146

def NamedBody570_148 : StackLang.HolProg 64 :=
.seq NamedBody570_134 NamedBody570_147

def NamedBody570_149 : StackLang.HolProg 64 :=
.seq NamedBody570_133 NamedBody570_148

def NamedBody570_150 : StackLang.HolProg 64 :=
.seq NamedBody570_132 NamedBody570_149

def NamedBody570_151 : StackLang.HolProg 64 :=
.seq NamedBody570_131 NamedBody570_150

def NamedBody570_152 : StackLang.HolProg 64 :=
.seq NamedBody570_130 NamedBody570_151

def NamedBody570_153 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody570_154 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody570_155 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody570_156 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody570_157 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody570_158 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody570_159 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 1 10
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 10)))

def NamedBody570_160 : StackLang.HolProg 64 :=
.seq NamedBody570_158 NamedBody570_159

def NamedBody570_161 : StackLang.HolProg 64 :=
.seq NamedBody570_157 NamedBody570_160

def NamedBody570_162 : StackLang.HolProg 64 :=
.seq NamedBody570_156 NamedBody570_161

def NamedBody570_163 : StackLang.HolProg 64 :=
.seq NamedBody570_155 NamedBody570_162

def NamedBody570_164 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody570_165 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def NamedBody570_166 : StackLang.HolProg 64 :=
.seq NamedBody570_164 NamedBody570_165

def NamedBody570_167 : StackLang.HolProg 64 :=
.call (some (NamedBody570_163, 1, 570, 6)) (Sum.inl 495) (some (NamedBody570_166, 570, 7))

def NamedBody570_168 : StackLang.HolProg 64 :=
.seq NamedBody570_154 NamedBody570_167

def NamedBody570_169 : StackLang.HolProg 64 :=
.seq NamedBody570_153 NamedBody570_168

def NamedBody570_170 : StackLang.HolProg 64 :=
.seq NamedBody570_152 NamedBody570_169

def NamedBody570_171 : StackLang.HolProg 64 :=
.seq NamedBody570_123 NamedBody570_170

def NamedBody570_172 : StackLang.HolProg 64 :=
.seq NamedBody570_120 NamedBody570_171

def NamedBody570_173 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody570_174 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 10 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def NamedBody570_175 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody570_176 : StackLang.HolProg 64 :=
.seq NamedBody570_174 NamedBody570_175

def NamedBody570_177 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody570_178 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1980#64)

def NamedBody570_179 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody570_180 : StackLang.HolProg 64 :=
.seq NamedBody570_178 NamedBody570_179

def NamedBody570_181 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody570_182 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 2#64)

def NamedBody570_183 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 10

def NamedBody570_184 : StackLang.HolProg 64 :=
.seq NamedBody570_182 NamedBody570_183

def NamedBody570_185 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody570_186 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) NamedBody570_184 NamedBody570_185

def NamedBody570_187 : StackLang.HolProg 64 :=
.seq NamedBody570_181 NamedBody570_186

def NamedBody570_188 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def NamedBody570_189 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody570_190 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 570 9

def NamedBody570_191 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody570_192 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody570_193 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody570_194 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody570_195 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def NamedBody570_196 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def NamedBody570_197 : StackLang.HolProg 64 :=
.seq NamedBody570_195 NamedBody570_196

def NamedBody570_198 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def NamedBody570_199 : StackLang.HolProg 64 :=
.seq NamedBody570_197 NamedBody570_198

def NamedBody570_200 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody570_201 : StackLang.HolProg 64 :=
.seq NamedBody570_199 NamedBody570_200

def NamedBody570_202 : StackLang.HolProg 64 :=
.seq NamedBody570_194 NamedBody570_201

def NamedBody570_203 : StackLang.HolProg 64 :=
.seq NamedBody570_193 NamedBody570_202

def NamedBody570_204 : StackLang.HolProg 64 :=
.seq NamedBody570_192 NamedBody570_203

def NamedBody570_205 : StackLang.HolProg 64 :=
.seq NamedBody570_191 NamedBody570_204

def NamedBody570_206 : StackLang.HolProg 64 :=
.seq NamedBody570_190 NamedBody570_205

def NamedBody570_207 : StackLang.HolProg 64 :=
.seq NamedBody570_189 NamedBody570_206

def NamedBody570_208 : StackLang.HolProg 64 :=
.seq NamedBody570_188 NamedBody570_207

def NamedBody570_209 : StackLang.HolProg 64 :=
.seq NamedBody570_187 NamedBody570_208

def NamedBody570_210 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody570_211 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody570_212 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody570_213 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody570_214 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody570_215 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody570_216 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 11
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody570_217 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody570_218 : StackLang.HolProg 64 :=
.seq NamedBody570_216 NamedBody570_217

def NamedBody570_219 : StackLang.HolProg 64 :=
.seq NamedBody570_215 NamedBody570_218

def NamedBody570_220 : StackLang.HolProg 64 :=
.seq NamedBody570_214 NamedBody570_219

def NamedBody570_221 : StackLang.HolProg 64 :=
.seq NamedBody570_213 NamedBody570_220

def NamedBody570_222 : StackLang.HolProg 64 :=
.seq NamedBody570_212 NamedBody570_221

def NamedBody570_223 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 11
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody570_224 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody570_225 : StackLang.HolProg 64 :=
.seq NamedBody570_223 NamedBody570_224

def NamedBody570_226 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def NamedBody570_227 : StackLang.HolProg 64 :=
.seq NamedBody570_225 NamedBody570_226

def NamedBody570_228 : StackLang.HolProg 64 :=
.call (some (NamedBody570_222, 1, 570, 8)) (Sum.inl 470) (some (NamedBody570_227, 570, 9))

def NamedBody570_229 : StackLang.HolProg 64 :=
.seq NamedBody570_211 NamedBody570_228

def NamedBody570_230 : StackLang.HolProg 64 :=
.seq NamedBody570_210 NamedBody570_229

def NamedBody570_231 : StackLang.HolProg 64 :=
.seq NamedBody570_209 NamedBody570_230

def NamedBody570_232 : StackLang.HolProg 64 :=
.seq NamedBody570_180 NamedBody570_231

def NamedBody570_233 : StackLang.HolProg 64 :=
.seq NamedBody570_177 NamedBody570_232

def NamedBody570_234 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody570_235 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 10 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def NamedBody570_236 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody570_237 : StackLang.HolProg 64 :=
.seq NamedBody570_235 NamedBody570_236

def NamedBody570_238 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody570_239 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1981#64)

def NamedBody570_240 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody570_241 : StackLang.HolProg 64 :=
.seq NamedBody570_239 NamedBody570_240

def NamedBody570_242 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody570_243 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 2#64)

def NamedBody570_244 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 10

def NamedBody570_245 : StackLang.HolProg 64 :=
.seq NamedBody570_243 NamedBody570_244

def NamedBody570_246 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody570_247 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) NamedBody570_245 NamedBody570_246

def NamedBody570_248 : StackLang.HolProg 64 :=
.seq NamedBody570_242 NamedBody570_247

def NamedBody570_249 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def NamedBody570_250 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody570_251 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 570 11

def NamedBody570_252 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody570_253 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody570_254 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody570_255 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody570_256 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def NamedBody570_257 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def NamedBody570_258 : StackLang.HolProg 64 :=
.seq NamedBody570_256 NamedBody570_257

def NamedBody570_259 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def NamedBody570_260 : StackLang.HolProg 64 :=
.seq NamedBody570_258 NamedBody570_259

def NamedBody570_261 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody570_262 : StackLang.HolProg 64 :=
.seq NamedBody570_260 NamedBody570_261

def NamedBody570_263 : StackLang.HolProg 64 :=
.seq NamedBody570_255 NamedBody570_262

def NamedBody570_264 : StackLang.HolProg 64 :=
.seq NamedBody570_254 NamedBody570_263

def NamedBody570_265 : StackLang.HolProg 64 :=
.seq NamedBody570_253 NamedBody570_264

def NamedBody570_266 : StackLang.HolProg 64 :=
.seq NamedBody570_252 NamedBody570_265

def NamedBody570_267 : StackLang.HolProg 64 :=
.seq NamedBody570_251 NamedBody570_266

def NamedBody570_268 : StackLang.HolProg 64 :=
.seq NamedBody570_250 NamedBody570_267

def NamedBody570_269 : StackLang.HolProg 64 :=
.seq NamedBody570_249 NamedBody570_268

def NamedBody570_270 : StackLang.HolProg 64 :=
.seq NamedBody570_248 NamedBody570_269

def NamedBody570_271 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody570_272 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody570_273 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody570_274 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody570_275 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody570_276 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody570_277 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody570_278 : StackLang.HolProg 64 :=
.seq NamedBody570_276 NamedBody570_277

def NamedBody570_279 : StackLang.HolProg 64 :=
.seq NamedBody570_275 NamedBody570_278

def NamedBody570_280 : StackLang.HolProg 64 :=
.seq NamedBody570_274 NamedBody570_279

def NamedBody570_281 : StackLang.HolProg 64 :=
.seq NamedBody570_273 NamedBody570_280

def NamedBody570_282 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody570_283 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def NamedBody570_284 : StackLang.HolProg 64 :=
.seq NamedBody570_282 NamedBody570_283

def NamedBody570_285 : StackLang.HolProg 64 :=
.call (some (NamedBody570_281, 1, 570, 10)) (Sum.inl 496) (some (NamedBody570_284, 570, 11))

def NamedBody570_286 : StackLang.HolProg 64 :=
.seq NamedBody570_272 NamedBody570_285

def NamedBody570_287 : StackLang.HolProg 64 :=
.seq NamedBody570_271 NamedBody570_286

def NamedBody570_288 : StackLang.HolProg 64 :=
.seq NamedBody570_270 NamedBody570_287

def NamedBody570_289 : StackLang.HolProg 64 :=
.seq NamedBody570_241 NamedBody570_288

def NamedBody570_290 : StackLang.HolProg 64 :=
.seq NamedBody570_238 NamedBody570_289

def NamedBody570_291 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody570_292 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 10 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def NamedBody570_293 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody570_294 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1982#64)

def NamedBody570_295 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody570_296 : StackLang.HolProg 64 :=
.seq NamedBody570_294 NamedBody570_295

def NamedBody570_297 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody570_298 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 2#64)

def NamedBody570_299 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 10

def NamedBody570_300 : StackLang.HolProg 64 :=
.seq NamedBody570_298 NamedBody570_299

def NamedBody570_301 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody570_302 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) NamedBody570_300 NamedBody570_301

def NamedBody570_303 : StackLang.HolProg 64 :=
.seq NamedBody570_297 NamedBody570_302

def NamedBody570_304 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def NamedBody570_305 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody570_306 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 570 13

def NamedBody570_307 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody570_308 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody570_309 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody570_310 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody570_311 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def NamedBody570_312 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def NamedBody570_313 : StackLang.HolProg 64 :=
.seq NamedBody570_311 NamedBody570_312

def NamedBody570_314 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def NamedBody570_315 : StackLang.HolProg 64 :=
.seq NamedBody570_313 NamedBody570_314

def NamedBody570_316 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody570_317 : StackLang.HolProg 64 :=
.seq NamedBody570_315 NamedBody570_316

def NamedBody570_318 : StackLang.HolProg 64 :=
.seq NamedBody570_310 NamedBody570_317

def NamedBody570_319 : StackLang.HolProg 64 :=
.seq NamedBody570_309 NamedBody570_318

def NamedBody570_320 : StackLang.HolProg 64 :=
.seq NamedBody570_308 NamedBody570_319

def NamedBody570_321 : StackLang.HolProg 64 :=
.seq NamedBody570_307 NamedBody570_320

def NamedBody570_322 : StackLang.HolProg 64 :=
.seq NamedBody570_306 NamedBody570_321

def NamedBody570_323 : StackLang.HolProg 64 :=
.seq NamedBody570_305 NamedBody570_322

def NamedBody570_324 : StackLang.HolProg 64 :=
.seq NamedBody570_304 NamedBody570_323

def NamedBody570_325 : StackLang.HolProg 64 :=
.seq NamedBody570_303 NamedBody570_324

def NamedBody570_326 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody570_327 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody570_328 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody570_329 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody570_330 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody570_331 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody570_332 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 1 10
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 10)))

def NamedBody570_333 : StackLang.HolProg 64 :=
.seq NamedBody570_331 NamedBody570_332

def NamedBody570_334 : StackLang.HolProg 64 :=
.seq NamedBody570_330 NamedBody570_333

def NamedBody570_335 : StackLang.HolProg 64 :=
.seq NamedBody570_329 NamedBody570_334

def NamedBody570_336 : StackLang.HolProg 64 :=
.seq NamedBody570_328 NamedBody570_335

def NamedBody570_337 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody570_338 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def NamedBody570_339 : StackLang.HolProg 64 :=
.seq NamedBody570_337 NamedBody570_338

def NamedBody570_340 : StackLang.HolProg 64 :=
.call (some (NamedBody570_336, 1, 570, 12)) (Sum.inl 407) (some (NamedBody570_339, 570, 13))

def NamedBody570_341 : StackLang.HolProg 64 :=
.seq NamedBody570_327 NamedBody570_340

def NamedBody570_342 : StackLang.HolProg 64 :=
.seq NamedBody570_326 NamedBody570_341

def NamedBody570_343 : StackLang.HolProg 64 :=
.seq NamedBody570_325 NamedBody570_342

def NamedBody570_344 : StackLang.HolProg 64 :=
.seq NamedBody570_296 NamedBody570_343

def NamedBody570_345 : StackLang.HolProg 64 :=
.seq NamedBody570_293 NamedBody570_344

def NamedBody570_346 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody570_347 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 10 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def NamedBody570_348 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody570_349 : StackLang.HolProg 64 :=
.seq NamedBody570_347 NamedBody570_348

def NamedBody570_350 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody570_351 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1983#64)

def NamedBody570_352 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody570_353 : StackLang.HolProg 64 :=
.seq NamedBody570_351 NamedBody570_352

def NamedBody570_354 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody570_355 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 2#64)

def NamedBody570_356 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 10

def NamedBody570_357 : StackLang.HolProg 64 :=
.seq NamedBody570_355 NamedBody570_356

def NamedBody570_358 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody570_359 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) NamedBody570_357 NamedBody570_358

def NamedBody570_360 : StackLang.HolProg 64 :=
.seq NamedBody570_354 NamedBody570_359

def NamedBody570_361 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def NamedBody570_362 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody570_363 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 570 15

def NamedBody570_364 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody570_365 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody570_366 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody570_367 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody570_368 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def NamedBody570_369 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def NamedBody570_370 : StackLang.HolProg 64 :=
.seq NamedBody570_368 NamedBody570_369

def NamedBody570_371 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def NamedBody570_372 : StackLang.HolProg 64 :=
.seq NamedBody570_370 NamedBody570_371

def NamedBody570_373 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody570_374 : StackLang.HolProg 64 :=
.seq NamedBody570_372 NamedBody570_373

def NamedBody570_375 : StackLang.HolProg 64 :=
.seq NamedBody570_367 NamedBody570_374

def NamedBody570_376 : StackLang.HolProg 64 :=
.seq NamedBody570_366 NamedBody570_375

def NamedBody570_377 : StackLang.HolProg 64 :=
.seq NamedBody570_365 NamedBody570_376

def NamedBody570_378 : StackLang.HolProg 64 :=
.seq NamedBody570_364 NamedBody570_377

def NamedBody570_379 : StackLang.HolProg 64 :=
.seq NamedBody570_363 NamedBody570_378

def NamedBody570_380 : StackLang.HolProg 64 :=
.seq NamedBody570_362 NamedBody570_379

def NamedBody570_381 : StackLang.HolProg 64 :=
.seq NamedBody570_361 NamedBody570_380

def NamedBody570_382 : StackLang.HolProg 64 :=
.seq NamedBody570_360 NamedBody570_381

def NamedBody570_383 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody570_384 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody570_385 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody570_386 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody570_387 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody570_388 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody570_389 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 11 10
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 10)))

def NamedBody570_390 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody570_391 : StackLang.HolProg 64 :=
.seq NamedBody570_389 NamedBody570_390

def NamedBody570_392 : StackLang.HolProg 64 :=
.seq NamedBody570_388 NamedBody570_391

def NamedBody570_393 : StackLang.HolProg 64 :=
.seq NamedBody570_387 NamedBody570_392

def NamedBody570_394 : StackLang.HolProg 64 :=
.seq NamedBody570_386 NamedBody570_393

def NamedBody570_395 : StackLang.HolProg 64 :=
.seq NamedBody570_385 NamedBody570_394

def NamedBody570_396 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody570_397 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def NamedBody570_398 : StackLang.HolProg 64 :=
.seq NamedBody570_396 NamedBody570_397

def NamedBody570_399 : StackLang.HolProg 64 :=
.call (some (NamedBody570_395, 1, 570, 14)) (Sum.inl 416) (some (NamedBody570_398, 570, 15))

def NamedBody570_400 : StackLang.HolProg 64 :=
.seq NamedBody570_384 NamedBody570_399

def NamedBody570_401 : StackLang.HolProg 64 :=
.seq NamedBody570_383 NamedBody570_400

def NamedBody570_402 : StackLang.HolProg 64 :=
.seq NamedBody570_382 NamedBody570_401

def NamedBody570_403 : StackLang.HolProg 64 :=
.seq NamedBody570_353 NamedBody570_402

def NamedBody570_404 : StackLang.HolProg 64 :=
.seq NamedBody570_350 NamedBody570_403

def NamedBody570_405 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody570_406 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody570_407 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 0#64)

def NamedBody570_408 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody570_409 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 13 0#64)

def NamedBody570_410 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 12 0#64)

def NamedBody570_411 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 11 0#64)

def NamedBody570_412 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 0#64)

def NamedBody570_413 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody570_414 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody570_415 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1984#64)

def NamedBody570_416 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody570_417 : StackLang.HolProg 64 :=
.seq NamedBody570_415 NamedBody570_416

def NamedBody570_418 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody570_419 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 2#64)

def NamedBody570_420 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 10

def NamedBody570_421 : StackLang.HolProg 64 :=
.seq NamedBody570_419 NamedBody570_420

def NamedBody570_422 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody570_423 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) NamedBody570_421 NamedBody570_422

def NamedBody570_424 : StackLang.HolProg 64 :=
.seq NamedBody570_418 NamedBody570_423

def NamedBody570_425 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def NamedBody570_426 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody570_427 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 570 17

def NamedBody570_428 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody570_429 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody570_430 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody570_431 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody570_432 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def NamedBody570_433 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def NamedBody570_434 : StackLang.HolProg 64 :=
.seq NamedBody570_432 NamedBody570_433

def NamedBody570_435 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def NamedBody570_436 : StackLang.HolProg 64 :=
.seq NamedBody570_434 NamedBody570_435

def NamedBody570_437 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody570_438 : StackLang.HolProg 64 :=
.seq NamedBody570_436 NamedBody570_437

def NamedBody570_439 : StackLang.HolProg 64 :=
.seq NamedBody570_431 NamedBody570_438

def NamedBody570_440 : StackLang.HolProg 64 :=
.seq NamedBody570_430 NamedBody570_439

def NamedBody570_441 : StackLang.HolProg 64 :=
.seq NamedBody570_429 NamedBody570_440

def NamedBody570_442 : StackLang.HolProg 64 :=
.seq NamedBody570_428 NamedBody570_441

def NamedBody570_443 : StackLang.HolProg 64 :=
.seq NamedBody570_427 NamedBody570_442

def NamedBody570_444 : StackLang.HolProg 64 :=
.seq NamedBody570_426 NamedBody570_443

def NamedBody570_445 : StackLang.HolProg 64 :=
.seq NamedBody570_425 NamedBody570_444

def NamedBody570_446 : StackLang.HolProg 64 :=
.seq NamedBody570_424 NamedBody570_445

def NamedBody570_447 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody570_448 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody570_449 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody570_450 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody570_451 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody570_452 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody570_453 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody570_454 : StackLang.HolProg 64 :=
.seq NamedBody570_452 NamedBody570_453

def NamedBody570_455 : StackLang.HolProg 64 :=
.seq NamedBody570_451 NamedBody570_454

def NamedBody570_456 : StackLang.HolProg 64 :=
.seq NamedBody570_450 NamedBody570_455

def NamedBody570_457 : StackLang.HolProg 64 :=
.seq NamedBody570_449 NamedBody570_456

def NamedBody570_458 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody570_459 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def NamedBody570_460 : StackLang.HolProg 64 :=
.seq NamedBody570_458 NamedBody570_459

def NamedBody570_461 : StackLang.HolProg 64 :=
.call (some (NamedBody570_457, 1, 570, 16)) (Sum.inl 476) (some (NamedBody570_460, 570, 17))

def NamedBody570_462 : StackLang.HolProg 64 :=
.seq NamedBody570_448 NamedBody570_461

def NamedBody570_463 : StackLang.HolProg 64 :=
.seq NamedBody570_447 NamedBody570_462

def NamedBody570_464 : StackLang.HolProg 64 :=
.seq NamedBody570_446 NamedBody570_463

def NamedBody570_465 : StackLang.HolProg 64 :=
.seq NamedBody570_417 NamedBody570_464

def NamedBody570_466 : StackLang.HolProg 64 :=
.seq NamedBody570_414 NamedBody570_465

def NamedBody570_467 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody570_468 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody570_469 : StackLang.HolProg 64 :=
.seq NamedBody570_467 NamedBody570_468

def NamedBody570_470 : StackLang.HolProg 64 :=
.seq NamedBody570_466 NamedBody570_469

def NamedBody570_471 : StackLang.HolProg 64 :=
.seq NamedBody570_413 NamedBody570_470

def NamedBody570_472 : StackLang.HolProg 64 :=
.seq NamedBody570_412 NamedBody570_471

def NamedBody570_473 : StackLang.HolProg 64 :=
.seq NamedBody570_411 NamedBody570_472

def NamedBody570_474 : StackLang.HolProg 64 :=
.seq NamedBody570_410 NamedBody570_473

def NamedBody570_475 : StackLang.HolProg 64 :=
.seq NamedBody570_409 NamedBody570_474

def NamedBody570_476 : StackLang.HolProg 64 :=
.seq NamedBody570_408 NamedBody570_475

def NamedBody570_477 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody570_478 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody570_479 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 10
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 1 48#64))

def NamedBody570_480 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 11 32#64)

def NamedBody570_481 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody570_482 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody570_483 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1985#64)

def NamedBody570_484 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody570_485 : StackLang.HolProg 64 :=
.seq NamedBody570_483 NamedBody570_484

def NamedBody570_486 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody570_487 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 2#64)

def NamedBody570_488 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 10

def NamedBody570_489 : StackLang.HolProg 64 :=
.seq NamedBody570_487 NamedBody570_488

def NamedBody570_490 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody570_491 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) NamedBody570_489 NamedBody570_490

def NamedBody570_492 : StackLang.HolProg 64 :=
.seq NamedBody570_486 NamedBody570_491

def NamedBody570_493 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def NamedBody570_494 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody570_495 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 570 19

def NamedBody570_496 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody570_497 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody570_498 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody570_499 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody570_500 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def NamedBody570_501 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def NamedBody570_502 : StackLang.HolProg 64 :=
.seq NamedBody570_500 NamedBody570_501

def NamedBody570_503 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def NamedBody570_504 : StackLang.HolProg 64 :=
.seq NamedBody570_502 NamedBody570_503

def NamedBody570_505 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody570_506 : StackLang.HolProg 64 :=
.seq NamedBody570_504 NamedBody570_505

def NamedBody570_507 : StackLang.HolProg 64 :=
.seq NamedBody570_499 NamedBody570_506

def NamedBody570_508 : StackLang.HolProg 64 :=
.seq NamedBody570_498 NamedBody570_507

def NamedBody570_509 : StackLang.HolProg 64 :=
.seq NamedBody570_497 NamedBody570_508

def NamedBody570_510 : StackLang.HolProg 64 :=
.seq NamedBody570_496 NamedBody570_509

def NamedBody570_511 : StackLang.HolProg 64 :=
.seq NamedBody570_495 NamedBody570_510

def NamedBody570_512 : StackLang.HolProg 64 :=
.seq NamedBody570_494 NamedBody570_511

def NamedBody570_513 : StackLang.HolProg 64 :=
.seq NamedBody570_493 NamedBody570_512

def NamedBody570_514 : StackLang.HolProg 64 :=
.seq NamedBody570_492 NamedBody570_513

def NamedBody570_515 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody570_516 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody570_517 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody570_518 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody570_519 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody570_520 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody570_521 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 1 10
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 10)))

def NamedBody570_522 : StackLang.HolProg 64 :=
.seq NamedBody570_520 NamedBody570_521

def NamedBody570_523 : StackLang.HolProg 64 :=
.seq NamedBody570_519 NamedBody570_522

def NamedBody570_524 : StackLang.HolProg 64 :=
.seq NamedBody570_518 NamedBody570_523

def NamedBody570_525 : StackLang.HolProg 64 :=
.seq NamedBody570_517 NamedBody570_524

def NamedBody570_526 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody570_527 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def NamedBody570_528 : StackLang.HolProg 64 :=
.seq NamedBody570_526 NamedBody570_527

def NamedBody570_529 : StackLang.HolProg 64 :=
.call (some (NamedBody570_525, 1, 570, 18)) (Sum.inl 146) (some (NamedBody570_528, 570, 19))

def NamedBody570_530 : StackLang.HolProg 64 :=
.seq NamedBody570_516 NamedBody570_529

def NamedBody570_531 : StackLang.HolProg 64 :=
.seq NamedBody570_515 NamedBody570_530

def NamedBody570_532 : StackLang.HolProg 64 :=
.seq NamedBody570_514 NamedBody570_531

def NamedBody570_533 : StackLang.HolProg 64 :=
.seq NamedBody570_485 NamedBody570_532

def NamedBody570_534 : StackLang.HolProg 64 :=
.seq NamedBody570_482 NamedBody570_533

def NamedBody570_535 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody570_536 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 10 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def NamedBody570_537 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody570_538 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1986#64)

def NamedBody570_539 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody570_540 : StackLang.HolProg 64 :=
.seq NamedBody570_538 NamedBody570_539

def NamedBody570_541 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody570_542 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 2#64)

def NamedBody570_543 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 10

def NamedBody570_544 : StackLang.HolProg 64 :=
.seq NamedBody570_542 NamedBody570_543

def NamedBody570_545 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody570_546 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) NamedBody570_544 NamedBody570_545

def NamedBody570_547 : StackLang.HolProg 64 :=
.seq NamedBody570_541 NamedBody570_546

def NamedBody570_548 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def NamedBody570_549 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody570_550 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 570 21

def NamedBody570_551 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody570_552 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody570_553 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody570_554 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody570_555 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def NamedBody570_556 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def NamedBody570_557 : StackLang.HolProg 64 :=
.seq NamedBody570_555 NamedBody570_556

def NamedBody570_558 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def NamedBody570_559 : StackLang.HolProg 64 :=
.seq NamedBody570_557 NamedBody570_558

def NamedBody570_560 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody570_561 : StackLang.HolProg 64 :=
.seq NamedBody570_559 NamedBody570_560

def NamedBody570_562 : StackLang.HolProg 64 :=
.seq NamedBody570_554 NamedBody570_561

def NamedBody570_563 : StackLang.HolProg 64 :=
.seq NamedBody570_553 NamedBody570_562

def NamedBody570_564 : StackLang.HolProg 64 :=
.seq NamedBody570_552 NamedBody570_563

def NamedBody570_565 : StackLang.HolProg 64 :=
.seq NamedBody570_551 NamedBody570_564

def NamedBody570_566 : StackLang.HolProg 64 :=
.seq NamedBody570_550 NamedBody570_565

def NamedBody570_567 : StackLang.HolProg 64 :=
.seq NamedBody570_549 NamedBody570_566

def NamedBody570_568 : StackLang.HolProg 64 :=
.seq NamedBody570_548 NamedBody570_567

def NamedBody570_569 : StackLang.HolProg 64 :=
.seq NamedBody570_547 NamedBody570_568

def NamedBody570_570 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody570_571 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody570_572 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody570_573 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody570_574 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody570_575 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody570_576 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody570_577 : StackLang.HolProg 64 :=
.seq NamedBody570_575 NamedBody570_576

def NamedBody570_578 : StackLang.HolProg 64 :=
.seq NamedBody570_574 NamedBody570_577

def NamedBody570_579 : StackLang.HolProg 64 :=
.seq NamedBody570_573 NamedBody570_578

def NamedBody570_580 : StackLang.HolProg 64 :=
.seq NamedBody570_572 NamedBody570_579

def NamedBody570_581 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody570_582 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def NamedBody570_583 : StackLang.HolProg 64 :=
.seq NamedBody570_581 NamedBody570_582

def NamedBody570_584 : StackLang.HolProg 64 :=
.call (some (NamedBody570_580, 1, 570, 20)) (Sum.inl 476) (some (NamedBody570_583, 570, 21))

def NamedBody570_585 : StackLang.HolProg 64 :=
.seq NamedBody570_571 NamedBody570_584

def NamedBody570_586 : StackLang.HolProg 64 :=
.seq NamedBody570_570 NamedBody570_585

def NamedBody570_587 : StackLang.HolProg 64 :=
.seq NamedBody570_569 NamedBody570_586

def NamedBody570_588 : StackLang.HolProg 64 :=
.seq NamedBody570_540 NamedBody570_587

def NamedBody570_589 : StackLang.HolProg 64 :=
.seq NamedBody570_537 NamedBody570_588

def NamedBody570_590 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody570_591 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody570_592 : StackLang.HolProg 64 :=
.seq NamedBody570_590 NamedBody570_591

def NamedBody570_593 : StackLang.HolProg 64 :=
.seq NamedBody570_589 NamedBody570_592

def NamedBody570_594 : StackLang.HolProg 64 :=
.seq NamedBody570_536 NamedBody570_593

def NamedBody570_595 : StackLang.HolProg 64 :=
.seq NamedBody570_535 NamedBody570_594

def NamedBody570_596 : StackLang.HolProg 64 :=
.seq NamedBody570_534 NamedBody570_595

def NamedBody570_597 : StackLang.HolProg 64 :=
.seq NamedBody570_481 NamedBody570_596

def NamedBody570_598 : StackLang.HolProg 64 :=
.seq NamedBody570_480 NamedBody570_597

def NamedBody570_599 : StackLang.HolProg 64 :=
.seq NamedBody570_479 NamedBody570_598

def NamedBody570_600 : StackLang.HolProg 64 :=
.seq NamedBody570_478 NamedBody570_599

def NamedBody570_601 : StackLang.HolProg 64 :=
.seq NamedBody570_477 NamedBody570_600

def NamedBody570_602 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.notEqual) 11 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 10) NamedBody570_476 NamedBody570_601

def NamedBody570_603 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody570_604 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 1#64)

def NamedBody570_605 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody570_606 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody570_607 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1987#64)

def NamedBody570_608 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody570_609 : StackLang.HolProg 64 :=
.seq NamedBody570_607 NamedBody570_608

def NamedBody570_610 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody570_611 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 2#64)

def NamedBody570_612 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 10

def NamedBody570_613 : StackLang.HolProg 64 :=
.seq NamedBody570_611 NamedBody570_612

def NamedBody570_614 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody570_615 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) NamedBody570_613 NamedBody570_614

def NamedBody570_616 : StackLang.HolProg 64 :=
.seq NamedBody570_610 NamedBody570_615

def NamedBody570_617 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def NamedBody570_618 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody570_619 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 570 23

def NamedBody570_620 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody570_621 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody570_622 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody570_623 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody570_624 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def NamedBody570_625 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def NamedBody570_626 : StackLang.HolProg 64 :=
.seq NamedBody570_624 NamedBody570_625

def NamedBody570_627 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def NamedBody570_628 : StackLang.HolProg 64 :=
.seq NamedBody570_626 NamedBody570_627

def NamedBody570_629 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody570_630 : StackLang.HolProg 64 :=
.seq NamedBody570_628 NamedBody570_629

def NamedBody570_631 : StackLang.HolProg 64 :=
.seq NamedBody570_623 NamedBody570_630

def NamedBody570_632 : StackLang.HolProg 64 :=
.seq NamedBody570_622 NamedBody570_631

def NamedBody570_633 : StackLang.HolProg 64 :=
.seq NamedBody570_621 NamedBody570_632

def NamedBody570_634 : StackLang.HolProg 64 :=
.seq NamedBody570_620 NamedBody570_633

def NamedBody570_635 : StackLang.HolProg 64 :=
.seq NamedBody570_619 NamedBody570_634

def NamedBody570_636 : StackLang.HolProg 64 :=
.seq NamedBody570_618 NamedBody570_635

def NamedBody570_637 : StackLang.HolProg 64 :=
.seq NamedBody570_617 NamedBody570_636

def NamedBody570_638 : StackLang.HolProg 64 :=
.seq NamedBody570_616 NamedBody570_637

def NamedBody570_639 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody570_640 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody570_641 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody570_642 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody570_643 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody570_644 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody570_645 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 24#64))

def NamedBody570_646 : StackLang.HolProg 64 :=
.seq NamedBody570_644 NamedBody570_645

def NamedBody570_647 : StackLang.HolProg 64 :=
.seq NamedBody570_643 NamedBody570_646

def NamedBody570_648 : StackLang.HolProg 64 :=
.seq NamedBody570_642 NamedBody570_647

def NamedBody570_649 : StackLang.HolProg 64 :=
.seq NamedBody570_641 NamedBody570_648

def NamedBody570_650 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 24#64))

def NamedBody570_651 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def NamedBody570_652 : StackLang.HolProg 64 :=
.seq NamedBody570_650 NamedBody570_651

def NamedBody570_653 : StackLang.HolProg 64 :=
.call (some (NamedBody570_649, 1, 570, 22)) (Sum.inl 490) (some (NamedBody570_652, 570, 23))

def NamedBody570_654 : StackLang.HolProg 64 :=
.seq NamedBody570_640 NamedBody570_653

def NamedBody570_655 : StackLang.HolProg 64 :=
.seq NamedBody570_639 NamedBody570_654

def NamedBody570_656 : StackLang.HolProg 64 :=
.seq NamedBody570_638 NamedBody570_655

def NamedBody570_657 : StackLang.HolProg 64 :=
.seq NamedBody570_609 NamedBody570_656

def NamedBody570_658 : StackLang.HolProg 64 :=
.seq NamedBody570_606 NamedBody570_657

def NamedBody570_659 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody570_660 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 0#64)

def NamedBody570_661 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody570_662 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 32#64)))

def NamedBody570_663 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 1

def NamedBody570_664 : StackLang.HolProg 64 :=
.seq NamedBody570_662 NamedBody570_663

def NamedBody570_665 : StackLang.HolProg 64 :=
.seq NamedBody570_661 NamedBody570_664

def NamedBody570_666 : StackLang.HolProg 64 :=
.seq NamedBody570_660 NamedBody570_665

def NamedBody570_667 : StackLang.HolProg 64 :=
.seq NamedBody570_659 NamedBody570_666

def NamedBody570_668 : StackLang.HolProg 64 :=
.seq NamedBody570_658 NamedBody570_667

def NamedBody570_669 : StackLang.HolProg 64 :=
.seq NamedBody570_605 NamedBody570_668

def NamedBody570_670 : StackLang.HolProg 64 :=
.seq NamedBody570_604 NamedBody570_669

def NamedBody570_671 : StackLang.HolProg 64 :=
.seq NamedBody570_603 NamedBody570_670

def NamedBody570_672 : StackLang.HolProg 64 :=
.seq NamedBody570_602 NamedBody570_671

def NamedBody570_673 : StackLang.HolProg 64 :=
.seq NamedBody570_407 NamedBody570_672

def NamedBody570_674 : StackLang.HolProg 64 :=
.seq NamedBody570_406 NamedBody570_673

def NamedBody570_675 : StackLang.HolProg 64 :=
.seq NamedBody570_405 NamedBody570_674

def NamedBody570_676 : StackLang.HolProg 64 :=
.seq NamedBody570_404 NamedBody570_675

def NamedBody570_677 : StackLang.HolProg 64 :=
.seq NamedBody570_349 NamedBody570_676

def NamedBody570_678 : StackLang.HolProg 64 :=
.seq NamedBody570_346 NamedBody570_677

def NamedBody570_679 : StackLang.HolProg 64 :=
.seq NamedBody570_345 NamedBody570_678

def NamedBody570_680 : StackLang.HolProg 64 :=
.seq NamedBody570_292 NamedBody570_679

def NamedBody570_681 : StackLang.HolProg 64 :=
.seq NamedBody570_291 NamedBody570_680

def NamedBody570_682 : StackLang.HolProg 64 :=
.seq NamedBody570_290 NamedBody570_681

def NamedBody570_683 : StackLang.HolProg 64 :=
.seq NamedBody570_237 NamedBody570_682

def NamedBody570_684 : StackLang.HolProg 64 :=
.seq NamedBody570_234 NamedBody570_683

def NamedBody570_685 : StackLang.HolProg 64 :=
.seq NamedBody570_233 NamedBody570_684

def NamedBody570_686 : StackLang.HolProg 64 :=
.seq NamedBody570_176 NamedBody570_685

def NamedBody570_687 : StackLang.HolProg 64 :=
.seq NamedBody570_173 NamedBody570_686

def NamedBody570_688 : StackLang.HolProg 64 :=
.seq NamedBody570_172 NamedBody570_687

def NamedBody570_689 : StackLang.HolProg 64 :=
.seq NamedBody570_119 NamedBody570_688

def NamedBody570_690 : StackLang.HolProg 64 :=
.seq NamedBody570_116 NamedBody570_689

def NamedBody570_691 : StackLang.HolProg 64 :=
.seq NamedBody570_115 NamedBody570_690

def NamedBody570_692 : StackLang.HolProg 64 :=
.seq NamedBody570_62 NamedBody570_691

def NamedBody570_693 : StackLang.HolProg 64 :=
.seq NamedBody570_61 NamedBody570_692

def NamedBody570_694 : StackLang.HolProg 64 :=
.seq NamedBody570_60 NamedBody570_693

def NamedBody570_695 : StackLang.HolProg 64 :=
.seq NamedBody570_7 NamedBody570_694

def NamedBody570_696 : StackLang.HolProg 64 :=
.seq NamedBody570_6 NamedBody570_695

def Named570 : Nat × StackLang.HolProg 64 := (570, NamedBody570_696)
theorem Named570_eq : StackNames.progCompEntryHOL RiscVConfig.riscvNames Removed570 = Named570 := by
  kernel_rfl
#print axioms Named570_eq
end InitECandidate.Proofs.BackendStages
