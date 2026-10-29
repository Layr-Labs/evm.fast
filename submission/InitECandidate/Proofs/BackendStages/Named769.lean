import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.BackendStages.Removed769
import Flapjack.Compiler.Backend.Backend
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
namespace InitECandidate.Proofs.BackendStages
def NamedBody769_0 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 32#64)))

def NamedBody769_1 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 2#64)

def NamedBody769_2 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 10

def NamedBody769_3 : StackLang.HolProg 64 :=
.seq NamedBody769_1 NamedBody769_2

def NamedBody769_4 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody769_5 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) NamedBody769_3 NamedBody769_4

def NamedBody769_6 : StackLang.HolProg 64 :=
.seq NamedBody769_0 NamedBody769_5

def NamedBody769_7 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 8 10
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 10)))

def NamedBody769_8 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 10
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 11 48#64))

def NamedBody769_9 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 7 11
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 11)))

def NamedBody769_10 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 11
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 7 56#64))

def NamedBody769_11 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody769_12 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 12
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 7 64#64))

def NamedBody769_13 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody769_14 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 13
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 7 72#64))

def NamedBody769_15 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody769_16 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 5
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 7 80#64))

def NamedBody769_17 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody769_18 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 6
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 7 88#64))

def NamedBody769_19 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 24#64))

def NamedBody769_20 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 7
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody769_21 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 8
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody769_22 : StackLang.HolProg 64 :=
.seq NamedBody769_20 NamedBody769_21

def NamedBody769_23 : StackLang.HolProg 64 :=
.seq NamedBody769_19 NamedBody769_22

def NamedBody769_24 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody769_25 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 3455#64)

def NamedBody769_26 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody769_27 : StackLang.HolProg 64 :=
.seq NamedBody769_25 NamedBody769_26

def NamedBody769_28 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody769_29 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 2#64)

def NamedBody769_30 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 10

def NamedBody769_31 : StackLang.HolProg 64 :=
.seq NamedBody769_29 NamedBody769_30

def NamedBody769_32 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody769_33 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) NamedBody769_31 NamedBody769_32

def NamedBody769_34 : StackLang.HolProg 64 :=
.seq NamedBody769_28 NamedBody769_33

def NamedBody769_35 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def NamedBody769_36 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody769_37 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 769 3

def NamedBody769_38 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody769_39 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody769_40 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody769_41 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody769_42 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def NamedBody769_43 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def NamedBody769_44 : StackLang.HolProg 64 :=
.seq NamedBody769_42 NamedBody769_43

def NamedBody769_45 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def NamedBody769_46 : StackLang.HolProg 64 :=
.seq NamedBody769_44 NamedBody769_45

def NamedBody769_47 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody769_48 : StackLang.HolProg 64 :=
.seq NamedBody769_46 NamedBody769_47

def NamedBody769_49 : StackLang.HolProg 64 :=
.seq NamedBody769_41 NamedBody769_48

def NamedBody769_50 : StackLang.HolProg 64 :=
.seq NamedBody769_40 NamedBody769_49

def NamedBody769_51 : StackLang.HolProg 64 :=
.seq NamedBody769_39 NamedBody769_50

def NamedBody769_52 : StackLang.HolProg 64 :=
.seq NamedBody769_38 NamedBody769_51

def NamedBody769_53 : StackLang.HolProg 64 :=
.seq NamedBody769_37 NamedBody769_52

def NamedBody769_54 : StackLang.HolProg 64 :=
.seq NamedBody769_36 NamedBody769_53

def NamedBody769_55 : StackLang.HolProg 64 :=
.seq NamedBody769_35 NamedBody769_54

def NamedBody769_56 : StackLang.HolProg 64 :=
.seq NamedBody769_34 NamedBody769_55

def NamedBody769_57 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody769_58 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody769_59 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody769_60 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody769_61 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody769_62 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody769_63 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 30 6
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 6)))

def NamedBody769_64 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 29 13
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 13)))

def NamedBody769_65 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 15 5
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 5)))

def NamedBody769_66 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 14 10
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 10)))

