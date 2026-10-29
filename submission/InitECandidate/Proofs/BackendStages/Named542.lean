import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.BackendStages.Removed542
import Flapjack.Compiler.Backend.Backend
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
namespace InitECandidate.Proofs.BackendStages
def NamedBody542_0 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 16#64)))

def NamedBody542_1 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 2#64)

def NamedBody542_2 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 10

def NamedBody542_3 : StackLang.HolProg 64 :=
.seq NamedBody542_1 NamedBody542_2

def NamedBody542_4 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody542_5 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) NamedBody542_3 NamedBody542_4

def NamedBody542_6 : StackLang.HolProg 64 :=
.seq NamedBody542_0 NamedBody542_5

def NamedBody542_7 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody542_8 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 3#64)

def NamedBody542_9 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody542_10 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody542_11 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1790#64)

def NamedBody542_12 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody542_13 : StackLang.HolProg 64 :=
.seq NamedBody542_11 NamedBody542_12

def NamedBody542_14 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody542_15 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 2#64)

def NamedBody542_16 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 10

def NamedBody542_17 : StackLang.HolProg 64 :=
.seq NamedBody542_15 NamedBody542_16

def NamedBody542_18 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody542_19 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) NamedBody542_17 NamedBody542_18

def NamedBody542_20 : StackLang.HolProg 64 :=
.seq NamedBody542_14 NamedBody542_19

def NamedBody542_21 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def NamedBody542_22 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody542_23 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 542 3

def NamedBody542_24 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody542_25 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody542_26 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody542_27 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody542_28 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def NamedBody542_29 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def NamedBody542_30 : StackLang.HolProg 64 :=
.seq NamedBody542_28 NamedBody542_29

def NamedBody542_31 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def NamedBody542_32 : StackLang.HolProg 64 :=
.seq NamedBody542_30 NamedBody542_31

def NamedBody542_33 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody542_34 : StackLang.HolProg 64 :=
.seq NamedBody542_32 NamedBody542_33

def NamedBody542_35 : StackLang.HolProg 64 :=
.seq NamedBody542_27 NamedBody542_34

def NamedBody542_36 : StackLang.HolProg 64 :=
.seq NamedBody542_26 NamedBody542_35

def NamedBody542_37 : StackLang.HolProg 64 :=
.seq NamedBody542_25 NamedBody542_36

def NamedBody542_38 : StackLang.HolProg 64 :=
.seq NamedBody542_24 NamedBody542_37

def NamedBody542_39 : StackLang.HolProg 64 :=
.seq NamedBody542_23 NamedBody542_38

def NamedBody542_40 : StackLang.HolProg 64 :=
.seq NamedBody542_22 NamedBody542_39

def NamedBody542_41 : StackLang.HolProg 64 :=
.seq NamedBody542_21 NamedBody542_40

def NamedBody542_42 : StackLang.HolProg 64 :=
.seq NamedBody542_20 NamedBody542_41

def NamedBody542_43 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody542_44 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody542_45 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody542_46 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody542_47 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody542_48 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody542_49 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody542_50 : StackLang.HolProg 64 :=
.seq NamedBody542_48 NamedBody542_49

def NamedBody542_51 : StackLang.HolProg 64 :=
.seq NamedBody542_47 NamedBody542_50

def NamedBody542_52 : StackLang.HolProg 64 :=
.seq NamedBody542_46 NamedBody542_51

def NamedBody542_53 : StackLang.HolProg 64 :=
.seq NamedBody542_45 NamedBody542_52

def NamedBody542_54 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody542_55 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def NamedBody542_56 : StackLang.HolProg 64 :=
.seq NamedBody542_54 NamedBody542_55

def NamedBody542_57 : StackLang.HolProg 64 :=
.call (some (NamedBody542_53, 1, 542, 2)) (Sum.inl 470) (some (NamedBody542_56, 542, 3))

