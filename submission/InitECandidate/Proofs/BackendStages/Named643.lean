import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.BackendStages.Removed643
import Flapjack.Compiler.Backend.Backend
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
namespace InitECandidate.Proofs.BackendStages
def NamedBody643_0 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 80#64)))

def NamedBody643_1 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 2#64)

def NamedBody643_2 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 10

def NamedBody643_3 : StackLang.HolProg 64 :=
.seq NamedBody643_1 NamedBody643_2

def NamedBody643_4 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody643_5 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) NamedBody643_3 NamedBody643_4

def NamedBody643_6 : StackLang.HolProg 64 :=
.seq NamedBody643_0 NamedBody643_5

def NamedBody643_7 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 72#64))

def NamedBody643_8 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 8
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 64#64))

def NamedBody643_9 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 13
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 56#64))

def NamedBody643_10 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 11
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 48#64))

def NamedBody643_11 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 6
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 40#64))

def NamedBody643_12 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 10
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 32#64))

def NamedBody643_13 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 5
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 24#64))

def NamedBody643_14 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 12
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody643_15 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 7
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody643_16 : StackLang.HolProg 64 :=
.seq NamedBody643_14 NamedBody643_15

def NamedBody643_17 : StackLang.HolProg 64 :=
.seq NamedBody643_13 NamedBody643_16

def NamedBody643_18 : StackLang.HolProg 64 :=
.seq NamedBody643_12 NamedBody643_17

def NamedBody643_19 : StackLang.HolProg 64 :=
.seq NamedBody643_11 NamedBody643_18

def NamedBody643_20 : StackLang.HolProg 64 :=
.seq NamedBody643_10 NamedBody643_19

def NamedBody643_21 : StackLang.HolProg 64 :=
.seq NamedBody643_9 NamedBody643_20

def NamedBody643_22 : StackLang.HolProg 64 :=
.seq NamedBody643_8 NamedBody643_21

def NamedBody643_23 : StackLang.HolProg 64 :=
.seq NamedBody643_7 NamedBody643_22

def NamedBody643_24 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody643_25 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 2621#64)

def NamedBody643_26 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody643_27 : StackLang.HolProg 64 :=
.seq NamedBody643_25 NamedBody643_26

def NamedBody643_28 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody643_29 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 2#64)

def NamedBody643_30 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 10

def NamedBody643_31 : StackLang.HolProg 64 :=
.seq NamedBody643_29 NamedBody643_30

def NamedBody643_32 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody643_33 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) NamedBody643_31 NamedBody643_32

def NamedBody643_34 : StackLang.HolProg 64 :=
.seq NamedBody643_28 NamedBody643_33

def NamedBody643_35 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def NamedBody643_36 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody643_37 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 643 3

def NamedBody643_38 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody643_39 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody643_40 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody643_41 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody643_42 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def NamedBody643_43 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def NamedBody643_44 : StackLang.HolProg 64 :=
.seq NamedBody643_42 NamedBody643_43

def NamedBody643_45 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def NamedBody643_46 : StackLang.HolProg 64 :=
.seq NamedBody643_44 NamedBody643_45

def NamedBody643_47 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody643_48 : StackLang.HolProg 64 :=
.seq NamedBody643_46 NamedBody643_47

def NamedBody643_49 : StackLang.HolProg 64 :=
.seq NamedBody643_41 NamedBody643_48

def NamedBody643_50 : StackLang.HolProg 64 :=
.seq NamedBody643_40 NamedBody643_49

def NamedBody643_51 : StackLang.HolProg 64 :=
.seq NamedBody643_39 NamedBody643_50

def NamedBody643_52 : StackLang.HolProg 64 :=
.seq NamedBody643_38 NamedBody643_51

def NamedBody643_53 : StackLang.HolProg 64 :=
.seq NamedBody643_37 NamedBody643_52

def NamedBody643_54 : StackLang.HolProg 64 :=
.seq NamedBody643_36 NamedBody643_53

def NamedBody643_55 : StackLang.HolProg 64 :=
.seq NamedBody643_35 NamedBody643_54

