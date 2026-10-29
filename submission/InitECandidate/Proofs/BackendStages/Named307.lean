import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.BackendStages.Removed307
import Flapjack.Compiler.Backend.Backend
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
namespace InitECandidate.Proofs.BackendStages
def NamedBody307_0 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody307_1 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 2#64)

def NamedBody307_2 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 10

def NamedBody307_3 : StackLang.HolProg 64 :=
.seq NamedBody307_1 NamedBody307_2

def NamedBody307_4 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody307_5 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) NamedBody307_3 NamedBody307_4

def NamedBody307_6 : StackLang.HolProg 64 :=
.seq NamedBody307_0 NamedBody307_5

def NamedBody307_7 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 13 10
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 10)))

def NamedBody307_8 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 10 11
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 11)))

def NamedBody307_9 : StackLang.HolProg 64 :=
.seq NamedBody307_7 NamedBody307_8

def NamedBody307_10 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 11
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551592#64))

def NamedBody307_11 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsl 11 11
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 1#64)))

def NamedBody307_12 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 11 11
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 26)))

def NamedBody307_13 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 12
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 11 18446744073709551472#64))

def NamedBody307_14 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 11 32#64)

def NamedBody307_15 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody307_16 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 13
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody307_17 : StackLang.HolProg 64 :=
.seq NamedBody307_15 NamedBody307_16

def NamedBody307_18 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody307_19 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 848#64)

def NamedBody307_20 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody307_21 : StackLang.HolProg 64 :=
.seq NamedBody307_19 NamedBody307_20

def NamedBody307_22 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody307_23 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 2#64)

def NamedBody307_24 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 10

def NamedBody307_25 : StackLang.HolProg 64 :=
.seq NamedBody307_23 NamedBody307_24

def NamedBody307_26 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody307_27 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) NamedBody307_25 NamedBody307_26

def NamedBody307_28 : StackLang.HolProg 64 :=
.seq NamedBody307_22 NamedBody307_27

def NamedBody307_29 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def NamedBody307_30 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody307_31 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 307 3

def NamedBody307_32 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody307_33 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody307_34 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody307_35 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody307_36 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def NamedBody307_37 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def NamedBody307_38 : StackLang.HolProg 64 :=
.seq NamedBody307_36 NamedBody307_37

def NamedBody307_39 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def NamedBody307_40 : StackLang.HolProg 64 :=
.seq NamedBody307_38 NamedBody307_39

def NamedBody307_41 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody307_42 : StackLang.HolProg 64 :=
.seq NamedBody307_40 NamedBody307_41

def NamedBody307_43 : StackLang.HolProg 64 :=
.seq NamedBody307_35 NamedBody307_42

def NamedBody307_44 : StackLang.HolProg 64 :=
.seq NamedBody307_34 NamedBody307_43

def NamedBody307_45 : StackLang.HolProg 64 :=
.seq NamedBody307_33 NamedBody307_44

def NamedBody307_46 : StackLang.HolProg 64 :=
.seq NamedBody307_32 NamedBody307_45

def NamedBody307_47 : StackLang.HolProg 64 :=
.seq NamedBody307_31 NamedBody307_46

def NamedBody307_48 : StackLang.HolProg 64 :=
.seq NamedBody307_30 NamedBody307_47

def NamedBody307_49 : StackLang.HolProg 64 :=
.seq NamedBody307_29 NamedBody307_48

def NamedBody307_50 : StackLang.HolProg 64 :=
.seq NamedBody307_28 NamedBody307_49

def NamedBody307_51 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody307_52 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody307_53 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody307_54 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody307_55 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody307_56 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody307_57 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody307_58 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 11
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody307_59 : StackLang.HolProg 64 :=
.seq NamedBody307_57 NamedBody307_58

def NamedBody307_60 : StackLang.HolProg 64 :=
.seq NamedBody307_56 NamedBody307_59

def NamedBody307_61 : StackLang.HolProg 64 :=
.seq NamedBody307_55 NamedBody307_60

def NamedBody307_62 : StackLang.HolProg 64 :=
.seq NamedBody307_54 NamedBody307_61

def NamedBody307_63 : StackLang.HolProg 64 :=
.seq NamedBody307_53 NamedBody307_62

def NamedBody307_64 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody307_65 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 11
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody307_66 : StackLang.HolProg 64 :=
.seq NamedBody307_64 NamedBody307_65