def NamedBody542_58 : StackLang.HolProg 64 :=
.seq NamedBody542_44 NamedBody542_57

def NamedBody542_59 : StackLang.HolProg 64 :=
.seq NamedBody542_43 NamedBody542_58

def NamedBody542_60 : StackLang.HolProg 64 :=
.seq NamedBody542_42 NamedBody542_59

def NamedBody542_61 : StackLang.HolProg 64 :=
.seq NamedBody542_13 NamedBody542_60

def NamedBody542_62 : StackLang.HolProg 64 :=
.seq NamedBody542_10 NamedBody542_61

def NamedBody542_63 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody542_64 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody542_65 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody542_66 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1791#64)

def NamedBody542_67 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody542_68 : StackLang.HolProg 64 :=
.seq NamedBody542_66 NamedBody542_67

def NamedBody542_69 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody542_70 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 2#64)

def NamedBody542_71 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 10

def NamedBody542_72 : StackLang.HolProg 64 :=
.seq NamedBody542_70 NamedBody542_71

def NamedBody542_73 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody542_74 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) NamedBody542_72 NamedBody542_73

def NamedBody542_75 : StackLang.HolProg 64 :=
.seq NamedBody542_69 NamedBody542_74

def NamedBody542_76 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def NamedBody542_77 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody542_78 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 542 5

def NamedBody542_79 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody542_80 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody542_81 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody542_82 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody542_83 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def NamedBody542_84 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def NamedBody542_85 : StackLang.HolProg 64 :=
.seq NamedBody542_83 NamedBody542_84

def NamedBody542_86 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def NamedBody542_87 : StackLang.HolProg 64 :=
.seq NamedBody542_85 NamedBody542_86

def NamedBody542_88 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody542_89 : StackLang.HolProg 64 :=
.seq NamedBody542_87 NamedBody542_88

def NamedBody542_90 : StackLang.HolProg 64 :=
.seq NamedBody542_82 NamedBody542_89

def NamedBody542_91 : StackLang.HolProg 64 :=
.seq NamedBody542_81 NamedBody542_90

def NamedBody542_92 : StackLang.HolProg 64 :=
.seq NamedBody542_80 NamedBody542_91

def NamedBody542_93 : StackLang.HolProg 64 :=
.seq NamedBody542_79 NamedBody542_92

def NamedBody542_94 : StackLang.HolProg 64 :=
.seq NamedBody542_78 NamedBody542_93

def NamedBody542_95 : StackLang.HolProg 64 :=
.seq NamedBody542_77 NamedBody542_94

def NamedBody542_96 : StackLang.HolProg 64 :=
.seq NamedBody542_76 NamedBody542_95

def NamedBody542_97 : StackLang.HolProg 64 :=
.seq NamedBody542_75 NamedBody542_96

def NamedBody542_98 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody542_99 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody542_100 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody542_101 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody542_102 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody542_103 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody542_104 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 1 10
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 10)))

def NamedBody542_105 : StackLang.HolProg 64 :=
.seq NamedBody542_103 NamedBody542_104

def NamedBody542_106 : StackLang.HolProg 64 :=
.seq NamedBody542_102 NamedBody542_105

def NamedBody542_107 : StackLang.HolProg 64 :=
.seq NamedBody542_101 NamedBody542_106

def NamedBody542_108 : StackLang.HolProg 64 :=
.seq NamedBody542_100 NamedBody542_107

def NamedBody542_109 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody542_110 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def NamedBody542_111 : StackLang.HolProg 64 :=
.seq NamedBody542_109 NamedBody542_110

def NamedBody542_112 : StackLang.HolProg 64 :=
.call (some (NamedBody542_108, 1, 542, 4)) (Sum.inl 540) (some (NamedBody542_111, 542, 5))

def NamedBody542_113 : StackLang.HolProg 64 :=
.seq NamedBody542_99 NamedBody542_112