def NamedBody643_56 : StackLang.HolProg 64 :=
.seq NamedBody643_34 NamedBody643_55

def NamedBody643_57 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody643_58 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody643_59 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody643_60 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody643_61 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody643_62 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody643_63 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 9 10
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 10)))

def NamedBody643_64 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 8
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 64#64))

def NamedBody643_65 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 13
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 56#64))

def NamedBody643_66 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 11
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 48#64))

def NamedBody643_67 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 6
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 40#64))

def NamedBody643_68 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 32#64))

def NamedBody643_69 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 5
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 24#64))

def NamedBody643_70 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 12
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody643_71 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 7
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody643_72 : StackLang.HolProg 64 :=
.seq NamedBody643_70 NamedBody643_71

def NamedBody643_73 : StackLang.HolProg 64 :=
.seq NamedBody643_69 NamedBody643_72

def NamedBody643_74 : StackLang.HolProg 64 :=
.seq NamedBody643_68 NamedBody643_73

def NamedBody643_75 : StackLang.HolProg 64 :=
.seq NamedBody643_67 NamedBody643_74

def NamedBody643_76 : StackLang.HolProg 64 :=
.seq NamedBody643_66 NamedBody643_75

def NamedBody643_77 : StackLang.HolProg 64 :=
.seq NamedBody643_65 NamedBody643_76

def NamedBody643_78 : StackLang.HolProg 64 :=
.seq NamedBody643_64 NamedBody643_77

def NamedBody643_79 : StackLang.HolProg 64 :=
.seq NamedBody643_63 NamedBody643_78

def NamedBody643_80 : StackLang.HolProg 64 :=
.seq NamedBody643_62 NamedBody643_79

def NamedBody643_81 : StackLang.HolProg 64 :=
.seq NamedBody643_61 NamedBody643_80

def NamedBody643_82 : StackLang.HolProg 64 :=
.seq NamedBody643_60 NamedBody643_81

def NamedBody643_83 : StackLang.HolProg 64 :=
.seq NamedBody643_59 NamedBody643_82

def NamedBody643_84 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 8
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 64#64))

def NamedBody643_85 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 13
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 56#64))

def NamedBody643_86 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 11
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 48#64))

def NamedBody643_87 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 6
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 40#64))

def NamedBody643_88 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 32#64))

def NamedBody643_89 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 5
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 24#64))

def NamedBody643_90 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 12
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody643_91 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 7
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody643_92 : StackLang.HolProg 64 :=
.seq NamedBody643_90 NamedBody643_91

def NamedBody643_93 : StackLang.HolProg 64 :=
.seq NamedBody643_89 NamedBody643_92

def NamedBody643_94 : StackLang.HolProg 64 :=
.seq NamedBody643_88 NamedBody643_93

def NamedBody643_95 : StackLang.HolProg 64 :=
.seq NamedBody643_87 NamedBody643_94

def NamedBody643_96 : StackLang.HolProg 64 :=
.seq NamedBody643_86 NamedBody643_95

def NamedBody643_97 : StackLang.HolProg 64 :=
.seq NamedBody643_85 NamedBody643_96

def NamedBody643_98 : StackLang.HolProg 64 :=
.seq NamedBody643_84 NamedBody643_97

def NamedBody643_99 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def NamedBody643_100 : StackLang.HolProg 64 :=
.seq NamedBody643_98 NamedBody643_99

def NamedBody643_101 : StackLang.HolProg 64 :=
.call (some (NamedBody643_83, 1, 643, 2)) (Sum.inl 106) (some (NamedBody643_100, 643, 3))

def NamedBody643_102 : StackLang.HolProg 64 :=
.seq NamedBody643_58 NamedBody643_101

def NamedBody643_103 : StackLang.HolProg 64 :=
.seq NamedBody643_57 NamedBody643_102

def NamedBody643_104 : StackLang.HolProg 64 :=
.seq NamedBody643_56 NamedBody643_103

