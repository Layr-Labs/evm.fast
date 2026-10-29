import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.BackendStages.Removed653
import Flapjack.Compiler.Backend.Backend
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
namespace InitECandidate.Proofs.BackendStages
def NamedBody653_0 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 88#64)))

def NamedBody653_1 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 2#64)

def NamedBody653_2 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 10

def NamedBody653_3 : StackLang.HolProg 64 :=
.seq NamedBody653_1 NamedBody653_2

def NamedBody653_4 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody653_5 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) NamedBody653_3 NamedBody653_4

def NamedBody653_6 : StackLang.HolProg 64 :=
.seq NamedBody653_0 NamedBody653_5

def NamedBody653_7 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 5 10
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 10)))

def NamedBody653_8 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 10
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 5 64#64))

def NamedBody653_9 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody653_10 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 11
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 5 72#64))

def NamedBody653_11 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody653_12 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 12
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 5 80#64))

def NamedBody653_13 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody653_14 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 13
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 5 88#64))

def NamedBody653_15 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 80#64))

def NamedBody653_16 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 13
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 72#64))

def NamedBody653_17 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 11
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 64#64))

def NamedBody653_18 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 12
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 56#64))

def NamedBody653_19 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 5
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 48#64))

def NamedBody653_20 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 10
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 40#64))

def NamedBody653_21 : StackLang.HolProg 64 :=
.seq NamedBody653_19 NamedBody653_20

def NamedBody653_22 : StackLang.HolProg 64 :=
.seq NamedBody653_18 NamedBody653_21

def NamedBody653_23 : StackLang.HolProg 64 :=
.seq NamedBody653_17 NamedBody653_22

def NamedBody653_24 : StackLang.HolProg 64 :=
.seq NamedBody653_16 NamedBody653_23

def NamedBody653_25 : StackLang.HolProg 64 :=
.seq NamedBody653_15 NamedBody653_24

def NamedBody653_26 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody653_27 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 2695#64)

def NamedBody653_28 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody653_29 : StackLang.HolProg 64 :=
.seq NamedBody653_27 NamedBody653_28

def NamedBody653_30 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody653_31 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 2#64)

def NamedBody653_32 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 10

def NamedBody653_33 : StackLang.HolProg 64 :=
.seq NamedBody653_31 NamedBody653_32

def NamedBody653_34 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody653_35 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) NamedBody653_33 NamedBody653_34

def NamedBody653_36 : StackLang.HolProg 64 :=
.seq NamedBody653_30 NamedBody653_35

def NamedBody653_37 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def NamedBody653_38 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody653_39 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 653 3

def NamedBody653_40 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody653_41 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody653_42 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody653_43 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody653_44 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def NamedBody653_45 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def NamedBody653_46 : StackLang.HolProg 64 :=
.seq NamedBody653_44 NamedBody653_45

def NamedBody653_47 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def NamedBody653_48 : StackLang.HolProg 64 :=
.seq NamedBody653_46 NamedBody653_47

def NamedBody653_49 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody653_50 : StackLang.HolProg 64 :=
.seq NamedBody653_48 NamedBody653_49

def NamedBody653_51 : StackLang.HolProg 64 :=
.seq NamedBody653_43 NamedBody653_50

def NamedBody653_52 : StackLang.HolProg 64 :=
.seq NamedBody653_42 NamedBody653_51

def NamedBody653_53 : StackLang.HolProg 64 :=
.seq NamedBody653_41 NamedBody653_52

def NamedBody653_54 : StackLang.HolProg 64 :=
.seq NamedBody653_40 NamedBody653_53

def NamedBody653_55 : StackLang.HolProg 64 :=
.seq NamedBody653_39 NamedBody653_54

def NamedBody653_56 : StackLang.HolProg 64 :=
.seq NamedBody653_38 NamedBody653_55

def NamedBody653_57 : StackLang.HolProg 64 :=
.seq NamedBody653_37 NamedBody653_56

def NamedBody653_58 : StackLang.HolProg 64 :=
.seq NamedBody653_36 NamedBody653_57

def NamedBody653_59 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody653_60 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody653_61 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody653_62 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody653_63 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody653_64 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody653_65 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 1 10
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 10)))

def NamedBody653_66 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 6
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 80#64))

def NamedBody653_67 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 13
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 72#64))

def NamedBody653_68 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 11
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 64#64))

def NamedBody653_69 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 12
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 56#64))

def NamedBody653_70 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 5
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 40#64))

def NamedBody653_71 : StackLang.HolProg 64 :=
.seq NamedBody653_69 NamedBody653_70

def NamedBody653_72 : StackLang.HolProg 64 :=
.seq NamedBody653_68 NamedBody653_71

def NamedBody653_73 : StackLang.HolProg 64 :=
.seq NamedBody653_67 NamedBody653_72

def NamedBody653_74 : StackLang.HolProg 64 :=
.seq NamedBody653_66 NamedBody653_73

def NamedBody653_75 : StackLang.HolProg 64 :=
.seq NamedBody653_65 NamedBody653_74

def NamedBody653_76 : StackLang.HolProg 64 :=
.seq NamedBody653_64 NamedBody653_75

def NamedBody653_77 : StackLang.HolProg 64 :=
.seq NamedBody653_63 NamedBody653_76

def NamedBody653_78 : StackLang.HolProg 64 :=
.seq NamedBody653_62 NamedBody653_77

def NamedBody653_79 : StackLang.HolProg 64 :=
.seq NamedBody653_61 NamedBody653_78

def NamedBody653_80 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 6
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 80#64))

def NamedBody653_81 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 13
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 72#64))

def NamedBody653_82 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 11
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 64#64))

def NamedBody653_83 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 12
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 56#64))

def NamedBody653_84 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 5
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 40#64))

def NamedBody653_85 : StackLang.HolProg 64 :=
.seq NamedBody653_83 NamedBody653_84

def NamedBody653_86 : StackLang.HolProg 64 :=
.seq NamedBody653_82 NamedBody653_85

def NamedBody653_87 : StackLang.HolProg 64 :=
.seq NamedBody653_81 NamedBody653_86

def NamedBody653_88 : StackLang.HolProg 64 :=
.seq NamedBody653_80 NamedBody653_87

def NamedBody653_89 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def NamedBody653_90 : StackLang.HolProg 64 :=
.seq NamedBody653_88 NamedBody653_89

