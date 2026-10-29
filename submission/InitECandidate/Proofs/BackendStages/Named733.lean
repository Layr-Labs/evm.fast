import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.BackendStages.Removed733
import Flapjack.Compiler.Backend.Backend
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
namespace InitECandidate.Proofs.BackendStages
def NamedBody733_0 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 32#64)))

def NamedBody733_1 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 2#64)

def NamedBody733_2 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 10

def NamedBody733_3 : StackLang.HolProg 64 :=
.seq NamedBody733_1 NamedBody733_2

def NamedBody733_4 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody733_5 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) NamedBody733_3 NamedBody733_4

def NamedBody733_6 : StackLang.HolProg 64 :=
.seq NamedBody733_0 NamedBody733_5

def NamedBody733_7 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 14 10
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 10)))

def NamedBody733_8 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 30 11
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 11)))

def NamedBody733_9 : StackLang.HolProg 64 :=
.seq NamedBody733_7 NamedBody733_8

def NamedBody733_10 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 10
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 14 0#64))

def NamedBody733_11 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody733_12 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 11
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 14 8#64))

def NamedBody733_13 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody733_14 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 12
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 14 16#64))

def NamedBody733_15 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody733_16 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 13
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 14 24#64))

def NamedBody733_17 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody733_18 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 5
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 14 32#64))

def NamedBody733_19 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody733_20 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 6
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 14 40#64))

def NamedBody733_21 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody733_22 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 7
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 30 0#64))

def NamedBody733_23 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody733_24 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 8
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 30 8#64))

def NamedBody733_25 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody733_26 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 9
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 30 16#64))

def NamedBody733_27 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody733_28 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 27
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 30 24#64))

def NamedBody733_29 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody733_30 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 28
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 30 32#64))

def NamedBody733_31 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody733_32 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 29
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 30 40#64))

def NamedBody733_33 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 24#64))

def NamedBody733_34 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 30
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody733_35 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 14
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody733_36 : StackLang.HolProg 64 :=
.seq NamedBody733_34 NamedBody733_35

def NamedBody733_37 : StackLang.HolProg 64 :=
.seq NamedBody733_33 NamedBody733_36

def NamedBody733_38 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody733_39 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 3263#64)

def NamedBody733_40 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody733_41 : StackLang.HolProg 64 :=
.seq NamedBody733_39 NamedBody733_40

def NamedBody733_42 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody733_43 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 2#64)

def NamedBody733_44 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 10

def NamedBody733_45 : StackLang.HolProg 64 :=
.seq NamedBody733_43 NamedBody733_44

def NamedBody733_46 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody733_47 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) NamedBody733_45 NamedBody733_46

def NamedBody733_48 : StackLang.HolProg 64 :=
.seq NamedBody733_42 NamedBody733_47

def NamedBody733_49 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def NamedBody733_50 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody733_51 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 733 3

def NamedBody733_52 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody733_53 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody733_54 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody733_55 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody733_56 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def NamedBody733_57 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def NamedBody733_58 : StackLang.HolProg 64 :=
.seq NamedBody733_56 NamedBody733_57

def NamedBody733_59 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def NamedBody733_60 : StackLang.HolProg 64 :=
.seq NamedBody733_58 NamedBody733_59

def NamedBody733_61 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody733_62 : StackLang.HolProg 64 :=
.seq NamedBody733_60 NamedBody733_61

def NamedBody733_63 : StackLang.HolProg 64 :=
.seq NamedBody733_55 NamedBody733_62

def NamedBody733_64 : StackLang.HolProg 64 :=
.seq NamedBody733_54 NamedBody733_63

def NamedBody733_65 : StackLang.HolProg 64 :=
.seq NamedBody733_53 NamedBody733_64

def NamedBody733_66 : StackLang.HolProg 64 :=
.seq NamedBody733_52 NamedBody733_65

def NamedBody733_67 : StackLang.HolProg 64 :=
.seq NamedBody733_51 NamedBody733_66

