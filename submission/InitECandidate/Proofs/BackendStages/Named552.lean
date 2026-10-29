import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.BackendStages.Removed552
import Flapjack.Compiler.Backend.Backend
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
namespace InitECandidate.Proofs.BackendStages
def NamedBody552_0 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 80#64)))

def NamedBody552_1 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 2#64)

def NamedBody552_2 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 10

def NamedBody552_3 : StackLang.HolProg 64 :=
.seq NamedBody552_1 NamedBody552_2

def NamedBody552_4 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody552_5 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) NamedBody552_3 NamedBody552_4

def NamedBody552_6 : StackLang.HolProg 64 :=
.seq NamedBody552_0 NamedBody552_5

def NamedBody552_7 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 72#64))

def NamedBody552_8 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody552_9 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1868#64)

def NamedBody552_10 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody552_11 : StackLang.HolProg 64 :=
.seq NamedBody552_9 NamedBody552_10

def NamedBody552_12 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody552_13 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 2#64)

def NamedBody552_14 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 10

def NamedBody552_15 : StackLang.HolProg 64 :=
.seq NamedBody552_13 NamedBody552_14

def NamedBody552_16 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody552_17 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) NamedBody552_15 NamedBody552_16

def NamedBody552_18 : StackLang.HolProg 64 :=
.seq NamedBody552_12 NamedBody552_17

def NamedBody552_19 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def NamedBody552_20 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody552_21 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 552 3

def NamedBody552_22 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody552_23 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody552_24 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody552_25 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody552_26 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def NamedBody552_27 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def NamedBody552_28 : StackLang.HolProg 64 :=
.seq NamedBody552_26 NamedBody552_27

def NamedBody552_29 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def NamedBody552_30 : StackLang.HolProg 64 :=
.seq NamedBody552_28 NamedBody552_29

def NamedBody552_31 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody552_32 : StackLang.HolProg 64 :=
.seq NamedBody552_30 NamedBody552_31

def NamedBody552_33 : StackLang.HolProg 64 :=
.seq NamedBody552_25 NamedBody552_32

def NamedBody552_34 : StackLang.HolProg 64 :=
.seq NamedBody552_24 NamedBody552_33

def NamedBody552_35 : StackLang.HolProg 64 :=
.seq NamedBody552_23 NamedBody552_34

def NamedBody552_36 : StackLang.HolProg 64 :=
.seq NamedBody552_22 NamedBody552_35

def NamedBody552_37 : StackLang.HolProg 64 :=
.seq NamedBody552_21 NamedBody552_36

def NamedBody552_38 : StackLang.HolProg 64 :=
.seq NamedBody552_20 NamedBody552_37

def NamedBody552_39 : StackLang.HolProg 64 :=
.seq NamedBody552_19 NamedBody552_38

def NamedBody552_40 : StackLang.HolProg 64 :=
.seq NamedBody552_18 NamedBody552_39

def NamedBody552_41 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody552_42 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody552_43 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody552_44 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody552_45 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody552_46 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody552_47 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody552_48 : StackLang.HolProg 64 :=
.seq NamedBody552_46 NamedBody552_47

def NamedBody552_49 : StackLang.HolProg 64 :=
.seq NamedBody552_45 NamedBody552_48

def NamedBody552_50 : StackLang.HolProg 64 :=
.seq NamedBody552_44 NamedBody552_49

def NamedBody552_51 : StackLang.HolProg 64 :=
.seq NamedBody552_43 NamedBody552_50

def NamedBody552_52 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody552_53 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def NamedBody552_54 : StackLang.HolProg 64 :=
.seq NamedBody552_52 NamedBody552_53

def NamedBody552_55 : StackLang.HolProg 64 :=
.call (some (NamedBody552_51, 1, 552, 2)) (Sum.inl 492) (some (NamedBody552_54, 552, 3))

def NamedBody552_56 : StackLang.HolProg 64 :=
.seq NamedBody552_42 NamedBody552_55

def NamedBody552_57 : StackLang.HolProg 64 :=
.seq NamedBody552_41 NamedBody552_56

def NamedBody552_58 : StackLang.HolProg 64 :=
.seq NamedBody552_40 NamedBody552_57

def NamedBody552_59 : StackLang.HolProg 64 :=
.seq NamedBody552_11 NamedBody552_58

def NamedBody552_60 : StackLang.HolProg 64 :=
.seq NamedBody552_8 NamedBody552_59

def NamedBody552_61 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody552_62 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody552_63 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody552_64 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1869#64)

def NamedBody552_65 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody552_66 : StackLang.HolProg 64 :=
.seq NamedBody552_64 NamedBody552_65

