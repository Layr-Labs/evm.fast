import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.BackendStages.Removed659
import Flapjack.Compiler.Backend.Backend
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
namespace InitECandidate.Proofs.BackendStages
def NamedBody659_0 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 80#64)))

def NamedBody659_1 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 2#64)

def NamedBody659_2 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 10

def NamedBody659_3 : StackLang.HolProg 64 :=
.seq NamedBody659_1 NamedBody659_2

def NamedBody659_4 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody659_5 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) NamedBody659_3 NamedBody659_4

def NamedBody659_6 : StackLang.HolProg 64 :=
.seq NamedBody659_0 NamedBody659_5

def NamedBody659_7 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 72#64))

def NamedBody659_8 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 8
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 64#64))

def NamedBody659_9 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 13
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 56#64))

def NamedBody659_10 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 11
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 48#64))

def NamedBody659_11 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 6
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 40#64))

def NamedBody659_12 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 10
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 32#64))

def NamedBody659_13 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 5
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 24#64))

def NamedBody659_14 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 12
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody659_15 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 7
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody659_16 : StackLang.HolProg 64 :=
.seq NamedBody659_14 NamedBody659_15

def NamedBody659_17 : StackLang.HolProg 64 :=
.seq NamedBody659_13 NamedBody659_16

def NamedBody659_18 : StackLang.HolProg 64 :=
.seq NamedBody659_12 NamedBody659_17

def NamedBody659_19 : StackLang.HolProg 64 :=
.seq NamedBody659_11 NamedBody659_18

def NamedBody659_20 : StackLang.HolProg 64 :=
.seq NamedBody659_10 NamedBody659_19

def NamedBody659_21 : StackLang.HolProg 64 :=
.seq NamedBody659_9 NamedBody659_20

def NamedBody659_22 : StackLang.HolProg 64 :=
.seq NamedBody659_8 NamedBody659_21

def NamedBody659_23 : StackLang.HolProg 64 :=
.seq NamedBody659_7 NamedBody659_22

def NamedBody659_24 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody659_25 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 2747#64)

def NamedBody659_26 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody659_27 : StackLang.HolProg 64 :=
.seq NamedBody659_25 NamedBody659_26

def NamedBody659_28 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody659_29 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 2#64)

def NamedBody659_30 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 10

def NamedBody659_31 : StackLang.HolProg 64 :=
.seq NamedBody659_29 NamedBody659_30

def NamedBody659_32 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody659_33 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) NamedBody659_31 NamedBody659_32

def NamedBody659_34 : StackLang.HolProg 64 :=
.seq NamedBody659_28 NamedBody659_33

def NamedBody659_35 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def NamedBody659_36 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody659_37 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 659 3

def NamedBody659_38 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody659_39 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody659_40 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody659_41 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody659_42 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def NamedBody659_43 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def NamedBody659_44 : StackLang.HolProg 64 :=
.seq NamedBody659_42 NamedBody659_43

def NamedBody659_45 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def NamedBody659_46 : StackLang.HolProg 64 :=
.seq NamedBody659_44 NamedBody659_45

def NamedBody659_47 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody659_48 : StackLang.HolProg 64 :=
.seq NamedBody659_46 NamedBody659_47

def NamedBody659_49 : StackLang.HolProg 64 :=
.seq NamedBody659_41 NamedBody659_48

def NamedBody659_50 : StackLang.HolProg 64 :=
.seq NamedBody659_40 NamedBody659_49

def NamedBody659_51 : StackLang.HolProg 64 :=
.seq NamedBody659_39 NamedBody659_50

def NamedBody659_52 : StackLang.HolProg 64 :=
.seq NamedBody659_38 NamedBody659_51

def NamedBody659_53 : StackLang.HolProg 64 :=
.seq NamedBody659_37 NamedBody659_52

def NamedBody659_54 : StackLang.HolProg 64 :=
.seq NamedBody659_36 NamedBody659_53

def NamedBody659_55 : StackLang.HolProg 64 :=
.seq NamedBody659_35 NamedBody659_54