def NamedBody769_67 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 17 11
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 11)))

def NamedBody769_68 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 16 12
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 12)))

def NamedBody769_69 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 19
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 24#64))

def NamedBody769_70 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody769_71 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 18
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody769_72 : StackLang.HolProg 64 :=
.seq NamedBody769_70 NamedBody769_71

def NamedBody769_73 : StackLang.HolProg 64 :=
.seq NamedBody769_69 NamedBody769_72

def NamedBody769_74 : StackLang.HolProg 64 :=
.seq NamedBody769_68 NamedBody769_73

def NamedBody769_75 : StackLang.HolProg 64 :=
.seq NamedBody769_67 NamedBody769_74

def NamedBody769_76 : StackLang.HolProg 64 :=
.seq NamedBody769_66 NamedBody769_75

def NamedBody769_77 : StackLang.HolProg 64 :=
.seq NamedBody769_65 NamedBody769_76

def NamedBody769_78 : StackLang.HolProg 64 :=
.seq NamedBody769_64 NamedBody769_77

def NamedBody769_79 : StackLang.HolProg 64 :=
.seq NamedBody769_63 NamedBody769_78

def NamedBody769_80 : StackLang.HolProg 64 :=
.seq NamedBody769_62 NamedBody769_79

def NamedBody769_81 : StackLang.HolProg 64 :=
.seq NamedBody769_61 NamedBody769_80

def NamedBody769_82 : StackLang.HolProg 64 :=
.seq NamedBody769_60 NamedBody769_81

def NamedBody769_83 : StackLang.HolProg 64 :=
.seq NamedBody769_59 NamedBody769_82

def NamedBody769_84 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 19
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 24#64))

def NamedBody769_85 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody769_86 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 18
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody769_87 : StackLang.HolProg 64 :=
.seq NamedBody769_85 NamedBody769_86

def NamedBody769_88 : StackLang.HolProg 64 :=
.seq NamedBody769_84 NamedBody769_87

def NamedBody769_89 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def NamedBody769_90 : StackLang.HolProg 64 :=
.seq NamedBody769_88 NamedBody769_89

def NamedBody769_91 : StackLang.HolProg 64 :=
.call (some (NamedBody769_83, 1, 769, 2)) (Sum.inl 712) (some (NamedBody769_90, 769, 3))

def NamedBody769_92 : StackLang.HolProg 64 :=
.seq NamedBody769_58 NamedBody769_91

def NamedBody769_93 : StackLang.HolProg 64 :=
.seq NamedBody769_57 NamedBody769_92

def NamedBody769_94 : StackLang.HolProg 64 :=
.seq NamedBody769_56 NamedBody769_93

def NamedBody769_95 : StackLang.HolProg 64 :=
.seq NamedBody769_27 NamedBody769_94

def NamedBody769_96 : StackLang.HolProg 64 :=
.seq NamedBody769_24 NamedBody769_95

def NamedBody769_97 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody769_98 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody769_99 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody769_100 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody769_101 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 27
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 1 0#64))

def NamedBody769_102 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody769_103 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 5
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 1 8#64))

def NamedBody769_104 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody769_105 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 6
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 1 16#64))

def NamedBody769_106 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody769_107 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 7
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 1 24#64))

def NamedBody769_108 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody769_109 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 8
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 1 32#64))

def NamedBody769_110 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody769_111 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 9
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 1 40#64))

def NamedBody769_112 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody769_113 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 12
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 1 96#64))

def NamedBody769_114 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody769_115 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 28
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 1 104#64))

def NamedBody769_116 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody769_117 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 11
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 1 112#64))

def NamedBody769_118 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody769_119 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 13
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 1 120#64))

def NamedBody769_120 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody769_121 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 10
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 1 128#64))

def NamedBody769_122 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody769_123 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 1 136#64))

def NamedBody769_124 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody769_125 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 27
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 18 0#64))

def NamedBody769_126 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody769_127 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 5
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 18 8#64))

def NamedBody769_128 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody769_129 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 6
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 18 16#64))

