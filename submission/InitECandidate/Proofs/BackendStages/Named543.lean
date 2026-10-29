import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.BackendStages.Removed543
import Flapjack.Compiler.Backend.Backend
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
namespace InitECandidate.Proofs.BackendStages
def NamedBody543_0 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 16#64)))

def NamedBody543_1 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 2#64)

def NamedBody543_2 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 10

def NamedBody543_3 : StackLang.HolProg 64 :=
.seq NamedBody543_1 NamedBody543_2

def NamedBody543_4 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody543_5 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) NamedBody543_3 NamedBody543_4

def NamedBody543_6 : StackLang.HolProg 64 :=
.seq NamedBody543_0 NamedBody543_5

def NamedBody543_7 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody543_8 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 3#64)

def NamedBody543_9 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody543_10 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody543_11 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1795#64)

def NamedBody543_12 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody543_13 : StackLang.HolProg 64 :=
.seq NamedBody543_11 NamedBody543_12

def NamedBody543_14 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody543_15 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 2#64)

def NamedBody543_16 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 10

def NamedBody543_17 : StackLang.HolProg 64 :=
.seq NamedBody543_15 NamedBody543_16

def NamedBody543_18 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody543_19 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) NamedBody543_17 NamedBody543_18

def NamedBody543_20 : StackLang.HolProg 64 :=
.seq NamedBody543_14 NamedBody543_19

def NamedBody543_21 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def NamedBody543_22 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody543_23 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 543 3

def NamedBody543_24 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody543_25 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody543_26 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody543_27 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody543_28 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def NamedBody543_29 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def NamedBody543_30 : StackLang.HolProg 64 :=
.seq NamedBody543_28 NamedBody543_29

def NamedBody543_31 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def NamedBody543_32 : StackLang.HolProg 64 :=
.seq NamedBody543_30 NamedBody543_31

def NamedBody543_33 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody543_34 : StackLang.HolProg 64 :=
.seq NamedBody543_32 NamedBody543_33

def NamedBody543_35 : StackLang.HolProg 64 :=
.seq NamedBody543_27 NamedBody543_34

def NamedBody543_36 : StackLang.HolProg 64 :=
.seq NamedBody543_26 NamedBody543_35

def NamedBody543_37 : StackLang.HolProg 64 :=
.seq NamedBody543_25 NamedBody543_36

def NamedBody543_38 : StackLang.HolProg 64 :=
.seq NamedBody543_24 NamedBody543_37

def NamedBody543_39 : StackLang.HolProg 64 :=
.seq NamedBody543_23 NamedBody543_38

def NamedBody543_40 : StackLang.HolProg 64 :=
.seq NamedBody543_22 NamedBody543_39

def NamedBody543_41 : StackLang.HolProg 64 :=
.seq NamedBody543_21 NamedBody543_40

def NamedBody543_42 : StackLang.HolProg 64 :=
.seq NamedBody543_20 NamedBody543_41

def NamedBody543_43 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody543_44 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody543_45 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody543_46 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody543_47 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody543_48 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody543_49 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody543_50 : StackLang.HolProg 64 :=
.seq NamedBody543_48 NamedBody543_49

def NamedBody543_51 : StackLang.HolProg 64 :=
.seq NamedBody543_47 NamedBody543_50

def NamedBody543_52 : StackLang.HolProg 64 :=
.seq NamedBody543_46 NamedBody543_51

def NamedBody543_53 : StackLang.HolProg 64 :=
.seq NamedBody543_45 NamedBody543_52

def NamedBody543_54 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody543_55 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def NamedBody543_56 : StackLang.HolProg 64 :=
.seq NamedBody543_54 NamedBody543_55

def NamedBody543_57 : StackLang.HolProg 64 :=
.call (some (NamedBody543_53, 1, 543, 2)) (Sum.inl 470) (some (NamedBody543_56, 543, 3))

def NamedBody543_58 : StackLang.HolProg 64 :=
.seq NamedBody543_44 NamedBody543_57

def NamedBody543_59 : StackLang.HolProg 64 :=
.seq NamedBody543_43 NamedBody543_58

def NamedBody543_60 : StackLang.HolProg 64 :=
.seq NamedBody543_42 NamedBody543_59