def NamedBody659_56 : StackLang.HolProg 64 :=
.seq NamedBody659_34 NamedBody659_55

def NamedBody659_57 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody659_58 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody659_59 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody659_60 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody659_61 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody659_62 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody659_63 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 9 10
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 10)))

def NamedBody659_64 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 8
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 64#64))

def NamedBody659_65 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 13
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 56#64))

def NamedBody659_66 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 11
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 48#64))

def NamedBody659_67 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 6
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 40#64))

def NamedBody659_68 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 32#64))

def NamedBody659_69 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 5
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 24#64))

def NamedBody659_70 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 12
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody659_71 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 7
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody659_72 : StackLang.HolProg 64 :=
.seq NamedBody659_70 NamedBody659_71

def NamedBody659_73 : StackLang.HolProg 64 :=
.seq NamedBody659_69 NamedBody659_72

def NamedBody659_74 : StackLang.HolProg 64 :=
.seq NamedBody659_68 NamedBody659_73

def NamedBody659_75 : StackLang.HolProg 64 :=
.seq NamedBody659_67 NamedBody659_74

def NamedBody659_76 : StackLang.HolProg 64 :=
.seq NamedBody659_66 NamedBody659_75

def NamedBody659_77 : StackLang.HolProg 64 :=
.seq NamedBody659_65 NamedBody659_76

def NamedBody659_78 : StackLang.HolProg 64 :=
.seq NamedBody659_64 NamedBody659_77

def NamedBody659_79 : StackLang.HolProg 64 :=
.seq NamedBody659_63 NamedBody659_78

def NamedBody659_80 : StackLang.HolProg 64 :=
.seq NamedBody659_62 NamedBody659_79

def NamedBody659_81 : StackLang.HolProg 64 :=
.seq NamedBody659_61 NamedBody659_80

def NamedBody659_82 : StackLang.HolProg 64 :=
.seq NamedBody659_60 NamedBody659_81

def NamedBody659_83 : StackLang.HolProg 64 :=
.seq NamedBody659_59 NamedBody659_82

def NamedBody659_84 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 8
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 64#64))

def NamedBody659_85 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 13
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 56#64))

def NamedBody659_86 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 11
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 48#64))

def NamedBody659_87 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 6
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 40#64))

def NamedBody659_88 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 32#64))

def NamedBody659_89 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 5
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 24#64))

def NamedBody659_90 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 12
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody659_91 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 7
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody659_92 : StackLang.HolProg 64 :=
.seq NamedBody659_90 NamedBody659_91

def NamedBody659_93 : StackLang.HolProg 64 :=
.seq NamedBody659_89 NamedBody659_92

def NamedBody659_94 : StackLang.HolProg 64 :=
.seq NamedBody659_88 NamedBody659_93

def NamedBody659_95 : StackLang.HolProg 64 :=
.seq NamedBody659_87 NamedBody659_94

def NamedBody659_96 : StackLang.HolProg 64 :=
.seq NamedBody659_86 NamedBody659_95

def NamedBody659_97 : StackLang.HolProg 64 :=
.seq NamedBody659_85 NamedBody659_96

def NamedBody659_98 : StackLang.HolProg 64 :=
.seq NamedBody659_84 NamedBody659_97

def NamedBody659_99 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def NamedBody659_100 : StackLang.HolProg 64 :=
.seq NamedBody659_98 NamedBody659_99

def NamedBody659_101 : StackLang.HolProg 64 :=
.call (some (NamedBody659_83, 1, 659, 2)) (Sum.inl 106) (some (NamedBody659_100, 659, 3))

def NamedBody659_102 : StackLang.HolProg 64 :=
.seq NamedBody659_58 NamedBody659_101

def NamedBody659_103 : StackLang.HolProg 64 :=
.seq NamedBody659_57 NamedBody659_102

def NamedBody659_104 : StackLang.HolProg 64 :=
.seq NamedBody659_56 NamedBody659_103

def NamedBody659_105 : StackLang.HolProg 64 :=
.seq NamedBody659_27 NamedBody659_104