def NamedBody307_67 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def NamedBody307_68 : StackLang.HolProg 64 :=
.seq NamedBody307_66 NamedBody307_67

def NamedBody307_69 : StackLang.HolProg 64 :=
.call (some (NamedBody307_63, 1, 307, 2)) (Sum.inl 288) (some (NamedBody307_68, 307, 3))

def NamedBody307_70 : StackLang.HolProg 64 :=
.seq NamedBody307_52 NamedBody307_69

def NamedBody307_71 : StackLang.HolProg 64 :=
.seq NamedBody307_51 NamedBody307_70

def NamedBody307_72 : StackLang.HolProg 64 :=
.seq NamedBody307_50 NamedBody307_71

def NamedBody307_73 : StackLang.HolProg 64 :=
.seq NamedBody307_21 NamedBody307_72

def NamedBody307_74 : StackLang.HolProg 64 :=
.seq NamedBody307_18 NamedBody307_73

def NamedBody307_75 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody307_76 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 10 11
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 11)))

def NamedBody307_77 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 11
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551592#64))

def NamedBody307_78 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsl 11 11
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 1#64)))

def NamedBody307_79 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 11 11
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 26)))

def NamedBody307_80 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 11
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 11 18446744073709551472#64))

def NamedBody307_81 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 12 64#64)

def NamedBody307_82 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody307_83 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody307_84 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody307_85 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 32#64)))

def NamedBody307_86 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 2#64)

def NamedBody307_87 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 10

def NamedBody307_88 : StackLang.HolProg 64 :=
.seq NamedBody307_86 NamedBody307_87

def NamedBody307_89 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody307_90 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) NamedBody307_88 NamedBody307_89

def NamedBody307_91 : StackLang.HolProg 64 :=
.seq NamedBody307_85 NamedBody307_90

def NamedBody307_92 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.rawCall 306

def NamedBody307_93 : StackLang.HolProg 64 :=
.seq NamedBody307_91 NamedBody307_92

def NamedBody307_94 : StackLang.HolProg 64 :=
.seq NamedBody307_84 NamedBody307_93

def NamedBody307_95 : StackLang.HolProg 64 :=
.seq NamedBody307_83 NamedBody307_94

def NamedBody307_96 : StackLang.HolProg 64 :=
.seq NamedBody307_82 NamedBody307_95

def NamedBody307_97 : StackLang.HolProg 64 :=
.seq NamedBody307_81 NamedBody307_96

def NamedBody307_98 : StackLang.HolProg 64 :=
.seq NamedBody307_80 NamedBody307_97

def NamedBody307_99 : StackLang.HolProg 64 :=
.seq NamedBody307_79 NamedBody307_98

def NamedBody307_100 : StackLang.HolProg 64 :=
.seq NamedBody307_78 NamedBody307_99

def NamedBody307_101 : StackLang.HolProg 64 :=
.seq NamedBody307_77 NamedBody307_100

def NamedBody307_102 : StackLang.HolProg 64 :=
.seq NamedBody307_76 NamedBody307_101

def NamedBody307_103 : StackLang.HolProg 64 :=
.seq NamedBody307_75 NamedBody307_102

def NamedBody307_104 : StackLang.HolProg 64 :=
.seq NamedBody307_74 NamedBody307_103

def NamedBody307_105 : StackLang.HolProg 64 :=
.seq NamedBody307_17 NamedBody307_104

def NamedBody307_106 : StackLang.HolProg 64 :=
.seq NamedBody307_14 NamedBody307_105

def NamedBody307_107 : StackLang.HolProg 64 :=
.seq NamedBody307_13 NamedBody307_106

def NamedBody307_108 : StackLang.HolProg 64 :=
.seq NamedBody307_12 NamedBody307_107

def NamedBody307_109 : StackLang.HolProg 64 :=
.seq NamedBody307_11 NamedBody307_108

def NamedBody307_110 : StackLang.HolProg 64 :=
.seq NamedBody307_10 NamedBody307_109

def NamedBody307_111 : StackLang.HolProg 64 :=
.seq NamedBody307_9 NamedBody307_110

def NamedBody307_112 : StackLang.HolProg 64 :=
.seq NamedBody307_6 NamedBody307_111

def Named307 : Nat × StackLang.HolProg 64 := (307, NamedBody307_112)
theorem Named307_eq : StackNames.progCompEntryHOL RiscVConfig.riscvNames Removed307 = Named307 := by
  kernel_rfl
#print axioms Named307_eq
end InitECandidate.Proofs.BackendStages