def NamedBody653_91 : StackLang.HolProg 64 :=
.call (some (NamedBody653_79, 1, 653, 2)) (Sum.inl 102) (some (NamedBody653_90, 653, 3))

def NamedBody653_92 : StackLang.HolProg 64 :=
.seq NamedBody653_60 NamedBody653_91

def NamedBody653_93 : StackLang.HolProg 64 :=
.seq NamedBody653_59 NamedBody653_92

def NamedBody653_94 : StackLang.HolProg 64 :=
.seq NamedBody653_58 NamedBody653_93

def NamedBody653_95 : StackLang.HolProg 64 :=
.seq NamedBody653_29 NamedBody653_94

def NamedBody653_96 : StackLang.HolProg 64 :=
.seq NamedBody653_26 NamedBody653_95

def NamedBody653_97 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody653_98 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody653_99 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 1#64)

def NamedBody653_100 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody653_101 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 0#64)

def NamedBody653_102 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody653_103 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 88#64)))

def NamedBody653_104 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 6

def NamedBody653_105 : StackLang.HolProg 64 :=
.seq NamedBody653_103 NamedBody653_104

def NamedBody653_106 : StackLang.HolProg 64 :=
.seq NamedBody653_102 NamedBody653_105

def NamedBody653_107 : StackLang.HolProg 64 :=
.seq NamedBody653_101 NamedBody653_106

def NamedBody653_108 : StackLang.HolProg 64 :=
.seq NamedBody653_100 NamedBody653_107

def NamedBody653_109 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody653_110 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.equal) 1 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 10) NamedBody653_108 NamedBody653_109

def NamedBody653_111 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody653_112 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody653_113 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 10 5
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 5)))

def NamedBody653_114 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 6
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 80#64))

def NamedBody653_115 : StackLang.HolProg 64 :=
.seq NamedBody653_113 NamedBody653_114

def NamedBody653_116 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody653_117 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 2696#64)

def NamedBody653_118 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody653_119 : StackLang.HolProg 64 :=
.seq NamedBody653_117 NamedBody653_118

def NamedBody653_120 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody653_121 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 2#64)

def NamedBody653_122 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 10

def NamedBody653_123 : StackLang.HolProg 64 :=
.seq NamedBody653_121 NamedBody653_122

def NamedBody653_124 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody653_125 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) NamedBody653_123 NamedBody653_124

def NamedBody653_126 : StackLang.HolProg 64 :=
.seq NamedBody653_120 NamedBody653_125

def NamedBody653_127 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def NamedBody653_128 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody653_129 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 653 5

def NamedBody653_130 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody653_131 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody653_132 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody653_133 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody653_134 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def NamedBody653_135 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def NamedBody653_136 : StackLang.HolProg 64 :=
.seq NamedBody653_134 NamedBody653_135

def NamedBody653_137 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def NamedBody653_138 : StackLang.HolProg 64 :=
.seq NamedBody653_136 NamedBody653_137

def NamedBody653_139 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody653_140 : StackLang.HolProg 64 :=
.seq NamedBody653_138 NamedBody653_139

def NamedBody653_141 : StackLang.HolProg 64 :=
.seq NamedBody653_133 NamedBody653_140

def NamedBody653_142 : StackLang.HolProg 64 :=
.seq NamedBody653_132 NamedBody653_141

def NamedBody653_143 : StackLang.HolProg 64 :=
.seq NamedBody653_131 NamedBody653_142

def NamedBody653_144 : StackLang.HolProg 64 :=
.seq NamedBody653_130 NamedBody653_143

def NamedBody653_145 : StackLang.HolProg 64 :=
.seq NamedBody653_129 NamedBody653_144

def NamedBody653_146 : StackLang.HolProg 64 :=
.seq NamedBody653_128 NamedBody653_145

def NamedBody653_147 : StackLang.HolProg 64 :=
.seq NamedBody653_127 NamedBody653_146

def NamedBody653_148 : StackLang.HolProg 64 :=
.seq NamedBody653_126 NamedBody653_147

def NamedBody653_149 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody653_150 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody653_151 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody653_152 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody653_153 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody653_154 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody653_155 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 1 10
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 10)))

def NamedBody653_156 : StackLang.HolProg 64 :=
.seq NamedBody653_154 NamedBody653_155

def NamedBody653_157 : StackLang.HolProg 64 :=
.seq NamedBody653_153 NamedBody653_156

def NamedBody653_158 : StackLang.HolProg 64 :=
.seq NamedBody653_152 NamedBody653_157

def NamedBody653_159 : StackLang.HolProg 64 :=
.seq NamedBody653_151 NamedBody653_158

def NamedBody653_160 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody653_161 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def NamedBody653_162 : StackLang.HolProg 64 :=
.seq NamedBody653_160 NamedBody653_161

def NamedBody653_163 : StackLang.HolProg 64 :=
.call (some (NamedBody653_159, 1, 653, 4)) (Sum.inl 647) (some (NamedBody653_162, 653, 5))

def NamedBody653_164 : StackLang.HolProg 64 :=
.seq NamedBody653_150 NamedBody653_163

def NamedBody653_165 : StackLang.HolProg 64 :=
.seq NamedBody653_149 NamedBody653_164

def NamedBody653_166 : StackLang.HolProg 64 :=
.seq NamedBody653_148 NamedBody653_165

def NamedBody653_167 : StackLang.HolProg 64 :=
.seq NamedBody653_119 NamedBody653_166

def NamedBody653_168 : StackLang.HolProg 64 :=
.seq NamedBody653_116 NamedBody653_167

def NamedBody653_169 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody653_170 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 10 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def NamedBody653_171 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 11
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 72#64))

def NamedBody653_172 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 12
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 64#64))

def NamedBody653_173 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 13
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 56#64))

def NamedBody653_174 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 40#64))

def NamedBody653_175 : StackLang.HolProg 64 :=
.seq NamedBody653_173 NamedBody653_174

def NamedBody653_176 : StackLang.HolProg 64 :=
.seq NamedBody653_172 NamedBody653_175

def NamedBody653_177 : StackLang.HolProg 64 :=
.seq NamedBody653_171 NamedBody653_176