def NamedBody542_114 : StackLang.HolProg 64 :=
.seq NamedBody542_98 NamedBody542_113

def NamedBody542_115 : StackLang.HolProg 64 :=
.seq NamedBody542_97 NamedBody542_114

def NamedBody542_116 : StackLang.HolProg 64 :=
.seq NamedBody542_68 NamedBody542_115

def NamedBody542_117 : StackLang.HolProg 64 :=
.seq NamedBody542_65 NamedBody542_116

def NamedBody542_118 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody542_119 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 10 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def NamedBody542_120 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody542_121 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1792#64)

def NamedBody542_122 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody542_123 : StackLang.HolProg 64 :=
.seq NamedBody542_121 NamedBody542_122

def NamedBody542_124 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody542_125 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 2#64)

def NamedBody542_126 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 10

def NamedBody542_127 : StackLang.HolProg 64 :=
.seq NamedBody542_125 NamedBody542_126

def NamedBody542_128 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody542_129 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) NamedBody542_127 NamedBody542_128

def NamedBody542_130 : StackLang.HolProg 64 :=
.seq NamedBody542_124 NamedBody542_129

def NamedBody542_131 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def NamedBody542_132 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody542_133 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 542 7

def NamedBody542_134 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody542_135 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody542_136 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody542_137 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody542_138 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def NamedBody542_139 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def NamedBody542_140 : StackLang.HolProg 64 :=
.seq NamedBody542_138 NamedBody542_139

def NamedBody542_141 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def NamedBody542_142 : StackLang.HolProg 64 :=
.seq NamedBody542_140 NamedBody542_141

def NamedBody542_143 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody542_144 : StackLang.HolProg 64 :=
.seq NamedBody542_142 NamedBody542_143

def NamedBody542_145 : StackLang.HolProg 64 :=
.seq NamedBody542_137 NamedBody542_144

def NamedBody542_146 : StackLang.HolProg 64 :=
.seq NamedBody542_136 NamedBody542_145

def NamedBody542_147 : StackLang.HolProg 64 :=
.seq NamedBody542_135 NamedBody542_146

def NamedBody542_148 : StackLang.HolProg 64 :=
.seq NamedBody542_134 NamedBody542_147

def NamedBody542_149 : StackLang.HolProg 64 :=
.seq NamedBody542_133 NamedBody542_148

def NamedBody542_150 : StackLang.HolProg 64 :=
.seq NamedBody542_132 NamedBody542_149

def NamedBody542_151 : StackLang.HolProg 64 :=
.seq NamedBody542_131 NamedBody542_150

def NamedBody542_152 : StackLang.HolProg 64 :=
.seq NamedBody542_130 NamedBody542_151

def NamedBody542_153 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody542_154 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody542_155 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody542_156 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody542_157 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody542_158 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody542_159 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 12 10
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 10)))

def NamedBody542_160 : StackLang.HolProg 64 :=
.seq NamedBody542_158 NamedBody542_159

def NamedBody542_161 : StackLang.HolProg 64 :=
.seq NamedBody542_157 NamedBody542_160

def NamedBody542_162 : StackLang.HolProg 64 :=
.seq NamedBody542_156 NamedBody542_161

def NamedBody542_163 : StackLang.HolProg 64 :=
.seq NamedBody542_155 NamedBody542_162

def NamedBody542_164 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody542_165 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def NamedBody542_166 : StackLang.HolProg 64 :=
.seq NamedBody542_164 NamedBody542_165

def NamedBody542_167 : StackLang.HolProg 64 :=
.call (some (NamedBody542_163, 1, 542, 6)) (Sum.inl 541) (some (NamedBody542_166, 542, 7))

def NamedBody542_168 : StackLang.HolProg 64 :=
.seq NamedBody542_154 NamedBody542_167

def NamedBody542_169 : StackLang.HolProg 64 :=
.seq NamedBody542_153 NamedBody542_168