def NamedBody643_105 : StackLang.HolProg 64 :=
.seq NamedBody643_27 NamedBody643_104

def NamedBody643_106 : StackLang.HolProg 64 :=
.seq NamedBody643_24 NamedBody643_105

def NamedBody643_107 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody643_108 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 10 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def NamedBody643_109 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 9
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 64#64))

def NamedBody643_110 : StackLang.HolProg 64 :=
.seq NamedBody643_108 NamedBody643_109

def NamedBody643_111 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody643_112 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 2622#64)

def NamedBody643_113 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody643_114 : StackLang.HolProg 64 :=
.seq NamedBody643_112 NamedBody643_113

def NamedBody643_115 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody643_116 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 2#64)

def NamedBody643_117 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 10

def NamedBody643_118 : StackLang.HolProg 64 :=
.seq NamedBody643_116 NamedBody643_117

def NamedBody643_119 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody643_120 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) NamedBody643_118 NamedBody643_119

def NamedBody643_121 : StackLang.HolProg 64 :=
.seq NamedBody643_115 NamedBody643_120

def NamedBody643_122 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def NamedBody643_123 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody643_124 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 643 5

def NamedBody643_125 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody643_126 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody643_127 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody643_128 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody643_129 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def NamedBody643_130 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def NamedBody643_131 : StackLang.HolProg 64 :=
.seq NamedBody643_129 NamedBody643_130

def NamedBody643_132 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def NamedBody643_133 : StackLang.HolProg 64 :=
.seq NamedBody643_131 NamedBody643_132

def NamedBody643_134 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody643_135 : StackLang.HolProg 64 :=
.seq NamedBody643_133 NamedBody643_134

def NamedBody643_136 : StackLang.HolProg 64 :=
.seq NamedBody643_128 NamedBody643_135

def NamedBody643_137 : StackLang.HolProg 64 :=
.seq NamedBody643_127 NamedBody643_136

def NamedBody643_138 : StackLang.HolProg 64 :=
.seq NamedBody643_126 NamedBody643_137

def NamedBody643_139 : StackLang.HolProg 64 :=
.seq NamedBody643_125 NamedBody643_138

def NamedBody643_140 : StackLang.HolProg 64 :=
.seq NamedBody643_124 NamedBody643_139

def NamedBody643_141 : StackLang.HolProg 64 :=
.seq NamedBody643_123 NamedBody643_140

def NamedBody643_142 : StackLang.HolProg 64 :=
.seq NamedBody643_122 NamedBody643_141

def NamedBody643_143 : StackLang.HolProg 64 :=
.seq NamedBody643_121 NamedBody643_142

def NamedBody643_144 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody643_145 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody643_146 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody643_147 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody643_148 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody643_149 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody643_150 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 5 10
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 10)))

def NamedBody643_151 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 64#64))

def NamedBody643_152 : StackLang.HolProg 64 :=
.seq NamedBody643_150 NamedBody643_151

def NamedBody643_153 : StackLang.HolProg 64 :=
.seq NamedBody643_149 NamedBody643_152

def NamedBody643_154 : StackLang.HolProg 64 :=
.seq NamedBody643_148 NamedBody643_153

def NamedBody643_155 : StackLang.HolProg 64 :=
.seq NamedBody643_147 NamedBody643_154

def NamedBody643_156 : StackLang.HolProg 64 :=
.seq NamedBody643_146 NamedBody643_155

def NamedBody643_157 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 64#64))

def NamedBody643_158 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def NamedBody643_159 : StackLang.HolProg 64 :=
.seq NamedBody643_157 NamedBody643_158

def NamedBody643_160 : StackLang.HolProg 64 :=
.call (some (NamedBody643_156, 1, 643, 4)) (Sum.inl 117) (some (NamedBody643_159, 643, 5))

def NamedBody643_161 : StackLang.HolProg 64 :=
.seq NamedBody643_145 NamedBody643_160

def NamedBody643_162 : StackLang.HolProg 64 :=
.seq NamedBody643_144 NamedBody643_161

