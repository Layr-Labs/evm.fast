import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.BackendStages.Removed640
import Flapjack.Compiler.Backend.Backend
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
namespace InitECandidate.Proofs.BackendStages
def NamedBody640_0 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 32#64)))

def NamedBody640_1 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 2#64)

def NamedBody640_2 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 10

def NamedBody640_3 : StackLang.HolProg 64 :=
.seq NamedBody640_1 NamedBody640_2

def NamedBody640_4 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody640_5 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) NamedBody640_3 NamedBody640_4

def NamedBody640_6 : StackLang.HolProg 64 :=
.seq NamedBody640_0 NamedBody640_5

def NamedBody640_7 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody640_8 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 12 0#64)

def NamedBody640_9 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody640_10 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 24#64))

def NamedBody640_11 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 6 10
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 10)))

def NamedBody640_12 : StackLang.HolProg 64 :=
.seq NamedBody640_10 NamedBody640_11

def NamedBody640_13 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody640_14 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody640_15 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody640_16 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 1 12
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 6)))

def NamedBody640_17 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load8 10
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 1 0#64))

def NamedBody640_18 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody640_19 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 0#64)

def NamedBody640_20 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody640_21 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 12
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody640_22 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 11
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody640_23 : StackLang.HolProg 64 :=
.seq NamedBody640_21 NamedBody640_22

def NamedBody640_24 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody640_25 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 2593#64)

def NamedBody640_26 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody640_27 : StackLang.HolProg 64 :=
.seq NamedBody640_25 NamedBody640_26

def NamedBody640_28 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody640_29 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 2#64)

def NamedBody640_30 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 10

def NamedBody640_31 : StackLang.HolProg 64 :=
.seq NamedBody640_29 NamedBody640_30

def NamedBody640_32 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody640_33 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) NamedBody640_31 NamedBody640_32

def NamedBody640_34 : StackLang.HolProg 64 :=
.seq NamedBody640_28 NamedBody640_33

def NamedBody640_35 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def NamedBody640_36 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody640_37 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 640 3

def NamedBody640_38 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody640_39 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody640_40 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody640_41 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody640_42 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def NamedBody640_43 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def NamedBody640_44 : StackLang.HolProg 64 :=
.seq NamedBody640_42 NamedBody640_43

def NamedBody640_45 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def NamedBody640_46 : StackLang.HolProg 64 :=
.seq NamedBody640_44 NamedBody640_45

def NamedBody640_47 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody640_48 : StackLang.HolProg 64 :=
.seq NamedBody640_46 NamedBody640_47

def NamedBody640_49 : StackLang.HolProg 64 :=
.seq NamedBody640_41 NamedBody640_48

def NamedBody640_50 : StackLang.HolProg 64 :=
.seq NamedBody640_40 NamedBody640_49

def NamedBody640_51 : StackLang.HolProg 64 :=
.seq NamedBody640_39 NamedBody640_50

def NamedBody640_52 : StackLang.HolProg 64 :=
.seq NamedBody640_38 NamedBody640_51

def NamedBody640_53 : StackLang.HolProg 64 :=
.seq NamedBody640_37 NamedBody640_52

def NamedBody640_54 : StackLang.HolProg 64 :=
.seq NamedBody640_36 NamedBody640_53

def NamedBody640_55 : StackLang.HolProg 64 :=
.seq NamedBody640_35 NamedBody640_54

def NamedBody640_56 : StackLang.HolProg 64 :=
.seq NamedBody640_34 NamedBody640_55

def NamedBody640_57 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody640_58 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody640_59 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody640_60 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody640_61 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody640_62 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody640_63 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 1 10
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 10)))

def NamedBody640_64 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 8
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 24#64))

def NamedBody640_65 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 13
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody640_66 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 5
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody640_67 : StackLang.HolProg 64 :=
.seq NamedBody640_65 NamedBody640_66

def NamedBody640_68 : StackLang.HolProg 64 :=
.seq NamedBody640_64 NamedBody640_67