def NamedBody653_178 : StackLang.HolProg 64 :=
.seq NamedBody653_170 NamedBody653_177

def NamedBody653_179 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody653_180 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 2697#64)

def NamedBody653_181 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody653_182 : StackLang.HolProg 64 :=
.seq NamedBody653_180 NamedBody653_181

def NamedBody653_183 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody653_184 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 2#64)

def NamedBody653_185 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 10

def NamedBody653_186 : StackLang.HolProg 64 :=
.seq NamedBody653_184 NamedBody653_185

def NamedBody653_187 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody653_188 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) NamedBody653_186 NamedBody653_187

def NamedBody653_189 : StackLang.HolProg 64 :=
.seq NamedBody653_183 NamedBody653_188

def NamedBody653_190 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def NamedBody653_191 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody653_192 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 653 7

def NamedBody653_193 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody653_194 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody653_195 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody653_196 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody653_197 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def NamedBody653_198 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def NamedBody653_199 : StackLang.HolProg 64 :=
.seq NamedBody653_197 NamedBody653_198

def NamedBody653_200 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def NamedBody653_201 : StackLang.HolProg 64 :=
.seq NamedBody653_199 NamedBody653_200

def NamedBody653_202 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody653_203 : StackLang.HolProg 64 :=
.seq NamedBody653_201 NamedBody653_202

def NamedBody653_204 : StackLang.HolProg 64 :=
.seq NamedBody653_196 NamedBody653_203

def NamedBody653_205 : StackLang.HolProg 64 :=
.seq NamedBody653_195 NamedBody653_204

def NamedBody653_206 : StackLang.HolProg 64 :=
.seq NamedBody653_194 NamedBody653_205

def NamedBody653_207 : StackLang.HolProg 64 :=
.seq NamedBody653_193 NamedBody653_206

def NamedBody653_208 : StackLang.HolProg 64 :=
.seq NamedBody653_192 NamedBody653_207

def NamedBody653_209 : StackLang.HolProg 64 :=
.seq NamedBody653_191 NamedBody653_208

def NamedBody653_210 : StackLang.HolProg 64 :=
.seq NamedBody653_190 NamedBody653_209

def NamedBody653_211 : StackLang.HolProg 64 :=
.seq NamedBody653_189 NamedBody653_210

def NamedBody653_212 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody653_213 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody653_214 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody653_215 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody653_216 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody653_217 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody653_218 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 1 10
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 10)))

def NamedBody653_219 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 6
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 72#64))

def NamedBody653_220 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 7
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 64#64))

def NamedBody653_221 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 8
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 56#64))

def NamedBody653_222 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 48#64))

def NamedBody653_223 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 56#64))

def NamedBody653_224 : StackLang.HolProg 64 :=
.seq NamedBody653_222 NamedBody653_223

def NamedBody653_225 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 5
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 40#64))

def NamedBody653_226 : StackLang.HolProg 64 :=
.seq NamedBody653_224 NamedBody653_225

def NamedBody653_227 : StackLang.HolProg 64 :=
.seq NamedBody653_221 NamedBody653_226

def NamedBody653_228 : StackLang.HolProg 64 :=
.seq NamedBody653_220 NamedBody653_227

def NamedBody653_229 : StackLang.HolProg 64 :=
.seq NamedBody653_219 NamedBody653_228

def NamedBody653_230 : StackLang.HolProg 64 :=
.seq NamedBody653_218 NamedBody653_229

def NamedBody653_231 : StackLang.HolProg 64 :=
.seq NamedBody653_217 NamedBody653_230

def NamedBody653_232 : StackLang.HolProg 64 :=
.seq NamedBody653_216 NamedBody653_231

def NamedBody653_233 : StackLang.HolProg 64 :=
.seq NamedBody653_215 NamedBody653_232

def NamedBody653_234 : StackLang.HolProg 64 :=
.seq NamedBody653_214 NamedBody653_233

def NamedBody653_235 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 6
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 72#64))

def NamedBody653_236 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 7
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 64#64))

def NamedBody653_237 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 8
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 56#64))

def NamedBody653_238 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 48#64))

def NamedBody653_239 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 56#64))

def NamedBody653_240 : StackLang.HolProg 64 :=
.seq NamedBody653_238 NamedBody653_239

def NamedBody653_241 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 5
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 40#64))

def NamedBody653_242 : StackLang.HolProg 64 :=
.seq NamedBody653_240 NamedBody653_241

def NamedBody653_243 : StackLang.HolProg 64 :=
.seq NamedBody653_237 NamedBody653_242

def NamedBody653_244 : StackLang.HolProg 64 :=
.seq NamedBody653_236 NamedBody653_243

def NamedBody653_245 : StackLang.HolProg 64 :=
.seq NamedBody653_235 NamedBody653_244

def NamedBody653_246 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def NamedBody653_247 : StackLang.HolProg 64 :=
.seq NamedBody653_245 NamedBody653_246

def NamedBody653_248 : StackLang.HolProg 64 :=
.call (some (NamedBody653_234, 1, 653, 6)) (Sum.inl 646) (some (NamedBody653_247, 653, 7))

def NamedBody653_249 : StackLang.HolProg 64 :=
.seq NamedBody653_213 NamedBody653_248

def NamedBody653_250 : StackLang.HolProg 64 :=
.seq NamedBody653_212 NamedBody653_249

def NamedBody653_251 : StackLang.HolProg 64 :=
.seq NamedBody653_211 NamedBody653_250

def NamedBody653_252 : StackLang.HolProg 64 :=
.seq NamedBody653_182 NamedBody653_251

def NamedBody653_253 : StackLang.HolProg 64 :=
.seq NamedBody653_179 NamedBody653_252

def NamedBody653_254 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody653_255 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 10 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def NamedBody653_256 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 13
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 72#64))

def NamedBody653_257 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 12
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 64#64))

def NamedBody653_258 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 11
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 48#64))

def NamedBody653_259 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 40#64))

def NamedBody653_260 : StackLang.HolProg 64 :=
.seq NamedBody653_258 NamedBody653_259

def NamedBody653_261 : StackLang.HolProg 64 :=
.seq NamedBody653_257 NamedBody653_260

def NamedBody653_262 : StackLang.HolProg 64 :=
.seq NamedBody653_256 NamedBody653_261

def NamedBody653_263 : StackLang.HolProg 64 :=
.seq NamedBody653_255 NamedBody653_262