def NamedBody543_61 : StackLang.HolProg 64 :=
.seq NamedBody543_13 NamedBody543_60

def NamedBody543_62 : StackLang.HolProg 64 :=
.seq NamedBody543_10 NamedBody543_61

def NamedBody543_63 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody543_64 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody543_65 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody543_66 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1796#64)

def NamedBody543_67 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody543_68 : StackLang.HolProg 64 :=
.seq NamedBody543_66 NamedBody543_67

def NamedBody543_69 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody543_70 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 2#64)

def NamedBody543_71 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 10

def NamedBody543_72 : StackLang.HolProg 64 :=
.seq NamedBody543_70 NamedBody543_71

def NamedBody543_73 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody543_74 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) NamedBody543_72 NamedBody543_73

def NamedBody543_75 : StackLang.HolProg 64 :=
.seq NamedBody543_69 NamedBody543_74

def NamedBody543_76 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def NamedBody543_77 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody543_78 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 543 5

def NamedBody543_79 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody543_80 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody543_81 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody543_82 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody543_83 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def NamedBody543_84 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def NamedBody543_85 : StackLang.HolProg 64 :=
.seq NamedBody543_83 NamedBody543_84

def NamedBody543_86 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def NamedBody543_87 : StackLang.HolProg 64 :=
.seq NamedBody543_85 NamedBody543_86

def NamedBody543_88 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody543_89 : StackLang.HolProg 64 :=
.seq NamedBody543_87 NamedBody543_88

def NamedBody543_90 : StackLang.HolProg 64 :=
.seq NamedBody543_82 NamedBody543_89

def NamedBody543_91 : StackLang.HolProg 64 :=
.seq NamedBody543_81 NamedBody543_90

def NamedBody543_92 : StackLang.HolProg 64 :=
.seq NamedBody543_80 NamedBody543_91

def NamedBody543_93 : StackLang.HolProg 64 :=
.seq NamedBody543_79 NamedBody543_92

def NamedBody543_94 : StackLang.HolProg 64 :=
.seq NamedBody543_78 NamedBody543_93

def NamedBody543_95 : StackLang.HolProg 64 :=
.seq NamedBody543_77 NamedBody543_94

def NamedBody543_96 : StackLang.HolProg 64 :=
.seq NamedBody543_76 NamedBody543_95

def NamedBody543_97 : StackLang.HolProg 64 :=
.seq NamedBody543_75 NamedBody543_96

def NamedBody543_98 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody543_99 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody543_100 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody543_101 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody543_102 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody543_103 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody543_104 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 1 10
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 10)))

def NamedBody543_105 : StackLang.HolProg 64 :=
.seq NamedBody543_103 NamedBody543_104

def NamedBody543_106 : StackLang.HolProg 64 :=
.seq NamedBody543_102 NamedBody543_105

def NamedBody543_107 : StackLang.HolProg 64 :=
.seq NamedBody543_101 NamedBody543_106

def NamedBody543_108 : StackLang.HolProg 64 :=
.seq NamedBody543_100 NamedBody543_107

def NamedBody543_109 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody543_110 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def NamedBody543_111 : StackLang.HolProg 64 :=
.seq NamedBody543_109 NamedBody543_110

def NamedBody543_112 : StackLang.HolProg 64 :=
.call (some (NamedBody543_108, 1, 543, 4)) (Sum.inl 540) (some (NamedBody543_111, 543, 5))

def NamedBody543_113 : StackLang.HolProg 64 :=
.seq NamedBody543_99 NamedBody543_112

def NamedBody543_114 : StackLang.HolProg 64 :=
.seq NamedBody543_98 NamedBody543_113

def NamedBody543_115 : StackLang.HolProg 64 :=
.seq NamedBody543_97 NamedBody543_114

def NamedBody543_116 : StackLang.HolProg 64 :=
.seq NamedBody543_68 NamedBody543_115

def NamedBody543_117 : StackLang.HolProg 64 :=
.seq NamedBody543_65 NamedBody543_116

def NamedBody543_118 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody543_119 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 10 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def NamedBody543_120 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody543_121 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1797#64)

def NamedBody543_122 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody543_123 : StackLang.HolProg 64 :=
.seq NamedBody543_121 NamedBody543_122