def NamedBody733_68 : StackLang.HolProg 64 :=
.seq NamedBody733_50 NamedBody733_67

def NamedBody733_69 : StackLang.HolProg 64 :=
.seq NamedBody733_49 NamedBody733_68

def NamedBody733_70 : StackLang.HolProg 64 :=
.seq NamedBody733_48 NamedBody733_69

def NamedBody733_71 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody733_72 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody733_73 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody733_74 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody733_75 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody733_76 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody733_77 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 11 10
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 10)))

def NamedBody733_78 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 24#64))

def NamedBody733_79 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 29
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody733_80 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 6
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody733_81 : StackLang.HolProg 64 :=
.seq NamedBody733_79 NamedBody733_80

def NamedBody733_82 : StackLang.HolProg 64 :=
.seq NamedBody733_78 NamedBody733_81

def NamedBody733_83 : StackLang.HolProg 64 :=
.seq NamedBody733_77 NamedBody733_82

def NamedBody733_84 : StackLang.HolProg 64 :=
.seq NamedBody733_76 NamedBody733_83

def NamedBody733_85 : StackLang.HolProg 64 :=
.seq NamedBody733_75 NamedBody733_84

def NamedBody733_86 : StackLang.HolProg 64 :=
.seq NamedBody733_74 NamedBody733_85

def NamedBody733_87 : StackLang.HolProg 64 :=
.seq NamedBody733_73 NamedBody733_86

def NamedBody733_88 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 24#64))

def NamedBody733_89 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 29
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody733_90 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 6
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody733_91 : StackLang.HolProg 64 :=
.seq NamedBody733_89 NamedBody733_90

def NamedBody733_92 : StackLang.HolProg 64 :=
.seq NamedBody733_88 NamedBody733_91

def NamedBody733_93 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def NamedBody733_94 : StackLang.HolProg 64 :=
.seq NamedBody733_92 NamedBody733_93

def NamedBody733_95 : StackLang.HolProg 64 :=
.call (some (NamedBody733_87, 1, 733, 2)) (Sum.inl 706) (some (NamedBody733_94, 733, 3))

def NamedBody733_96 : StackLang.HolProg 64 :=
.seq NamedBody733_72 NamedBody733_95

def NamedBody733_97 : StackLang.HolProg 64 :=
.seq NamedBody733_71 NamedBody733_96

def NamedBody733_98 : StackLang.HolProg 64 :=
.seq NamedBody733_70 NamedBody733_97

def NamedBody733_99 : StackLang.HolProg 64 :=
.seq NamedBody733_41 NamedBody733_98

def NamedBody733_100 : StackLang.HolProg 64 :=
.seq NamedBody733_38 NamedBody733_99

def NamedBody733_101 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody733_102 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody733_103 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 0#64)

def NamedBody733_104 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody733_105 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 0#64)

def NamedBody733_106 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody733_107 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 32#64)))

def NamedBody733_108 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 1

def NamedBody733_109 : StackLang.HolProg 64 :=
.seq NamedBody733_107 NamedBody733_108

def NamedBody733_110 : StackLang.HolProg 64 :=
.seq NamedBody733_106 NamedBody733_109

def NamedBody733_111 : StackLang.HolProg 64 :=
.seq NamedBody733_105 NamedBody733_110

def NamedBody733_112 : StackLang.HolProg 64 :=
.seq NamedBody733_104 NamedBody733_111

def NamedBody733_113 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody733_114 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.equal) 11 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 10) NamedBody733_112 NamedBody733_113

def NamedBody733_115 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody733_116 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody733_117 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody733_118 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 10
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 6 48#64))

def NamedBody733_119 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody733_120 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 11
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 6 56#64))

def NamedBody733_121 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody733_122 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 12
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 6 64#64))

def NamedBody733_123 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody733_124 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 13
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 6 72#64))

def NamedBody733_125 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody733_126 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 5
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 6 80#64))

def NamedBody733_127 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody733_128 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 6
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 6 88#64))