def NamedBody653_264 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody653_265 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 2698#64)

def NamedBody653_266 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody653_267 : StackLang.HolProg 64 :=
.seq NamedBody653_265 NamedBody653_266

def NamedBody653_268 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody653_269 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 2#64)

def NamedBody653_270 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 10

def NamedBody653_271 : StackLang.HolProg 64 :=
.seq NamedBody653_269 NamedBody653_270

def NamedBody653_272 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody653_273 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) NamedBody653_271 NamedBody653_272

def NamedBody653_274 : StackLang.HolProg 64 :=
.seq NamedBody653_268 NamedBody653_273

def NamedBody653_275 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def NamedBody653_276 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody653_277 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 653 9

def NamedBody653_278 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody653_279 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody653_280 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody653_281 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody653_282 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def NamedBody653_283 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def NamedBody653_284 : StackLang.HolProg 64 :=
.seq NamedBody653_282 NamedBody653_283

def NamedBody653_285 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def NamedBody653_286 : StackLang.HolProg 64 :=
.seq NamedBody653_284 NamedBody653_285

def NamedBody653_287 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody653_288 : StackLang.HolProg 64 :=
.seq NamedBody653_286 NamedBody653_287

def NamedBody653_289 : StackLang.HolProg 64 :=
.seq NamedBody653_281 NamedBody653_288

def NamedBody653_290 : StackLang.HolProg 64 :=
.seq NamedBody653_280 NamedBody653_289

def NamedBody653_291 : StackLang.HolProg 64 :=
.seq NamedBody653_279 NamedBody653_290

def NamedBody653_292 : StackLang.HolProg 64 :=
.seq NamedBody653_278 NamedBody653_291

def NamedBody653_293 : StackLang.HolProg 64 :=
.seq NamedBody653_277 NamedBody653_292

def NamedBody653_294 : StackLang.HolProg 64 :=
.seq NamedBody653_276 NamedBody653_293

def NamedBody653_295 : StackLang.HolProg 64 :=
.seq NamedBody653_275 NamedBody653_294

def NamedBody653_296 : StackLang.HolProg 64 :=
.seq NamedBody653_274 NamedBody653_295

def NamedBody653_297 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody653_298 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody653_299 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody653_300 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody653_301 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody653_302 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody653_303 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 28 12
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 12)))

def NamedBody653_304 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 27 13
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 13)))

def NamedBody653_305 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 9 11
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 11)))

def NamedBody653_306 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 29 10
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 10)))

def NamedBody653_307 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 8
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 72#64))

def NamedBody653_308 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 7
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 64#64))

def NamedBody653_309 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 56#64))

def NamedBody653_310 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 6
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 48#64))

def NamedBody653_311 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 5
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 40#64))

def NamedBody653_312 : StackLang.HolProg 64 :=
.seq NamedBody653_310 NamedBody653_311

def NamedBody653_313 : StackLang.HolProg 64 :=
.seq NamedBody653_309 NamedBody653_312

def NamedBody653_314 : StackLang.HolProg 64 :=
.seq NamedBody653_308 NamedBody653_313

def NamedBody653_315 : StackLang.HolProg 64 :=
.seq NamedBody653_307 NamedBody653_314

def NamedBody653_316 : StackLang.HolProg 64 :=
.seq NamedBody653_306 NamedBody653_315

def NamedBody653_317 : StackLang.HolProg 64 :=
.seq NamedBody653_305 NamedBody653_316

def NamedBody653_318 : StackLang.HolProg 64 :=
.seq NamedBody653_304 NamedBody653_317

def NamedBody653_319 : StackLang.HolProg 64 :=
.seq NamedBody653_303 NamedBody653_318

def NamedBody653_320 : StackLang.HolProg 64 :=
.seq NamedBody653_302 NamedBody653_319

def NamedBody653_321 : StackLang.HolProg 64 :=
.seq NamedBody653_301 NamedBody653_320

def NamedBody653_322 : StackLang.HolProg 64 :=
.seq NamedBody653_300 NamedBody653_321

def NamedBody653_323 : StackLang.HolProg 64 :=
.seq NamedBody653_299 NamedBody653_322

def NamedBody653_324 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 8
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 72#64))

def NamedBody653_325 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 7
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 64#64))

def NamedBody653_326 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 56#64))

def NamedBody653_327 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 6
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 48#64))

def NamedBody653_328 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 5
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 40#64))

def NamedBody653_329 : StackLang.HolProg 64 :=
.seq NamedBody653_327 NamedBody653_328

def NamedBody653_330 : StackLang.HolProg 64 :=
.seq NamedBody653_326 NamedBody653_329

def NamedBody653_331 : StackLang.HolProg 64 :=
.seq NamedBody653_325 NamedBody653_330

def NamedBody653_332 : StackLang.HolProg 64 :=
.seq NamedBody653_324 NamedBody653_331

def NamedBody653_333 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def NamedBody653_334 : StackLang.HolProg 64 :=
.seq NamedBody653_332 NamedBody653_333

def NamedBody653_335 : StackLang.HolProg 64 :=
.call (some (NamedBody653_323, 1, 653, 8)) (Sum.inl 645) (some (NamedBody653_334, 653, 9))

def NamedBody653_336 : StackLang.HolProg 64 :=
.seq NamedBody653_298 NamedBody653_335

def NamedBody653_337 : StackLang.HolProg 64 :=
.seq NamedBody653_297 NamedBody653_336

def NamedBody653_338 : StackLang.HolProg 64 :=
.seq NamedBody653_296 NamedBody653_337

def NamedBody653_339 : StackLang.HolProg 64 :=
.seq NamedBody653_267 NamedBody653_338

def NamedBody653_340 : StackLang.HolProg 64 :=
.seq NamedBody653_264 NamedBody653_339

def NamedBody653_341 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody653_342 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody653_343 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 10
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 1 0#64))

def NamedBody653_344 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody653_345 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 11
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 1 8#64))

def NamedBody653_346 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody653_347 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 12
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 1 16#64))

def NamedBody653_348 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody653_349 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 13
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 1 24#64))

def NamedBody653_350 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody653_351 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 30
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 1 32#64))

def NamedBody653_352 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody653_353 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 14
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 1 40#64))

