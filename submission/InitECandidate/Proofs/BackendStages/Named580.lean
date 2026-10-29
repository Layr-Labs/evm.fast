import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.BackendStages.Removed580
import Flapjack.Compiler.Backend.Backend
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
namespace InitECandidate.Proofs.BackendStages
def NamedBody580_0 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 16#64)))

def NamedBody580_1 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 2#64)

def NamedBody580_2 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 10

def NamedBody580_3 : StackLang.HolProg 64 :=
.seq NamedBody580_1 NamedBody580_2

def NamedBody580_4 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody580_5 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) NamedBody580_3 NamedBody580_4

def NamedBody580_6 : StackLang.HolProg 64 :=
.seq NamedBody580_0 NamedBody580_5

def NamedBody580_7 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody580_8 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 2#64)

def NamedBody580_9 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody580_10 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody580_11 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 2031#64)

def NamedBody580_12 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody580_13 : StackLang.HolProg 64 :=
.seq NamedBody580_11 NamedBody580_12

def NamedBody580_14 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody580_15 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 2#64)

def NamedBody580_16 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 10

def NamedBody580_17 : StackLang.HolProg 64 :=
.seq NamedBody580_15 NamedBody580_16

def NamedBody580_18 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody580_19 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) NamedBody580_17 NamedBody580_18

def NamedBody580_20 : StackLang.HolProg 64 :=
.seq NamedBody580_14 NamedBody580_19

def NamedBody580_21 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def NamedBody580_22 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody580_23 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 580 3

def NamedBody580_24 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody580_25 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody580_26 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody580_27 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody580_28 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def NamedBody580_29 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def NamedBody580_30 : StackLang.HolProg 64 :=
.seq NamedBody580_28 NamedBody580_29

def NamedBody580_31 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def NamedBody580_32 : StackLang.HolProg 64 :=
.seq NamedBody580_30 NamedBody580_31

def NamedBody580_33 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody580_34 : StackLang.HolProg 64 :=
.seq NamedBody580_32 NamedBody580_33

def NamedBody580_35 : StackLang.HolProg 64 :=
.seq NamedBody580_27 NamedBody580_34

def NamedBody580_36 : StackLang.HolProg 64 :=
.seq NamedBody580_26 NamedBody580_35

def NamedBody580_37 : StackLang.HolProg 64 :=
.seq NamedBody580_25 NamedBody580_36

def NamedBody580_38 : StackLang.HolProg 64 :=
.seq NamedBody580_24 NamedBody580_37

def NamedBody580_39 : StackLang.HolProg 64 :=
.seq NamedBody580_23 NamedBody580_38

def NamedBody580_40 : StackLang.HolProg 64 :=
.seq NamedBody580_22 NamedBody580_39

def NamedBody580_41 : StackLang.HolProg 64 :=
.seq NamedBody580_21 NamedBody580_40

def NamedBody580_42 : StackLang.HolProg 64 :=
.seq NamedBody580_20 NamedBody580_41

def NamedBody580_43 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody580_44 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody580_45 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody580_46 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody580_47 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody580_48 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody580_49 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody580_50 : StackLang.HolProg 64 :=
.seq NamedBody580_48 NamedBody580_49

def NamedBody580_51 : StackLang.HolProg 64 :=
.seq NamedBody580_47 NamedBody580_50

def NamedBody580_52 : StackLang.HolProg 64 :=
.seq NamedBody580_46 NamedBody580_51

def NamedBody580_53 : StackLang.HolProg 64 :=
.seq NamedBody580_45 NamedBody580_52

def NamedBody580_54 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody580_55 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def NamedBody580_56 : StackLang.HolProg 64 :=
.seq NamedBody580_54 NamedBody580_55

def NamedBody580_57 : StackLang.HolProg 64 :=
.call (some (NamedBody580_53, 1, 580, 2)) (Sum.inl 470) (some (NamedBody580_56, 580, 3))

def NamedBody580_58 : StackLang.HolProg 64 :=
.seq NamedBody580_44 NamedBody580_57

def NamedBody580_59 : StackLang.HolProg 64 :=
.seq NamedBody580_43 NamedBody580_58

def NamedBody580_60 : StackLang.HolProg 64 :=
.seq NamedBody580_42 NamedBody580_59

def NamedBody580_61 : StackLang.HolProg 64 :=
.seq NamedBody580_13 NamedBody580_60

def NamedBody580_62 : StackLang.HolProg 64 :=
.seq NamedBody580_10 NamedBody580_61

def NamedBody580_63 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody580_64 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody580_65 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody580_66 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 2032#64)

def NamedBody580_67 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody580_68 : StackLang.HolProg 64 :=
.seq NamedBody580_66 NamedBody580_67