def NamedBody543_124 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody543_125 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 2#64)

def NamedBody543_126 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 10

def NamedBody543_127 : StackLang.HolProg 64 :=
.seq NamedBody543_125 NamedBody543_126

def NamedBody543_128 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody543_129 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) NamedBody543_127 NamedBody543_128

def NamedBody543_130 : StackLang.HolProg 64 :=
.seq NamedBody543_124 NamedBody543_129

def NamedBody543_131 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def NamedBody543_132 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody543_133 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 543 7

def NamedBody543_134 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody543_135 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody543_136 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody543_137 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody543_138 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def NamedBody543_139 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def NamedBody543_140 : StackLang.HolProg 64 :=
.seq NamedBody543_138 NamedBody543_139

def NamedBody543_141 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def NamedBody543_142 : StackLang.HolProg 64 :=
.seq NamedBody543_140 NamedBody543_141

def NamedBody543_143 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody543_144 : StackLang.HolProg 64 :=
.seq NamedBody543_142 NamedBody543_143

def NamedBody543_145 : StackLang.HolProg 64 :=
.seq NamedBody543_137 NamedBody543_144

def NamedBody543_146 : StackLang.HolProg 64 :=
.seq NamedBody543_136 NamedBody543_145

def NamedBody543_147 : StackLang.HolProg 64 :=
.seq NamedBody543_135 NamedBody543_146

def NamedBody543_148 : StackLang.HolProg 64 :=
.seq NamedBody543_134 NamedBody543_147

def NamedBody543_149 : StackLang.HolProg 64 :=
.seq NamedBody543_133 NamedBody543_148

def NamedBody543_150 : StackLang.HolProg 64 :=
.seq NamedBody543_132 NamedBody543_149

def NamedBody543_151 : StackLang.HolProg 64 :=
.seq NamedBody543_131 NamedBody543_150

def NamedBody543_152 : StackLang.HolProg 64 :=
.seq NamedBody543_130 NamedBody543_151

def NamedBody543_153 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody543_154 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody543_155 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody543_156 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody543_157 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody543_158 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody543_159 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 11 10
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 10)))

def NamedBody543_160 : StackLang.HolProg 64 :=
.seq NamedBody543_158 NamedBody543_159

def NamedBody543_161 : StackLang.HolProg 64 :=
.seq NamedBody543_157 NamedBody543_160

def NamedBody543_162 : StackLang.HolProg 64 :=
.seq NamedBody543_156 NamedBody543_161

def NamedBody543_163 : StackLang.HolProg 64 :=
.seq NamedBody543_155 NamedBody543_162

def NamedBody543_164 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody543_165 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def NamedBody543_166 : StackLang.HolProg 64 :=
.seq NamedBody543_164 NamedBody543_165

def NamedBody543_167 : StackLang.HolProg 64 :=
.call (some (NamedBody543_163, 1, 543, 6)) (Sum.inl 541) (some (NamedBody543_166, 543, 7))

def NamedBody543_168 : StackLang.HolProg 64 :=
.seq NamedBody543_154 NamedBody543_167

def NamedBody543_169 : StackLang.HolProg 64 :=
.seq NamedBody543_153 NamedBody543_168

def NamedBody543_170 : StackLang.HolProg 64 :=
.seq NamedBody543_152 NamedBody543_169

def NamedBody543_171 : StackLang.HolProg 64 :=
.seq NamedBody543_123 NamedBody543_170

def NamedBody543_172 : StackLang.HolProg 64 :=
.seq NamedBody543_120 NamedBody543_171

def NamedBody543_173 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody543_174 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551592#64))

def NamedBody543_175 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsl 1 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 1#64)))

def NamedBody543_176 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 1 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 26)))

def NamedBody543_177 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 1 18446744073709551360#64))

def NamedBody543_178 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 1 16#64))

def NamedBody543_179 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody543_180 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 10 11
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 1#64)))

def NamedBody543_181 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody543_182 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 2#64)

def NamedBody543_183 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody543_184 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551480#64))

def NamedBody543_185 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 8#64)

def NamedBody543_186 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody543_187 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def NamedBody543_188 : StackLang.HolProg 64 :=
.seq NamedBody543_186 NamedBody543_187