def NamedBody653_354 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody653_355 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 15
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 1 48#64))

def NamedBody653_356 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody653_357 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 16
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 1 56#64))

def NamedBody653_358 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 30
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 72#64))

def NamedBody653_359 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 56#64))

def NamedBody653_360 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 14
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 64#64))

def NamedBody653_361 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 28
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 48#64))

def NamedBody653_362 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 27
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 40#64))

def NamedBody653_363 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 9
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 32#64))

def NamedBody653_364 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 29
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 24#64))

def NamedBody653_365 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 15
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody653_366 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 16
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody653_367 : StackLang.HolProg 64 :=
.seq NamedBody653_365 NamedBody653_366

def NamedBody653_368 : StackLang.HolProg 64 :=
.seq NamedBody653_364 NamedBody653_367

def NamedBody653_369 : StackLang.HolProg 64 :=
.seq NamedBody653_363 NamedBody653_368

def NamedBody653_370 : StackLang.HolProg 64 :=
.seq NamedBody653_362 NamedBody653_369

def NamedBody653_371 : StackLang.HolProg 64 :=
.seq NamedBody653_361 NamedBody653_370

def NamedBody653_372 : StackLang.HolProg 64 :=
.seq NamedBody653_360 NamedBody653_371

def NamedBody653_373 : StackLang.HolProg 64 :=
.seq NamedBody653_359 NamedBody653_372

def NamedBody653_374 : StackLang.HolProg 64 :=
.seq NamedBody653_358 NamedBody653_373

def NamedBody653_375 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody653_376 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 2699#64)

def NamedBody653_377 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody653_378 : StackLang.HolProg 64 :=
.seq NamedBody653_376 NamedBody653_377

def NamedBody653_379 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody653_380 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 2#64)

def NamedBody653_381 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 10

def NamedBody653_382 : StackLang.HolProg 64 :=
.seq NamedBody653_380 NamedBody653_381

def NamedBody653_383 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody653_384 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) NamedBody653_382 NamedBody653_383

def NamedBody653_385 : StackLang.HolProg 64 :=
.seq NamedBody653_379 NamedBody653_384

def NamedBody653_386 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def NamedBody653_387 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody653_388 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 653 11

def NamedBody653_389 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody653_390 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody653_391 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody653_392 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody653_393 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def NamedBody653_394 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def NamedBody653_395 : StackLang.HolProg 64 :=
.seq NamedBody653_393 NamedBody653_394

def NamedBody653_396 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def NamedBody653_397 : StackLang.HolProg 64 :=
.seq NamedBody653_395 NamedBody653_396

def NamedBody653_398 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody653_399 : StackLang.HolProg 64 :=
.seq NamedBody653_397 NamedBody653_398

def NamedBody653_400 : StackLang.HolProg 64 :=
.seq NamedBody653_392 NamedBody653_399

def NamedBody653_401 : StackLang.HolProg 64 :=
.seq NamedBody653_391 NamedBody653_400

def NamedBody653_402 : StackLang.HolProg 64 :=
.seq NamedBody653_390 NamedBody653_401

def NamedBody653_403 : StackLang.HolProg 64 :=
.seq NamedBody653_389 NamedBody653_402

def NamedBody653_404 : StackLang.HolProg 64 :=
.seq NamedBody653_388 NamedBody653_403

def NamedBody653_405 : StackLang.HolProg 64 :=
.seq NamedBody653_387 NamedBody653_404

def NamedBody653_406 : StackLang.HolProg 64 :=
.seq NamedBody653_386 NamedBody653_405

def NamedBody653_407 : StackLang.HolProg 64 :=
.seq NamedBody653_385 NamedBody653_406

def NamedBody653_408 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody653_409 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody653_410 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody653_411 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody653_412 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody653_413 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody653_414 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 29 10
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 10)))

def NamedBody653_415 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 28
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 72#64))

def NamedBody653_416 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 64#64))

def NamedBody653_417 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 7
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 48#64))

def NamedBody653_418 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 8
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 40#64))

def NamedBody653_419 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 6
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 32#64))

def NamedBody653_420 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 5
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 24#64))

def NamedBody653_421 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 9
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody653_422 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 27
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody653_423 : StackLang.HolProg 64 :=
.seq NamedBody653_421 NamedBody653_422

def NamedBody653_424 : StackLang.HolProg 64 :=
.seq NamedBody653_420 NamedBody653_423

def NamedBody653_425 : StackLang.HolProg 64 :=
.seq NamedBody653_419 NamedBody653_424

def NamedBody653_426 : StackLang.HolProg 64 :=
.seq NamedBody653_418 NamedBody653_425

def NamedBody653_427 : StackLang.HolProg 64 :=
.seq NamedBody653_417 NamedBody653_426

def NamedBody653_428 : StackLang.HolProg 64 :=
.seq NamedBody653_416 NamedBody653_427

def NamedBody653_429 : StackLang.HolProg 64 :=
.seq NamedBody653_415 NamedBody653_428

def NamedBody653_430 : StackLang.HolProg 64 :=
.seq NamedBody653_414 NamedBody653_429

def NamedBody653_431 : StackLang.HolProg 64 :=
.seq NamedBody653_413 NamedBody653_430

def NamedBody653_432 : StackLang.HolProg 64 :=
.seq NamedBody653_412 NamedBody653_431

def NamedBody653_433 : StackLang.HolProg 64 :=
.seq NamedBody653_411 NamedBody653_432

def NamedBody653_434 : StackLang.HolProg 64 :=
.seq NamedBody653_410 NamedBody653_433

def NamedBody653_435 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 28
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 72#64))

def NamedBody653_436 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 64#64))

def NamedBody653_437 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 7
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 48#64))

def NamedBody653_438 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 8
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 40#64))

def NamedBody653_439 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 6
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 32#64))

def NamedBody653_440 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 5
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 24#64))

def NamedBody653_441 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 9
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody653_442 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 27
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody653_443 : StackLang.HolProg 64 :=
.seq NamedBody653_441 NamedBody653_442

def NamedBody653_444 : StackLang.HolProg 64 :=
.seq NamedBody653_440 NamedBody653_443

def NamedBody653_445 : StackLang.HolProg 64 :=
.seq NamedBody653_439 NamedBody653_444