def NamedBody552_67 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody552_68 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 2#64)

def NamedBody552_69 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 10

def NamedBody552_70 : StackLang.HolProg 64 :=
.seq NamedBody552_68 NamedBody552_69

def NamedBody552_71 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody552_72 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) NamedBody552_70 NamedBody552_71

def NamedBody552_73 : StackLang.HolProg 64 :=
.seq NamedBody552_67 NamedBody552_72

def NamedBody552_74 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def NamedBody552_75 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody552_76 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 552 5

def NamedBody552_77 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody552_78 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody552_79 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody552_80 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody552_81 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def NamedBody552_82 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def NamedBody552_83 : StackLang.HolProg 64 :=
.seq NamedBody552_81 NamedBody552_82

def NamedBody552_84 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def NamedBody552_85 : StackLang.HolProg 64 :=
.seq NamedBody552_83 NamedBody552_84

def NamedBody552_86 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody552_87 : StackLang.HolProg 64 :=
.seq NamedBody552_85 NamedBody552_86

def NamedBody552_88 : StackLang.HolProg 64 :=
.seq NamedBody552_80 NamedBody552_87

def NamedBody552_89 : StackLang.HolProg 64 :=
.seq NamedBody552_79 NamedBody552_88

def NamedBody552_90 : StackLang.HolProg 64 :=
.seq NamedBody552_78 NamedBody552_89

def NamedBody552_91 : StackLang.HolProg 64 :=
.seq NamedBody552_77 NamedBody552_90

def NamedBody552_92 : StackLang.HolProg 64 :=
.seq NamedBody552_76 NamedBody552_91

def NamedBody552_93 : StackLang.HolProg 64 :=
.seq NamedBody552_75 NamedBody552_92

def NamedBody552_94 : StackLang.HolProg 64 :=
.seq NamedBody552_74 NamedBody552_93

def NamedBody552_95 : StackLang.HolProg 64 :=
.seq NamedBody552_73 NamedBody552_94

def NamedBody552_96 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody552_97 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody552_98 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody552_99 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody552_100 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody552_101 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody552_102 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 1 10
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 10)))

def NamedBody552_103 : StackLang.HolProg 64 :=
.seq NamedBody552_101 NamedBody552_102

def NamedBody552_104 : StackLang.HolProg 64 :=
.seq NamedBody552_100 NamedBody552_103

def NamedBody552_105 : StackLang.HolProg 64 :=
.seq NamedBody552_99 NamedBody552_104

def NamedBody552_106 : StackLang.HolProg 64 :=
.seq NamedBody552_98 NamedBody552_105

def NamedBody552_107 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody552_108 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def NamedBody552_109 : StackLang.HolProg 64 :=
.seq NamedBody552_107 NamedBody552_108

def NamedBody552_110 : StackLang.HolProg 64 :=
.call (some (NamedBody552_106, 1, 552, 4)) (Sum.inl 475) (some (NamedBody552_109, 552, 5))

def NamedBody552_111 : StackLang.HolProg 64 :=
.seq NamedBody552_97 NamedBody552_110

def NamedBody552_112 : StackLang.HolProg 64 :=
.seq NamedBody552_96 NamedBody552_111

def NamedBody552_113 : StackLang.HolProg 64 :=
.seq NamedBody552_95 NamedBody552_112

def NamedBody552_114 : StackLang.HolProg 64 :=
.seq NamedBody552_66 NamedBody552_113

def NamedBody552_115 : StackLang.HolProg 64 :=
.seq NamedBody552_63 NamedBody552_114

def NamedBody552_116 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody552_117 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 13
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 48#64))

def NamedBody552_118 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 11
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 32#64))

def NamedBody552_119 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 24#64))

def NamedBody552_120 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 12
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody552_121 : StackLang.HolProg 64 :=
.seq NamedBody552_119 NamedBody552_120

def NamedBody552_122 : StackLang.HolProg 64 :=
.seq NamedBody552_118 NamedBody552_121

def NamedBody552_123 : StackLang.HolProg 64 :=
.seq NamedBody552_117 NamedBody552_122

def NamedBody552_124 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody552_125 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1870#64)

def NamedBody552_126 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody552_127 : StackLang.HolProg 64 :=
.seq NamedBody552_125 NamedBody552_126

def NamedBody552_128 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody552_129 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 2#64)

def NamedBody552_130 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 10

def NamedBody552_131 : StackLang.HolProg 64 :=
.seq NamedBody552_129 NamedBody552_130

def NamedBody552_132 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody552_133 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) NamedBody552_131 NamedBody552_132

def NamedBody552_134 : StackLang.HolProg 64 :=
.seq NamedBody552_128 NamedBody552_133