def NamedBody769_130 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody769_131 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 7
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 18 24#64))

def NamedBody769_132 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody769_133 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 8
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 18 32#64))

def NamedBody769_134 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody769_135 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 9
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 18 40#64))

def NamedBody769_136 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody769_137 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 5 18
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 96#64)))

def NamedBody769_138 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody769_139 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 12
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 5 0#64))

def NamedBody769_140 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody769_141 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 28
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 5 8#64))

def NamedBody769_142 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody769_143 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 11
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 5 16#64))

def NamedBody769_144 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody769_145 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 13
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 5 24#64))

def NamedBody769_146 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody769_147 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 10
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 5 32#64))

def NamedBody769_148 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody769_149 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 5 40#64))

def NamedBody769_150 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody769_151 : StackLang.HolProg 64 :=
.seq NamedBody769_149 NamedBody769_150

def NamedBody769_152 : StackLang.HolProg 64 :=
.seq NamedBody769_148 NamedBody769_151

def NamedBody769_153 : StackLang.HolProg 64 :=
.seq NamedBody769_147 NamedBody769_152

def NamedBody769_154 : StackLang.HolProg 64 :=
.seq NamedBody769_146 NamedBody769_153

def NamedBody769_155 : StackLang.HolProg 64 :=
.seq NamedBody769_145 NamedBody769_154

def NamedBody769_156 : StackLang.HolProg 64 :=
.seq NamedBody769_144 NamedBody769_155

def NamedBody769_157 : StackLang.HolProg 64 :=
.seq NamedBody769_143 NamedBody769_156

def NamedBody769_158 : StackLang.HolProg 64 :=
.seq NamedBody769_142 NamedBody769_157

def NamedBody769_159 : StackLang.HolProg 64 :=
.seq NamedBody769_141 NamedBody769_158

def NamedBody769_160 : StackLang.HolProg 64 :=
.seq NamedBody769_140 NamedBody769_159

def NamedBody769_161 : StackLang.HolProg 64 :=
.seq NamedBody769_139 NamedBody769_160

def NamedBody769_162 : StackLang.HolProg 64 :=
.seq NamedBody769_138 NamedBody769_161

def NamedBody769_163 : StackLang.HolProg 64 :=
.seq NamedBody769_137 NamedBody769_162

def NamedBody769_164 : StackLang.HolProg 64 :=
.seq NamedBody769_136 NamedBody769_163

def NamedBody769_165 : StackLang.HolProg 64 :=
.seq NamedBody769_135 NamedBody769_164

def NamedBody769_166 : StackLang.HolProg 64 :=
.seq NamedBody769_134 NamedBody769_165

def NamedBody769_167 : StackLang.HolProg 64 :=
.seq NamedBody769_133 NamedBody769_166

def NamedBody769_168 : StackLang.HolProg 64 :=
.seq NamedBody769_132 NamedBody769_167

def NamedBody769_169 : StackLang.HolProg 64 :=
.seq NamedBody769_131 NamedBody769_168

def NamedBody769_170 : StackLang.HolProg 64 :=
.seq NamedBody769_130 NamedBody769_169

def NamedBody769_171 : StackLang.HolProg 64 :=
.seq NamedBody769_129 NamedBody769_170

def NamedBody769_172 : StackLang.HolProg 64 :=
.seq NamedBody769_128 NamedBody769_171

def NamedBody769_173 : StackLang.HolProg 64 :=
.seq NamedBody769_127 NamedBody769_172

def NamedBody769_174 : StackLang.HolProg 64 :=
.seq NamedBody769_126 NamedBody769_173

def NamedBody769_175 : StackLang.HolProg 64 :=
.seq NamedBody769_125 NamedBody769_174

def NamedBody769_176 : StackLang.HolProg 64 :=
.seq NamedBody769_124 NamedBody769_175

def NamedBody769_177 : StackLang.HolProg 64 :=
.seq NamedBody769_123 NamedBody769_176

def NamedBody769_178 : StackLang.HolProg 64 :=
.seq NamedBody769_122 NamedBody769_177