def NamedBody653_446 : StackLang.HolProg 64 :=
.seq NamedBody653_438 NamedBody653_445

def NamedBody653_447 : StackLang.HolProg 64 :=
.seq NamedBody653_437 NamedBody653_446

def NamedBody653_448 : StackLang.HolProg 64 :=
.seq NamedBody653_436 NamedBody653_447

def NamedBody653_449 : StackLang.HolProg 64 :=
.seq NamedBody653_435 NamedBody653_448

def NamedBody653_450 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def NamedBody653_451 : StackLang.HolProg 64 :=
.seq NamedBody653_449 NamedBody653_450

def NamedBody653_452 : StackLang.HolProg 64 :=
.call (some (NamedBody653_434, 1, 653, 10)) (Sum.inl 645) (some (NamedBody653_451, 653, 11))

def NamedBody653_453 : StackLang.HolProg 64 :=
.seq NamedBody653_409 NamedBody653_452

def NamedBody653_454 : StackLang.HolProg 64 :=
.seq NamedBody653_408 NamedBody653_453

def NamedBody653_455 : StackLang.HolProg 64 :=
.seq NamedBody653_407 NamedBody653_454

def NamedBody653_456 : StackLang.HolProg 64 :=
.seq NamedBody653_378 NamedBody653_455

def NamedBody653_457 : StackLang.HolProg 64 :=
.seq NamedBody653_375 NamedBody653_456

def NamedBody653_458 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody653_459 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 10 28
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 28)))

def NamedBody653_460 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 11
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 72#64))

def NamedBody653_461 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 11 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def NamedBody653_462 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 12
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 40#64))

def NamedBody653_463 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 12 9
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 9)))

def NamedBody653_464 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 13
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 48#64))

def NamedBody653_465 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 13 27
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 27)))

def NamedBody653_466 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 29
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 64#64))

def NamedBody653_467 : StackLang.HolProg 64 :=
.seq NamedBody653_465 NamedBody653_466

def NamedBody653_468 : StackLang.HolProg 64 :=
.seq NamedBody653_464 NamedBody653_467

def NamedBody653_469 : StackLang.HolProg 64 :=
.seq NamedBody653_463 NamedBody653_468

def NamedBody653_470 : StackLang.HolProg 64 :=
.seq NamedBody653_462 NamedBody653_469

def NamedBody653_471 : StackLang.HolProg 64 :=
.seq NamedBody653_461 NamedBody653_470

def NamedBody653_472 : StackLang.HolProg 64 :=
.seq NamedBody653_460 NamedBody653_471

def NamedBody653_473 : StackLang.HolProg 64 :=
.seq NamedBody653_459 NamedBody653_472

def NamedBody653_474 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody653_475 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 2700#64)

def NamedBody653_476 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody653_477 : StackLang.HolProg 64 :=
.seq NamedBody653_475 NamedBody653_476

def NamedBody653_478 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody653_479 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 2#64)

def NamedBody653_480 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 10

def NamedBody653_481 : StackLang.HolProg 64 :=
.seq NamedBody653_479 NamedBody653_480

def NamedBody653_482 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody653_483 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) NamedBody653_481 NamedBody653_482

def NamedBody653_484 : StackLang.HolProg 64 :=
.seq NamedBody653_478 NamedBody653_483

def NamedBody653_485 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def NamedBody653_486 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody653_487 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 653 13

def NamedBody653_488 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody653_489 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody653_490 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody653_491 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody653_492 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def NamedBody653_493 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def NamedBody653_494 : StackLang.HolProg 64 :=
.seq NamedBody653_492 NamedBody653_493

def NamedBody653_495 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def NamedBody653_496 : StackLang.HolProg 64 :=
.seq NamedBody653_494 NamedBody653_495

def NamedBody653_497 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody653_498 : StackLang.HolProg 64 :=
.seq NamedBody653_496 NamedBody653_497

def NamedBody653_499 : StackLang.HolProg 64 :=
.seq NamedBody653_491 NamedBody653_498

def NamedBody653_500 : StackLang.HolProg 64 :=
.seq NamedBody653_490 NamedBody653_499

def NamedBody653_501 : StackLang.HolProg 64 :=
.seq NamedBody653_489 NamedBody653_500

def NamedBody653_502 : StackLang.HolProg 64 :=
.seq NamedBody653_488 NamedBody653_501

def NamedBody653_503 : StackLang.HolProg 64 :=
.seq NamedBody653_487 NamedBody653_502

def NamedBody653_504 : StackLang.HolProg 64 :=
.seq NamedBody653_486 NamedBody653_503

def NamedBody653_505 : StackLang.HolProg 64 :=
.seq NamedBody653_485 NamedBody653_504

def NamedBody653_506 : StackLang.HolProg 64 :=
.seq NamedBody653_484 NamedBody653_505

def NamedBody653_507 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody653_508 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody653_509 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody653_510 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody653_511 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody653_512 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody653_513 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 6 10
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 10)))

def NamedBody653_514 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 7 11
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 11)))

def NamedBody653_515 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 8 12
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 12)))

def NamedBody653_516 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 9 13
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 13)))

def NamedBody653_517 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 12
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 72#64))

def NamedBody653_518 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 11
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 64#64))

def NamedBody653_519 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 56#64))

def NamedBody653_520 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 5
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 48#64))

def NamedBody653_521 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 13
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 40#64))

def NamedBody653_522 : StackLang.HolProg 64 :=
.seq NamedBody653_520 NamedBody653_521

def NamedBody653_523 : StackLang.HolProg 64 :=
.seq NamedBody653_519 NamedBody653_522

def NamedBody653_524 : StackLang.HolProg 64 :=
.seq NamedBody653_518 NamedBody653_523

def NamedBody653_525 : StackLang.HolProg 64 :=
.seq NamedBody653_517 NamedBody653_524

def NamedBody653_526 : StackLang.HolProg 64 :=
.seq NamedBody653_516 NamedBody653_525

def NamedBody653_527 : StackLang.HolProg 64 :=
.seq NamedBody653_515 NamedBody653_526

def NamedBody653_528 : StackLang.HolProg 64 :=
.seq NamedBody653_514 NamedBody653_527

def NamedBody653_529 : StackLang.HolProg 64 :=
.seq NamedBody653_513 NamedBody653_528

def NamedBody653_530 : StackLang.HolProg 64 :=
.seq NamedBody653_512 NamedBody653_529