def NamedBody580_69 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody580_70 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 2#64)

def NamedBody580_71 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 10

def NamedBody580_72 : StackLang.HolProg 64 :=
.seq NamedBody580_70 NamedBody580_71

def NamedBody580_73 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody580_74 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) NamedBody580_72 NamedBody580_73

def NamedBody580_75 : StackLang.HolProg 64 :=
.seq NamedBody580_69 NamedBody580_74

def NamedBody580_76 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def NamedBody580_77 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody580_78 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 580 5

def NamedBody580_79 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody580_80 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody580_81 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody580_82 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody580_83 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def NamedBody580_84 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def NamedBody580_85 : StackLang.HolProg 64 :=
.seq NamedBody580_83 NamedBody580_84

def NamedBody580_86 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def NamedBody580_87 : StackLang.HolProg 64 :=
.seq NamedBody580_85 NamedBody580_86

def NamedBody580_88 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody580_89 : StackLang.HolProg 64 :=
.seq NamedBody580_87 NamedBody580_88

def NamedBody580_90 : StackLang.HolProg 64 :=
.seq NamedBody580_82 NamedBody580_89

def NamedBody580_91 : StackLang.HolProg 64 :=
.seq NamedBody580_81 NamedBody580_90

def NamedBody580_92 : StackLang.HolProg 64 :=
.seq NamedBody580_80 NamedBody580_91

def NamedBody580_93 : StackLang.HolProg 64 :=
.seq NamedBody580_79 NamedBody580_92

def NamedBody580_94 : StackLang.HolProg 64 :=
.seq NamedBody580_78 NamedBody580_93

def NamedBody580_95 : StackLang.HolProg 64 :=
.seq NamedBody580_77 NamedBody580_94

def NamedBody580_96 : StackLang.HolProg 64 :=
.seq NamedBody580_76 NamedBody580_95

def NamedBody580_97 : StackLang.HolProg 64 :=
.seq NamedBody580_75 NamedBody580_96

def NamedBody580_98 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody580_99 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody580_100 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody580_101 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody580_102 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody580_103 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody580_104 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 1 10
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 10)))

def NamedBody580_105 : StackLang.HolProg 64 :=
.seq NamedBody580_103 NamedBody580_104

def NamedBody580_106 : StackLang.HolProg 64 :=
.seq NamedBody580_102 NamedBody580_105

def NamedBody580_107 : StackLang.HolProg 64 :=
.seq NamedBody580_101 NamedBody580_106

def NamedBody580_108 : StackLang.HolProg 64 :=
.seq NamedBody580_100 NamedBody580_107

def NamedBody580_109 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody580_110 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def NamedBody580_111 : StackLang.HolProg 64 :=
.seq NamedBody580_109 NamedBody580_110

def NamedBody580_112 : StackLang.HolProg 64 :=
.call (some (NamedBody580_108, 1, 580, 4)) (Sum.inl 572) (some (NamedBody580_111, 580, 5))

def NamedBody580_113 : StackLang.HolProg 64 :=
.seq NamedBody580_99 NamedBody580_112

def NamedBody580_114 : StackLang.HolProg 64 :=
.seq NamedBody580_98 NamedBody580_113

def NamedBody580_115 : StackLang.HolProg 64 :=
.seq NamedBody580_97 NamedBody580_114

def NamedBody580_116 : StackLang.HolProg 64 :=
.seq NamedBody580_68 NamedBody580_115

def NamedBody580_117 : StackLang.HolProg 64 :=
.seq NamedBody580_65 NamedBody580_116

def NamedBody580_118 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody580_119 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody580_120 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 10
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 1 8#64))

def NamedBody580_121 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody580_122 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody580_123 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 2033#64)

def NamedBody580_124 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody580_125 : StackLang.HolProg 64 :=
.seq NamedBody580_123 NamedBody580_124

def NamedBody580_126 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody580_127 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 2#64)

def NamedBody580_128 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 10

def NamedBody580_129 : StackLang.HolProg 64 :=
.seq NamedBody580_127 NamedBody580_128

def NamedBody580_130 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody580_131 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) NamedBody580_129 NamedBody580_130

def NamedBody580_132 : StackLang.HolProg 64 :=
.seq NamedBody580_126 NamedBody580_131

def NamedBody580_133 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def NamedBody580_134 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody580_135 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 580 7

def NamedBody580_136 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody580_137 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody580_138 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody580_139 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody580_140 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def NamedBody580_141 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def NamedBody580_142 : StackLang.HolProg 64 :=
.seq NamedBody580_140 NamedBody580_141