def NamedBody552_135 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def NamedBody552_136 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody552_137 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 552 7

def NamedBody552_138 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody552_139 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody552_140 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody552_141 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody552_142 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def NamedBody552_143 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def NamedBody552_144 : StackLang.HolProg 64 :=
.seq NamedBody552_142 NamedBody552_143

def NamedBody552_145 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def NamedBody552_146 : StackLang.HolProg 64 :=
.seq NamedBody552_144 NamedBody552_145

def NamedBody552_147 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody552_148 : StackLang.HolProg 64 :=
.seq NamedBody552_146 NamedBody552_147

def NamedBody552_149 : StackLang.HolProg 64 :=
.seq NamedBody552_141 NamedBody552_148

def NamedBody552_150 : StackLang.HolProg 64 :=
.seq NamedBody552_140 NamedBody552_149

def NamedBody552_151 : StackLang.HolProg 64 :=
.seq NamedBody552_139 NamedBody552_150

def NamedBody552_152 : StackLang.HolProg 64 :=
.seq NamedBody552_138 NamedBody552_151

def NamedBody552_153 : StackLang.HolProg 64 :=
.seq NamedBody552_137 NamedBody552_152

def NamedBody552_154 : StackLang.HolProg 64 :=
.seq NamedBody552_136 NamedBody552_153

def NamedBody552_155 : StackLang.HolProg 64 :=
.seq NamedBody552_135 NamedBody552_154

def NamedBody552_156 : StackLang.HolProg 64 :=
.seq NamedBody552_134 NamedBody552_155

def NamedBody552_157 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody552_158 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody552_159 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody552_160 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody552_161 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody552_162 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody552_163 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 1 10
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 10)))

def NamedBody552_164 : StackLang.HolProg 64 :=
.seq NamedBody552_162 NamedBody552_163

def NamedBody552_165 : StackLang.HolProg 64 :=
.seq NamedBody552_161 NamedBody552_164

def NamedBody552_166 : StackLang.HolProg 64 :=
.seq NamedBody552_160 NamedBody552_165

def NamedBody552_167 : StackLang.HolProg 64 :=
.seq NamedBody552_159 NamedBody552_166

def NamedBody552_168 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody552_169 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def NamedBody552_170 : StackLang.HolProg 64 :=
.seq NamedBody552_168 NamedBody552_169

def NamedBody552_171 : StackLang.HolProg 64 :=
.call (some (NamedBody552_167, 1, 552, 6)) (Sum.inl 475) (some (NamedBody552_170, 552, 7))

def NamedBody552_172 : StackLang.HolProg 64 :=
.seq NamedBody552_158 NamedBody552_171

def NamedBody552_173 : StackLang.HolProg 64 :=
.seq NamedBody552_157 NamedBody552_172

def NamedBody552_174 : StackLang.HolProg 64 :=
.seq NamedBody552_156 NamedBody552_173

def NamedBody552_175 : StackLang.HolProg 64 :=
.seq NamedBody552_127 NamedBody552_174

def NamedBody552_176 : StackLang.HolProg 64 :=
.seq NamedBody552_124 NamedBody552_175

def NamedBody552_177 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody552_178 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 100#64)

def NamedBody552_179 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 11
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 64#64))

def NamedBody552_180 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 56#64))

def NamedBody552_181 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 12
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 40#64))

def NamedBody552_182 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 13
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody552_183 : StackLang.HolProg 64 :=
.seq NamedBody552_181 NamedBody552_182

def NamedBody552_184 : StackLang.HolProg 64 :=
.seq NamedBody552_180 NamedBody552_183

def NamedBody552_185 : StackLang.HolProg 64 :=
.seq NamedBody552_179 NamedBody552_184

def NamedBody552_186 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody552_187 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1871#64)

def NamedBody552_188 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody552_189 : StackLang.HolProg 64 :=
.seq NamedBody552_187 NamedBody552_188

def NamedBody552_190 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody552_191 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 2#64)

def NamedBody552_192 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 10

def NamedBody552_193 : StackLang.HolProg 64 :=
.seq NamedBody552_191 NamedBody552_192

def NamedBody552_194 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody552_195 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) NamedBody552_193 NamedBody552_194

def NamedBody552_196 : StackLang.HolProg 64 :=
.seq NamedBody552_190 NamedBody552_195

def NamedBody552_197 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def NamedBody552_198 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody552_199 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 552 9

def NamedBody552_200 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody552_201 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody552_202 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody552_203 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody552_204 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def NamedBody552_205 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def NamedBody552_206 : StackLang.HolProg 64 :=
.seq NamedBody552_204 NamedBody552_205