def NamedBody769_179 : StackLang.HolProg 64 :=
.seq NamedBody769_121 NamedBody769_178

def NamedBody769_180 : StackLang.HolProg 64 :=
.seq NamedBody769_120 NamedBody769_179

def NamedBody769_181 : StackLang.HolProg 64 :=
.seq NamedBody769_119 NamedBody769_180

def NamedBody769_182 : StackLang.HolProg 64 :=
.seq NamedBody769_118 NamedBody769_181

def NamedBody769_183 : StackLang.HolProg 64 :=
.seq NamedBody769_117 NamedBody769_182

def NamedBody769_184 : StackLang.HolProg 64 :=
.seq NamedBody769_116 NamedBody769_183

def NamedBody769_185 : StackLang.HolProg 64 :=
.seq NamedBody769_115 NamedBody769_184

def NamedBody769_186 : StackLang.HolProg 64 :=
.seq NamedBody769_114 NamedBody769_185

def NamedBody769_187 : StackLang.HolProg 64 :=
.seq NamedBody769_113 NamedBody769_186

def NamedBody769_188 : StackLang.HolProg 64 :=
.seq NamedBody769_112 NamedBody769_187

def NamedBody769_189 : StackLang.HolProg 64 :=
.seq NamedBody769_111 NamedBody769_188

def NamedBody769_190 : StackLang.HolProg 64 :=
.seq NamedBody769_110 NamedBody769_189

def NamedBody769_191 : StackLang.HolProg 64 :=
.seq NamedBody769_109 NamedBody769_190

def NamedBody769_192 : StackLang.HolProg 64 :=
.seq NamedBody769_108 NamedBody769_191

def NamedBody769_193 : StackLang.HolProg 64 :=
.seq NamedBody769_107 NamedBody769_192

def NamedBody769_194 : StackLang.HolProg 64 :=
.seq NamedBody769_106 NamedBody769_193

def NamedBody769_195 : StackLang.HolProg 64 :=
.seq NamedBody769_105 NamedBody769_194

def NamedBody769_196 : StackLang.HolProg 64 :=
.seq NamedBody769_104 NamedBody769_195

def NamedBody769_197 : StackLang.HolProg 64 :=
.seq NamedBody769_103 NamedBody769_196

def NamedBody769_198 : StackLang.HolProg 64 :=
.seq NamedBody769_102 NamedBody769_197

def NamedBody769_199 : StackLang.HolProg 64 :=
.seq NamedBody769_101 NamedBody769_198

def NamedBody769_200 : StackLang.HolProg 64 :=
.seq NamedBody769_100 NamedBody769_199

def NamedBody769_201 : StackLang.HolProg 64 :=
.seq NamedBody769_99 NamedBody769_200

def NamedBody769_202 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody769_203 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody769_204 : StackLang.HolProg 64 :=
.seq NamedBody769_202 NamedBody769_203

def NamedBody769_205 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.notEqual) 18 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1) NamedBody769_201 NamedBody769_204

def NamedBody769_206 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody769_207 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody769_208 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 1 18
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 48#64)))

def NamedBody769_209 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody769_210 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 14
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 1 0#64))

def NamedBody769_211 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody769_212 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 17
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 1 8#64))

def NamedBody769_213 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody769_214 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 16
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 1 16#64))

def NamedBody769_215 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody769_216 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 29
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 1 24#64))

def NamedBody769_217 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody769_218 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 15
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 1 32#64))

def NamedBody769_219 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody769_220 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 30
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 1 40#64))

def NamedBody769_221 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 0#64)

def NamedBody769_222 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody769_223 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 32#64)))

def NamedBody769_224 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 19

def NamedBody769_225 : StackLang.HolProg 64 :=
.seq NamedBody769_223 NamedBody769_224

def NamedBody769_226 : StackLang.HolProg 64 :=
.seq NamedBody769_222 NamedBody769_225

def NamedBody769_227 : StackLang.HolProg 64 :=
.seq NamedBody769_221 NamedBody769_226

def NamedBody769_228 : StackLang.HolProg 64 :=
.seq NamedBody769_220 NamedBody769_227

