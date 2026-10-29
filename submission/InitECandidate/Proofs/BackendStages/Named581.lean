import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.BackendStages.Removed581
import Flapjack.Compiler.Backend.Backend
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
namespace InitECandidate.Proofs.BackendStages
def NamedBody581_0 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 16#64)))

def NamedBody581_1 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 2#64)

def NamedBody581_2 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 10

def NamedBody581_3 : StackLang.HolProg 64 :=
.seq NamedBody581_1 NamedBody581_2

def NamedBody581_4 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody581_5 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) NamedBody581_3 NamedBody581_4

def NamedBody581_6 : StackLang.HolProg 64 :=
.seq NamedBody581_0 NamedBody581_5

def NamedBody581_7 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody581_8 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 2#64)

def NamedBody581_9 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody581_10 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody581_11 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 2035#64)

def NamedBody581_12 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody581_13 : StackLang.HolProg 64 :=
.seq NamedBody581_11 NamedBody581_12

def NamedBody581_14 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody581_15 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 2#64)

def NamedBody581_16 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 10

def NamedBody581_17 : StackLang.HolProg 64 :=
.seq NamedBody581_15 NamedBody581_16

def NamedBody581_18 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody581_19 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) NamedBody581_17 NamedBody581_18

def NamedBody581_20 : StackLang.HolProg 64 :=
.seq NamedBody581_14 NamedBody581_19

def NamedBody581_21 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def NamedBody581_22 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody581_23 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 581 3

def NamedBody581_24 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody581_25 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody581_26 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody581_27 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody581_28 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def NamedBody581_29 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def NamedBody581_30 : StackLang.HolProg 64 :=
.seq NamedBody581_28 NamedBody581_29

def NamedBody581_31 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def NamedBody581_32 : StackLang.HolProg 64 :=
.seq NamedBody581_30 NamedBody581_31

def NamedBody581_33 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody581_34 : StackLang.HolProg 64 :=
.seq NamedBody581_32 NamedBody581_33

def NamedBody581_35 : StackLang.HolProg 64 :=
.seq NamedBody581_27 NamedBody581_34

def NamedBody581_36 : StackLang.HolProg 64 :=
.seq NamedBody581_26 NamedBody581_35

def NamedBody581_37 : StackLang.HolProg 64 :=
.seq NamedBody581_25 NamedBody581_36

def NamedBody581_38 : StackLang.HolProg 64 :=
.seq NamedBody581_24 NamedBody581_37

def NamedBody581_39 : StackLang.HolProg 64 :=
.seq NamedBody581_23 NamedBody581_38

def NamedBody581_40 : StackLang.HolProg 64 :=
.seq NamedBody581_22 NamedBody581_39

def NamedBody581_41 : StackLang.HolProg 64 :=
.seq NamedBody581_21 NamedBody581_40

def NamedBody581_42 : StackLang.HolProg 64 :=
.seq NamedBody581_20 NamedBody581_41

def NamedBody581_43 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody581_44 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody581_45 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody581_46 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody581_47 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody581_48 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody581_49 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody581_50 : StackLang.HolProg 64 :=
.seq NamedBody581_48 NamedBody581_49

def NamedBody581_51 : StackLang.HolProg 64 :=
.seq NamedBody581_47 NamedBody581_50

def NamedBody581_52 : StackLang.HolProg 64 :=
.seq NamedBody581_46 NamedBody581_51

def NamedBody581_53 : StackLang.HolProg 64 :=
.seq NamedBody581_45 NamedBody581_52

def NamedBody581_54 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody581_55 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def NamedBody581_56 : StackLang.HolProg 64 :=
.seq NamedBody581_54 NamedBody581_55

def NamedBody581_57 : StackLang.HolProg 64 :=
.call (some (NamedBody581_53, 1, 581, 2)) (Sum.inl 470) (some (NamedBody581_56, 581, 3))

def NamedBody581_58 : StackLang.HolProg 64 :=
.seq NamedBody581_44 NamedBody581_57

def NamedBody581_59 : StackLang.HolProg 64 :=
.seq NamedBody581_43 NamedBody581_58

def NamedBody581_60 : StackLang.HolProg 64 :=
.seq NamedBody581_42 NamedBody581_59

def NamedBody581_61 : StackLang.HolProg 64 :=
.seq NamedBody581_13 NamedBody581_60

def NamedBody581_62 : StackLang.HolProg 64 :=
.seq NamedBody581_10 NamedBody581_61

def NamedBody581_63 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody581_64 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody581_65 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody581_66 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 2036#64)

def NamedBody581_67 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody581_68 : StackLang.HolProg 64 :=
.seq NamedBody581_66 NamedBody581_67