def NamedBody653_531 : StackLang.HolProg 64 :=
.seq NamedBody653_511 NamedBody653_530

def NamedBody653_532 : StackLang.HolProg 64 :=
.seq NamedBody653_510 NamedBody653_531

def NamedBody653_533 : StackLang.HolProg 64 :=
.seq NamedBody653_509 NamedBody653_532

def NamedBody653_534 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 12
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 72#64))

def NamedBody653_535 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 11
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 64#64))

def NamedBody653_536 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 56#64))

def NamedBody653_537 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 5
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 48#64))

def NamedBody653_538 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 13
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 40#64))

def NamedBody653_539 : StackLang.HolProg 64 :=
.seq NamedBody653_537 NamedBody653_538

def NamedBody653_540 : StackLang.HolProg 64 :=
.seq NamedBody653_536 NamedBody653_539

def NamedBody653_541 : StackLang.HolProg 64 :=
.seq NamedBody653_535 NamedBody653_540

def NamedBody653_542 : StackLang.HolProg 64 :=
.seq NamedBody653_534 NamedBody653_541

def NamedBody653_543 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def NamedBody653_544 : StackLang.HolProg 64 :=
.seq NamedBody653_542 NamedBody653_543

def NamedBody653_545 : StackLang.HolProg 64 :=
.call (some (NamedBody653_533, 1, 653, 12)) (Sum.inl 645) (some (NamedBody653_544, 653, 13))

def NamedBody653_546 : StackLang.HolProg 64 :=
.seq NamedBody653_508 NamedBody653_545

def NamedBody653_547 : StackLang.HolProg 64 :=
.seq NamedBody653_507 NamedBody653_546

def NamedBody653_548 : StackLang.HolProg 64 :=
.seq NamedBody653_506 NamedBody653_547

def NamedBody653_549 : StackLang.HolProg 64 :=
.seq NamedBody653_477 NamedBody653_548

def NamedBody653_550 : StackLang.HolProg 64 :=
.seq NamedBody653_474 NamedBody653_549

def NamedBody653_551 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody653_552 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 10 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def NamedBody653_553 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody653_554 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 2701#64)

def NamedBody653_555 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody653_556 : StackLang.HolProg 64 :=
.seq NamedBody653_554 NamedBody653_555

def NamedBody653_557 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody653_558 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 2#64)

def NamedBody653_559 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 10

def NamedBody653_560 : StackLang.HolProg 64 :=
.seq NamedBody653_558 NamedBody653_559

def NamedBody653_561 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody653_562 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) NamedBody653_560 NamedBody653_561

def NamedBody653_563 : StackLang.HolProg 64 :=
.seq NamedBody653_557 NamedBody653_562

def NamedBody653_564 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def NamedBody653_565 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody653_566 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 653 15

def NamedBody653_567 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody653_568 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody653_569 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody653_570 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody653_571 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def NamedBody653_572 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def NamedBody653_573 : StackLang.HolProg 64 :=
.seq NamedBody653_571 NamedBody653_572

def NamedBody653_574 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def NamedBody653_575 : StackLang.HolProg 64 :=
.seq NamedBody653_573 NamedBody653_574

def NamedBody653_576 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody653_577 : StackLang.HolProg 64 :=
.seq NamedBody653_575 NamedBody653_576

def NamedBody653_578 : StackLang.HolProg 64 :=
.seq NamedBody653_570 NamedBody653_577

def NamedBody653_579 : StackLang.HolProg 64 :=
.seq NamedBody653_569 NamedBody653_578

def NamedBody653_580 : StackLang.HolProg 64 :=
.seq NamedBody653_568 NamedBody653_579

def NamedBody653_581 : StackLang.HolProg 64 :=
.seq NamedBody653_567 NamedBody653_580

def NamedBody653_582 : StackLang.HolProg 64 :=
.seq NamedBody653_566 NamedBody653_581

def NamedBody653_583 : StackLang.HolProg 64 :=
.seq NamedBody653_565 NamedBody653_582

def NamedBody653_584 : StackLang.HolProg 64 :=
.seq NamedBody653_564 NamedBody653_583

def NamedBody653_585 : StackLang.HolProg 64 :=
.seq NamedBody653_563 NamedBody653_584

def NamedBody653_586 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody653_587 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody653_588 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody653_589 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody653_590 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody653_591 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody653_592 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 80#64))

def NamedBody653_593 : StackLang.HolProg 64 :=
.seq NamedBody653_591 NamedBody653_592

def NamedBody653_594 : StackLang.HolProg 64 :=
.seq NamedBody653_590 NamedBody653_593

def NamedBody653_595 : StackLang.HolProg 64 :=
.seq NamedBody653_589 NamedBody653_594

def NamedBody653_596 : StackLang.HolProg 64 :=
.seq NamedBody653_588 NamedBody653_595

def NamedBody653_597 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 80#64))

def NamedBody653_598 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def NamedBody653_599 : StackLang.HolProg 64 :=
.seq NamedBody653_597 NamedBody653_598

def NamedBody653_600 : StackLang.HolProg 64 :=
.call (some (NamedBody653_596, 1, 653, 14)) (Sum.inl 649) (some (NamedBody653_599, 653, 15))

def NamedBody653_601 : StackLang.HolProg 64 :=
.seq NamedBody653_587 NamedBody653_600

def NamedBody653_602 : StackLang.HolProg 64 :=
.seq NamedBody653_586 NamedBody653_601

def NamedBody653_603 : StackLang.HolProg 64 :=
.seq NamedBody653_585 NamedBody653_602

def NamedBody653_604 : StackLang.HolProg 64 :=
.seq NamedBody653_556 NamedBody653_603

def NamedBody653_605 : StackLang.HolProg 64 :=
.seq NamedBody653_553 NamedBody653_604

def NamedBody653_606 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody653_607 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 1#64)

def NamedBody653_608 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody653_609 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 88#64)))

def NamedBody653_610 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 1

def NamedBody653_611 : StackLang.HolProg 64 :=
.seq NamedBody653_609 NamedBody653_610

def NamedBody653_612 : StackLang.HolProg 64 :=
.seq NamedBody653_608 NamedBody653_611

def NamedBody653_613 : StackLang.HolProg 64 :=
.seq NamedBody653_607 NamedBody653_612