def NamedBody552_207 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def NamedBody552_208 : StackLang.HolProg 64 :=
.seq NamedBody552_206 NamedBody552_207

def NamedBody552_209 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody552_210 : StackLang.HolProg 64 :=
.seq NamedBody552_208 NamedBody552_209

def NamedBody552_211 : StackLang.HolProg 64 :=
.seq NamedBody552_203 NamedBody552_210

def NamedBody552_212 : StackLang.HolProg 64 :=
.seq NamedBody552_202 NamedBody552_211

def NamedBody552_213 : StackLang.HolProg 64 :=
.seq NamedBody552_201 NamedBody552_212

def NamedBody552_214 : StackLang.HolProg 64 :=
.seq NamedBody552_200 NamedBody552_213

def NamedBody552_215 : StackLang.HolProg 64 :=
.seq NamedBody552_199 NamedBody552_214

def NamedBody552_216 : StackLang.HolProg 64 :=
.seq NamedBody552_198 NamedBody552_215

def NamedBody552_217 : StackLang.HolProg 64 :=
.seq NamedBody552_197 NamedBody552_216

def NamedBody552_218 : StackLang.HolProg 64 :=
.seq NamedBody552_196 NamedBody552_217

def NamedBody552_219 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody552_220 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody552_221 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody552_222 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody552_223 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody552_224 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody552_225 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 13
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 48#64))

def NamedBody552_226 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 40#64))

def NamedBody552_227 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 48#64))

def NamedBody552_228 : StackLang.HolProg 64 :=
.seq NamedBody552_226 NamedBody552_227

def NamedBody552_229 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 11
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 32#64))

def NamedBody552_230 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 24#64))

def NamedBody552_231 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 12
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody552_232 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody552_233 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 40#64))

def NamedBody552_234 : StackLang.HolProg 64 :=
.seq NamedBody552_232 NamedBody552_233

def NamedBody552_235 : StackLang.HolProg 64 :=
.seq NamedBody552_231 NamedBody552_234

def NamedBody552_236 : StackLang.HolProg 64 :=
.seq NamedBody552_230 NamedBody552_235

def NamedBody552_237 : StackLang.HolProg 64 :=
.seq NamedBody552_229 NamedBody552_236

def NamedBody552_238 : StackLang.HolProg 64 :=
.seq NamedBody552_228 NamedBody552_237

def NamedBody552_239 : StackLang.HolProg 64 :=
.seq NamedBody552_225 NamedBody552_238

def NamedBody552_240 : StackLang.HolProg 64 :=
.seq NamedBody552_224 NamedBody552_239

def NamedBody552_241 : StackLang.HolProg 64 :=
.seq NamedBody552_223 NamedBody552_240

def NamedBody552_242 : StackLang.HolProg 64 :=
.seq NamedBody552_222 NamedBody552_241

def NamedBody552_243 : StackLang.HolProg 64 :=
.seq NamedBody552_221 NamedBody552_242

def NamedBody552_244 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 13
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 48#64))

def NamedBody552_245 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 40#64))

def NamedBody552_246 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 48#64))

def NamedBody552_247 : StackLang.HolProg 64 :=
.seq NamedBody552_245 NamedBody552_246

def NamedBody552_248 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 11
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 32#64))

def NamedBody552_249 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 24#64))

def NamedBody552_250 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 12
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody552_251 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody552_252 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 40#64))

def NamedBody552_253 : StackLang.HolProg 64 :=
.seq NamedBody552_251 NamedBody552_252

def NamedBody552_254 : StackLang.HolProg 64 :=
.seq NamedBody552_250 NamedBody552_253

def NamedBody552_255 : StackLang.HolProg 64 :=
.seq NamedBody552_249 NamedBody552_254

def NamedBody552_256 : StackLang.HolProg 64 :=
.seq NamedBody552_248 NamedBody552_255

def NamedBody552_257 : StackLang.HolProg 64 :=
.seq NamedBody552_247 NamedBody552_256

def NamedBody552_258 : StackLang.HolProg 64 :=
.seq NamedBody552_244 NamedBody552_257

def NamedBody552_259 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def NamedBody552_260 : StackLang.HolProg 64 :=
.seq NamedBody552_258 NamedBody552_259

def NamedBody552_261 : StackLang.HolProg 64 :=
.call (some (NamedBody552_243, 1, 552, 8)) (Sum.inl 470) (some (NamedBody552_260, 552, 9))

def NamedBody552_262 : StackLang.HolProg 64 :=
.seq NamedBody552_220 NamedBody552_261

def NamedBody552_263 : StackLang.HolProg 64 :=
.seq NamedBody552_219 NamedBody552_262