def NamedBody581_69 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody581_70 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 2#64)

def NamedBody581_71 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 10

def NamedBody581_72 : StackLang.HolProg 64 :=
.seq NamedBody581_70 NamedBody581_71

def NamedBody581_73 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody581_74 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) NamedBody581_72 NamedBody581_73

def NamedBody581_75 : StackLang.HolProg 64 :=
.seq NamedBody581_69 NamedBody581_74

def NamedBody581_76 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def NamedBody581_77 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody581_78 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 581 5

def NamedBody581_79 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody581_80 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody581_81 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody581_82 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody581_83 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def NamedBody581_84 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def NamedBody581_85 : StackLang.HolProg 64 :=
.seq NamedBody581_83 NamedBody581_84

def NamedBody581_86 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def NamedBody581_87 : StackLang.HolProg 64 :=
.seq NamedBody581_85 NamedBody581_86

def NamedBody581_88 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody581_89 : StackLang.HolProg 64 :=
.seq NamedBody581_87 NamedBody581_88

def NamedBody581_90 : StackLang.HolProg 64 :=
.seq NamedBody581_82 NamedBody581_89

def NamedBody581_91 : StackLang.HolProg 64 :=
.seq NamedBody581_81 NamedBody581_90

def NamedBody581_92 : StackLang.HolProg 64 :=
.seq NamedBody581_80 NamedBody581_91

def NamedBody581_93 : StackLang.HolProg 64 :=
.seq NamedBody581_79 NamedBody581_92

def NamedBody581_94 : StackLang.HolProg 64 :=
.seq NamedBody581_78 NamedBody581_93

def NamedBody581_95 : StackLang.HolProg 64 :=
.seq NamedBody581_77 NamedBody581_94

def NamedBody581_96 : StackLang.HolProg 64 :=
.seq NamedBody581_76 NamedBody581_95

def NamedBody581_97 : StackLang.HolProg 64 :=
.seq NamedBody581_75 NamedBody581_96

def NamedBody581_98 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody581_99 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody581_100 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody581_101 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody581_102 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody581_103 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody581_104 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 1 10
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 10)))

def NamedBody581_105 : StackLang.HolProg 64 :=
.seq NamedBody581_103 NamedBody581_104

def NamedBody581_106 : StackLang.HolProg 64 :=
.seq NamedBody581_102 NamedBody581_105

def NamedBody581_107 : StackLang.HolProg 64 :=
.seq NamedBody581_101 NamedBody581_106

def NamedBody581_108 : StackLang.HolProg 64 :=
.seq NamedBody581_100 NamedBody581_107

def NamedBody581_109 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody581_110 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def NamedBody581_111 : StackLang.HolProg 64 :=
.seq NamedBody581_109 NamedBody581_110

def NamedBody581_112 : StackLang.HolProg 64 :=
.call (some (NamedBody581_108, 1, 581, 4)) (Sum.inl 572) (some (NamedBody581_111, 581, 5))

def NamedBody581_113 : StackLang.HolProg 64 :=
.seq NamedBody581_99 NamedBody581_112

def NamedBody581_114 : StackLang.HolProg 64 :=
.seq NamedBody581_98 NamedBody581_113

def NamedBody581_115 : StackLang.HolProg 64 :=
.seq NamedBody581_97 NamedBody581_114

def NamedBody581_116 : StackLang.HolProg 64 :=
.seq NamedBody581_68 NamedBody581_115

def NamedBody581_117 : StackLang.HolProg 64 :=
.seq NamedBody581_65 NamedBody581_116

def NamedBody581_118 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody581_119 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody581_120 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 10
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 1 0#64))

def NamedBody581_121 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody581_122 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody581_123 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 2037#64)

def NamedBody581_124 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody581_125 : StackLang.HolProg 64 :=
.seq NamedBody581_123 NamedBody581_124

def NamedBody581_126 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody581_127 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 2#64)

def NamedBody581_128 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 10

def NamedBody581_129 : StackLang.HolProg 64 :=
.seq NamedBody581_127 NamedBody581_128

def NamedBody581_130 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody581_131 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) NamedBody581_129 NamedBody581_130

def NamedBody581_132 : StackLang.HolProg 64 :=
.seq NamedBody581_126 NamedBody581_131

def NamedBody581_133 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def NamedBody581_134 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody581_135 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 581 7

def NamedBody581_136 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody581_137 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody581_138 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody581_139 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody581_140 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def NamedBody581_141 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def NamedBody581_142 : StackLang.HolProg 64 :=
.seq NamedBody581_140 NamedBody581_141

def NamedBody581_143 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def NamedBody581_144 : StackLang.HolProg 64 :=
.seq NamedBody581_142 NamedBody581_143