def NamedBody542_170 : StackLang.HolProg 64 :=
.seq NamedBody542_152 NamedBody542_169

def NamedBody542_171 : StackLang.HolProg 64 :=
.seq NamedBody542_123 NamedBody542_170

def NamedBody542_172 : StackLang.HolProg 64 :=
.seq NamedBody542_120 NamedBody542_171

def NamedBody542_173 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody542_174 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551592#64))

def NamedBody542_175 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsl 1 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 1#64)))

def NamedBody542_176 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 1 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 26)))

def NamedBody542_177 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 1 18446744073709551360#64))

def NamedBody542_178 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 11
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 1 16#64))

def NamedBody542_179 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody542_180 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody542_181 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 2#64)

def NamedBody542_182 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody542_183 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 10
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551480#64))

def NamedBody542_184 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 8#64)

def NamedBody542_185 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody542_186 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def NamedBody542_187 : StackLang.HolProg 64 :=
.seq NamedBody542_185 NamedBody542_186

def NamedBody542_188 : StackLang.HolProg 64 :=
.seq NamedBody542_184 NamedBody542_187

def NamedBody542_189 : StackLang.HolProg 64 :=
.seq NamedBody542_183 NamedBody542_188

def NamedBody542_190 : StackLang.HolProg 64 :=
.seq NamedBody542_182 NamedBody542_189

def NamedBody542_191 : StackLang.HolProg 64 :=
.seq NamedBody542_181 NamedBody542_190

def NamedBody542_192 : StackLang.HolProg 64 :=
.seq NamedBody542_180 NamedBody542_191

def NamedBody542_193 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody542_194 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 11 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 12) NamedBody542_192 NamedBody542_193

def NamedBody542_195 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody542_196 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody542_197 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody542_198 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 10 11
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 12)))

def NamedBody542_199 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsl 11 10
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 5#64)))

def NamedBody542_200 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody542_201 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 1 8#64))

def NamedBody542_202 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 10 11
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def NamedBody542_203 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 10
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 10 0#64))

def NamedBody542_204 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody542_205 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 1 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 11)))

def NamedBody542_206 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 11
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 1 8#64))

def NamedBody542_207 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody542_208 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 12
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 1 16#64))

def NamedBody542_209 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody542_210 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 13
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 1 24#64))

def NamedBody542_211 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody542_212 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody542_213 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1793#64)

def NamedBody542_214 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody542_215 : StackLang.HolProg 64 :=
.seq NamedBody542_213 NamedBody542_214

def NamedBody542_216 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody542_217 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 2#64)

def NamedBody542_218 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 10

def NamedBody542_219 : StackLang.HolProg 64 :=
.seq NamedBody542_217 NamedBody542_218

def NamedBody542_220 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody542_221 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) NamedBody542_219 NamedBody542_220

def NamedBody542_222 : StackLang.HolProg 64 :=
.seq NamedBody542_216 NamedBody542_221

def NamedBody542_223 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def NamedBody542_224 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody542_225 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 542 9

def NamedBody542_226 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody542_227 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody542_228 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody542_229 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody542_230 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def NamedBody542_231 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def NamedBody542_232 : StackLang.HolProg 64 :=
.seq NamedBody542_230 NamedBody542_231

def NamedBody542_233 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def NamedBody542_234 : StackLang.HolProg 64 :=
.seq NamedBody542_232 NamedBody542_233

def NamedBody542_235 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody542_236 : StackLang.HolProg 64 :=
.seq NamedBody542_234 NamedBody542_235

def NamedBody542_237 : StackLang.HolProg 64 :=
.seq NamedBody542_229 NamedBody542_236

def NamedBody542_238 : StackLang.HolProg 64 :=
.seq NamedBody542_228 NamedBody542_237

def NamedBody542_239 : StackLang.HolProg 64 :=
.seq NamedBody542_227 NamedBody542_238