def NamedBody653_614 : StackLang.HolProg 64 :=
.seq NamedBody653_606 NamedBody653_613

def NamedBody653_615 : StackLang.HolProg 64 :=
.seq NamedBody653_605 NamedBody653_614

def NamedBody653_616 : StackLang.HolProg 64 :=
.seq NamedBody653_552 NamedBody653_615

def NamedBody653_617 : StackLang.HolProg 64 :=
.seq NamedBody653_551 NamedBody653_616

def NamedBody653_618 : StackLang.HolProg 64 :=
.seq NamedBody653_550 NamedBody653_617

def NamedBody653_619 : StackLang.HolProg 64 :=
.seq NamedBody653_473 NamedBody653_618

def NamedBody653_620 : StackLang.HolProg 64 :=
.seq NamedBody653_458 NamedBody653_619

def NamedBody653_621 : StackLang.HolProg 64 :=
.seq NamedBody653_457 NamedBody653_620

def NamedBody653_622 : StackLang.HolProg 64 :=
.seq NamedBody653_374 NamedBody653_621

def NamedBody653_623 : StackLang.HolProg 64 :=
.seq NamedBody653_357 NamedBody653_622

def NamedBody653_624 : StackLang.HolProg 64 :=
.seq NamedBody653_356 NamedBody653_623

def NamedBody653_625 : StackLang.HolProg 64 :=
.seq NamedBody653_355 NamedBody653_624

def NamedBody653_626 : StackLang.HolProg 64 :=
.seq NamedBody653_354 NamedBody653_625

def NamedBody653_627 : StackLang.HolProg 64 :=
.seq NamedBody653_353 NamedBody653_626

def NamedBody653_628 : StackLang.HolProg 64 :=
.seq NamedBody653_352 NamedBody653_627

def NamedBody653_629 : StackLang.HolProg 64 :=
.seq NamedBody653_351 NamedBody653_628

def NamedBody653_630 : StackLang.HolProg 64 :=
.seq NamedBody653_350 NamedBody653_629

def NamedBody653_631 : StackLang.HolProg 64 :=
.seq NamedBody653_349 NamedBody653_630

def NamedBody653_632 : StackLang.HolProg 64 :=
.seq NamedBody653_348 NamedBody653_631

def NamedBody653_633 : StackLang.HolProg 64 :=
.seq NamedBody653_347 NamedBody653_632

def NamedBody653_634 : StackLang.HolProg 64 :=
.seq NamedBody653_346 NamedBody653_633

def NamedBody653_635 : StackLang.HolProg 64 :=
.seq NamedBody653_345 NamedBody653_634

def NamedBody653_636 : StackLang.HolProg 64 :=
.seq NamedBody653_344 NamedBody653_635

def NamedBody653_637 : StackLang.HolProg 64 :=
.seq NamedBody653_343 NamedBody653_636

def NamedBody653_638 : StackLang.HolProg 64 :=
.seq NamedBody653_342 NamedBody653_637

def NamedBody653_639 : StackLang.HolProg 64 :=
.seq NamedBody653_341 NamedBody653_638

def NamedBody653_640 : StackLang.HolProg 64 :=
.seq NamedBody653_340 NamedBody653_639

def NamedBody653_641 : StackLang.HolProg 64 :=
.seq NamedBody653_263 NamedBody653_640

def NamedBody653_642 : StackLang.HolProg 64 :=
.seq NamedBody653_254 NamedBody653_641

def NamedBody653_643 : StackLang.HolProg 64 :=
.seq NamedBody653_253 NamedBody653_642

def NamedBody653_644 : StackLang.HolProg 64 :=
.seq NamedBody653_178 NamedBody653_643

def NamedBody653_645 : StackLang.HolProg 64 :=
.seq NamedBody653_169 NamedBody653_644

def NamedBody653_646 : StackLang.HolProg 64 :=
.seq NamedBody653_168 NamedBody653_645

def NamedBody653_647 : StackLang.HolProg 64 :=
.seq NamedBody653_115 NamedBody653_646

def NamedBody653_648 : StackLang.HolProg 64 :=
.seq NamedBody653_112 NamedBody653_647

def NamedBody653_649 : StackLang.HolProg 64 :=
.seq NamedBody653_111 NamedBody653_648

def NamedBody653_650 : StackLang.HolProg 64 :=
.seq NamedBody653_110 NamedBody653_649

def NamedBody653_651 : StackLang.HolProg 64 :=
.seq NamedBody653_99 NamedBody653_650

def NamedBody653_652 : StackLang.HolProg 64 :=
.seq NamedBody653_98 NamedBody653_651

def NamedBody653_653 : StackLang.HolProg 64 :=
.seq NamedBody653_97 NamedBody653_652

def NamedBody653_654 : StackLang.HolProg 64 :=
.seq NamedBody653_96 NamedBody653_653

def NamedBody653_655 : StackLang.HolProg 64 :=
.seq NamedBody653_25 NamedBody653_654

def NamedBody653_656 : StackLang.HolProg 64 :=
.seq NamedBody653_14 NamedBody653_655

def NamedBody653_657 : StackLang.HolProg 64 :=
.seq NamedBody653_13 NamedBody653_656

def NamedBody653_658 : StackLang.HolProg 64 :=
.seq NamedBody653_12 NamedBody653_657

def NamedBody653_659 : StackLang.HolProg 64 :=
.seq NamedBody653_11 NamedBody653_658

def NamedBody653_660 : StackLang.HolProg 64 :=
.seq NamedBody653_10 NamedBody653_659

def NamedBody653_661 : StackLang.HolProg 64 :=
.seq NamedBody653_9 NamedBody653_660

def NamedBody653_662 : StackLang.HolProg 64 :=
.seq NamedBody653_8 NamedBody653_661

def NamedBody653_663 : StackLang.HolProg 64 :=
.seq NamedBody653_7 NamedBody653_662

def NamedBody653_664 : StackLang.HolProg 64 :=
.seq NamedBody653_6 NamedBody653_663

def Named653 : Nat × StackLang.HolProg 64 := (653, NamedBody653_664)
theorem Named653_eq : StackNames.progCompEntryHOL RiscVConfig.riscvNames Removed653 = Named653 := by
  kernel_rfl
#print axioms Named653_eq
end InitECandidate.Proofs.BackendStages