def NamedBody640_69 : StackLang.HolProg 64 :=
.seq NamedBody640_63 NamedBody640_68

def NamedBody640_70 : StackLang.HolProg 64 :=
.seq NamedBody640_62 NamedBody640_69

def NamedBody640_71 : StackLang.HolProg 64 :=
.seq NamedBody640_61 NamedBody640_70

def NamedBody640_72 : StackLang.HolProg 64 :=
.seq NamedBody640_60 NamedBody640_71

def NamedBody640_73 : StackLang.HolProg 64 :=
.seq NamedBody640_59 NamedBody640_72

def NamedBody640_74 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 8
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 24#64))

def NamedBody640_75 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 13
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody640_76 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 5
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody640_77 : StackLang.HolProg 64 :=
.seq NamedBody640_75 NamedBody640_76

def NamedBody640_78 : StackLang.HolProg 64 :=
.seq NamedBody640_74 NamedBody640_77

def NamedBody640_79 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def NamedBody640_80 : StackLang.HolProg 64 :=
.seq NamedBody640_78 NamedBody640_79

def NamedBody640_81 : StackLang.HolProg 64 :=
.call (some (NamedBody640_73, 1, 640, 2)) (Sum.inl 137) (some (NamedBody640_80, 640, 3))

def NamedBody640_82 : StackLang.HolProg 64 :=
.seq NamedBody640_58 NamedBody640_81

def NamedBody640_83 : StackLang.HolProg 64 :=
.seq NamedBody640_57 NamedBody640_82

def NamedBody640_84 : StackLang.HolProg 64 :=
.seq NamedBody640_56 NamedBody640_83

def NamedBody640_85 : StackLang.HolProg 64 :=
.seq NamedBody640_27 NamedBody640_84

def NamedBody640_86 : StackLang.HolProg 64 :=
.seq NamedBody640_24 NamedBody640_85

def NamedBody640_87 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody640_88 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody640_89 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 10 5
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 18446744073709551615#64)))

def NamedBody640_90 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody640_91 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 10 10
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 13)))

def NamedBody640_92 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsl 10 10
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def NamedBody640_93 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 1 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 10)))

def NamedBody640_94 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 10 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 18446744073709551615#64)))

def NamedBody640_95 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody640_96 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 32#64)))

def NamedBody640_97 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 8

def NamedBody640_98 : StackLang.HolProg 64 :=
.seq NamedBody640_96 NamedBody640_97

def NamedBody640_99 : StackLang.HolProg 64 :=
.seq NamedBody640_95 NamedBody640_98

def NamedBody640_100 : StackLang.HolProg 64 :=
.seq NamedBody640_94 NamedBody640_99

def NamedBody640_101 : StackLang.HolProg 64 :=
.seq NamedBody640_93 NamedBody640_100

def NamedBody640_102 : StackLang.HolProg 64 :=
.seq NamedBody640_92 NamedBody640_101

def NamedBody640_103 : StackLang.HolProg 64 :=
.seq NamedBody640_91 NamedBody640_102

def NamedBody640_104 : StackLang.HolProg 64 :=
.seq NamedBody640_90 NamedBody640_103

def NamedBody640_105 : StackLang.HolProg 64 :=
.seq NamedBody640_89 NamedBody640_104

def NamedBody640_106 : StackLang.HolProg 64 :=
.seq NamedBody640_88 NamedBody640_105

def NamedBody640_107 : StackLang.HolProg 64 :=
.seq NamedBody640_87 NamedBody640_106

def NamedBody640_108 : StackLang.HolProg 64 :=
.seq NamedBody640_86 NamedBody640_107

def NamedBody640_109 : StackLang.HolProg 64 :=
.seq NamedBody640_23 NamedBody640_108

def NamedBody640_110 : StackLang.HolProg 64 :=
.seq NamedBody640_20 NamedBody640_109

def NamedBody640_111 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 7
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 24#64))

def NamedBody640_112 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.notEqual) 10 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1) NamedBody640_110 NamedBody640_111

def NamedBody640_113 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody640_114 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody640_115 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody640_116 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 12 12
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 1#64)))

