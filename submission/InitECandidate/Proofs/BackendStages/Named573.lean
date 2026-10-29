import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.BackendStages.Removed573
import Flapjack.Compiler.Backend.Backend
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
namespace InitECandidate.Proofs.BackendStages
def NamedBody573_0 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 16#64)))

def NamedBody573_1 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 2#64)

def NamedBody573_2 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 10

def NamedBody573_3 : StackLang.HolProg 64 :=
.seq NamedBody573_1 NamedBody573_2

def NamedBody573_4 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody573_5 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) NamedBody573_3 NamedBody573_4

def NamedBody573_6 : StackLang.HolProg 64 :=
.seq NamedBody573_0 NamedBody573_5

def NamedBody573_7 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody573_8 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 2#64)

def NamedBody573_9 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody573_10 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody573_11 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1992#64)

def NamedBody573_12 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody573_13 : StackLang.HolProg 64 :=
.seq NamedBody573_11 NamedBody573_12

def NamedBody573_14 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody573_15 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 2#64)

def NamedBody573_16 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 10

def NamedBody573_17 : StackLang.HolProg 64 :=
.seq NamedBody573_15 NamedBody573_16

def NamedBody573_18 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody573_19 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) NamedBody573_17 NamedBody573_18

def NamedBody573_20 : StackLang.HolProg 64 :=
.seq NamedBody573_14 NamedBody573_19

def NamedBody573_21 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def NamedBody573_22 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody573_23 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 573 3

def NamedBody573_24 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody573_25 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody573_26 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody573_27 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody573_28 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def NamedBody573_29 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def NamedBody573_30 : StackLang.HolProg 64 :=
.seq NamedBody573_28 NamedBody573_29

def NamedBody573_31 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def NamedBody573_32 : StackLang.HolProg 64 :=
.seq NamedBody573_30 NamedBody573_31

def NamedBody573_33 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody573_34 : StackLang.HolProg 64 :=
.seq NamedBody573_32 NamedBody573_33

def NamedBody573_35 : StackLang.HolProg 64 :=
.seq NamedBody573_27 NamedBody573_34

def NamedBody573_36 : StackLang.HolProg 64 :=
.seq NamedBody573_26 NamedBody573_35

def NamedBody573_37 : StackLang.HolProg 64 :=
.seq NamedBody573_25 NamedBody573_36

def NamedBody573_38 : StackLang.HolProg 64 :=
.seq NamedBody573_24 NamedBody573_37

def NamedBody573_39 : StackLang.HolProg 64 :=
.seq NamedBody573_23 NamedBody573_38

def NamedBody573_40 : StackLang.HolProg 64 :=
.seq NamedBody573_22 NamedBody573_39

def NamedBody573_41 : StackLang.HolProg 64 :=
.seq NamedBody573_21 NamedBody573_40

def NamedBody573_42 : StackLang.HolProg 64 :=
.seq NamedBody573_20 NamedBody573_41

def NamedBody573_43 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody573_44 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody573_45 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody573_46 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody573_47 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody573_48 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody573_49 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody573_50 : StackLang.HolProg 64 :=
.seq NamedBody573_48 NamedBody573_49

def NamedBody573_51 : StackLang.HolProg 64 :=
.seq NamedBody573_47 NamedBody573_50

def NamedBody573_52 : StackLang.HolProg 64 :=
.seq NamedBody573_46 NamedBody573_51

def NamedBody573_53 : StackLang.HolProg 64 :=
.seq NamedBody573_45 NamedBody573_52

def NamedBody573_54 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody573_55 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def NamedBody573_56 : StackLang.HolProg 64 :=
.seq NamedBody573_54 NamedBody573_55

def NamedBody573_57 : StackLang.HolProg 64 :=
.call (some (NamedBody573_53, 1, 573, 2)) (Sum.inl 470) (some (NamedBody573_56, 573, 3))

