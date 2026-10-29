import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.BackendStages.Removed579
import Flapjack.Compiler.Backend.Backend
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
namespace InitECandidate.Proofs.BackendStages
def NamedBody579_0 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 16#64)))

def NamedBody579_1 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 2#64)

def NamedBody579_2 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 10

def NamedBody579_3 : StackLang.HolProg 64 :=
.seq NamedBody579_1 NamedBody579_2

def NamedBody579_4 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody579_5 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) NamedBody579_3 NamedBody579_4

def NamedBody579_6 : StackLang.HolProg 64 :=
.seq NamedBody579_0 NamedBody579_5

def NamedBody579_7 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody579_8 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 2#64)

def NamedBody579_9 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody579_10 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody579_11 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 2027#64)

def NamedBody579_12 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody579_13 : StackLang.HolProg 64 :=
.seq NamedBody579_11 NamedBody579_12

def NamedBody579_14 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody579_15 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 2#64)

def NamedBody579_16 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 10

def NamedBody579_17 : StackLang.HolProg 64 :=
.seq NamedBody579_15 NamedBody579_16

def NamedBody579_18 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody579_19 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) NamedBody579_17 NamedBody579_18

def NamedBody579_20 : StackLang.HolProg 64 :=
.seq NamedBody579_14 NamedBody579_19

def NamedBody579_21 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def NamedBody579_22 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody579_23 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 579 3

def NamedBody579_24 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody579_25 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody579_26 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody579_27 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody579_28 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def NamedBody579_29 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def NamedBody579_30 : StackLang.HolProg 64 :=
.seq NamedBody579_28 NamedBody579_29

def NamedBody579_31 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def NamedBody579_32 : StackLang.HolProg 64 :=
.seq NamedBody579_30 NamedBody579_31

def NamedBody579_33 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody579_34 : StackLang.HolProg 64 :=
.seq NamedBody579_32 NamedBody579_33

def NamedBody579_35 : StackLang.HolProg 64 :=
.seq NamedBody579_27 NamedBody579_34

def NamedBody579_36 : StackLang.HolProg 64 :=
.seq NamedBody579_26 NamedBody579_35

def NamedBody579_37 : StackLang.HolProg 64 :=
.seq NamedBody579_25 NamedBody579_36

def NamedBody579_38 : StackLang.HolProg 64 :=
.seq NamedBody579_24 NamedBody579_37

def NamedBody579_39 : StackLang.HolProg 64 :=
.seq NamedBody579_23 NamedBody579_38

def NamedBody579_40 : StackLang.HolProg 64 :=
.seq NamedBody579_22 NamedBody579_39

def NamedBody579_41 : StackLang.HolProg 64 :=
.seq NamedBody579_21 NamedBody579_40

def NamedBody579_42 : StackLang.HolProg 64 :=
.seq NamedBody579_20 NamedBody579_41

def NamedBody579_43 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody579_44 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody579_45 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody579_46 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody579_47 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody579_48 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody579_49 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody579_50 : StackLang.HolProg 64 :=
.seq NamedBody579_48 NamedBody579_49

def NamedBody579_51 : StackLang.HolProg 64 :=
.seq NamedBody579_47 NamedBody579_50

def NamedBody579_52 : StackLang.HolProg 64 :=
.seq NamedBody579_46 NamedBody579_51

def NamedBody579_53 : StackLang.HolProg 64 :=
.seq NamedBody579_45 NamedBody579_52

def NamedBody579_54 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody579_55 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def NamedBody579_56 : StackLang.HolProg 64 :=
.seq NamedBody579_54 NamedBody579_55

def NamedBody579_57 : StackLang.HolProg 64 :=
.call (some (NamedBody579_53, 1, 579, 2)) (Sum.inl 470) (some (NamedBody579_56, 579, 3))

def NamedBody579_58 : StackLang.HolProg 64 :=
.seq NamedBody579_44 NamedBody579_57

def NamedBody579_59 : StackLang.HolProg 64 :=
.seq NamedBody579_43 NamedBody579_58

def NamedBody579_60 : StackLang.HolProg 64 :=
.seq NamedBody579_42 NamedBody579_59

def NamedBody579_61 : StackLang.HolProg 64 :=
.seq NamedBody579_13 NamedBody579_60

def NamedBody579_62 : StackLang.HolProg 64 :=
.seq NamedBody579_10 NamedBody579_61

def NamedBody579_63 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody579_64 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody579_65 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody579_66 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 2028#64)

def NamedBody579_67 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody579_68 : StackLang.HolProg 64 :=
.seq NamedBody579_66 NamedBody579_67

def NamedBody579_69 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody579_70 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 2#64)