def NamedBody542_240 : StackLang.HolProg 64 :=
.seq NamedBody542_226 NamedBody542_239

def NamedBody542_241 : StackLang.HolProg 64 :=
.seq NamedBody542_225 NamedBody542_240

def NamedBody542_242 : StackLang.HolProg 64 :=
.seq NamedBody542_224 NamedBody542_241

def NamedBody542_243 : StackLang.HolProg 64 :=
.seq NamedBody542_223 NamedBody542_242

def NamedBody542_244 : StackLang.HolProg 64 :=
.seq NamedBody542_222 NamedBody542_243

def NamedBody542_245 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody542_246 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody542_247 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody542_248 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody542_249 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody542_250 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody542_251 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody542_252 : StackLang.HolProg 64 :=
.seq NamedBody542_250 NamedBody542_251

def NamedBody542_253 : StackLang.HolProg 64 :=
.seq NamedBody542_249 NamedBody542_252

def NamedBody542_254 : StackLang.HolProg 64 :=
.seq NamedBody542_248 NamedBody542_253

def NamedBody542_255 : StackLang.HolProg 64 :=
.seq NamedBody542_247 NamedBody542_254

def NamedBody542_256 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody542_257 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def NamedBody542_258 : StackLang.HolProg 64 :=
.seq NamedBody542_256 NamedBody542_257

def NamedBody542_259 : StackLang.HolProg 64 :=
.call (some (NamedBody542_255, 1, 542, 8)) (Sum.inl 476) (some (NamedBody542_258, 542, 9))

def NamedBody542_260 : StackLang.HolProg 64 :=
.seq NamedBody542_246 NamedBody542_259

def NamedBody542_261 : StackLang.HolProg 64 :=
.seq NamedBody542_245 NamedBody542_260

def NamedBody542_262 : StackLang.HolProg 64 :=
.seq NamedBody542_244 NamedBody542_261

def NamedBody542_263 : StackLang.HolProg 64 :=
.seq NamedBody542_215 NamedBody542_262

def NamedBody542_264 : StackLang.HolProg 64 :=
.seq NamedBody542_212 NamedBody542_263

def NamedBody542_265 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody542_266 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 2#64)

def NamedBody542_267 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody542_268 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody542_269 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1794#64)

def NamedBody542_270 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody542_271 : StackLang.HolProg 64 :=
.seq NamedBody542_269 NamedBody542_270

def NamedBody542_272 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody542_273 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 2#64)

def NamedBody542_274 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 10

def NamedBody542_275 : StackLang.HolProg 64 :=
.seq NamedBody542_273 NamedBody542_274

def NamedBody542_276 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody542_277 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) NamedBody542_275 NamedBody542_276

def NamedBody542_278 : StackLang.HolProg 64 :=
.seq NamedBody542_272 NamedBody542_277

def NamedBody542_279 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def NamedBody542_280 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody542_281 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 542 11

def NamedBody542_282 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody542_283 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody542_284 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody542_285 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody542_286 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def NamedBody542_287 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def NamedBody542_288 : StackLang.HolProg 64 :=
.seq NamedBody542_286 NamedBody542_287

def NamedBody542_289 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def NamedBody542_290 : StackLang.HolProg 64 :=
.seq NamedBody542_288 NamedBody542_289

def NamedBody542_291 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody542_292 : StackLang.HolProg 64 :=
.seq NamedBody542_290 NamedBody542_291

def NamedBody542_293 : StackLang.HolProg 64 :=
.seq NamedBody542_285 NamedBody542_292

def NamedBody542_294 : StackLang.HolProg 64 :=
.seq NamedBody542_284 NamedBody542_293

def NamedBody542_295 : StackLang.HolProg 64 :=
.seq NamedBody542_283 NamedBody542_294

def NamedBody542_296 : StackLang.HolProg 64 :=
.seq NamedBody542_282 NamedBody542_295