def NamedBody573_58 : StackLang.HolProg 64 :=
.seq NamedBody573_44 NamedBody573_57

def NamedBody573_59 : StackLang.HolProg 64 :=
.seq NamedBody573_43 NamedBody573_58

def NamedBody573_60 : StackLang.HolProg 64 :=
.seq NamedBody573_42 NamedBody573_59

def NamedBody573_61 : StackLang.HolProg 64 :=
.seq NamedBody573_13 NamedBody573_60

def NamedBody573_62 : StackLang.HolProg 64 :=
.seq NamedBody573_10 NamedBody573_61

def NamedBody573_63 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody573_64 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody573_65 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody573_66 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1993#64)

def NamedBody573_67 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody573_68 : StackLang.HolProg 64 :=
.seq NamedBody573_66 NamedBody573_67

def NamedBody573_69 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody573_70 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 2#64)

def NamedBody573_71 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 10

def NamedBody573_72 : StackLang.HolProg 64 :=
.seq NamedBody573_70 NamedBody573_71

def NamedBody573_73 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody573_74 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) NamedBody573_72 NamedBody573_73

def NamedBody573_75 : StackLang.HolProg 64 :=
.seq NamedBody573_69 NamedBody573_74

def NamedBody573_76 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def NamedBody573_77 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody573_78 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 573 5

def NamedBody573_79 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody573_80 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody573_81 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody573_82 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody573_83 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def NamedBody573_84 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def NamedBody573_85 : StackLang.HolProg 64 :=
.seq NamedBody573_83 NamedBody573_84

def NamedBody573_86 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def NamedBody573_87 : StackLang.HolProg 64 :=
.seq NamedBody573_85 NamedBody573_86

def NamedBody573_88 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody573_89 : StackLang.HolProg 64 :=
.seq NamedBody573_87 NamedBody573_88

def NamedBody573_90 : StackLang.HolProg 64 :=
.seq NamedBody573_82 NamedBody573_89

def NamedBody573_91 : StackLang.HolProg 64 :=
.seq NamedBody573_81 NamedBody573_90

def NamedBody573_92 : StackLang.HolProg 64 :=
.seq NamedBody573_80 NamedBody573_91

def NamedBody573_93 : StackLang.HolProg 64 :=
.seq NamedBody573_79 NamedBody573_92

def NamedBody573_94 : StackLang.HolProg 64 :=
.seq NamedBody573_78 NamedBody573_93

def NamedBody573_95 : StackLang.HolProg 64 :=
.seq NamedBody573_77 NamedBody573_94

def NamedBody573_96 : StackLang.HolProg 64 :=
.seq NamedBody573_76 NamedBody573_95

def NamedBody573_97 : StackLang.HolProg 64 :=
.seq NamedBody573_75 NamedBody573_96

def NamedBody573_98 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody573_99 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody573_100 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody573_101 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody573_102 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody573_103 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody573_104 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 1 10
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 10)))

def NamedBody573_105 : StackLang.HolProg 64 :=
.seq NamedBody573_103 NamedBody573_104

def NamedBody573_106 : StackLang.HolProg 64 :=
.seq NamedBody573_102 NamedBody573_105

def NamedBody573_107 : StackLang.HolProg 64 :=
.seq NamedBody573_101 NamedBody573_106

def NamedBody573_108 : StackLang.HolProg 64 :=
.seq NamedBody573_100 NamedBody573_107

def NamedBody573_109 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody573_110 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def NamedBody573_111 : StackLang.HolProg 64 :=
.seq NamedBody573_109 NamedBody573_110

def NamedBody573_112 : StackLang.HolProg 64 :=
.call (some (NamedBody573_108, 1, 573, 4)) (Sum.inl 572) (some (NamedBody573_111, 573, 5))

def NamedBody573_113 : StackLang.HolProg 64 :=
.seq NamedBody573_99 NamedBody573_112

def NamedBody573_114 : StackLang.HolProg 64 :=
.seq NamedBody573_98 NamedBody573_113

