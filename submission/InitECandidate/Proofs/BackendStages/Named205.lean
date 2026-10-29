import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.BackendStages.Removed205
import Flapjack.Compiler.Backend.Backend
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
namespace InitECandidate.Proofs.BackendStages
def NamedBody205_0 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 48#64)))

def NamedBody205_1 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 2#64)

def NamedBody205_2 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 10

def NamedBody205_3 : StackLang.HolProg 64 :=
.seq NamedBody205_1 NamedBody205_2

def NamedBody205_4 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody205_5 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) NamedBody205_3 NamedBody205_4

def NamedBody205_6 : StackLang.HolProg 64 :=
.seq NamedBody205_0 NamedBody205_5

def NamedBody205_7 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody205_8 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 8 18446744073709551615#64)

def NamedBody205_9 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 7 18446744073709551615#64)

def NamedBody205_10 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 6 18446744073709551615#64)

def NamedBody205_11 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 5 18446744069414583343#64)

def NamedBody205_12 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 40#64))

def NamedBody205_13 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 13
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 32#64))

def NamedBody205_14 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 11
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 24#64))

def NamedBody205_15 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 10
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody205_16 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 12
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody205_17 : StackLang.HolProg 64 :=
.seq NamedBody205_15 NamedBody205_16

def NamedBody205_18 : StackLang.HolProg 64 :=
.seq NamedBody205_14 NamedBody205_17

def NamedBody205_19 : StackLang.HolProg 64 :=
.seq NamedBody205_13 NamedBody205_18

def NamedBody205_20 : StackLang.HolProg 64 :=
.seq NamedBody205_12 NamedBody205_19

def NamedBody205_21 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody205_22 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 258#64)

def NamedBody205_23 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody205_24 : StackLang.HolProg 64 :=
.seq NamedBody205_22 NamedBody205_23

def NamedBody205_25 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody205_26 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 2#64)

def NamedBody205_27 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 10

def NamedBody205_28 : StackLang.HolProg 64 :=
.seq NamedBody205_26 NamedBody205_27

def NamedBody205_29 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody205_30 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) NamedBody205_28 NamedBody205_29

def NamedBody205_31 : StackLang.HolProg 64 :=
.seq NamedBody205_25 NamedBody205_30

def NamedBody205_32 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def NamedBody205_33 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody205_34 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 205 3

def NamedBody205_35 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody205_36 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody205_37 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody205_38 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody205_39 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def NamedBody205_40 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def NamedBody205_41 : StackLang.HolProg 64 :=
.seq NamedBody205_39 NamedBody205_40

def NamedBody205_42 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def NamedBody205_43 : StackLang.HolProg 64 :=
.seq NamedBody205_41 NamedBody205_42

def NamedBody205_44 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody205_45 : StackLang.HolProg 64 :=
.seq NamedBody205_43 NamedBody205_44

def NamedBody205_46 : StackLang.HolProg 64 :=
.seq NamedBody205_38 NamedBody205_45

def NamedBody205_47 : StackLang.HolProg 64 :=
.seq NamedBody205_37 NamedBody205_46

def NamedBody205_48 : StackLang.HolProg 64 :=
.seq NamedBody205_36 NamedBody205_47

def NamedBody205_49 : StackLang.HolProg 64 :=
.seq NamedBody205_35 NamedBody205_48

def NamedBody205_50 : StackLang.HolProg 64 :=
.seq NamedBody205_34 NamedBody205_49

def NamedBody205_51 : StackLang.HolProg 64 :=
.seq NamedBody205_33 NamedBody205_50

def NamedBody205_52 : StackLang.HolProg 64 :=
.seq NamedBody205_32 NamedBody205_51

def NamedBody205_53 : StackLang.HolProg 64 :=
.seq NamedBody205_31 NamedBody205_52

def NamedBody205_54 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody205_55 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody205_56 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody205_57 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody205_58 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody205_59 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody205_60 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 6 10
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 10)))

def NamedBody205_61 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 40#64))

def NamedBody205_62 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 13
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 32#64))

def NamedBody205_63 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 11
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 24#64))

def NamedBody205_64 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 5
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody205_65 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 12
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody205_66 : StackLang.HolProg 64 :=
.seq NamedBody205_64 NamedBody205_65

def NamedBody205_67 : StackLang.HolProg 64 :=
.seq NamedBody205_63 NamedBody205_66

def NamedBody205_68 : StackLang.HolProg 64 :=
.seq NamedBody205_62 NamedBody205_67

def NamedBody205_69 : StackLang.HolProg 64 :=
.seq NamedBody205_61 NamedBody205_68

def NamedBody205_70 : StackLang.HolProg 64 :=
.seq NamedBody205_60 NamedBody205_69

def NamedBody205_71 : StackLang.HolProg 64 :=
.seq NamedBody205_59 NamedBody205_70

def NamedBody205_72 : StackLang.HolProg 64 :=
.seq NamedBody205_58 NamedBody205_71

def NamedBody205_73 : StackLang.HolProg 64 :=
.seq NamedBody205_57 NamedBody205_72

def NamedBody205_74 : StackLang.HolProg 64 :=
.seq NamedBody205_56 NamedBody205_73

def NamedBody205_75 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 40#64))

def NamedBody205_76 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 13
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 32#64))

def NamedBody205_77 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 11
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 24#64))

