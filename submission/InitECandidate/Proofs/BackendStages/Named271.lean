import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.BackendStages.Removed271
import Flapjack.Compiler.Backend.Backend
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
namespace InitECandidate.Proofs.BackendStages
def NamedBody271_0 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 16#64)))

def NamedBody271_1 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 2#64)

def NamedBody271_2 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 10

def NamedBody271_3 : StackLang.HolProg 64 :=
.seq NamedBody271_1 NamedBody271_2

def NamedBody271_4 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody271_5 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) NamedBody271_3 NamedBody271_4

def NamedBody271_6 : StackLang.HolProg 64 :=
.seq NamedBody271_0 NamedBody271_5

def NamedBody271_7 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody271_8 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody271_9 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 657#64)

def NamedBody271_10 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody271_11 : StackLang.HolProg 64 :=
.seq NamedBody271_9 NamedBody271_10

def NamedBody271_12 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody271_13 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 2#64)

def NamedBody271_14 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 10

def NamedBody271_15 : StackLang.HolProg 64 :=
.seq NamedBody271_13 NamedBody271_14

def NamedBody271_16 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody271_17 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) NamedBody271_15 NamedBody271_16

def NamedBody271_18 : StackLang.HolProg 64 :=
.seq NamedBody271_12 NamedBody271_17

def NamedBody271_19 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def NamedBody271_20 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody271_21 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 271 3

def NamedBody271_22 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody271_23 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody271_24 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody271_25 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody271_26 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def NamedBody271_27 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def NamedBody271_28 : StackLang.HolProg 64 :=
.seq NamedBody271_26 NamedBody271_27

def NamedBody271_29 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def NamedBody271_30 : StackLang.HolProg 64 :=
.seq NamedBody271_28 NamedBody271_29

def NamedBody271_31 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody271_32 : StackLang.HolProg 64 :=
.seq NamedBody271_30 NamedBody271_31

def NamedBody271_33 : StackLang.HolProg 64 :=
.seq NamedBody271_25 NamedBody271_32

def NamedBody271_34 : StackLang.HolProg 64 :=
.seq NamedBody271_24 NamedBody271_33

def NamedBody271_35 : StackLang.HolProg 64 :=
.seq NamedBody271_23 NamedBody271_34

def NamedBody271_36 : StackLang.HolProg 64 :=
.seq NamedBody271_22 NamedBody271_35

def NamedBody271_37 : StackLang.HolProg 64 :=
.seq NamedBody271_21 NamedBody271_36

def NamedBody271_38 : StackLang.HolProg 64 :=
.seq NamedBody271_20 NamedBody271_37

def NamedBody271_39 : StackLang.HolProg 64 :=
.seq NamedBody271_19 NamedBody271_38

def NamedBody271_40 : StackLang.HolProg 64 :=
.seq NamedBody271_18 NamedBody271_39

def NamedBody271_41 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody271_42 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody271_43 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody271_44 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody271_45 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody271_46 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody271_47 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 12 10
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 10)))

def NamedBody271_48 : StackLang.HolProg 64 :=
.seq NamedBody271_46 NamedBody271_47

def NamedBody271_49 : StackLang.HolProg 64 :=
.seq NamedBody271_45 NamedBody271_48

def NamedBody271_50 : StackLang.HolProg 64 :=
.seq NamedBody271_44 NamedBody271_49

def NamedBody271_51 : StackLang.HolProg 64 :=
.seq NamedBody271_43 NamedBody271_50

def NamedBody271_52 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody271_53 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def NamedBody271_54 : StackLang.HolProg 64 :=
.seq NamedBody271_52 NamedBody271_53

def NamedBody271_55 : StackLang.HolProg 64 :=
.call (some (NamedBody271_51, 1, 271, 2)) (Sum.inl 269) (some (NamedBody271_54, 271, 3))

def NamedBody271_56 : StackLang.HolProg 64 :=
.seq NamedBody271_42 NamedBody271_55

def NamedBody271_57 : StackLang.HolProg 64 :=
.seq NamedBody271_41 NamedBody271_56

def NamedBody271_58 : StackLang.HolProg 64 :=
.seq NamedBody271_40 NamedBody271_57

def NamedBody271_59 : StackLang.HolProg 64 :=
.seq NamedBody271_11 NamedBody271_58

def NamedBody271_60 : StackLang.HolProg 64 :=
.seq NamedBody271_8 NamedBody271_59

def NamedBody271_61 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody271_62 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 32#64)

def NamedBody271_63 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody271_64 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody271_65 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 5#64)

def NamedBody271_66 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody271_67 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551480#64))

def NamedBody271_68 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 3#64)

def NamedBody271_69 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody271_70 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def NamedBody271_71 : StackLang.HolProg 64 :=
.seq NamedBody271_69 NamedBody271_70

def NamedBody271_72 : StackLang.HolProg 64 :=
.seq NamedBody271_68 NamedBody271_71

def NamedBody271_73 : StackLang.HolProg 64 :=
.seq NamedBody271_67 NamedBody271_72

def NamedBody271_74 : StackLang.HolProg 64 :=
.seq NamedBody271_66 NamedBody271_73

def NamedBody271_75 : StackLang.HolProg 64 :=
.seq NamedBody271_65 NamedBody271_74

def NamedBody271_76 : StackLang.HolProg 64 :=
.seq NamedBody271_64 NamedBody271_75

def NamedBody271_77 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody271_78 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 1 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 11) NamedBody271_76 NamedBody271_77

def NamedBody271_79 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody271_80 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody271_81 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 10 12
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 12)))

def NamedBody271_82 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody271_83 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 658#64)

def NamedBody271_84 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody271_85 : StackLang.HolProg 64 :=
.seq NamedBody271_83 NamedBody271_84