def NamedBody552_264 : StackLang.HolProg 64 :=
.seq NamedBody552_218 NamedBody552_263

def NamedBody552_265 : StackLang.HolProg 64 :=
.seq NamedBody552_189 NamedBody552_264

def NamedBody552_266 : StackLang.HolProg 64 :=
.seq NamedBody552_186 NamedBody552_265

def NamedBody552_267 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody552_268 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 10
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551592#64))

def NamedBody552_269 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsl 10 10
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 1#64)))

def NamedBody552_270 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 10 10
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 26)))

def NamedBody552_271 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 5
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 10 18446744073709551336#64))

def NamedBody552_272 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 10 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def NamedBody552_273 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 5
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 32#64))

def NamedBody552_274 : StackLang.HolProg 64 :=
.seq NamedBody552_272 NamedBody552_273

def NamedBody552_275 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody552_276 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1872#64)

def NamedBody552_277 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody552_278 : StackLang.HolProg 64 :=
.seq NamedBody552_276 NamedBody552_277

def NamedBody552_279 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody552_280 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 2#64)

def NamedBody552_281 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 10

def NamedBody552_282 : StackLang.HolProg 64 :=
.seq NamedBody552_280 NamedBody552_281

def NamedBody552_283 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody552_284 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) NamedBody552_282 NamedBody552_283

def NamedBody552_285 : StackLang.HolProg 64 :=
.seq NamedBody552_279 NamedBody552_284

def NamedBody552_286 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def NamedBody552_287 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody552_288 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 552 11

def NamedBody552_289 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody552_290 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody552_291 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody552_292 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody552_293 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def NamedBody552_294 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def NamedBody552_295 : StackLang.HolProg 64 :=
.seq NamedBody552_293 NamedBody552_294

def NamedBody552_296 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def NamedBody552_297 : StackLang.HolProg 64 :=
.seq NamedBody552_295 NamedBody552_296

def NamedBody552_298 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody552_299 : StackLang.HolProg 64 :=
.seq NamedBody552_297 NamedBody552_298

def NamedBody552_300 : StackLang.HolProg 64 :=
.seq NamedBody552_292 NamedBody552_299

def NamedBody552_301 : StackLang.HolProg 64 :=
.seq NamedBody552_291 NamedBody552_300

def NamedBody552_302 : StackLang.HolProg 64 :=
.seq NamedBody552_290 NamedBody552_301

def NamedBody552_303 : StackLang.HolProg 64 :=
.seq NamedBody552_289 NamedBody552_302

def NamedBody552_304 : StackLang.HolProg 64 :=
.seq NamedBody552_288 NamedBody552_303

def NamedBody552_305 : StackLang.HolProg 64 :=
.seq NamedBody552_287 NamedBody552_304

def NamedBody552_306 : StackLang.HolProg 64 :=
.seq NamedBody552_286 NamedBody552_305

def NamedBody552_307 : StackLang.HolProg 64 :=
.seq NamedBody552_285 NamedBody552_306

def NamedBody552_308 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody552_309 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody552_310 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody552_311 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody552_312 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody552_313 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody552_314 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 13
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 64#64))

def NamedBody552_315 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 12
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 56#64))

def NamedBody552_316 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 5
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 48#64))

def NamedBody552_317 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 6
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 40#64))

def NamedBody552_318 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 11
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 32#64))

def NamedBody552_319 : StackLang.HolProg 64 :=
.seq NamedBody552_317 NamedBody552_318

def NamedBody552_320 : StackLang.HolProg 64 :=
.seq NamedBody552_316 NamedBody552_319

def NamedBody552_321 : StackLang.HolProg 64 :=
.seq NamedBody552_315 NamedBody552_320

def NamedBody552_322 : StackLang.HolProg 64 :=
.seq NamedBody552_314 NamedBody552_321

def NamedBody552_323 : StackLang.HolProg 64 :=
.seq NamedBody552_313 NamedBody552_322

def NamedBody552_324 : StackLang.HolProg 64 :=
.seq NamedBody552_312 NamedBody552_323

def NamedBody552_325 : StackLang.HolProg 64 :=
.seq NamedBody552_311 NamedBody552_324

def NamedBody552_326 : StackLang.HolProg 64 :=
.seq NamedBody552_310 NamedBody552_325

def NamedBody552_327 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 13
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 64#64))

def NamedBody552_328 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 12
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 56#64))

def NamedBody552_329 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 5
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 48#64))

def NamedBody552_330 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 6
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 40#64))

def NamedBody552_331 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 11
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 32#64))

def NamedBody552_332 : StackLang.HolProg 64 :=
.seq NamedBody552_330 NamedBody552_331