def NamedBody573_115 : StackLang.HolProg 64 :=
.seq NamedBody573_97 NamedBody573_114

def NamedBody573_116 : StackLang.HolProg 64 :=
.seq NamedBody573_68 NamedBody573_115

def NamedBody573_117 : StackLang.HolProg 64 :=
.seq NamedBody573_65 NamedBody573_116

def NamedBody573_118 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody573_119 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody573_120 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 10
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 1 48#64))

def NamedBody573_121 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody573_122 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 11
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 1 56#64))

def NamedBody573_123 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody573_124 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 12
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 1 64#64))

def NamedBody573_125 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody573_126 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 13
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 1 72#64))

def NamedBody573_127 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody573_128 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody573_129 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1994#64)

def NamedBody573_130 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody573_131 : StackLang.HolProg 64 :=
.seq NamedBody573_129 NamedBody573_130

def NamedBody573_132 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody573_133 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 2#64)

def NamedBody573_134 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 10

def NamedBody573_135 : StackLang.HolProg 64 :=
.seq NamedBody573_133 NamedBody573_134

def NamedBody573_136 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody573_137 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) NamedBody573_135 NamedBody573_136

def NamedBody573_138 : StackLang.HolProg 64 :=
.seq NamedBody573_132 NamedBody573_137

def NamedBody573_139 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def NamedBody573_140 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody573_141 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 573 7

def NamedBody573_142 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody573_143 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody573_144 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody573_145 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody573_146 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def NamedBody573_147 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def NamedBody573_148 : StackLang.HolProg 64 :=
.seq NamedBody573_146 NamedBody573_147

def NamedBody573_149 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def NamedBody573_150 : StackLang.HolProg 64 :=
.seq NamedBody573_148 NamedBody573_149

def NamedBody573_151 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody573_152 : StackLang.HolProg 64 :=
.seq NamedBody573_150 NamedBody573_151

def NamedBody573_153 : StackLang.HolProg 64 :=
.seq NamedBody573_145 NamedBody573_152

def NamedBody573_154 : StackLang.HolProg 64 :=
.seq NamedBody573_144 NamedBody573_153

def NamedBody573_155 : StackLang.HolProg 64 :=
.seq NamedBody573_143 NamedBody573_154

def NamedBody573_156 : StackLang.HolProg 64 :=
.seq NamedBody573_142 NamedBody573_155

def NamedBody573_157 : StackLang.HolProg 64 :=
.seq NamedBody573_141 NamedBody573_156

def NamedBody573_158 : StackLang.HolProg 64 :=
.seq NamedBody573_140 NamedBody573_157

def NamedBody573_159 : StackLang.HolProg 64 :=
.seq NamedBody573_139 NamedBody573_158

def NamedBody573_160 : StackLang.HolProg 64 :=
.seq NamedBody573_138 NamedBody573_159

def NamedBody573_161 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody573_162 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody573_163 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody573_164 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody573_165 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody573_166 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody573_167 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody573_168 : StackLang.HolProg 64 :=
.seq NamedBody573_166 NamedBody573_167

def NamedBody573_169 : StackLang.HolProg 64 :=
.seq NamedBody573_165 NamedBody573_168

def NamedBody573_170 : StackLang.HolProg 64 :=
.seq NamedBody573_164 NamedBody573_169

def NamedBody573_171 : StackLang.HolProg 64 :=
.seq NamedBody573_163 NamedBody573_170

def NamedBody573_172 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody573_173 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def NamedBody573_174 : StackLang.HolProg 64 :=
.seq NamedBody573_172 NamedBody573_173

def NamedBody573_175 : StackLang.HolProg 64 :=
.call (some (NamedBody573_171, 1, 573, 6)) (Sum.inl 476) (some (NamedBody573_174, 573, 7))

def NamedBody573_176 : StackLang.HolProg 64 :=
.seq NamedBody573_162 NamedBody573_175