def NamedBody769_229 : StackLang.HolProg 64 :=
.seq NamedBody769_219 NamedBody769_228

def NamedBody769_230 : StackLang.HolProg 64 :=
.seq NamedBody769_218 NamedBody769_229

def NamedBody769_231 : StackLang.HolProg 64 :=
.seq NamedBody769_217 NamedBody769_230

def NamedBody769_232 : StackLang.HolProg 64 :=
.seq NamedBody769_216 NamedBody769_231

def NamedBody769_233 : StackLang.HolProg 64 :=
.seq NamedBody769_215 NamedBody769_232

def NamedBody769_234 : StackLang.HolProg 64 :=
.seq NamedBody769_214 NamedBody769_233

def NamedBody769_235 : StackLang.HolProg 64 :=
.seq NamedBody769_213 NamedBody769_234

def NamedBody769_236 : StackLang.HolProg 64 :=
.seq NamedBody769_212 NamedBody769_235

def NamedBody769_237 : StackLang.HolProg 64 :=
.seq NamedBody769_211 NamedBody769_236

def NamedBody769_238 : StackLang.HolProg 64 :=
.seq NamedBody769_210 NamedBody769_237

def NamedBody769_239 : StackLang.HolProg 64 :=
.seq NamedBody769_209 NamedBody769_238

def NamedBody769_240 : StackLang.HolProg 64 :=
.seq NamedBody769_208 NamedBody769_239

def NamedBody769_241 : StackLang.HolProg 64 :=
.seq NamedBody769_207 NamedBody769_240

def NamedBody769_242 : StackLang.HolProg 64 :=
.seq NamedBody769_206 NamedBody769_241

def NamedBody769_243 : StackLang.HolProg 64 :=
.seq NamedBody769_205 NamedBody769_242

def NamedBody769_244 : StackLang.HolProg 64 :=
.seq NamedBody769_98 NamedBody769_243

def NamedBody769_245 : StackLang.HolProg 64 :=
.seq NamedBody769_97 NamedBody769_244

def NamedBody769_246 : StackLang.HolProg 64 :=
.seq NamedBody769_96 NamedBody769_245

def NamedBody769_247 : StackLang.HolProg 64 :=
.seq NamedBody769_23 NamedBody769_246

def NamedBody769_248 : StackLang.HolProg 64 :=
.seq NamedBody769_18 NamedBody769_247

def NamedBody769_249 : StackLang.HolProg 64 :=
.seq NamedBody769_17 NamedBody769_248

def NamedBody769_250 : StackLang.HolProg 64 :=
.seq NamedBody769_16 NamedBody769_249

def NamedBody769_251 : StackLang.HolProg 64 :=
.seq NamedBody769_15 NamedBody769_250

def NamedBody769_252 : StackLang.HolProg 64 :=
.seq NamedBody769_14 NamedBody769_251

def NamedBody769_253 : StackLang.HolProg 64 :=
.seq NamedBody769_13 NamedBody769_252

def NamedBody769_254 : StackLang.HolProg 64 :=
.seq NamedBody769_12 NamedBody769_253

def NamedBody769_255 : StackLang.HolProg 64 :=
.seq NamedBody769_11 NamedBody769_254

def NamedBody769_256 : StackLang.HolProg 64 :=
.seq NamedBody769_10 NamedBody769_255

def NamedBody769_257 : StackLang.HolProg 64 :=
.seq NamedBody769_9 NamedBody769_256

def NamedBody769_258 : StackLang.HolProg 64 :=
.seq NamedBody769_8 NamedBody769_257

def NamedBody769_259 : StackLang.HolProg 64 :=
.seq NamedBody769_7 NamedBody769_258

def NamedBody769_260 : StackLang.HolProg 64 :=
.seq NamedBody769_6 NamedBody769_259

def Named769 : Nat × StackLang.HolProg 64 := (769, NamedBody769_260)
theorem Named769_eq : StackNames.progCompEntryHOL RiscVConfig.riscvNames Removed769 = Named769 := by
  kernel_rfl
#print axioms Named769_eq
end InitECandidate.Proofs.BackendStages