def NamedBody552_333 : StackLang.HolProg 64 :=
.seq NamedBody552_329 NamedBody552_332

def NamedBody552_334 : StackLang.HolProg 64 :=
.seq NamedBody552_328 NamedBody552_333

def NamedBody552_335 : StackLang.HolProg 64 :=
.seq NamedBody552_327 NamedBody552_334

def NamedBody552_336 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def NamedBody552_337 : StackLang.HolProg 64 :=
.seq NamedBody552_335 NamedBody552_336

def NamedBody552_338 : StackLang.HolProg 64 :=
.call (some (NamedBody552_326, 1, 552, 10)) (Sum.inl 147) (some (NamedBody552_337, 552, 11))

def NamedBody552_339 : StackLang.HolProg 64 :=
.seq NamedBody552_309 NamedBody552_338

def NamedBody552_340 : StackLang.HolProg 64 :=
.seq NamedBody552_308 NamedBody552_339

def NamedBody552_341 : StackLang.HolProg 64 :=
.seq NamedBody552_307 NamedBody552_340

def NamedBody552_342 : StackLang.HolProg 64 :=
.seq NamedBody552_278 NamedBody552_341

def NamedBody552_343 : StackLang.HolProg 64 :=
.seq NamedBody552_275 NamedBody552_342

def NamedBody552_344 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody552_345 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551592#64))

def NamedBody552_346 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsl 1 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 1#64)))

def NamedBody552_347 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 1 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 26)))

def NamedBody552_348 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 1 18446744073709551360#64))

def NamedBody552_349 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 1 112#64))

def NamedBody552_350 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 10
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 1 32#64))

def NamedBody552_351 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody552_352 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody552_353 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1873#64)

def NamedBody552_354 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody552_355 : StackLang.HolProg 64 :=
.seq NamedBody552_353 NamedBody552_354

def NamedBody552_356 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody552_357 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 2#64)

def NamedBody552_358 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 10

def NamedBody552_359 : StackLang.HolProg 64 :=
.seq NamedBody552_357 NamedBody552_358

def NamedBody552_360 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody552_361 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) NamedBody552_359 NamedBody552_360

def NamedBody552_362 : StackLang.HolProg 64 :=
.seq NamedBody552_356 NamedBody552_361

def NamedBody552_363 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def NamedBody552_364 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody552_365 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 552 13

def NamedBody552_366 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody552_367 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody552_368 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody552_369 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody552_370 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def NamedBody552_371 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def NamedBody552_372 : StackLang.HolProg 64 :=
.seq NamedBody552_370 NamedBody552_371

def NamedBody552_373 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def NamedBody552_374 : StackLang.HolProg 64 :=
.seq NamedBody552_372 NamedBody552_373

def NamedBody552_375 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody552_376 : StackLang.HolProg 64 :=
.seq NamedBody552_374 NamedBody552_375

def NamedBody552_377 : StackLang.HolProg 64 :=
.seq NamedBody552_369 NamedBody552_376

def NamedBody552_378 : StackLang.HolProg 64 :=
.seq NamedBody552_368 NamedBody552_377

def NamedBody552_379 : StackLang.HolProg 64 :=
.seq NamedBody552_367 NamedBody552_378

def NamedBody552_380 : StackLang.HolProg 64 :=
.seq NamedBody552_366 NamedBody552_379

def NamedBody552_381 : StackLang.HolProg 64 :=
.seq NamedBody552_365 NamedBody552_380

def NamedBody552_382 : StackLang.HolProg 64 :=
.seq NamedBody552_364 NamedBody552_381

def NamedBody552_383 : StackLang.HolProg 64 :=
.seq NamedBody552_363 NamedBody552_382

def NamedBody552_384 : StackLang.HolProg 64 :=
.seq NamedBody552_362 NamedBody552_383

def NamedBody552_385 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody552_386 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody552_387 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody552_388 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody552_389 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody552_390 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody552_391 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody552_392 : StackLang.HolProg 64 :=
.seq NamedBody552_390 NamedBody552_391

def NamedBody552_393 : StackLang.HolProg 64 :=
.seq NamedBody552_389 NamedBody552_392

def NamedBody552_394 : StackLang.HolProg 64 :=
.seq NamedBody552_388 NamedBody552_393

def NamedBody552_395 : StackLang.HolProg 64 :=
.seq NamedBody552_387 NamedBody552_394

def NamedBody552_396 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody552_397 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def NamedBody552_398 : StackLang.HolProg 64 :=
.seq NamedBody552_396 NamedBody552_397