def NamedBody580_143 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def NamedBody580_144 : StackLang.HolProg 64 :=
.seq NamedBody580_142 NamedBody580_143

def NamedBody580_145 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody580_146 : StackLang.HolProg 64 :=
.seq NamedBody580_144 NamedBody580_145

def NamedBody580_147 : StackLang.HolProg 64 :=
.seq NamedBody580_139 NamedBody580_146

def NamedBody580_148 : StackLang.HolProg 64 :=
.seq NamedBody580_138 NamedBody580_147

def NamedBody580_149 : StackLang.HolProg 64 :=
.seq NamedBody580_137 NamedBody580_148

def NamedBody580_150 : StackLang.HolProg 64 :=
.seq NamedBody580_136 NamedBody580_149

def NamedBody580_151 : StackLang.HolProg 64 :=
.seq NamedBody580_135 NamedBody580_150

def NamedBody580_152 : StackLang.HolProg 64 :=
.seq NamedBody580_134 NamedBody580_151

def NamedBody580_153 : StackLang.HolProg 64 :=
.seq NamedBody580_133 NamedBody580_152

def NamedBody580_154 : StackLang.HolProg 64 :=
.seq NamedBody580_132 NamedBody580_153

def NamedBody580_155 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody580_156 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody580_157 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody580_158 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody580_159 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody580_160 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody580_161 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody580_162 : StackLang.HolProg 64 :=
.seq NamedBody580_160 NamedBody580_161

def NamedBody580_163 : StackLang.HolProg 64 :=
.seq NamedBody580_159 NamedBody580_162

def NamedBody580_164 : StackLang.HolProg 64 :=
.seq NamedBody580_158 NamedBody580_163

def NamedBody580_165 : StackLang.HolProg 64 :=
.seq NamedBody580_157 NamedBody580_164

def NamedBody580_166 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody580_167 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def NamedBody580_168 : StackLang.HolProg 64 :=
.seq NamedBody580_166 NamedBody580_167

def NamedBody580_169 : StackLang.HolProg 64 :=
.call (some (NamedBody580_165, 1, 580, 6)) (Sum.inl 477) (some (NamedBody580_168, 580, 7))

def NamedBody580_170 : StackLang.HolProg 64 :=
.seq NamedBody580_156 NamedBody580_169

def NamedBody580_171 : StackLang.HolProg 64 :=
.seq NamedBody580_155 NamedBody580_170

def NamedBody580_172 : StackLang.HolProg 64 :=
.seq NamedBody580_154 NamedBody580_171

def NamedBody580_173 : StackLang.HolProg 64 :=
.seq NamedBody580_125 NamedBody580_172

def NamedBody580_174 : StackLang.HolProg 64 :=
.seq NamedBody580_122 NamedBody580_173

def NamedBody580_175 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody580_176 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 1#64)

def NamedBody580_177 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody580_178 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody580_179 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 2034#64)

def NamedBody580_180 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody580_181 : StackLang.HolProg 64 :=
.seq NamedBody580_179 NamedBody580_180

def NamedBody580_182 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody580_183 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 2#64)

def NamedBody580_184 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 10

def NamedBody580_185 : StackLang.HolProg 64 :=
.seq NamedBody580_183 NamedBody580_184

def NamedBody580_186 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody580_187 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) NamedBody580_185 NamedBody580_186

def NamedBody580_188 : StackLang.HolProg 64 :=
.seq NamedBody580_182 NamedBody580_187

def NamedBody580_189 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def NamedBody580_190 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody580_191 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 580 9

def NamedBody580_192 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody580_193 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody580_194 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody580_195 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody580_196 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def NamedBody580_197 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def NamedBody580_198 : StackLang.HolProg 64 :=
.seq NamedBody580_196 NamedBody580_197

def NamedBody580_199 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def NamedBody580_200 : StackLang.HolProg 64 :=
.seq NamedBody580_198 NamedBody580_199

def NamedBody580_201 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody580_202 : StackLang.HolProg 64 :=
.seq NamedBody580_200 NamedBody580_201

def NamedBody580_203 : StackLang.HolProg 64 :=
.seq NamedBody580_195 NamedBody580_202

def NamedBody580_204 : StackLang.HolProg 64 :=
.seq NamedBody580_194 NamedBody580_203

def NamedBody580_205 : StackLang.HolProg 64 :=
.seq NamedBody580_193 NamedBody580_204

def NamedBody580_206 : StackLang.HolProg 64 :=
.seq NamedBody580_192 NamedBody580_205

def NamedBody580_207 : StackLang.HolProg 64 :=
.seq NamedBody580_191 NamedBody580_206

def NamedBody580_208 : StackLang.HolProg 64 :=
.seq NamedBody580_190 NamedBody580_207