def NamedBody643_163 : StackLang.HolProg 64 :=
.seq NamedBody643_143 NamedBody643_162

def NamedBody643_164 : StackLang.HolProg 64 :=
.seq NamedBody643_114 NamedBody643_163

def NamedBody643_165 : StackLang.HolProg 64 :=
.seq NamedBody643_111 NamedBody643_164

def NamedBody643_166 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody643_167 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody643_168 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 1#64)

def NamedBody643_169 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody643_170 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 10 5
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 5)))

def NamedBody643_171 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 8 18446744069414584321#64)

def NamedBody643_172 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 7 0#64)

def NamedBody643_173 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 6 4294967295#64)

def NamedBody643_174 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 5 18446744073709551615#64)

def NamedBody643_175 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody643_176 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody643_177 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 2623#64)

def NamedBody643_178 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody643_179 : StackLang.HolProg 64 :=
.seq NamedBody643_177 NamedBody643_178

def NamedBody643_180 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody643_181 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 2#64)

def NamedBody643_182 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 10

def NamedBody643_183 : StackLang.HolProg 64 :=
.seq NamedBody643_181 NamedBody643_182

def NamedBody643_184 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody643_185 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) NamedBody643_183 NamedBody643_184

def NamedBody643_186 : StackLang.HolProg 64 :=
.seq NamedBody643_180 NamedBody643_185

def NamedBody643_187 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def NamedBody643_188 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody643_189 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 643 7

def NamedBody643_190 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody643_191 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody643_192 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody643_193 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody643_194 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def NamedBody643_195 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def NamedBody643_196 : StackLang.HolProg 64 :=
.seq NamedBody643_194 NamedBody643_195

def NamedBody643_197 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def NamedBody643_198 : StackLang.HolProg 64 :=
.seq NamedBody643_196 NamedBody643_197

def NamedBody643_199 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody643_200 : StackLang.HolProg 64 :=
.seq NamedBody643_198 NamedBody643_199

def NamedBody643_201 : StackLang.HolProg 64 :=
.seq NamedBody643_193 NamedBody643_200

def NamedBody643_202 : StackLang.HolProg 64 :=
.seq NamedBody643_192 NamedBody643_201

def NamedBody643_203 : StackLang.HolProg 64 :=
.seq NamedBody643_191 NamedBody643_202

def NamedBody643_204 : StackLang.HolProg 64 :=
.seq NamedBody643_190 NamedBody643_203

def NamedBody643_205 : StackLang.HolProg 64 :=
.seq NamedBody643_189 NamedBody643_204

def NamedBody643_206 : StackLang.HolProg 64 :=
.seq NamedBody643_188 NamedBody643_205

def NamedBody643_207 : StackLang.HolProg 64 :=
.seq NamedBody643_187 NamedBody643_206

def NamedBody643_208 : StackLang.HolProg 64 :=
.seq NamedBody643_186 NamedBody643_207

def NamedBody643_209 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody643_210 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody643_211 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody643_212 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody643_213 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody643_214 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody643_215 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 5 10
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 10)))

def NamedBody643_216 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 72#64))

def NamedBody643_217 : StackLang.HolProg 64 :=
.seq NamedBody643_215 NamedBody643_216

def NamedBody643_218 : StackLang.HolProg 64 :=
.seq NamedBody643_214 NamedBody643_217

def NamedBody643_219 : StackLang.HolProg 64 :=
.seq NamedBody643_213 NamedBody643_218

def NamedBody643_220 : StackLang.HolProg 64 :=
.seq NamedBody643_212 NamedBody643_219

def NamedBody643_221 : StackLang.HolProg 64 :=
.seq NamedBody643_211 NamedBody643_220

def NamedBody643_222 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 72#64))

def NamedBody643_223 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def NamedBody643_224 : StackLang.HolProg 64 :=
.seq NamedBody643_222 NamedBody643_223

def NamedBody643_225 : StackLang.HolProg 64 :=
.call (some (NamedBody643_221, 1, 643, 6)) (Sum.inl 116) (some (NamedBody643_224, 643, 7))