def NamedBody640_117 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 7
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 24#64))

def NamedBody640_118 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.continue 0

def NamedBody640_119 : StackLang.HolProg 64 :=
.seq NamedBody640_117 NamedBody640_118

def NamedBody640_120 : StackLang.HolProg 64 :=
.seq NamedBody640_116 NamedBody640_119

def NamedBody640_121 : StackLang.HolProg 64 :=
.seq NamedBody640_115 NamedBody640_120

def NamedBody640_122 : StackLang.HolProg 64 :=
.seq NamedBody640_114 NamedBody640_121

def NamedBody640_123 : StackLang.HolProg 64 :=
.seq NamedBody640_113 NamedBody640_122

def NamedBody640_124 : StackLang.HolProg 64 :=
.seq NamedBody640_112 NamedBody640_123

def NamedBody640_125 : StackLang.HolProg 64 :=
.seq NamedBody640_19 NamedBody640_124

def NamedBody640_126 : StackLang.HolProg 64 :=
.seq NamedBody640_18 NamedBody640_125

def NamedBody640_127 : StackLang.HolProg 64 :=
.seq NamedBody640_17 NamedBody640_126

def NamedBody640_128 : StackLang.HolProg 64 :=
.seq NamedBody640_16 NamedBody640_127

def NamedBody640_129 : StackLang.HolProg 64 :=
.seq NamedBody640_15 NamedBody640_128

def NamedBody640_130 : StackLang.HolProg 64 :=
.seq NamedBody640_14 NamedBody640_129

def NamedBody640_131 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody640_132 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.break 0

def NamedBody640_133 : StackLang.HolProg 64 :=
.seq NamedBody640_131 NamedBody640_132

def NamedBody640_134 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 12 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 11) NamedBody640_130 NamedBody640_133

def NamedBody640_135 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody640_136 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 24#64))

def NamedBody640_137 : StackLang.HolProg 64 :=
.seq NamedBody640_135 NamedBody640_136

def NamedBody640_138 : StackLang.HolProg 64 :=
.seq NamedBody640_134 NamedBody640_137

def NamedBody640_139 : StackLang.HolProg 64 :=
.seq NamedBody640_13 NamedBody640_138

def NamedBody640_140 : StackLang.HolProg 64 :=
.loop NamedBody640_139

def NamedBody640_141 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody640_142 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 18446744073709551615#64)

def NamedBody640_143 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody640_144 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 24#64))

def NamedBody640_145 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 32#64)))

def NamedBody640_146 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 22

def NamedBody640_147 : StackLang.HolProg 64 :=
.seq NamedBody640_145 NamedBody640_146

def NamedBody640_148 : StackLang.HolProg 64 :=
.seq NamedBody640_144 NamedBody640_147

def NamedBody640_149 : StackLang.HolProg 64 :=
.seq NamedBody640_143 NamedBody640_148

def NamedBody640_150 : StackLang.HolProg 64 :=
.seq NamedBody640_142 NamedBody640_149

def NamedBody640_151 : StackLang.HolProg 64 :=
.seq NamedBody640_141 NamedBody640_150

def NamedBody640_152 : StackLang.HolProg 64 :=
.seq NamedBody640_140 NamedBody640_151

def NamedBody640_153 : StackLang.HolProg 64 :=
.seq NamedBody640_12 NamedBody640_152

def NamedBody640_154 : StackLang.HolProg 64 :=
.seq NamedBody640_9 NamedBody640_153

def NamedBody640_155 : StackLang.HolProg 64 :=
.seq NamedBody640_8 NamedBody640_154

def NamedBody640_156 : StackLang.HolProg 64 :=
.seq NamedBody640_7 NamedBody640_155

def NamedBody640_157 : StackLang.HolProg 64 :=
.seq NamedBody640_6 NamedBody640_156

def Named640 : Nat × StackLang.HolProg 64 := (640, NamedBody640_157)
theorem Named640_eq : StackNames.progCompEntryHOL RiscVConfig.riscvNames Removed640 = Named640 := by
  kernel_rfl
#print axioms Named640_eq
end InitECandidate.Proofs.BackendStages