def NamedBody659_106 : StackLang.HolProg 64 :=
.seq NamedBody659_24 NamedBody659_105

def NamedBody659_107 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody659_108 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 10 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def NamedBody659_109 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 9
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 64#64))

def NamedBody659_110 : StackLang.HolProg 64 :=
.seq NamedBody659_108 NamedBody659_109

def NamedBody659_111 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody659_112 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 2748#64)

def NamedBody659_113 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody659_114 : StackLang.HolProg 64 :=
.seq NamedBody659_112 NamedBody659_113

def NamedBody659_115 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody659_116 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 2#64)

def NamedBody659_117 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 10

def NamedBody659_118 : StackLang.HolProg 64 :=
.seq NamedBody659_116 NamedBody659_117

def NamedBody659_119 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody659_120 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) NamedBody659_118 NamedBody659_119

def NamedBody659_121 : StackLang.HolProg 64 :=
.seq NamedBody659_115 NamedBody659_120

def NamedBody659_122 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def NamedBody659_123 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody659_124 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 659 5

def NamedBody659_125 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody659_126 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody659_127 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody659_128 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody659_129 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def NamedBody659_130 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def NamedBody659_131 : StackLang.HolProg 64 :=
.seq NamedBody659_129 NamedBody659_130

def NamedBody659_132 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def NamedBody659_133 : StackLang.HolProg 64 :=
.seq NamedBody659_131 NamedBody659_132

def NamedBody659_134 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody659_135 : StackLang.HolProg 64 :=
.seq NamedBody659_133 NamedBody659_134

def NamedBody659_136 : StackLang.HolProg 64 :=
.seq NamedBody659_128 NamedBody659_135

def NamedBody659_137 : StackLang.HolProg 64 :=
.seq NamedBody659_127 NamedBody659_136

def NamedBody659_138 : StackLang.HolProg 64 :=
.seq NamedBody659_126 NamedBody659_137

def NamedBody659_139 : StackLang.HolProg 64 :=
.seq NamedBody659_125 NamedBody659_138

def NamedBody659_140 : StackLang.HolProg 64 :=
.seq NamedBody659_124 NamedBody659_139

def NamedBody659_141 : StackLang.HolProg 64 :=
.seq NamedBody659_123 NamedBody659_140

def NamedBody659_142 : StackLang.HolProg 64 :=
.seq NamedBody659_122 NamedBody659_141

def NamedBody659_143 : StackLang.HolProg 64 :=
.seq NamedBody659_121 NamedBody659_142

def NamedBody659_144 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody659_145 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody659_146 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody659_147 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody659_148 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody659_149 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody659_150 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 5 10
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 10)))

def NamedBody659_151 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 64#64))

def NamedBody659_152 : StackLang.HolProg 64 :=
.seq NamedBody659_150 NamedBody659_151

def NamedBody659_153 : StackLang.HolProg 64 :=
.seq NamedBody659_149 NamedBody659_152

def NamedBody659_154 : StackLang.HolProg 64 :=
.seq NamedBody659_148 NamedBody659_153

def NamedBody659_155 : StackLang.HolProg 64 :=
.seq NamedBody659_147 NamedBody659_154

def NamedBody659_156 : StackLang.HolProg 64 :=
.seq NamedBody659_146 NamedBody659_155

def NamedBody659_157 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 64#64))

def NamedBody659_158 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def NamedBody659_159 : StackLang.HolProg 64 :=
.seq NamedBody659_157 NamedBody659_158

def NamedBody659_160 : StackLang.HolProg 64 :=
.call (some (NamedBody659_156, 1, 659, 4)) (Sum.inl 117) (some (NamedBody659_159, 659, 5))

def NamedBody659_161 : StackLang.HolProg 64 :=
.seq NamedBody659_145 NamedBody659_160

def NamedBody659_162 : StackLang.HolProg 64 :=
.seq NamedBody659_144 NamedBody659_161