def NamedBody543_189 : StackLang.HolProg 64 :=
.seq NamedBody543_185 NamedBody543_188

def NamedBody543_190 : StackLang.HolProg 64 :=
.seq NamedBody543_184 NamedBody543_189

def NamedBody543_191 : StackLang.HolProg 64 :=
.seq NamedBody543_183 NamedBody543_190

def NamedBody543_192 : StackLang.HolProg 64 :=
.seq NamedBody543_182 NamedBody543_191

def NamedBody543_193 : StackLang.HolProg 64 :=
.seq NamedBody543_181 NamedBody543_192

def NamedBody543_194 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody543_195 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 1 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 10) NamedBody543_193 NamedBody543_194

def NamedBody543_196 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody543_197 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody543_198 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody543_199 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 0#64)

def NamedBody543_200 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody543_201 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody543_202 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1798#64)

def NamedBody543_203 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody543_204 : StackLang.HolProg 64 :=
.seq NamedBody543_202 NamedBody543_203

def NamedBody543_205 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody543_206 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 2#64)

def NamedBody543_207 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 10

def NamedBody543_208 : StackLang.HolProg 64 :=
.seq NamedBody543_206 NamedBody543_207

def NamedBody543_209 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody543_210 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) NamedBody543_208 NamedBody543_209

def NamedBody543_211 : StackLang.HolProg 64 :=
.seq NamedBody543_205 NamedBody543_210

def NamedBody543_212 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def NamedBody543_213 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody543_214 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 543 9

def NamedBody543_215 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody543_216 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody543_217 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody543_218 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody543_219 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def NamedBody543_220 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def NamedBody543_221 : StackLang.HolProg 64 :=
.seq NamedBody543_219 NamedBody543_220

def NamedBody543_222 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def NamedBody543_223 : StackLang.HolProg 64 :=
.seq NamedBody543_221 NamedBody543_222

def NamedBody543_224 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody543_225 : StackLang.HolProg 64 :=
.seq NamedBody543_223 NamedBody543_224

def NamedBody543_226 : StackLang.HolProg 64 :=
.seq NamedBody543_218 NamedBody543_225

def NamedBody543_227 : StackLang.HolProg 64 :=
.seq NamedBody543_217 NamedBody543_226

def NamedBody543_228 : StackLang.HolProg 64 :=
.seq NamedBody543_216 NamedBody543_227

def NamedBody543_229 : StackLang.HolProg 64 :=
.seq NamedBody543_215 NamedBody543_228

def NamedBody543_230 : StackLang.HolProg 64 :=
.seq NamedBody543_214 NamedBody543_229

def NamedBody543_231 : StackLang.HolProg 64 :=
.seq NamedBody543_213 NamedBody543_230

def NamedBody543_232 : StackLang.HolProg 64 :=
.seq NamedBody543_212 NamedBody543_231

def NamedBody543_233 : StackLang.HolProg 64 :=
.seq NamedBody543_211 NamedBody543_232

def NamedBody543_234 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody543_235 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody543_236 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody543_237 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody543_238 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody543_239 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody543_240 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody543_241 : StackLang.HolProg 64 :=
.seq NamedBody543_239 NamedBody543_240

def NamedBody543_242 : StackLang.HolProg 64 :=
.seq NamedBody543_238 NamedBody543_241

def NamedBody543_243 : StackLang.HolProg 64 :=
.seq NamedBody543_237 NamedBody543_242

def NamedBody543_244 : StackLang.HolProg 64 :=
.seq NamedBody543_236 NamedBody543_243

def NamedBody543_245 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody543_246 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def NamedBody543_247 : StackLang.HolProg 64 :=
.seq NamedBody543_245 NamedBody543_246

def NamedBody543_248 : StackLang.HolProg 64 :=
.call (some (NamedBody543_244, 1, 543, 8)) (Sum.inl 538) (some (NamedBody543_247, 543, 9))

def NamedBody543_249 : StackLang.HolProg 64 :=
.seq NamedBody543_235 NamedBody543_248

def NamedBody543_250 : StackLang.HolProg 64 :=
.seq NamedBody543_234 NamedBody543_249

def NamedBody543_251 : StackLang.HolProg 64 :=
.seq NamedBody543_233 NamedBody543_250