def NamedBody552_399 : StackLang.HolProg 64 :=
.call (some (NamedBody552_395, 1, 552, 12)) (Sum.inl 426) (some (NamedBody552_398, 552, 13))

def NamedBody552_400 : StackLang.HolProg 64 :=
.seq NamedBody552_386 NamedBody552_399

def NamedBody552_401 : StackLang.HolProg 64 :=
.seq NamedBody552_385 NamedBody552_400

def NamedBody552_402 : StackLang.HolProg 64 :=
.seq NamedBody552_384 NamedBody552_401

def NamedBody552_403 : StackLang.HolProg 64 :=
.seq NamedBody552_355 NamedBody552_402

def NamedBody552_404 : StackLang.HolProg 64 :=
.seq NamedBody552_352 NamedBody552_403

def NamedBody552_405 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody552_406 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 1#64)

def NamedBody552_407 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody552_408 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody552_409 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1874#64)

def NamedBody552_410 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody552_411 : StackLang.HolProg 64 :=
.seq NamedBody552_409 NamedBody552_410

def NamedBody552_412 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody552_413 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 2#64)

def NamedBody552_414 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 10

def NamedBody552_415 : StackLang.HolProg 64 :=
.seq NamedBody552_413 NamedBody552_414

def NamedBody552_416 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody552_417 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) NamedBody552_415 NamedBody552_416

def NamedBody552_418 : StackLang.HolProg 64 :=
.seq NamedBody552_412 NamedBody552_417

def NamedBody552_419 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def NamedBody552_420 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody552_421 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 552 15

def NamedBody552_422 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody552_423 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody552_424 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody552_425 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody552_426 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def NamedBody552_427 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def NamedBody552_428 : StackLang.HolProg 64 :=
.seq NamedBody552_426 NamedBody552_427

def NamedBody552_429 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def NamedBody552_430 : StackLang.HolProg 64 :=
.seq NamedBody552_428 NamedBody552_429

def NamedBody552_431 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody552_432 : StackLang.HolProg 64 :=
.seq NamedBody552_430 NamedBody552_431

def NamedBody552_433 : StackLang.HolProg 64 :=
.seq NamedBody552_425 NamedBody552_432

def NamedBody552_434 : StackLang.HolProg 64 :=
.seq NamedBody552_424 NamedBody552_433

def NamedBody552_435 : StackLang.HolProg 64 :=
.seq NamedBody552_423 NamedBody552_434

def NamedBody552_436 : StackLang.HolProg 64 :=
.seq NamedBody552_422 NamedBody552_435

def NamedBody552_437 : StackLang.HolProg 64 :=
.seq NamedBody552_421 NamedBody552_436

def NamedBody552_438 : StackLang.HolProg 64 :=
.seq NamedBody552_420 NamedBody552_437

def NamedBody552_439 : StackLang.HolProg 64 :=
.seq NamedBody552_419 NamedBody552_438

def NamedBody552_440 : StackLang.HolProg 64 :=
.seq NamedBody552_418 NamedBody552_439

def NamedBody552_441 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody552_442 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody552_443 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody552_444 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody552_445 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody552_446 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody552_447 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 72#64))

def NamedBody552_448 : StackLang.HolProg 64 :=
.seq NamedBody552_446 NamedBody552_447

def NamedBody552_449 : StackLang.HolProg 64 :=
.seq NamedBody552_445 NamedBody552_448

def NamedBody552_450 : StackLang.HolProg 64 :=
.seq NamedBody552_444 NamedBody552_449

def NamedBody552_451 : StackLang.HolProg 64 :=
.seq NamedBody552_443 NamedBody552_450

def NamedBody552_452 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 72#64))

def NamedBody552_453 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def NamedBody552_454 : StackLang.HolProg 64 :=
.seq NamedBody552_452 NamedBody552_453

def NamedBody552_455 : StackLang.HolProg 64 :=
.call (some (NamedBody552_451, 1, 552, 14)) (Sum.inl 490) (some (NamedBody552_454, 552, 15))

def NamedBody552_456 : StackLang.HolProg 64 :=
.seq NamedBody552_442 NamedBody552_455

def NamedBody552_457 : StackLang.HolProg 64 :=
.seq NamedBody552_441 NamedBody552_456

def NamedBody552_458 : StackLang.HolProg 64 :=
.seq NamedBody552_440 NamedBody552_457

def NamedBody552_459 : StackLang.HolProg 64 :=
.seq NamedBody552_411 NamedBody552_458

def NamedBody552_460 : StackLang.HolProg 64 :=
.seq NamedBody552_408 NamedBody552_459

def NamedBody552_461 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody552_462 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 0#64)

def NamedBody552_463 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody552_464 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 80#64)))

def NamedBody552_465 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 1

