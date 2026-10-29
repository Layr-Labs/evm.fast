import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.BackendStages.Removed644
import Flapjack.Compiler.Backend.Backend
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
namespace InitECandidate.Proofs.BackendStages
def NamedBody644_0 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 48#64)))

def NamedBody644_1 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 2#64)

def NamedBody644_2 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 10

def NamedBody644_3 : StackLang.HolProg 64 :=
.seq NamedBody644_1 NamedBody644_2

def NamedBody644_4 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody644_5 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) NamedBody644_3 NamedBody644_4

def NamedBody644_6 : StackLang.HolProg 64 :=
.seq NamedBody644_0 NamedBody644_5

def NamedBody644_7 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody644_8 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 8 18446744069414584321#64)

def NamedBody644_9 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 7 0#64)

def NamedBody644_10 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 6 4294967295#64)

def NamedBody644_11 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 5 18446744073709551615#64)

def NamedBody644_12 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 40#64))

def NamedBody644_13 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 13
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 32#64))

def NamedBody644_14 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 11
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 24#64))

def NamedBody644_15 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 10
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody644_16 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 12
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody644_17 : StackLang.HolProg 64 :=
.seq NamedBody644_15 NamedBody644_16

def NamedBody644_18 : StackLang.HolProg 64 :=
.seq NamedBody644_14 NamedBody644_17

def NamedBody644_19 : StackLang.HolProg 64 :=
.seq NamedBody644_13 NamedBody644_18

def NamedBody644_20 : StackLang.HolProg 64 :=
.seq NamedBody644_12 NamedBody644_19

def NamedBody644_21 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody644_22 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 2624#64)

def NamedBody644_23 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody644_24 : StackLang.HolProg 64 :=
.seq NamedBody644_22 NamedBody644_23

def NamedBody644_25 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody644_26 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 2#64)

def NamedBody644_27 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 10

def NamedBody644_28 : StackLang.HolProg 64 :=
.seq NamedBody644_26 NamedBody644_27

def NamedBody644_29 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody644_30 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) NamedBody644_28 NamedBody644_29

def NamedBody644_31 : StackLang.HolProg 64 :=
.seq NamedBody644_25 NamedBody644_30

def NamedBody644_32 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def NamedBody644_33 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody644_34 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 644 3

def NamedBody644_35 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody644_36 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody644_37 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody644_38 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody644_39 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def NamedBody644_40 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def NamedBody644_41 : StackLang.HolProg 64 :=
.seq NamedBody644_39 NamedBody644_40

def NamedBody644_42 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def NamedBody644_43 : StackLang.HolProg 64 :=
.seq NamedBody644_41 NamedBody644_42

def NamedBody644_44 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody644_45 : StackLang.HolProg 64 :=
.seq NamedBody644_43 NamedBody644_44

def NamedBody644_46 : StackLang.HolProg 64 :=
.seq NamedBody644_38 NamedBody644_45

def NamedBody644_47 : StackLang.HolProg 64 :=
.seq NamedBody644_37 NamedBody644_46

def NamedBody644_48 : StackLang.HolProg 64 :=
.seq NamedBody644_36 NamedBody644_47

def NamedBody644_49 : StackLang.HolProg 64 :=
.seq NamedBody644_35 NamedBody644_48

def NamedBody644_50 : StackLang.HolProg 64 :=
.seq NamedBody644_34 NamedBody644_49

def NamedBody644_51 : StackLang.HolProg 64 :=
.seq NamedBody644_33 NamedBody644_50

def NamedBody644_52 : StackLang.HolProg 64 :=
.seq NamedBody644_32 NamedBody644_51

def NamedBody644_53 : StackLang.HolProg 64 :=
.seq NamedBody644_31 NamedBody644_52

def NamedBody644_54 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody644_55 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody644_56 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody644_57 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody644_58 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody644_59 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody644_60 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 6 10
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 10)))

def NamedBody644_61 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 40#64))

def NamedBody644_62 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 13
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 32#64))

def NamedBody644_63 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 11
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 24#64))

def NamedBody644_64 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 5
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody644_65 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 12
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody644_66 : StackLang.HolProg 64 :=
.seq NamedBody644_64 NamedBody644_65

def NamedBody644_67 : StackLang.HolProg 64 :=
.seq NamedBody644_63 NamedBody644_66

def NamedBody644_68 : StackLang.HolProg 64 :=
.seq NamedBody644_62 NamedBody644_67

def NamedBody644_69 : StackLang.HolProg 64 :=
.seq NamedBody644_61 NamedBody644_68

def NamedBody644_70 : StackLang.HolProg 64 :=
.seq NamedBody644_60 NamedBody644_69

def NamedBody644_71 : StackLang.HolProg 64 :=
.seq NamedBody644_59 NamedBody644_70

def NamedBody644_72 : StackLang.HolProg 64 :=
.seq NamedBody644_58 NamedBody644_71

def NamedBody644_73 : StackLang.HolProg 64 :=
.seq NamedBody644_57 NamedBody644_72

def NamedBody644_74 : StackLang.HolProg 64 :=
.seq NamedBody644_56 NamedBody644_73

def NamedBody644_75 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 40#64))

def NamedBody644_76 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 13
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 32#64))

def NamedBody644_77 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 11
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 24#64))

def NamedBody644_78 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 5
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody644_79 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 12
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody644_80 : StackLang.HolProg 64 :=
.seq NamedBody644_78 NamedBody644_79