def NamedBody733_129 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody733_130 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 7
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 29 48#64))

def NamedBody733_131 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody733_132 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 8
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 29 56#64))

def NamedBody733_133 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody733_134 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 9
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 29 64#64))

def NamedBody733_135 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody733_136 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 27
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 29 72#64))

def NamedBody733_137 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody733_138 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 28
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 29 80#64))

def NamedBody733_139 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody733_140 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 29
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 29 88#64))

def NamedBody733_141 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody733_142 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody733_143 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 32#64)))

def NamedBody733_144 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.rawCall 706

def NamedBody733_145 : StackLang.HolProg 64 :=
.seq NamedBody733_143 NamedBody733_144

def NamedBody733_146 : StackLang.HolProg 64 :=
.seq NamedBody733_142 NamedBody733_145

def NamedBody733_147 : StackLang.HolProg 64 :=
.seq NamedBody733_141 NamedBody733_146

def NamedBody733_148 : StackLang.HolProg 64 :=
.seq NamedBody733_140 NamedBody733_147

def NamedBody733_149 : StackLang.HolProg 64 :=
.seq NamedBody733_139 NamedBody733_148

def NamedBody733_150 : StackLang.HolProg 64 :=
.seq NamedBody733_138 NamedBody733_149

def NamedBody733_151 : StackLang.HolProg 64 :=
.seq NamedBody733_137 NamedBody733_150

def NamedBody733_152 : StackLang.HolProg 64 :=
.seq NamedBody733_136 NamedBody733_151

def NamedBody733_153 : StackLang.HolProg 64 :=
.seq NamedBody733_135 NamedBody733_152

def NamedBody733_154 : StackLang.HolProg 64 :=
.seq NamedBody733_134 NamedBody733_153

def NamedBody733_155 : StackLang.HolProg 64 :=
.seq NamedBody733_133 NamedBody733_154

def NamedBody733_156 : StackLang.HolProg 64 :=
.seq NamedBody733_132 NamedBody733_155

def NamedBody733_157 : StackLang.HolProg 64 :=
.seq NamedBody733_131 NamedBody733_156

def NamedBody733_158 : StackLang.HolProg 64 :=
.seq NamedBody733_130 NamedBody733_157

def NamedBody733_159 : StackLang.HolProg 64 :=
.seq NamedBody733_129 NamedBody733_158

def NamedBody733_160 : StackLang.HolProg 64 :=
.seq NamedBody733_128 NamedBody733_159

def NamedBody733_161 : StackLang.HolProg 64 :=
.seq NamedBody733_127 NamedBody733_160

def NamedBody733_162 : StackLang.HolProg 64 :=
.seq NamedBody733_126 NamedBody733_161

def NamedBody733_163 : StackLang.HolProg 64 :=
.seq NamedBody733_125 NamedBody733_162

def NamedBody733_164 : StackLang.HolProg 64 :=
.seq NamedBody733_124 NamedBody733_163

def NamedBody733_165 : StackLang.HolProg 64 :=
.seq NamedBody733_123 NamedBody733_164

def NamedBody733_166 : StackLang.HolProg 64 :=
.seq NamedBody733_122 NamedBody733_165

def NamedBody733_167 : StackLang.HolProg 64 :=
.seq NamedBody733_121 NamedBody733_166

def NamedBody733_168 : StackLang.HolProg 64 :=
.seq NamedBody733_120 NamedBody733_167

def NamedBody733_169 : StackLang.HolProg 64 :=
.seq NamedBody733_119 NamedBody733_168

def NamedBody733_170 : StackLang.HolProg 64 :=
.seq NamedBody733_118 NamedBody733_169

def NamedBody733_171 : StackLang.HolProg 64 :=
.seq NamedBody733_117 NamedBody733_170

def NamedBody733_172 : StackLang.HolProg 64 :=
.seq NamedBody733_116 NamedBody733_171

def NamedBody733_173 : StackLang.HolProg 64 :=
.seq NamedBody733_115 NamedBody733_172