def NamedBody581_145 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody581_146 : StackLang.HolProg 64 :=
.seq NamedBody581_144 NamedBody581_145

def NamedBody581_147 : StackLang.HolProg 64 :=
.seq NamedBody581_139 NamedBody581_146

def NamedBody581_148 : StackLang.HolProg 64 :=
.seq NamedBody581_138 NamedBody581_147

def NamedBody581_149 : StackLang.HolProg 64 :=
.seq NamedBody581_137 NamedBody581_148

def NamedBody581_150 : StackLang.HolProg 64 :=
.seq NamedBody581_136 NamedBody581_149

def NamedBody581_151 : StackLang.HolProg 64 :=
.seq NamedBody581_135 NamedBody581_150

def NamedBody581_152 : StackLang.HolProg 64 :=
.seq NamedBody581_134 NamedBody581_151

def NamedBody581_153 : StackLang.HolProg 64 :=
.seq NamedBody581_133 NamedBody581_152

def NamedBody581_154 : StackLang.HolProg 64 :=
.seq NamedBody581_132 NamedBody581_153

def NamedBody581_155 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody581_156 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody581_157 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody581_158 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody581_159 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody581_160 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody581_161 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody581_162 : StackLang.HolProg 64 :=
.seq NamedBody581_160 NamedBody581_161

def NamedBody581_163 : StackLang.HolProg 64 :=
.seq NamedBody581_159 NamedBody581_162

def NamedBody581_164 : StackLang.HolProg 64 :=
.seq NamedBody581_158 NamedBody581_163

def NamedBody581_165 : StackLang.HolProg 64 :=
.seq NamedBody581_157 NamedBody581_164

def NamedBody581_166 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody581_167 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def NamedBody581_168 : StackLang.HolProg 64 :=
.seq NamedBody581_166 NamedBody581_167

def NamedBody581_169 : StackLang.HolProg 64 :=
.call (some (NamedBody581_165, 1, 581, 6)) (Sum.inl 477) (some (NamedBody581_168, 581, 7))

def NamedBody581_170 : StackLang.HolProg 64 :=
.seq NamedBody581_156 NamedBody581_169

def NamedBody581_171 : StackLang.HolProg 64 :=
.seq NamedBody581_155 NamedBody581_170

def NamedBody581_172 : StackLang.HolProg 64 :=
.seq NamedBody581_154 NamedBody581_171

def NamedBody581_173 : StackLang.HolProg 64 :=
.seq NamedBody581_125 NamedBody581_172

def NamedBody581_174 : StackLang.HolProg 64 :=
.seq NamedBody581_122 NamedBody581_173

def NamedBody581_175 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody581_176 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 1#64)

def NamedBody581_177 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody581_178 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody581_179 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 2038#64)

def NamedBody581_180 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody581_181 : StackLang.HolProg 64 :=
.seq NamedBody581_179 NamedBody581_180

def NamedBody581_182 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody581_183 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 2#64)

def NamedBody581_184 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 10

def NamedBody581_185 : StackLang.HolProg 64 :=
.seq NamedBody581_183 NamedBody581_184

def NamedBody581_186 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody581_187 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) NamedBody581_185 NamedBody581_186

def NamedBody581_188 : StackLang.HolProg 64 :=
.seq NamedBody581_182 NamedBody581_187

def NamedBody581_189 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def NamedBody581_190 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody581_191 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 581 9

def NamedBody581_192 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody581_193 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody581_194 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody581_195 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody581_196 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def NamedBody581_197 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def NamedBody581_198 : StackLang.HolProg 64 :=
.seq NamedBody581_196 NamedBody581_197

def NamedBody581_199 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def NamedBody581_200 : StackLang.HolProg 64 :=
.seq NamedBody581_198 NamedBody581_199

def NamedBody581_201 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody581_202 : StackLang.HolProg 64 :=
.seq NamedBody581_200 NamedBody581_201

def NamedBody581_203 : StackLang.HolProg 64 :=
.seq NamedBody581_195 NamedBody581_202

def NamedBody581_204 : StackLang.HolProg 64 :=
.seq NamedBody581_194 NamedBody581_203

def NamedBody581_205 : StackLang.HolProg 64 :=
.seq NamedBody581_193 NamedBody581_204

def NamedBody581_206 : StackLang.HolProg 64 :=
.seq NamedBody581_192 NamedBody581_205

def NamedBody581_207 : StackLang.HolProg 64 :=
.seq NamedBody581_191 NamedBody581_206

def NamedBody581_208 : StackLang.HolProg 64 :=
.seq NamedBody581_190 NamedBody581_207