def NamedBody271_86 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody271_87 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 2#64)

def NamedBody271_88 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 10

def NamedBody271_89 : StackLang.HolProg 64 :=
.seq NamedBody271_87 NamedBody271_88

def NamedBody271_90 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody271_91 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) NamedBody271_89 NamedBody271_90

def NamedBody271_92 : StackLang.HolProg 64 :=
.seq NamedBody271_86 NamedBody271_91

def NamedBody271_93 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def NamedBody271_94 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody271_95 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 271 5

def NamedBody271_96 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody271_97 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody271_98 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody271_99 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody271_100 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def NamedBody271_101 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def NamedBody271_102 : StackLang.HolProg 64 :=
.seq NamedBody271_100 NamedBody271_101

def NamedBody271_103 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def NamedBody271_104 : StackLang.HolProg 64 :=
.seq NamedBody271_102 NamedBody271_103

def NamedBody271_105 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody271_106 : StackLang.HolProg 64 :=
.seq NamedBody271_104 NamedBody271_105

def NamedBody271_107 : StackLang.HolProg 64 :=
.seq NamedBody271_99 NamedBody271_106

def NamedBody271_108 : StackLang.HolProg 64 :=
.seq NamedBody271_98 NamedBody271_107

def NamedBody271_109 : StackLang.HolProg 64 :=
.seq NamedBody271_97 NamedBody271_108

def NamedBody271_110 : StackLang.HolProg 64 :=
.seq NamedBody271_96 NamedBody271_109

def NamedBody271_111 : StackLang.HolProg 64 :=
.seq NamedBody271_95 NamedBody271_110

def NamedBody271_112 : StackLang.HolProg 64 :=
.seq NamedBody271_94 NamedBody271_111

def NamedBody271_113 : StackLang.HolProg 64 :=
.seq NamedBody271_93 NamedBody271_112

def NamedBody271_114 : StackLang.HolProg 64 :=
.seq NamedBody271_92 NamedBody271_113

def NamedBody271_115 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody271_116 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody271_117 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody271_118 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody271_119 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody271_120 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody271_121 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 5 10
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 10)))

def NamedBody271_122 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody271_123 : StackLang.HolProg 64 :=
.seq NamedBody271_121 NamedBody271_122

def NamedBody271_124 : StackLang.HolProg 64 :=
.seq NamedBody271_120 NamedBody271_123

def NamedBody271_125 : StackLang.HolProg 64 :=
.seq NamedBody271_119 NamedBody271_124

def NamedBody271_126 : StackLang.HolProg 64 :=
.seq NamedBody271_118 NamedBody271_125

def NamedBody271_127 : StackLang.HolProg 64 :=
.seq NamedBody271_117 NamedBody271_126

def NamedBody271_128 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody271_129 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def NamedBody271_130 : StackLang.HolProg 64 :=
.seq NamedBody271_128 NamedBody271_129

def NamedBody271_131 : StackLang.HolProg 64 :=
.call (some (NamedBody271_127, 1, 271, 4)) (Sum.inl 146) (some (NamedBody271_130, 271, 5))

def NamedBody271_132 : StackLang.HolProg 64 :=
.seq NamedBody271_116 NamedBody271_131

def NamedBody271_133 : StackLang.HolProg 64 :=
.seq NamedBody271_115 NamedBody271_132

def NamedBody271_134 : StackLang.HolProg 64 :=
.seq NamedBody271_114 NamedBody271_133

def NamedBody271_135 : StackLang.HolProg 64 :=
.seq NamedBody271_85 NamedBody271_134

def NamedBody271_136 : StackLang.HolProg 64 :=
.seq NamedBody271_82 NamedBody271_135

def NamedBody271_137 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody271_138 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 10 5
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 5)))

def NamedBody271_139 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 16#64)))

def NamedBody271_140 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 1

def NamedBody271_141 : StackLang.HolProg 64 :=
.seq NamedBody271_139 NamedBody271_140

def NamedBody271_142 : StackLang.HolProg 64 :=
.seq NamedBody271_138 NamedBody271_141

def NamedBody271_143 : StackLang.HolProg 64 :=
.seq NamedBody271_137 NamedBody271_142

def NamedBody271_144 : StackLang.HolProg 64 :=
.seq NamedBody271_136 NamedBody271_143

def NamedBody271_145 : StackLang.HolProg 64 :=
.seq NamedBody271_81 NamedBody271_144

def NamedBody271_146 : StackLang.HolProg 64 :=
.seq NamedBody271_80 NamedBody271_145

def NamedBody271_147 : StackLang.HolProg 64 :=
.seq NamedBody271_79 NamedBody271_146

def NamedBody271_148 : StackLang.HolProg 64 :=
.seq NamedBody271_78 NamedBody271_147

def NamedBody271_149 : StackLang.HolProg 64 :=
.seq NamedBody271_63 NamedBody271_148

def NamedBody271_150 : StackLang.HolProg 64 :=
.seq NamedBody271_62 NamedBody271_149

def NamedBody271_151 : StackLang.HolProg 64 :=
.seq NamedBody271_61 NamedBody271_150

def NamedBody271_152 : StackLang.HolProg 64 :=
.seq NamedBody271_60 NamedBody271_151

def NamedBody271_153 : StackLang.HolProg 64 :=
.seq NamedBody271_7 NamedBody271_152

def NamedBody271_154 : StackLang.HolProg 64 :=
.seq NamedBody271_6 NamedBody271_153

def Named271 : Nat × StackLang.HolProg 64 := (271, NamedBody271_154)
theorem Named271_eq : StackNames.progCompEntryHOL RiscVConfig.riscvNames Removed271 = Named271 := by
  kernel_rfl
#print axioms Named271_eq
end InitECandidate.Proofs.BackendStages