def NamedBody580_209 : StackLang.HolProg 64 :=
.seq NamedBody580_189 NamedBody580_208

def NamedBody580_210 : StackLang.HolProg 64 :=
.seq NamedBody580_188 NamedBody580_209

def NamedBody580_211 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody580_212 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody580_213 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody580_214 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody580_215 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody580_216 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody580_217 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody580_218 : StackLang.HolProg 64 :=
.seq NamedBody580_216 NamedBody580_217

def NamedBody580_219 : StackLang.HolProg 64 :=
.seq NamedBody580_215 NamedBody580_218

def NamedBody580_220 : StackLang.HolProg 64 :=
.seq NamedBody580_214 NamedBody580_219

def NamedBody580_221 : StackLang.HolProg 64 :=
.seq NamedBody580_213 NamedBody580_220

def NamedBody580_222 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody580_223 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def NamedBody580_224 : StackLang.HolProg 64 :=
.seq NamedBody580_222 NamedBody580_223

def NamedBody580_225 : StackLang.HolProg 64 :=
.call (some (NamedBody580_221, 1, 580, 8)) (Sum.inl 490) (some (NamedBody580_224, 580, 9))

def NamedBody580_226 : StackLang.HolProg 64 :=
.seq NamedBody580_212 NamedBody580_225

def NamedBody580_227 : StackLang.HolProg 64 :=
.seq NamedBody580_211 NamedBody580_226

def NamedBody580_228 : StackLang.HolProg 64 :=
.seq NamedBody580_210 NamedBody580_227

def NamedBody580_229 : StackLang.HolProg 64 :=
.seq NamedBody580_181 NamedBody580_228

def NamedBody580_230 : StackLang.HolProg 64 :=
.seq NamedBody580_178 NamedBody580_229

def NamedBody580_231 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody580_232 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 0#64)

def NamedBody580_233 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody580_234 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 16#64)))

def NamedBody580_235 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 1

def NamedBody580_236 : StackLang.HolProg 64 :=
.seq NamedBody580_234 NamedBody580_235

def NamedBody580_237 : StackLang.HolProg 64 :=
.seq NamedBody580_233 NamedBody580_236

def NamedBody580_238 : StackLang.HolProg 64 :=
.seq NamedBody580_232 NamedBody580_237

def NamedBody580_239 : StackLang.HolProg 64 :=
.seq NamedBody580_231 NamedBody580_238

def NamedBody580_240 : StackLang.HolProg 64 :=
.seq NamedBody580_230 NamedBody580_239

def NamedBody580_241 : StackLang.HolProg 64 :=
.seq NamedBody580_177 NamedBody580_240

def NamedBody580_242 : StackLang.HolProg 64 :=
.seq NamedBody580_176 NamedBody580_241

def NamedBody580_243 : StackLang.HolProg 64 :=
.seq NamedBody580_175 NamedBody580_242

def NamedBody580_244 : StackLang.HolProg 64 :=
.seq NamedBody580_174 NamedBody580_243

def NamedBody580_245 : StackLang.HolProg 64 :=
.seq NamedBody580_121 NamedBody580_244

def NamedBody580_246 : StackLang.HolProg 64 :=
.seq NamedBody580_120 NamedBody580_245

def NamedBody580_247 : StackLang.HolProg 64 :=
.seq NamedBody580_119 NamedBody580_246

def NamedBody580_248 : StackLang.HolProg 64 :=
.seq NamedBody580_118 NamedBody580_247

def NamedBody580_249 : StackLang.HolProg 64 :=
.seq NamedBody580_117 NamedBody580_248

def NamedBody580_250 : StackLang.HolProg 64 :=
.seq NamedBody580_64 NamedBody580_249

def NamedBody580_251 : StackLang.HolProg 64 :=
.seq NamedBody580_63 NamedBody580_250

def NamedBody580_252 : StackLang.HolProg 64 :=
.seq NamedBody580_62 NamedBody580_251

def NamedBody580_253 : StackLang.HolProg 64 :=
.seq NamedBody580_9 NamedBody580_252

def NamedBody580_254 : StackLang.HolProg 64 :=
.seq NamedBody580_8 NamedBody580_253

def NamedBody580_255 : StackLang.HolProg 64 :=
.seq NamedBody580_7 NamedBody580_254

def NamedBody580_256 : StackLang.HolProg 64 :=
.seq NamedBody580_6 NamedBody580_255

def Named580 : Nat × StackLang.HolProg 64 := (580, NamedBody580_256)
theorem Named580_eq : StackNames.progCompEntryHOL RiscVConfig.riscvNames Removed580 = Named580 := by
  kernel_rfl
#print axioms Named580_eq
end InitECandidate.Proofs.BackendStages