def NamedBody733_174 : StackLang.HolProg 64 :=
.seq NamedBody733_114 NamedBody733_173

def NamedBody733_175 : StackLang.HolProg 64 :=
.seq NamedBody733_103 NamedBody733_174

def NamedBody733_176 : StackLang.HolProg 64 :=
.seq NamedBody733_102 NamedBody733_175

def NamedBody733_177 : StackLang.HolProg 64 :=
.seq NamedBody733_101 NamedBody733_176

def NamedBody733_178 : StackLang.HolProg 64 :=
.seq NamedBody733_100 NamedBody733_177

def NamedBody733_179 : StackLang.HolProg 64 :=
.seq NamedBody733_37 NamedBody733_178

def NamedBody733_180 : StackLang.HolProg 64 :=
.seq NamedBody733_32 NamedBody733_179

def NamedBody733_181 : StackLang.HolProg 64 :=
.seq NamedBody733_31 NamedBody733_180

def NamedBody733_182 : StackLang.HolProg 64 :=
.seq NamedBody733_30 NamedBody733_181

def NamedBody733_183 : StackLang.HolProg 64 :=
.seq NamedBody733_29 NamedBody733_182

def NamedBody733_184 : StackLang.HolProg 64 :=
.seq NamedBody733_28 NamedBody733_183

def NamedBody733_185 : StackLang.HolProg 64 :=
.seq NamedBody733_27 NamedBody733_184

def NamedBody733_186 : StackLang.HolProg 64 :=
.seq NamedBody733_26 NamedBody733_185

def NamedBody733_187 : StackLang.HolProg 64 :=
.seq NamedBody733_25 NamedBody733_186

def NamedBody733_188 : StackLang.HolProg 64 :=
.seq NamedBody733_24 NamedBody733_187

def NamedBody733_189 : StackLang.HolProg 64 :=
.seq NamedBody733_23 NamedBody733_188

def NamedBody733_190 : StackLang.HolProg 64 :=
.seq NamedBody733_22 NamedBody733_189

def NamedBody733_191 : StackLang.HolProg 64 :=
.seq NamedBody733_21 NamedBody733_190

def NamedBody733_192 : StackLang.HolProg 64 :=
.seq NamedBody733_20 NamedBody733_191

def NamedBody733_193 : StackLang.HolProg 64 :=
.seq NamedBody733_19 NamedBody733_192

def NamedBody733_194 : StackLang.HolProg 64 :=
.seq NamedBody733_18 NamedBody733_193

def NamedBody733_195 : StackLang.HolProg 64 :=
.seq NamedBody733_17 NamedBody733_194

def NamedBody733_196 : StackLang.HolProg 64 :=
.seq NamedBody733_16 NamedBody733_195

def NamedBody733_197 : StackLang.HolProg 64 :=
.seq NamedBody733_15 NamedBody733_196

def NamedBody733_198 : StackLang.HolProg 64 :=
.seq NamedBody733_14 NamedBody733_197

def NamedBody733_199 : StackLang.HolProg 64 :=
.seq NamedBody733_13 NamedBody733_198

def NamedBody733_200 : StackLang.HolProg 64 :=
.seq NamedBody733_12 NamedBody733_199

def NamedBody733_201 : StackLang.HolProg 64 :=
.seq NamedBody733_11 NamedBody733_200

def NamedBody733_202 : StackLang.HolProg 64 :=
.seq NamedBody733_10 NamedBody733_201

def NamedBody733_203 : StackLang.HolProg 64 :=
.seq NamedBody733_9 NamedBody733_202

def NamedBody733_204 : StackLang.HolProg 64 :=
.seq NamedBody733_6 NamedBody733_203

def Named733 : Nat × StackLang.HolProg 64 := (733, NamedBody733_204)
theorem Named733_eq : StackNames.progCompEntryHOL RiscVConfig.riscvNames Removed733 = Named733 := by
  kernel_rfl
#print axioms Named733_eq
end InitECandidate.Proofs.BackendStages