def NamedBody579_71 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 10

def NamedBody579_72 : StackLang.HolProg 64 :=
.seq NamedBody579_70 NamedBody579_71

def NamedBody579_73 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody579_74 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) NamedBody579_72 NamedBody579_73

def NamedBody579_75 : StackLang.HolProg 64 :=
.seq NamedBody579_69 NamedBody579_74

def NamedBody579_76 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def NamedBody579_77 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody579_78 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 579 5

def NamedBody579_79 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody579_80 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody579_81 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody579_82 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody579_83 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def NamedBody579_84 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def NamedBody579_85 : StackLang.HolProg 64 :=
.seq NamedBody579_83 NamedBody579_84

def NamedBody579_86 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def NamedBody579_87 : StackLang.HolProg 64 :=
.seq NamedBody579_85 NamedBody579_86

def NamedBody579_88 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody579_89 : StackLang.HolProg 64 :=
.seq NamedBody579_87 NamedBody579_88

def NamedBody579_90 : StackLang.HolProg 64 :=
.seq NamedBody579_82 NamedBody579_89

def NamedBody579_91 : StackLang.HolProg 64 :=
.seq NamedBody579_81 NamedBody579_90

def NamedBody579_92 : StackLang.HolProg 64 :=
.seq NamedBody579_80 NamedBody579_91

def NamedBody579_93 : StackLang.HolProg 64 :=
.seq NamedBody579_79 NamedBody579_92

def NamedBody579_94 : StackLang.HolProg 64 :=
.seq NamedBody579_78 NamedBody579_93

def NamedBody579_95 : StackLang.HolProg 64 :=
.seq NamedBody579_77 NamedBody579_94

def NamedBody579_96 : StackLang.HolProg 64 :=
.seq NamedBody579_76 NamedBody579_95

def NamedBody579_97 : StackLang.HolProg 64 :=
.seq NamedBody579_75 NamedBody579_96

def NamedBody579_98 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody579_99 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody579_100 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody579_101 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody579_102 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody579_103 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody579_104 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 1 10
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 10)))

def NamedBody579_105 : StackLang.HolProg 64 :=
.seq NamedBody579_103 NamedBody579_104

def NamedBody579_106 : StackLang.HolProg 64 :=
.seq NamedBody579_102 NamedBody579_105

def NamedBody579_107 : StackLang.HolProg 64 :=
.seq NamedBody579_101 NamedBody579_106

def NamedBody579_108 : StackLang.HolProg 64 :=
.seq NamedBody579_100 NamedBody579_107

def NamedBody579_109 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody579_110 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def NamedBody579_111 : StackLang.HolProg 64 :=
.seq NamedBody579_109 NamedBody579_110

def NamedBody579_112 : StackLang.HolProg 64 :=
.call (some (NamedBody579_108, 1, 579, 4)) (Sum.inl 572) (some (NamedBody579_111, 579, 5))

def NamedBody579_113 : StackLang.HolProg 64 :=
.seq NamedBody579_99 NamedBody579_112

def NamedBody579_114 : StackLang.HolProg 64 :=
.seq NamedBody579_98 NamedBody579_113

def NamedBody579_115 : StackLang.HolProg 64 :=
.seq NamedBody579_97 NamedBody579_114

def NamedBody579_116 : StackLang.HolProg 64 :=
.seq NamedBody579_68 NamedBody579_115

def NamedBody579_117 : StackLang.HolProg 64 :=
.seq NamedBody579_65 NamedBody579_116

def NamedBody579_118 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody579_119 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody579_120 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 10
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 1 40#64))

def NamedBody579_121 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody579_122 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody579_123 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 2029#64)

def NamedBody579_124 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody579_125 : StackLang.HolProg 64 :=
.seq NamedBody579_123 NamedBody579_124

def NamedBody579_126 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody579_127 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 2#64)

def NamedBody579_128 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 10

def NamedBody579_129 : StackLang.HolProg 64 :=
.seq NamedBody579_127 NamedBody579_128

def NamedBody579_130 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody579_131 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) NamedBody579_129 NamedBody579_130

def NamedBody579_132 : StackLang.HolProg 64 :=
.seq NamedBody579_126 NamedBody579_131

def NamedBody579_133 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def NamedBody579_134 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody579_135 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 579 7

def NamedBody579_136 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody579_137 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody579_138 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody579_139 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody579_140 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def NamedBody579_141 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def NamedBody579_142 : StackLang.HolProg 64 :=
.seq NamedBody579_140 NamedBody579_141

def NamedBody579_143 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def NamedBody579_144 : StackLang.HolProg 64 :=
.seq NamedBody579_142 NamedBody579_143