def NamedBody542_297 : StackLang.HolProg 64 :=
.seq NamedBody542_281 NamedBody542_296

def NamedBody542_298 : StackLang.HolProg 64 :=
.seq NamedBody542_280 NamedBody542_297

def NamedBody542_299 : StackLang.HolProg 64 :=
.seq NamedBody542_279 NamedBody542_298

def NamedBody542_300 : StackLang.HolProg 64 :=
.seq NamedBody542_278 NamedBody542_299

def NamedBody542_301 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody542_302 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody542_303 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody542_304 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody542_305 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody542_306 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody542_307 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody542_308 : StackLang.HolProg 64 :=
.seq NamedBody542_306 NamedBody542_307

def NamedBody542_309 : StackLang.HolProg 64 :=
.seq NamedBody542_305 NamedBody542_308

def NamedBody542_310 : StackLang.HolProg 64 :=
.seq NamedBody542_304 NamedBody542_309

def NamedBody542_311 : StackLang.HolProg 64 :=
.seq NamedBody542_303 NamedBody542_310

def NamedBody542_312 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody542_313 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def NamedBody542_314 : StackLang.HolProg 64 :=
.seq NamedBody542_312 NamedBody542_313

def NamedBody542_315 : StackLang.HolProg 64 :=
.call (some (NamedBody542_311, 1, 542, 10)) (Sum.inl 490) (some (NamedBody542_314, 542, 11))

def NamedBody542_316 : StackLang.HolProg 64 :=
.seq NamedBody542_302 NamedBody542_315

def NamedBody542_317 : StackLang.HolProg 64 :=
.seq NamedBody542_301 NamedBody542_316

def NamedBody542_318 : StackLang.HolProg 64 :=
.seq NamedBody542_300 NamedBody542_317

def NamedBody542_319 : StackLang.HolProg 64 :=
.seq NamedBody542_271 NamedBody542_318

def NamedBody542_320 : StackLang.HolProg 64 :=
.seq NamedBody542_268 NamedBody542_319

def NamedBody542_321 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody542_322 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 0#64)

def NamedBody542_323 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody542_324 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 16#64)))

def NamedBody542_325 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 1

def NamedBody542_326 : StackLang.HolProg 64 :=
.seq NamedBody542_324 NamedBody542_325

def NamedBody542_327 : StackLang.HolProg 64 :=
.seq NamedBody542_323 NamedBody542_326

def NamedBody542_328 : StackLang.HolProg 64 :=
.seq NamedBody542_322 NamedBody542_327

def NamedBody542_329 : StackLang.HolProg 64 :=
.seq NamedBody542_321 NamedBody542_328

def NamedBody542_330 : StackLang.HolProg 64 :=
.seq NamedBody542_320 NamedBody542_329

def NamedBody542_331 : StackLang.HolProg 64 :=
.seq NamedBody542_267 NamedBody542_330

def NamedBody542_332 : StackLang.HolProg 64 :=
.seq NamedBody542_266 NamedBody542_331

def NamedBody542_333 : StackLang.HolProg 64 :=
.seq NamedBody542_265 NamedBody542_332

def NamedBody542_334 : StackLang.HolProg 64 :=
.seq NamedBody542_264 NamedBody542_333

def NamedBody542_335 : StackLang.HolProg 64 :=
.seq NamedBody542_211 NamedBody542_334

def NamedBody542_336 : StackLang.HolProg 64 :=
.seq NamedBody542_210 NamedBody542_335

def NamedBody542_337 : StackLang.HolProg 64 :=
.seq NamedBody542_209 NamedBody542_336

def NamedBody542_338 : StackLang.HolProg 64 :=
.seq NamedBody542_208 NamedBody542_337

def NamedBody542_339 : StackLang.HolProg 64 :=
.seq NamedBody542_207 NamedBody542_338

def NamedBody542_340 : StackLang.HolProg 64 :=
.seq NamedBody542_206 NamedBody542_339