def NamedBody573_177 : StackLang.HolProg 64 :=
.seq NamedBody573_161 NamedBody573_176

def NamedBody573_178 : StackLang.HolProg 64 :=
.seq NamedBody573_160 NamedBody573_177

def NamedBody573_179 : StackLang.HolProg 64 :=
.seq NamedBody573_131 NamedBody573_178

def NamedBody573_180 : StackLang.HolProg 64 :=
.seq NamedBody573_128 NamedBody573_179

def NamedBody573_181 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody573_182 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 1#64)

def NamedBody573_183 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody573_184 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody573_185 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1995#64)

def NamedBody573_186 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody573_187 : StackLang.HolProg 64 :=
.seq NamedBody573_185 NamedBody573_186

def NamedBody573_188 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody573_189 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 2#64)

def NamedBody573_190 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 10

def NamedBody573_191 : StackLang.HolProg 64 :=
.seq NamedBody573_189 NamedBody573_190

def NamedBody573_192 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody573_193 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) NamedBody573_191 NamedBody573_192

def NamedBody573_194 : StackLang.HolProg 64 :=
.seq NamedBody573_188 NamedBody573_193

def NamedBody573_195 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def NamedBody573_196 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody573_197 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 573 9

def NamedBody573_198 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody573_199 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody573_200 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody573_201 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody573_202 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def NamedBody573_203 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def NamedBody573_204 : StackLang.HolProg 64 :=
.seq NamedBody573_202 NamedBody573_203

def NamedBody573_205 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def NamedBody573_206 : StackLang.HolProg 64 :=
.seq NamedBody573_204 NamedBody573_205

def NamedBody573_207 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody573_208 : StackLang.HolProg 64 :=
.seq NamedBody573_206 NamedBody573_207

def NamedBody573_209 : StackLang.HolProg 64 :=
.seq NamedBody573_201 NamedBody573_208

def NamedBody573_210 : StackLang.HolProg 64 :=
.seq NamedBody573_200 NamedBody573_209

def NamedBody573_211 : StackLang.HolProg 64 :=
.seq NamedBody573_199 NamedBody573_210

def NamedBody573_212 : StackLang.HolProg 64 :=
.seq NamedBody573_198 NamedBody573_211

def NamedBody573_213 : StackLang.HolProg 64 :=
.seq NamedBody573_197 NamedBody573_212

def NamedBody573_214 : StackLang.HolProg 64 :=
.seq NamedBody573_196 NamedBody573_213

def NamedBody573_215 : StackLang.HolProg 64 :=
.seq NamedBody573_195 NamedBody573_214

def NamedBody573_216 : StackLang.HolProg 64 :=
.seq NamedBody573_194 NamedBody573_215

def NamedBody573_217 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody573_218 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody573_219 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody573_220 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody573_221 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody573_222 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody573_223 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody573_224 : StackLang.HolProg 64 :=
.seq NamedBody573_222 NamedBody573_223

def NamedBody573_225 : StackLang.HolProg 64 :=
.seq NamedBody573_221 NamedBody573_224

def NamedBody573_226 : StackLang.HolProg 64 :=
.seq NamedBody573_220 NamedBody573_225

def NamedBody573_227 : StackLang.HolProg 64 :=
.seq NamedBody573_219 NamedBody573_226

def NamedBody573_228 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody573_229 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def NamedBody573_230 : StackLang.HolProg 64 :=
.seq NamedBody573_228 NamedBody573_229

def NamedBody573_231 : StackLang.HolProg 64 :=
.call (some (NamedBody573_227, 1, 573, 8)) (Sum.inl 490) (some (NamedBody573_230, 573, 9))

def NamedBody573_232 : StackLang.HolProg 64 :=
.seq NamedBody573_218 NamedBody573_231

def NamedBody573_233 : StackLang.HolProg 64 :=
.seq NamedBody573_217 NamedBody573_232