def NamedBody205_78 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 5
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody205_79 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 12
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody205_80 : StackLang.HolProg 64 :=
.seq NamedBody205_78 NamedBody205_79

def NamedBody205_81 : StackLang.HolProg 64 :=
.seq NamedBody205_77 NamedBody205_80

def NamedBody205_82 : StackLang.HolProg 64 :=
.seq NamedBody205_76 NamedBody205_81

def NamedBody205_83 : StackLang.HolProg 64 :=
.seq NamedBody205_75 NamedBody205_82

def NamedBody205_84 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def NamedBody205_85 : StackLang.HolProg 64 :=
.seq NamedBody205_83 NamedBody205_84

def NamedBody205_86 : StackLang.HolProg 64 :=
.call (some (NamedBody205_74, 1, 205, 2)) (Sum.inl 106) (some (NamedBody205_85, 205, 3))

def NamedBody205_87 : StackLang.HolProg 64 :=
.seq NamedBody205_55 NamedBody205_86

def NamedBody205_88 : StackLang.HolProg 64 :=
.seq NamedBody205_54 NamedBody205_87

def NamedBody205_89 : StackLang.HolProg 64 :=
.seq NamedBody205_53 NamedBody205_88

def NamedBody205_90 : StackLang.HolProg 64 :=
.seq NamedBody205_24 NamedBody205_89

def NamedBody205_91 : StackLang.HolProg 64 :=
.seq NamedBody205_21 NamedBody205_90

def NamedBody205_92 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody205_93 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody205_94 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 0#64)

def NamedBody205_95 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody205_96 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 10 5
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 5)))

def NamedBody205_97 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 8 18446744073709551615#64)

def NamedBody205_98 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 7 18446744073709551615#64)

def NamedBody205_99 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 6 18446744073709551615#64)

def NamedBody205_100 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 5 18446744069414583343#64)

def NamedBody205_101 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody205_102 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody205_103 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 48#64)))

def NamedBody205_104 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.rawCall 117

def NamedBody205_105 : StackLang.HolProg 64 :=
.seq NamedBody205_103 NamedBody205_104

def NamedBody205_106 : StackLang.HolProg 64 :=
.seq NamedBody205_102 NamedBody205_105

def NamedBody205_107 : StackLang.HolProg 64 :=
.seq NamedBody205_101 NamedBody205_106

def NamedBody205_108 : StackLang.HolProg 64 :=
.seq NamedBody205_100 NamedBody205_107

def NamedBody205_109 : StackLang.HolProg 64 :=
.seq NamedBody205_99 NamedBody205_108

def NamedBody205_110 : StackLang.HolProg 64 :=
.seq NamedBody205_98 NamedBody205_109

def NamedBody205_111 : StackLang.HolProg 64 :=
.seq NamedBody205_97 NamedBody205_110

def NamedBody205_112 : StackLang.HolProg 64 :=
.seq NamedBody205_96 NamedBody205_111

def NamedBody205_113 : StackLang.HolProg 64 :=
.seq NamedBody205_95 NamedBody205_112

def NamedBody205_114 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody205_115 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.equal) 6 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 10) NamedBody205_113 NamedBody205_114

def NamedBody205_116 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody205_117 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody205_118 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 10 5
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 5)))

def NamedBody205_119 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 48#64)))

def NamedBody205_120 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 1

def NamedBody205_121 : StackLang.HolProg 64 :=
.seq NamedBody205_119 NamedBody205_120

def NamedBody205_122 : StackLang.HolProg 64 :=
.seq NamedBody205_118 NamedBody205_121

def NamedBody205_123 : StackLang.HolProg 64 :=
.seq NamedBody205_117 NamedBody205_122

def NamedBody205_124 : StackLang.HolProg 64 :=
.seq NamedBody205_116 NamedBody205_123

def NamedBody205_125 : StackLang.HolProg 64 :=
.seq NamedBody205_115 NamedBody205_124

def NamedBody205_126 : StackLang.HolProg 64 :=
.seq NamedBody205_94 NamedBody205_125

def NamedBody205_127 : StackLang.HolProg 64 :=
.seq NamedBody205_93 NamedBody205_126

def NamedBody205_128 : StackLang.HolProg 64 :=
.seq NamedBody205_92 NamedBody205_127

def NamedBody205_129 : StackLang.HolProg 64 :=
.seq NamedBody205_91 NamedBody205_128

def NamedBody205_130 : StackLang.HolProg 64 :=
.seq NamedBody205_20 NamedBody205_129

def NamedBody205_131 : StackLang.HolProg 64 :=
.seq NamedBody205_11 NamedBody205_130

def NamedBody205_132 : StackLang.HolProg 64 :=
.seq NamedBody205_10 NamedBody205_131

def NamedBody205_133 : StackLang.HolProg 64 :=
.seq NamedBody205_9 NamedBody205_132

def NamedBody205_134 : StackLang.HolProg 64 :=
.seq NamedBody205_8 NamedBody205_133

def NamedBody205_135 : StackLang.HolProg 64 :=
.seq NamedBody205_7 NamedBody205_134

def NamedBody205_136 : StackLang.HolProg 64 :=
.seq NamedBody205_6 NamedBody205_135

def Named205 : Nat × StackLang.HolProg 64 := (205, NamedBody205_136)
theorem Named205_eq : StackNames.progCompEntryHOL RiscVConfig.riscvNames Removed205 = Named205 := by
  kernel_rfl
#print axioms Named205_eq
end InitECandidate.Proofs.BackendStages