def NamedBody543_252 : StackLang.HolProg 64 :=
.seq NamedBody543_204 NamedBody543_251

def NamedBody543_253 : StackLang.HolProg 64 :=
.seq NamedBody543_201 NamedBody543_252

def NamedBody543_254 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody543_255 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 2#64)

def NamedBody543_256 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody543_257 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody543_258 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1799#64)

def NamedBody543_259 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody543_260 : StackLang.HolProg 64 :=
.seq NamedBody543_258 NamedBody543_259

def NamedBody543_261 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody543_262 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 2#64)

def NamedBody543_263 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 10

def NamedBody543_264 : StackLang.HolProg 64 :=
.seq NamedBody543_262 NamedBody543_263

def NamedBody543_265 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody543_266 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) NamedBody543_264 NamedBody543_265

def NamedBody543_267 : StackLang.HolProg 64 :=
.seq NamedBody543_261 NamedBody543_266

def NamedBody543_268 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def NamedBody543_269 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody543_270 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 543 11

def NamedBody543_271 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody543_272 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody543_273 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody543_274 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody543_275 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def NamedBody543_276 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def NamedBody543_277 : StackLang.HolProg 64 :=
.seq NamedBody543_275 NamedBody543_276

def NamedBody543_278 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def NamedBody543_279 : StackLang.HolProg 64 :=
.seq NamedBody543_277 NamedBody543_278

def NamedBody543_280 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody543_281 : StackLang.HolProg 64 :=
.seq NamedBody543_279 NamedBody543_280

def NamedBody543_282 : StackLang.HolProg 64 :=
.seq NamedBody543_274 NamedBody543_281

def NamedBody543_283 : StackLang.HolProg 64 :=
.seq NamedBody543_273 NamedBody543_282

def NamedBody543_284 : StackLang.HolProg 64 :=
.seq NamedBody543_272 NamedBody543_283

def NamedBody543_285 : StackLang.HolProg 64 :=
.seq NamedBody543_271 NamedBody543_284

def NamedBody543_286 : StackLang.HolProg 64 :=
.seq NamedBody543_270 NamedBody543_285

def NamedBody543_287 : StackLang.HolProg 64 :=
.seq NamedBody543_269 NamedBody543_286

def NamedBody543_288 : StackLang.HolProg 64 :=
.seq NamedBody543_268 NamedBody543_287

def NamedBody543_289 : StackLang.HolProg 64 :=
.seq NamedBody543_267 NamedBody543_288

def NamedBody543_290 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody543_291 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody543_292 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody543_293 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody543_294 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody543_295 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody543_296 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody543_297 : StackLang.HolProg 64 :=
.seq NamedBody543_295 NamedBody543_296

def NamedBody543_298 : StackLang.HolProg 64 :=
.seq NamedBody543_294 NamedBody543_297

def NamedBody543_299 : StackLang.HolProg 64 :=
.seq NamedBody543_293 NamedBody543_298

def NamedBody543_300 : StackLang.HolProg 64 :=
.seq NamedBody543_292 NamedBody543_299

def NamedBody543_301 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody543_302 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def NamedBody543_303 : StackLang.HolProg 64 :=
.seq NamedBody543_301 NamedBody543_302

def NamedBody543_304 : StackLang.HolProg 64 :=
.call (some (NamedBody543_300, 1, 543, 10)) (Sum.inl 490) (some (NamedBody543_303, 543, 11))

def NamedBody543_305 : StackLang.HolProg 64 :=
.seq NamedBody543_291 NamedBody543_304

def NamedBody543_306 : StackLang.HolProg 64 :=
.seq NamedBody543_290 NamedBody543_305

def NamedBody543_307 : StackLang.HolProg 64 :=
.seq NamedBody543_289 NamedBody543_306

def NamedBody543_308 : StackLang.HolProg 64 :=
.seq NamedBody543_260 NamedBody543_307

def NamedBody543_309 : StackLang.HolProg 64 :=
.seq NamedBody543_257 NamedBody543_308

def NamedBody543_310 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody543_311 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 0#64)

def NamedBody543_312 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody543_313 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 16#64)))

def NamedBody543_314 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 1

def NamedBody543_315 : StackLang.HolProg 64 :=
.seq NamedBody543_313 NamedBody543_314