def NamedBody579_145 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody579_146 : StackLang.HolProg 64 :=
.seq NamedBody579_144 NamedBody579_145

def NamedBody579_147 : StackLang.HolProg 64 :=
.seq NamedBody579_139 NamedBody579_146

def NamedBody579_148 : StackLang.HolProg 64 :=
.seq NamedBody579_138 NamedBody579_147

def NamedBody579_149 : StackLang.HolProg 64 :=
.seq NamedBody579_137 NamedBody579_148

def NamedBody579_150 : StackLang.HolProg 64 :=
.seq NamedBody579_136 NamedBody579_149

def NamedBody579_151 : StackLang.HolProg 64 :=
.seq NamedBody579_135 NamedBody579_150

def NamedBody579_152 : StackLang.HolProg 64 :=
.seq NamedBody579_134 NamedBody579_151

def NamedBody579_153 : StackLang.HolProg 64 :=
.seq NamedBody579_133 NamedBody579_152

def NamedBody579_154 : StackLang.HolProg 64 :=
.seq NamedBody579_132 NamedBody579_153

def NamedBody579_155 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody579_156 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody579_157 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody579_158 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody579_159 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody579_160 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody579_161 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody579_162 : StackLang.HolProg 64 :=
.seq NamedBody579_160 NamedBody579_161

def NamedBody579_163 : StackLang.HolProg 64 :=
.seq NamedBody579_159 NamedBody579_162

def NamedBody579_164 : StackLang.HolProg 64 :=
.seq NamedBody579_158 NamedBody579_163

def NamedBody579_165 : StackLang.HolProg 64 :=
.seq NamedBody579_157 NamedBody579_164

def NamedBody579_166 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody579_167 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def NamedBody579_168 : StackLang.HolProg 64 :=
.seq NamedBody579_166 NamedBody579_167

def NamedBody579_169 : StackLang.HolProg 64 :=
.call (some (NamedBody579_165, 1, 579, 6)) (Sum.inl 477) (some (NamedBody579_168, 579, 7))

def NamedBody579_170 : StackLang.HolProg 64 :=
.seq NamedBody579_156 NamedBody579_169

def NamedBody579_171 : StackLang.HolProg 64 :=
.seq NamedBody579_155 NamedBody579_170

def NamedBody579_172 : StackLang.HolProg 64 :=
.seq NamedBody579_154 NamedBody579_171

def NamedBody579_173 : StackLang.HolProg 64 :=
.seq NamedBody579_125 NamedBody579_172

def NamedBody579_174 : StackLang.HolProg 64 :=
.seq NamedBody579_122 NamedBody579_173

def NamedBody579_175 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody579_176 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 1#64)

def NamedBody579_177 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody579_178 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody579_179 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 2030#64)

def NamedBody579_180 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody579_181 : StackLang.HolProg 64 :=
.seq NamedBody579_179 NamedBody579_180

def NamedBody579_182 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody579_183 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 2#64)

def NamedBody579_184 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 10

def NamedBody579_185 : StackLang.HolProg 64 :=
.seq NamedBody579_183 NamedBody579_184

def NamedBody579_186 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody579_187 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) NamedBody579_185 NamedBody579_186

def NamedBody579_188 : StackLang.HolProg 64 :=
.seq NamedBody579_182 NamedBody579_187

def NamedBody579_189 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def NamedBody579_190 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody579_191 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 579 9

def NamedBody579_192 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody579_193 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody579_194 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody579_195 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody579_196 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def NamedBody579_197 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def NamedBody579_198 : StackLang.HolProg 64 :=
.seq NamedBody579_196 NamedBody579_197

def NamedBody579_199 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def NamedBody579_200 : StackLang.HolProg 64 :=
.seq NamedBody579_198 NamedBody579_199

def NamedBody579_201 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody579_202 : StackLang.HolProg 64 :=
.seq NamedBody579_200 NamedBody579_201

def NamedBody579_203 : StackLang.HolProg 64 :=
.seq NamedBody579_195 NamedBody579_202

def NamedBody579_204 : StackLang.HolProg 64 :=
.seq NamedBody579_194 NamedBody579_203

def NamedBody579_205 : StackLang.HolProg 64 :=
.seq NamedBody579_193 NamedBody579_204

def NamedBody579_206 : StackLang.HolProg 64 :=
.seq NamedBody579_192 NamedBody579_205

def NamedBody579_207 : StackLang.HolProg 64 :=
.seq NamedBody579_191 NamedBody579_206

def NamedBody579_208 : StackLang.HolProg 64 :=
.seq NamedBody579_190 NamedBody579_207