def NamedBody581_209 : StackLang.HolProg 64 :=
.seq NamedBody581_189 NamedBody581_208

def NamedBody581_210 : StackLang.HolProg 64 :=
.seq NamedBody581_188 NamedBody581_209

def NamedBody581_211 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody581_212 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody581_213 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody581_214 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody581_215 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody581_216 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody581_217 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody581_218 : StackLang.HolProg 64 :=
.seq NamedBody581_216 NamedBody581_217

def NamedBody581_219 : StackLang.HolProg 64 :=
.seq NamedBody581_215 NamedBody581_218

def NamedBody581_220 : StackLang.HolProg 64 :=
.seq NamedBody581_214 NamedBody581_219

def NamedBody581_221 : StackLang.HolProg 64 :=
.seq NamedBody581_213 NamedBody581_220

def NamedBody581_222 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody581_223 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def NamedBody581_224 : StackLang.HolProg 64 :=
.seq NamedBody581_222 NamedBody581_223

def NamedBody581_225 : StackLang.HolProg 64 :=
.call (some (NamedBody581_221, 1, 581, 8)) (Sum.inl 490) (some (NamedBody581_224, 581, 9))

def NamedBody581_226 : StackLang.HolProg 64 :=
.seq NamedBody581_212 NamedBody581_225

def NamedBody581_227 : StackLang.HolProg 64 :=
.seq NamedBody581_211 NamedBody581_226

def NamedBody581_228 : StackLang.HolProg 64 :=
.seq NamedBody581_210 NamedBody581_227

def NamedBody581_229 : StackLang.HolProg 64 :=
.seq NamedBody581_181 NamedBody581_228

def NamedBody581_230 : StackLang.HolProg 64 :=
.seq NamedBody581_178 NamedBody581_229

def NamedBody581_231 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody581_232 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 0#64)

def NamedBody581_233 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody581_234 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 16#64)))

def NamedBody581_235 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 1

def NamedBody581_236 : StackLang.HolProg 64 :=
.seq NamedBody581_234 NamedBody581_235

def NamedBody581_237 : StackLang.HolProg 64 :=
.seq NamedBody581_233 NamedBody581_236

def NamedBody581_238 : StackLang.HolProg 64 :=
.seq NamedBody581_232 NamedBody581_237

def NamedBody581_239 : StackLang.HolProg 64 :=
.seq NamedBody581_231 NamedBody581_238

def NamedBody581_240 : StackLang.HolProg 64 :=
.seq NamedBody581_230 NamedBody581_239

def NamedBody581_241 : StackLang.HolProg 64 :=
.seq NamedBody581_177 NamedBody581_240

def NamedBody581_242 : StackLang.HolProg 64 :=
.seq NamedBody581_176 NamedBody581_241

def NamedBody581_243 : StackLang.HolProg 64 :=
.seq NamedBody581_175 NamedBody581_242

def NamedBody581_244 : StackLang.HolProg 64 :=
.seq NamedBody581_174 NamedBody581_243

def NamedBody581_245 : StackLang.HolProg 64 :=
.seq NamedBody581_121 NamedBody581_244

def NamedBody581_246 : StackLang.HolProg 64 :=
.seq NamedBody581_120 NamedBody581_245

def NamedBody581_247 : StackLang.HolProg 64 :=
.seq NamedBody581_119 NamedBody581_246

def NamedBody581_248 : StackLang.HolProg 64 :=
.seq NamedBody581_118 NamedBody581_247

def NamedBody581_249 : StackLang.HolProg 64 :=
.seq NamedBody581_117 NamedBody581_248

def NamedBody581_250 : StackLang.HolProg 64 :=
.seq NamedBody581_64 NamedBody581_249

def NamedBody581_251 : StackLang.HolProg 64 :=
.seq NamedBody581_63 NamedBody581_250

def NamedBody581_252 : StackLang.HolProg 64 :=
.seq NamedBody581_62 NamedBody581_251

def NamedBody581_253 : StackLang.HolProg 64 :=
.seq NamedBody581_9 NamedBody581_252

def NamedBody581_254 : StackLang.HolProg 64 :=
.seq NamedBody581_8 NamedBody581_253

def NamedBody581_255 : StackLang.HolProg 64 :=
.seq NamedBody581_7 NamedBody581_254

def NamedBody581_256 : StackLang.HolProg 64 :=
.seq NamedBody581_6 NamedBody581_255

def Named581 : Nat × StackLang.HolProg 64 := (581, NamedBody581_256)
theorem Named581_eq : StackNames.progCompEntryHOL RiscVConfig.riscvNames Removed581 = Named581 := by
  kernel_rfl
#print axioms Named581_eq
end InitECandidate.Proofs.BackendStages