def NamedBody542_341 : StackLang.HolProg 64 :=
.seq NamedBody542_205 NamedBody542_340

def NamedBody542_342 : StackLang.HolProg 64 :=
.seq NamedBody542_204 NamedBody542_341

def NamedBody542_343 : StackLang.HolProg 64 :=
.seq NamedBody542_203 NamedBody542_342

def NamedBody542_344 : StackLang.HolProg 64 :=
.seq NamedBody542_202 NamedBody542_343

def NamedBody542_345 : StackLang.HolProg 64 :=
.seq NamedBody542_201 NamedBody542_344

def NamedBody542_346 : StackLang.HolProg 64 :=
.seq NamedBody542_200 NamedBody542_345

def NamedBody542_347 : StackLang.HolProg 64 :=
.seq NamedBody542_199 NamedBody542_346

def NamedBody542_348 : StackLang.HolProg 64 :=
.seq NamedBody542_198 NamedBody542_347

def NamedBody542_349 : StackLang.HolProg 64 :=
.seq NamedBody542_197 NamedBody542_348

def NamedBody542_350 : StackLang.HolProg 64 :=
.seq NamedBody542_196 NamedBody542_349

def NamedBody542_351 : StackLang.HolProg 64 :=
.seq NamedBody542_195 NamedBody542_350

def NamedBody542_352 : StackLang.HolProg 64 :=
.seq NamedBody542_194 NamedBody542_351

def NamedBody542_353 : StackLang.HolProg 64 :=
.seq NamedBody542_179 NamedBody542_352

def NamedBody542_354 : StackLang.HolProg 64 :=
.seq NamedBody542_178 NamedBody542_353

def NamedBody542_355 : StackLang.HolProg 64 :=
.seq NamedBody542_177 NamedBody542_354

def NamedBody542_356 : StackLang.HolProg 64 :=
.seq NamedBody542_176 NamedBody542_355

def NamedBody542_357 : StackLang.HolProg 64 :=
.seq NamedBody542_175 NamedBody542_356

def NamedBody542_358 : StackLang.HolProg 64 :=
.seq NamedBody542_174 NamedBody542_357

def NamedBody542_359 : StackLang.HolProg 64 :=
.seq NamedBody542_173 NamedBody542_358

def NamedBody542_360 : StackLang.HolProg 64 :=
.seq NamedBody542_172 NamedBody542_359

def NamedBody542_361 : StackLang.HolProg 64 :=
.seq NamedBody542_119 NamedBody542_360

def NamedBody542_362 : StackLang.HolProg 64 :=
.seq NamedBody542_118 NamedBody542_361

def NamedBody542_363 : StackLang.HolProg 64 :=
.seq NamedBody542_117 NamedBody542_362

def NamedBody542_364 : StackLang.HolProg 64 :=
.seq NamedBody542_64 NamedBody542_363

def NamedBody542_365 : StackLang.HolProg 64 :=
.seq NamedBody542_63 NamedBody542_364

def NamedBody542_366 : StackLang.HolProg 64 :=
.seq NamedBody542_62 NamedBody542_365

def NamedBody542_367 : StackLang.HolProg 64 :=
.seq NamedBody542_9 NamedBody542_366

def NamedBody542_368 : StackLang.HolProg 64 :=
.seq NamedBody542_8 NamedBody542_367

def NamedBody542_369 : StackLang.HolProg 64 :=
.seq NamedBody542_7 NamedBody542_368

def NamedBody542_370 : StackLang.HolProg 64 :=
.seq NamedBody542_6 NamedBody542_369

def Named542 : Nat × StackLang.HolProg 64 := (542, NamedBody542_370)
theorem Named542_eq : StackNames.progCompEntryHOL RiscVConfig.riscvNames Removed542 = Named542 := by
  kernel_rfl
#print axioms Named542_eq
end InitECandidate.Proofs.BackendStages