def NamedBody659_163 : StackLang.HolProg 64 :=
.seq NamedBody659_143 NamedBody659_162

def NamedBody659_164 : StackLang.HolProg 64 :=
.seq NamedBody659_114 NamedBody659_163

def NamedBody659_165 : StackLang.HolProg 64 :=
.seq NamedBody659_111 NamedBody659_164

def NamedBody659_166 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody659_167 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody659_168 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 1#64)

def NamedBody659_169 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody659_170 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 10 5
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 5)))

def NamedBody659_171 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 8 3486998266802970665#64)

def NamedBody659_172 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 7 13281191951274694749#64)

def NamedBody659_173 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 6 10917124144477883021#64)

def NamedBody659_174 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 5 4332616871279656263#64)

def NamedBody659_175 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody659_176 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody659_177 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 2749#64)

def NamedBody659_178 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody659_179 : StackLang.HolProg 64 :=
.seq NamedBody659_177 NamedBody659_178

def NamedBody659_180 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody659_181 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 2#64)

def NamedBody659_182 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 10

def NamedBody659_183 : StackLang.HolProg 64 :=
.seq NamedBody659_181 NamedBody659_182

def NamedBody659_184 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody659_185 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) NamedBody659_183 NamedBody659_184

def NamedBody659_186 : StackLang.HolProg 64 :=
.seq NamedBody659_180 NamedBody659_185

def NamedBody659_187 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def NamedBody659_188 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody659_189 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 659 7

def NamedBody659_190 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody659_191 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody659_192 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody659_193 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody659_194 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def NamedBody659_195 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def NamedBody659_196 : StackLang.HolProg 64 :=
.seq NamedBody659_194 NamedBody659_195

def NamedBody659_197 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def NamedBody659_198 : StackLang.HolProg 64 :=
.seq NamedBody659_196 NamedBody659_197

def NamedBody659_199 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody659_200 : StackLang.HolProg 64 :=
.seq NamedBody659_198 NamedBody659_199

def NamedBody659_201 : StackLang.HolProg 64 :=
.seq NamedBody659_193 NamedBody659_200

def NamedBody659_202 : StackLang.HolProg 64 :=
.seq NamedBody659_192 NamedBody659_201

def NamedBody659_203 : StackLang.HolProg 64 :=
.seq NamedBody659_191 NamedBody659_202

def NamedBody659_204 : StackLang.HolProg 64 :=
.seq NamedBody659_190 NamedBody659_203

def NamedBody659_205 : StackLang.HolProg 64 :=
.seq NamedBody659_189 NamedBody659_204

def NamedBody659_206 : StackLang.HolProg 64 :=
.seq NamedBody659_188 NamedBody659_205

def NamedBody659_207 : StackLang.HolProg 64 :=
.seq NamedBody659_187 NamedBody659_206

def NamedBody659_208 : StackLang.HolProg 64 :=
.seq NamedBody659_186 NamedBody659_207

def NamedBody659_209 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody659_210 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody659_211 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody659_212 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody659_213 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody659_214 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody659_215 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 5 10
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 10)))

def NamedBody659_216 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 72#64))

def NamedBody659_217 : StackLang.HolProg 64 :=
.seq NamedBody659_215 NamedBody659_216

def NamedBody659_218 : StackLang.HolProg 64 :=
.seq NamedBody659_214 NamedBody659_217

def NamedBody659_219 : StackLang.HolProg 64 :=
.seq NamedBody659_213 NamedBody659_218

def NamedBody659_220 : StackLang.HolProg 64 :=
.seq NamedBody659_212 NamedBody659_219

def NamedBody659_221 : StackLang.HolProg 64 :=
.seq NamedBody659_211 NamedBody659_220

def NamedBody659_222 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 72#64))

def NamedBody659_223 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def NamedBody659_224 : StackLang.HolProg 64 :=
.seq NamedBody659_222 NamedBody659_223

def NamedBody659_225 : StackLang.HolProg 64 :=
.call (some (NamedBody659_221, 1, 659, 6)) (Sum.inl 116) (some (NamedBody659_224, 659, 7))