def NamedBody579_209 : StackLang.HolProg 64 :=
.seq NamedBody579_189 NamedBody579_208

def NamedBody579_210 : StackLang.HolProg 64 :=
.seq NamedBody579_188 NamedBody579_209

def NamedBody579_211 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody579_212 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody579_213 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody579_214 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody579_215 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody579_216 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody579_217 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody579_218 : StackLang.HolProg 64 :=
.seq NamedBody579_216 NamedBody579_217

def NamedBody579_219 : StackLang.HolProg 64 :=
.seq NamedBody579_215 NamedBody579_218

def NamedBody579_220 : StackLang.HolProg 64 :=
.seq NamedBody579_214 NamedBody579_219

def NamedBody579_221 : StackLang.HolProg 64 :=
.seq NamedBody579_213 NamedBody579_220

def NamedBody579_222 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody579_223 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def NamedBody579_224 : StackLang.HolProg 64 :=
.seq NamedBody579_222 NamedBody579_223

def NamedBody579_225 : StackLang.HolProg 64 :=
.call (some (NamedBody579_221, 1, 579, 8)) (Sum.inl 490) (some (NamedBody579_224, 579, 9))

def NamedBody579_226 : StackLang.HolProg 64 :=
.seq NamedBody579_212 NamedBody579_225

def NamedBody579_227 : StackLang.HolProg 64 :=
.seq NamedBody579_211 NamedBody579_226

def NamedBody579_228 : StackLang.HolProg 64 :=
.seq NamedBody579_210 NamedBody579_227

def NamedBody579_229 : StackLang.HolProg 64 :=
.seq NamedBody579_181 NamedBody579_228

def NamedBody579_230 : StackLang.HolProg 64 :=
.seq NamedBody579_178 NamedBody579_229

def NamedBody579_231 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody579_232 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 0#64)

def NamedBody579_233 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody579_234 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 16#64)))

def NamedBody579_235 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 1

def NamedBody579_236 : StackLang.HolProg 64 :=
.seq NamedBody579_234 NamedBody579_235

def NamedBody579_237 : StackLang.HolProg 64 :=
.seq NamedBody579_233 NamedBody579_236

def NamedBody579_238 : StackLang.HolProg 64 :=
.seq NamedBody579_232 NamedBody579_237

def NamedBody579_239 : StackLang.HolProg 64 :=
.seq NamedBody579_231 NamedBody579_238

def NamedBody579_240 : StackLang.HolProg 64 :=
.seq NamedBody579_230 NamedBody579_239

def NamedBody579_241 : StackLang.HolProg 64 :=
.seq NamedBody579_177 NamedBody579_240

def NamedBody579_242 : StackLang.HolProg 64 :=
.seq NamedBody579_176 NamedBody579_241

def NamedBody579_243 : StackLang.HolProg 64 :=
.seq NamedBody579_175 NamedBody579_242

def NamedBody579_244 : StackLang.HolProg 64 :=
.seq NamedBody579_174 NamedBody579_243

def NamedBody579_245 : StackLang.HolProg 64 :=
.seq NamedBody579_121 NamedBody579_244

def NamedBody579_246 : StackLang.HolProg 64 :=
.seq NamedBody579_120 NamedBody579_245

def NamedBody579_247 : StackLang.HolProg 64 :=
.seq NamedBody579_119 NamedBody579_246

def NamedBody579_248 : StackLang.HolProg 64 :=
.seq NamedBody579_118 NamedBody579_247

def NamedBody579_249 : StackLang.HolProg 64 :=
.seq NamedBody579_117 NamedBody579_248

def NamedBody579_250 : StackLang.HolProg 64 :=
.seq NamedBody579_64 NamedBody579_249

def NamedBody579_251 : StackLang.HolProg 64 :=
.seq NamedBody579_63 NamedBody579_250

def NamedBody579_252 : StackLang.HolProg 64 :=
.seq NamedBody579_62 NamedBody579_251

def NamedBody579_253 : StackLang.HolProg 64 :=
.seq NamedBody579_9 NamedBody579_252

def NamedBody579_254 : StackLang.HolProg 64 :=
.seq NamedBody579_8 NamedBody579_253

def NamedBody579_255 : StackLang.HolProg 64 :=
.seq NamedBody579_7 NamedBody579_254

def NamedBody579_256 : StackLang.HolProg 64 :=
.seq NamedBody579_6 NamedBody579_255

def Named579 : Nat × StackLang.HolProg 64 := (579, NamedBody579_256)
theorem Named579_eq : StackNames.progCompEntryHOL RiscVConfig.riscvNames Removed579 = Named579 := by
  kernel_rfl
#print axioms Named579_eq
end InitECandidate.Proofs.BackendStages