def NamedBody552_466 : StackLang.HolProg 64 :=
.seq NamedBody552_464 NamedBody552_465

def NamedBody552_467 : StackLang.HolProg 64 :=
.seq NamedBody552_463 NamedBody552_466

def NamedBody552_468 : StackLang.HolProg 64 :=
.seq NamedBody552_462 NamedBody552_467

def NamedBody552_469 : StackLang.HolProg 64 :=
.seq NamedBody552_461 NamedBody552_468

def NamedBody552_470 : StackLang.HolProg 64 :=
.seq NamedBody552_460 NamedBody552_469

def NamedBody552_471 : StackLang.HolProg 64 :=
.seq NamedBody552_407 NamedBody552_470

def NamedBody552_472 : StackLang.HolProg 64 :=
.seq NamedBody552_406 NamedBody552_471

def NamedBody552_473 : StackLang.HolProg 64 :=
.seq NamedBody552_405 NamedBody552_472

def NamedBody552_474 : StackLang.HolProg 64 :=
.seq NamedBody552_404 NamedBody552_473

def NamedBody552_475 : StackLang.HolProg 64 :=
.seq NamedBody552_351 NamedBody552_474

def NamedBody552_476 : StackLang.HolProg 64 :=
.seq NamedBody552_350 NamedBody552_475

def NamedBody552_477 : StackLang.HolProg 64 :=
.seq NamedBody552_349 NamedBody552_476

def NamedBody552_478 : StackLang.HolProg 64 :=
.seq NamedBody552_348 NamedBody552_477

def NamedBody552_479 : StackLang.HolProg 64 :=
.seq NamedBody552_347 NamedBody552_478

def NamedBody552_480 : StackLang.HolProg 64 :=
.seq NamedBody552_346 NamedBody552_479

def NamedBody552_481 : StackLang.HolProg 64 :=
.seq NamedBody552_345 NamedBody552_480

def NamedBody552_482 : StackLang.HolProg 64 :=
.seq NamedBody552_344 NamedBody552_481

def NamedBody552_483 : StackLang.HolProg 64 :=
.seq NamedBody552_343 NamedBody552_482

def NamedBody552_484 : StackLang.HolProg 64 :=
.seq NamedBody552_274 NamedBody552_483

def NamedBody552_485 : StackLang.HolProg 64 :=
.seq NamedBody552_271 NamedBody552_484

def NamedBody552_486 : StackLang.HolProg 64 :=
.seq NamedBody552_270 NamedBody552_485

def NamedBody552_487 : StackLang.HolProg 64 :=
.seq NamedBody552_269 NamedBody552_486

def NamedBody552_488 : StackLang.HolProg 64 :=
.seq NamedBody552_268 NamedBody552_487

def NamedBody552_489 : StackLang.HolProg 64 :=
.seq NamedBody552_267 NamedBody552_488

def NamedBody552_490 : StackLang.HolProg 64 :=
.seq NamedBody552_266 NamedBody552_489

def NamedBody552_491 : StackLang.HolProg 64 :=
.seq NamedBody552_185 NamedBody552_490

def NamedBody552_492 : StackLang.HolProg 64 :=
.seq NamedBody552_178 NamedBody552_491

def NamedBody552_493 : StackLang.HolProg 64 :=
.seq NamedBody552_177 NamedBody552_492

def NamedBody552_494 : StackLang.HolProg 64 :=
.seq NamedBody552_176 NamedBody552_493

def NamedBody552_495 : StackLang.HolProg 64 :=
.seq NamedBody552_123 NamedBody552_494

def NamedBody552_496 : StackLang.HolProg 64 :=
.seq NamedBody552_116 NamedBody552_495

def NamedBody552_497 : StackLang.HolProg 64 :=
.seq NamedBody552_115 NamedBody552_496

def NamedBody552_498 : StackLang.HolProg 64 :=
.seq NamedBody552_62 NamedBody552_497

def NamedBody552_499 : StackLang.HolProg 64 :=
.seq NamedBody552_61 NamedBody552_498

def NamedBody552_500 : StackLang.HolProg 64 :=
.seq NamedBody552_60 NamedBody552_499

def NamedBody552_501 : StackLang.HolProg 64 :=
.seq NamedBody552_7 NamedBody552_500

def NamedBody552_502 : StackLang.HolProg 64 :=
.seq NamedBody552_6 NamedBody552_501

def Named552 : Nat × StackLang.HolProg 64 := (552, NamedBody552_502)
theorem Named552_eq : StackNames.progCompEntryHOL RiscVConfig.riscvNames Removed552 = Named552 := by
  kernel_rfl
#print axioms Named552_eq
end InitECandidate.Proofs.BackendStages