def NamedBody659_226 : StackLang.HolProg 64 :=
.seq NamedBody659_210 NamedBody659_225

def NamedBody659_227 : StackLang.HolProg 64 :=
.seq NamedBody659_209 NamedBody659_226

def NamedBody659_228 : StackLang.HolProg 64 :=
.seq NamedBody659_208 NamedBody659_227

def NamedBody659_229 : StackLang.HolProg 64 :=
.seq NamedBody659_179 NamedBody659_228

def NamedBody659_230 : StackLang.HolProg 64 :=
.seq NamedBody659_176 NamedBody659_229

def NamedBody659_231 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody659_232 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody659_233 : StackLang.HolProg 64 :=
.seq NamedBody659_231 NamedBody659_232

def NamedBody659_234 : StackLang.HolProg 64 :=
.seq NamedBody659_230 NamedBody659_233

def NamedBody659_235 : StackLang.HolProg 64 :=
.seq NamedBody659_175 NamedBody659_234

def NamedBody659_236 : StackLang.HolProg 64 :=
.seq NamedBody659_174 NamedBody659_235

def NamedBody659_237 : StackLang.HolProg 64 :=
.seq NamedBody659_173 NamedBody659_236

def NamedBody659_238 : StackLang.HolProg 64 :=
.seq NamedBody659_172 NamedBody659_237

def NamedBody659_239 : StackLang.HolProg 64 :=
.seq NamedBody659_171 NamedBody659_238

def NamedBody659_240 : StackLang.HolProg 64 :=
.seq NamedBody659_170 NamedBody659_239

def NamedBody659_241 : StackLang.HolProg 64 :=
.seq NamedBody659_169 NamedBody659_240

def NamedBody659_242 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody659_243 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 72#64))

def NamedBody659_244 : StackLang.HolProg 64 :=
.seq NamedBody659_242 NamedBody659_243

def NamedBody659_245 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.equal) 1 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 10) NamedBody659_241 NamedBody659_244

def NamedBody659_246 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody659_247 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 10 5
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 5)))

def NamedBody659_248 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 80#64)))

def NamedBody659_249 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 1

def NamedBody659_250 : StackLang.HolProg 64 :=
.seq NamedBody659_248 NamedBody659_249

def NamedBody659_251 : StackLang.HolProg 64 :=
.seq NamedBody659_247 NamedBody659_250

def NamedBody659_252 : StackLang.HolProg 64 :=
.seq NamedBody659_246 NamedBody659_251

def NamedBody659_253 : StackLang.HolProg 64 :=
.seq NamedBody659_245 NamedBody659_252

def NamedBody659_254 : StackLang.HolProg 64 :=
.seq NamedBody659_168 NamedBody659_253

def NamedBody659_255 : StackLang.HolProg 64 :=
.seq NamedBody659_167 NamedBody659_254

def NamedBody659_256 : StackLang.HolProg 64 :=
.seq NamedBody659_166 NamedBody659_255

def NamedBody659_257 : StackLang.HolProg 64 :=
.seq NamedBody659_165 NamedBody659_256

def NamedBody659_258 : StackLang.HolProg 64 :=
.seq NamedBody659_110 NamedBody659_257

def NamedBody659_259 : StackLang.HolProg 64 :=
.seq NamedBody659_107 NamedBody659_258

def NamedBody659_260 : StackLang.HolProg 64 :=
.seq NamedBody659_106 NamedBody659_259

def NamedBody659_261 : StackLang.HolProg 64 :=
.seq NamedBody659_23 NamedBody659_260

def NamedBody659_262 : StackLang.HolProg 64 :=
.seq NamedBody659_6 NamedBody659_261

def Named659 : Nat × StackLang.HolProg 64 := (659, NamedBody659_262)
theorem Named659_eq : StackNames.progCompEntryHOL RiscVConfig.riscvNames Removed659 = Named659 := by
  kernel_rfl
#print axioms Named659_eq
end InitECandidate.Proofs.BackendStages