def NamedBody644_81 : StackLang.HolProg 64 :=
.seq NamedBody644_77 NamedBody644_80

def NamedBody644_82 : StackLang.HolProg 64 :=
.seq NamedBody644_76 NamedBody644_81

def NamedBody644_83 : StackLang.HolProg 64 :=
.seq NamedBody644_75 NamedBody644_82

def NamedBody644_84 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def NamedBody644_85 : StackLang.HolProg 64 :=
.seq NamedBody644_83 NamedBody644_84

def NamedBody644_86 : StackLang.HolProg 64 :=
.call (some (NamedBody644_74, 1, 644, 2)) (Sum.inl 106) (some (NamedBody644_85, 644, 3))

def NamedBody644_87 : StackLang.HolProg 64 :=
.seq NamedBody644_55 NamedBody644_86

def NamedBody644_88 : StackLang.HolProg 64 :=
.seq NamedBody644_54 NamedBody644_87

def NamedBody644_89 : StackLang.HolProg 64 :=
.seq NamedBody644_53 NamedBody644_88

def NamedBody644_90 : StackLang.HolProg 64 :=
.seq NamedBody644_24 NamedBody644_89

def NamedBody644_91 : StackLang.HolProg 64 :=
.seq NamedBody644_21 NamedBody644_90

def NamedBody644_92 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody644_93 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody644_94 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 0#64)

def NamedBody644_95 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody644_96 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 10 5
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 5)))

def NamedBody644_97 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 8 18446744069414584321#64)

def NamedBody644_98 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 7 0#64)

def NamedBody644_99 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 6 4294967295#64)

def NamedBody644_100 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 5 18446744073709551615#64)

def NamedBody644_101 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody644_102 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody644_103 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 48#64)))

def NamedBody644_104 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.rawCall 117

def NamedBody644_105 : StackLang.HolProg 64 :=
.seq NamedBody644_103 NamedBody644_104

def NamedBody644_106 : StackLang.HolProg 64 :=
.seq NamedBody644_102 NamedBody644_105

def NamedBody644_107 : StackLang.HolProg 64 :=
.seq NamedBody644_101 NamedBody644_106

def NamedBody644_108 : StackLang.HolProg 64 :=
.seq NamedBody644_100 NamedBody644_107

def NamedBody644_109 : StackLang.HolProg 64 :=
.seq NamedBody644_99 NamedBody644_108

def NamedBody644_110 : StackLang.HolProg 64 :=
.seq NamedBody644_98 NamedBody644_109

def NamedBody644_111 : StackLang.HolProg 64 :=
.seq NamedBody644_97 NamedBody644_110

def NamedBody644_112 : StackLang.HolProg 64 :=
.seq NamedBody644_96 NamedBody644_111

def NamedBody644_113 : StackLang.HolProg 64 :=
.seq NamedBody644_95 NamedBody644_112

def NamedBody644_114 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody644_115 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.equal) 6 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 10) NamedBody644_113 NamedBody644_114

def NamedBody644_116 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody644_117 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody644_118 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 10 5
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 5)))

def NamedBody644_119 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 48#64)))

def NamedBody644_120 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 1

def NamedBody644_121 : StackLang.HolProg 64 :=
.seq NamedBody644_119 NamedBody644_120

def NamedBody644_122 : StackLang.HolProg 64 :=
.seq NamedBody644_118 NamedBody644_121

def NamedBody644_123 : StackLang.HolProg 64 :=
.seq NamedBody644_117 NamedBody644_122

def NamedBody644_124 : StackLang.HolProg 64 :=
.seq NamedBody644_116 NamedBody644_123

def NamedBody644_125 : StackLang.HolProg 64 :=
.seq NamedBody644_115 NamedBody644_124

def NamedBody644_126 : StackLang.HolProg 64 :=
.seq NamedBody644_94 NamedBody644_125

def NamedBody644_127 : StackLang.HolProg 64 :=
.seq NamedBody644_93 NamedBody644_126

def NamedBody644_128 : StackLang.HolProg 64 :=
.seq NamedBody644_92 NamedBody644_127

def NamedBody644_129 : StackLang.HolProg 64 :=
.seq NamedBody644_91 NamedBody644_128

def NamedBody644_130 : StackLang.HolProg 64 :=
.seq NamedBody644_20 NamedBody644_129

def NamedBody644_131 : StackLang.HolProg 64 :=
.seq NamedBody644_11 NamedBody644_130

def NamedBody644_132 : StackLang.HolProg 64 :=
.seq NamedBody644_10 NamedBody644_131

def NamedBody644_133 : StackLang.HolProg 64 :=
.seq NamedBody644_9 NamedBody644_132

def NamedBody644_134 : StackLang.HolProg 64 :=
.seq NamedBody644_8 NamedBody644_133

def NamedBody644_135 : StackLang.HolProg 64 :=
.seq NamedBody644_7 NamedBody644_134

def NamedBody644_136 : StackLang.HolProg 64 :=
.seq NamedBody644_6 NamedBody644_135

def Named644 : Nat × StackLang.HolProg 64 := (644, NamedBody644_136)
theorem Named644_eq : StackNames.progCompEntryHOL RiscVConfig.riscvNames Removed644 = Named644 := by
  kernel_rfl
#print axioms Named644_eq
end InitECandidate.Proofs.BackendStages