def NamedBody643_226 : StackLang.HolProg 64 :=
.seq NamedBody643_210 NamedBody643_225

def NamedBody643_227 : StackLang.HolProg 64 :=
.seq NamedBody643_209 NamedBody643_226

def NamedBody643_228 : StackLang.HolProg 64 :=
.seq NamedBody643_208 NamedBody643_227

def NamedBody643_229 : StackLang.HolProg 64 :=
.seq NamedBody643_179 NamedBody643_228

def NamedBody643_230 : StackLang.HolProg 64 :=
.seq NamedBody643_176 NamedBody643_229

def NamedBody643_231 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody643_232 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody643_233 : StackLang.HolProg 64 :=
.seq NamedBody643_231 NamedBody643_232

def NamedBody643_234 : StackLang.HolProg 64 :=
.seq NamedBody643_230 NamedBody643_233

def NamedBody643_235 : StackLang.HolProg 64 :=
.seq NamedBody643_175 NamedBody643_234

def NamedBody643_236 : StackLang.HolProg 64 :=
.seq NamedBody643_174 NamedBody643_235

def NamedBody643_237 : StackLang.HolProg 64 :=
.seq NamedBody643_173 NamedBody643_236

def NamedBody643_238 : StackLang.HolProg 64 :=
.seq NamedBody643_172 NamedBody643_237

def NamedBody643_239 : StackLang.HolProg 64 :=
.seq NamedBody643_171 NamedBody643_238

def NamedBody643_240 : StackLang.HolProg 64 :=
.seq NamedBody643_170 NamedBody643_239

def NamedBody643_241 : StackLang.HolProg 64 :=
.seq NamedBody643_169 NamedBody643_240

def NamedBody643_242 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody643_243 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 72#64))

def NamedBody643_244 : StackLang.HolProg 64 :=
.seq NamedBody643_242 NamedBody643_243

def NamedBody643_245 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.equal) 1 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 10) NamedBody643_241 NamedBody643_244

def NamedBody643_246 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody643_247 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 10 5
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 5)))

def NamedBody643_248 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 80#64)))

def NamedBody643_249 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 1

def NamedBody643_250 : StackLang.HolProg 64 :=
.seq NamedBody643_248 NamedBody643_249

def NamedBody643_251 : StackLang.HolProg 64 :=
.seq NamedBody643_247 NamedBody643_250

def NamedBody643_252 : StackLang.HolProg 64 :=
.seq NamedBody643_246 NamedBody643_251

def NamedBody643_253 : StackLang.HolProg 64 :=
.seq NamedBody643_245 NamedBody643_252

def NamedBody643_254 : StackLang.HolProg 64 :=
.seq NamedBody643_168 NamedBody643_253

def NamedBody643_255 : StackLang.HolProg 64 :=
.seq NamedBody643_167 NamedBody643_254

def NamedBody643_256 : StackLang.HolProg 64 :=
.seq NamedBody643_166 NamedBody643_255

def NamedBody643_257 : StackLang.HolProg 64 :=
.seq NamedBody643_165 NamedBody643_256

def NamedBody643_258 : StackLang.HolProg 64 :=
.seq NamedBody643_110 NamedBody643_257

def NamedBody643_259 : StackLang.HolProg 64 :=
.seq NamedBody643_107 NamedBody643_258

def NamedBody643_260 : StackLang.HolProg 64 :=
.seq NamedBody643_106 NamedBody643_259

def NamedBody643_261 : StackLang.HolProg 64 :=
.seq NamedBody643_23 NamedBody643_260

def NamedBody643_262 : StackLang.HolProg 64 :=
.seq NamedBody643_6 NamedBody643_261

def Named643 : Nat × StackLang.HolProg 64 := (643, NamedBody643_262)
theorem Named643_eq : StackNames.progCompEntryHOL RiscVConfig.riscvNames Removed643 = Named643 := by
  kernel_rfl
#print axioms Named643_eq
end InitECandidate.Proofs.BackendStages