def NamedBody543_316 : StackLang.HolProg 64 :=
.seq NamedBody543_312 NamedBody543_315

def NamedBody543_317 : StackLang.HolProg 64 :=
.seq NamedBody543_311 NamedBody543_316

def NamedBody543_318 : StackLang.HolProg 64 :=
.seq NamedBody543_310 NamedBody543_317

def NamedBody543_319 : StackLang.HolProg 64 :=
.seq NamedBody543_309 NamedBody543_318

def NamedBody543_320 : StackLang.HolProg 64 :=
.seq NamedBody543_256 NamedBody543_319

def NamedBody543_321 : StackLang.HolProg 64 :=
.seq NamedBody543_255 NamedBody543_320

def NamedBody543_322 : StackLang.HolProg 64 :=
.seq NamedBody543_254 NamedBody543_321

def NamedBody543_323 : StackLang.HolProg 64 :=
.seq NamedBody543_253 NamedBody543_322

def NamedBody543_324 : StackLang.HolProg 64 :=
.seq NamedBody543_200 NamedBody543_323

def NamedBody543_325 : StackLang.HolProg 64 :=
.seq NamedBody543_199 NamedBody543_324

def NamedBody543_326 : StackLang.HolProg 64 :=
.seq NamedBody543_198 NamedBody543_325

def NamedBody543_327 : StackLang.HolProg 64 :=
.seq NamedBody543_197 NamedBody543_326

def NamedBody543_328 : StackLang.HolProg 64 :=
.seq NamedBody543_196 NamedBody543_327

def NamedBody543_329 : StackLang.HolProg 64 :=
.seq NamedBody543_195 NamedBody543_328

def NamedBody543_330 : StackLang.HolProg 64 :=
.seq NamedBody543_180 NamedBody543_329

def NamedBody543_331 : StackLang.HolProg 64 :=
.seq NamedBody543_179 NamedBody543_330

def NamedBody543_332 : StackLang.HolProg 64 :=
.seq NamedBody543_178 NamedBody543_331

def NamedBody543_333 : StackLang.HolProg 64 :=
.seq NamedBody543_177 NamedBody543_332

def NamedBody543_334 : StackLang.HolProg 64 :=
.seq NamedBody543_176 NamedBody543_333

def NamedBody543_335 : StackLang.HolProg 64 :=
.seq NamedBody543_175 NamedBody543_334

def NamedBody543_336 : StackLang.HolProg 64 :=
.seq NamedBody543_174 NamedBody543_335

def NamedBody543_337 : StackLang.HolProg 64 :=
.seq NamedBody543_173 NamedBody543_336

def NamedBody543_338 : StackLang.HolProg 64 :=
.seq NamedBody543_172 NamedBody543_337

def NamedBody543_339 : StackLang.HolProg 64 :=
.seq NamedBody543_119 NamedBody543_338

def NamedBody543_340 : StackLang.HolProg 64 :=
.seq NamedBody543_118 NamedBody543_339

def NamedBody543_341 : StackLang.HolProg 64 :=
.seq NamedBody543_117 NamedBody543_340

def NamedBody543_342 : StackLang.HolProg 64 :=
.seq NamedBody543_64 NamedBody543_341

def NamedBody543_343 : StackLang.HolProg 64 :=
.seq NamedBody543_63 NamedBody543_342

def NamedBody543_344 : StackLang.HolProg 64 :=
.seq NamedBody543_62 NamedBody543_343

def NamedBody543_345 : StackLang.HolProg 64 :=
.seq NamedBody543_9 NamedBody543_344

def NamedBody543_346 : StackLang.HolProg 64 :=
.seq NamedBody543_8 NamedBody543_345

def NamedBody543_347 : StackLang.HolProg 64 :=
.seq NamedBody543_7 NamedBody543_346

def NamedBody543_348 : StackLang.HolProg 64 :=
.seq NamedBody543_6 NamedBody543_347

def Named543 : Nat × StackLang.HolProg 64 := (543, NamedBody543_348)
theorem Named543_eq : StackNames.progCompEntryHOL RiscVConfig.riscvNames Removed543 = Named543 := by
  kernel_rfl
#print axioms Named543_eq
end InitECandidate.Proofs.BackendStages