def NamedBody573_234 : StackLang.HolProg 64 :=
.seq NamedBody573_216 NamedBody573_233

def NamedBody573_235 : StackLang.HolProg 64 :=
.seq NamedBody573_187 NamedBody573_234

def NamedBody573_236 : StackLang.HolProg 64 :=
.seq NamedBody573_184 NamedBody573_235

def NamedBody573_237 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody573_238 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 0#64)

def NamedBody573_239 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody573_240 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 16#64)))

def NamedBody573_241 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 1

def NamedBody573_242 : StackLang.HolProg 64 :=
.seq NamedBody573_240 NamedBody573_241

def NamedBody573_243 : StackLang.HolProg 64 :=
.seq NamedBody573_239 NamedBody573_242

def NamedBody573_244 : StackLang.HolProg 64 :=
.seq NamedBody573_238 NamedBody573_243

def NamedBody573_245 : StackLang.HolProg 64 :=
.seq NamedBody573_237 NamedBody573_244

def NamedBody573_246 : StackLang.HolProg 64 :=
.seq NamedBody573_236 NamedBody573_245

def NamedBody573_247 : StackLang.HolProg 64 :=
.seq NamedBody573_183 NamedBody573_246

def NamedBody573_248 : StackLang.HolProg 64 :=
.seq NamedBody573_182 NamedBody573_247

def NamedBody573_249 : StackLang.HolProg 64 :=
.seq NamedBody573_181 NamedBody573_248

def NamedBody573_250 : StackLang.HolProg 64 :=
.seq NamedBody573_180 NamedBody573_249

def NamedBody573_251 : StackLang.HolProg 64 :=
.seq NamedBody573_127 NamedBody573_250

def NamedBody573_252 : StackLang.HolProg 64 :=
.seq NamedBody573_126 NamedBody573_251

def NamedBody573_253 : StackLang.HolProg 64 :=
.seq NamedBody573_125 NamedBody573_252

def NamedBody573_254 : StackLang.HolProg 64 :=
.seq NamedBody573_124 NamedBody573_253

def NamedBody573_255 : StackLang.HolProg 64 :=
.seq NamedBody573_123 NamedBody573_254

def NamedBody573_256 : StackLang.HolProg 64 :=
.seq NamedBody573_122 NamedBody573_255

def NamedBody573_257 : StackLang.HolProg 64 :=
.seq NamedBody573_121 NamedBody573_256

def NamedBody573_258 : StackLang.HolProg 64 :=
.seq NamedBody573_120 NamedBody573_257

def NamedBody573_259 : StackLang.HolProg 64 :=
.seq NamedBody573_119 NamedBody573_258

def NamedBody573_260 : StackLang.HolProg 64 :=
.seq NamedBody573_118 NamedBody573_259

def NamedBody573_261 : StackLang.HolProg 64 :=
.seq NamedBody573_117 NamedBody573_260

def NamedBody573_262 : StackLang.HolProg 64 :=
.seq NamedBody573_64 NamedBody573_261

def NamedBody573_263 : StackLang.HolProg 64 :=
.seq NamedBody573_63 NamedBody573_262

def NamedBody573_264 : StackLang.HolProg 64 :=
.seq NamedBody573_62 NamedBody573_263

def NamedBody573_265 : StackLang.HolProg 64 :=
.seq NamedBody573_9 NamedBody573_264

def NamedBody573_266 : StackLang.HolProg 64 :=
.seq NamedBody573_8 NamedBody573_265

def NamedBody573_267 : StackLang.HolProg 64 :=
.seq NamedBody573_7 NamedBody573_266

def NamedBody573_268 : StackLang.HolProg 64 :=
.seq NamedBody573_6 NamedBody573_267

def Named573 : Nat × StackLang.HolProg 64 := (573, NamedBody573_268)
theorem Named573_eq : StackNames.progCompEntryHOL RiscVConfig.riscvNames Removed573 = Named573 := by
  kernel_rfl
#print axioms Named573_eq
end InitECandidate.Proofs.BackendStages
