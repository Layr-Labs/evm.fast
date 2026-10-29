import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.BackendStages.Removed712
import Flapjack.Compiler.Backend.Backend
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
namespace InitECandidate.Proofs.BackendStages
def NamedBody712_0 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 64#64)))

def NamedBody712_1 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 2#64)

def NamedBody712_2 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 10

def NamedBody712_3 : StackLang.HolProg 64 :=
.seq NamedBody712_1 NamedBody712_2

def NamedBody712_4 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody712_5 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) NamedBody712_3 NamedBody712_4

def NamedBody712_6 : StackLang.HolProg 64 :=
.seq NamedBody712_0 NamedBody712_5

def NamedBody712_7 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 56#64))

def NamedBody712_8 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 13
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 48#64))

def NamedBody712_9 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 11
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 40#64))

def NamedBody712_10 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 6
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 32#64))

def NamedBody712_11 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 10
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 24#64))

def NamedBody712_12 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 5
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody712_13 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 12
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody712_14 : StackLang.HolProg 64 :=
.seq NamedBody712_12 NamedBody712_13

def NamedBody712_15 : StackLang.HolProg 64 :=
.seq NamedBody712_11 NamedBody712_14

def NamedBody712_16 : StackLang.HolProg 64 :=
.seq NamedBody712_10 NamedBody712_15

def NamedBody712_17 : StackLang.HolProg 64 :=
.seq NamedBody712_9 NamedBody712_16

def NamedBody712_18 : StackLang.HolProg 64 :=
.seq NamedBody712_8 NamedBody712_17

def NamedBody712_19 : StackLang.HolProg 64 :=
.seq NamedBody712_7 NamedBody712_18

def NamedBody712_20 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody712_21 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 3156#64)

def NamedBody712_22 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody712_23 : StackLang.HolProg 64 :=
.seq NamedBody712_21 NamedBody712_22

def NamedBody712_24 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody712_25 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 2#64)

def NamedBody712_26 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 10

def NamedBody712_27 : StackLang.HolProg 64 :=
.seq NamedBody712_25 NamedBody712_26

def NamedBody712_28 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody712_29 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) NamedBody712_27 NamedBody712_28

def NamedBody712_30 : StackLang.HolProg 64 :=
.seq NamedBody712_24 NamedBody712_29

def NamedBody712_31 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def NamedBody712_32 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody712_33 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 712 3

def NamedBody712_34 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody712_35 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody712_36 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody712_37 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody712_38 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def NamedBody712_39 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def NamedBody712_40 : StackLang.HolProg 64 :=
.seq NamedBody712_38 NamedBody712_39

def NamedBody712_41 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def NamedBody712_42 : StackLang.HolProg 64 :=
.seq NamedBody712_40 NamedBody712_41

def NamedBody712_43 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody712_44 : StackLang.HolProg 64 :=
.seq NamedBody712_42 NamedBody712_43

def NamedBody712_45 : StackLang.HolProg 64 :=
.seq NamedBody712_37 NamedBody712_44

def NamedBody712_46 : StackLang.HolProg 64 :=
.seq NamedBody712_36 NamedBody712_45

def NamedBody712_47 : StackLang.HolProg 64 :=
.seq NamedBody712_35 NamedBody712_46

def NamedBody712_48 : StackLang.HolProg 64 :=
.seq NamedBody712_34 NamedBody712_47

def NamedBody712_49 : StackLang.HolProg 64 :=
.seq NamedBody712_33 NamedBody712_48

def NamedBody712_50 : StackLang.HolProg 64 :=
.seq NamedBody712_32 NamedBody712_49

def NamedBody712_51 : StackLang.HolProg 64 :=
.seq NamedBody712_31 NamedBody712_50

def NamedBody712_52 : StackLang.HolProg 64 :=
.seq NamedBody712_30 NamedBody712_51

def NamedBody712_53 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody712_54 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody712_55 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody712_56 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody712_57 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody712_58 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody712_59 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 1 10
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 10)))

def NamedBody712_60 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 30
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 56#64))

def NamedBody712_61 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 27
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 48#64))

def NamedBody712_62 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 8
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 40#64))

def NamedBody712_63 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 29
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 32#64))

def NamedBody712_64 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 7
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 24#64))

def NamedBody712_65 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 28
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody712_66 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 9
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody712_67 : StackLang.HolProg 64 :=
.seq NamedBody712_65 NamedBody712_66

def NamedBody712_68 : StackLang.HolProg 64 :=
.seq NamedBody712_64 NamedBody712_67

def NamedBody712_69 : StackLang.HolProg 64 :=
.seq NamedBody712_63 NamedBody712_68

def NamedBody712_70 : StackLang.HolProg 64 :=
.seq NamedBody712_62 NamedBody712_69

def NamedBody712_71 : StackLang.HolProg 64 :=
.seq NamedBody712_61 NamedBody712_70

def NamedBody712_72 : StackLang.HolProg 64 :=
.seq NamedBody712_60 NamedBody712_71

def NamedBody712_73 : StackLang.HolProg 64 :=
.seq NamedBody712_59 NamedBody712_72

def NamedBody712_74 : StackLang.HolProg 64 :=
.seq NamedBody712_58 NamedBody712_73

def NamedBody712_75 : StackLang.HolProg 64 :=
.seq NamedBody712_57 NamedBody712_74

def NamedBody712_76 : StackLang.HolProg 64 :=
.seq NamedBody712_56 NamedBody712_75

def NamedBody712_77 : StackLang.HolProg 64 :=
.seq NamedBody712_55 NamedBody712_76

def NamedBody712_78 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 30
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 56#64))

def NamedBody712_79 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 27
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 48#64))

def NamedBody712_80 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 8
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 40#64))

def NamedBody712_81 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 29
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 32#64))

def NamedBody712_82 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 7
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 24#64))

def NamedBody712_83 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 28
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody712_84 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 9
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody712_85 : StackLang.HolProg 64 :=
.seq NamedBody712_83 NamedBody712_84

def NamedBody712_86 : StackLang.HolProg 64 :=
.seq NamedBody712_82 NamedBody712_85

def NamedBody712_87 : StackLang.HolProg 64 :=
.seq NamedBody712_81 NamedBody712_86

def NamedBody712_88 : StackLang.HolProg 64 :=
.seq NamedBody712_80 NamedBody712_87

def NamedBody712_89 : StackLang.HolProg 64 :=
.seq NamedBody712_79 NamedBody712_88

def NamedBody712_90 : StackLang.HolProg 64 :=
.seq NamedBody712_78 NamedBody712_89

def NamedBody712_91 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def NamedBody712_92 : StackLang.HolProg 64 :=
.seq NamedBody712_90 NamedBody712_91

def NamedBody712_93 : StackLang.HolProg 64 :=
.call (some (NamedBody712_77, 1, 712, 2)) (Sum.inl 705) (some (NamedBody712_92, 712, 3))

def NamedBody712_94 : StackLang.HolProg 64 :=
.seq NamedBody712_54 NamedBody712_93

def NamedBody712_95 : StackLang.HolProg 64 :=
.seq NamedBody712_53 NamedBody712_94

def NamedBody712_96 : StackLang.HolProg 64 :=
.seq NamedBody712_52 NamedBody712_95

def NamedBody712_97 : StackLang.HolProg 64 :=
.seq NamedBody712_23 NamedBody712_96

def NamedBody712_98 : StackLang.HolProg 64 :=
.seq NamedBody712_20 NamedBody712_97

def NamedBody712_99 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody712_100 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody712_101 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 1#64)

def NamedBody712_102 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody712_103 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 0#64)

def NamedBody712_104 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 11 0#64)

def NamedBody712_105 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 12 0#64)

def NamedBody712_106 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 13 0#64)

def NamedBody712_107 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 5 0#64)

def NamedBody712_108 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 6 0#64)

def NamedBody712_109 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody712_110 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 64#64)))

def NamedBody712_111 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 30

def NamedBody712_112 : StackLang.HolProg 64 :=
.seq NamedBody712_110 NamedBody712_111

def NamedBody712_113 : StackLang.HolProg 64 :=
.seq NamedBody712_109 NamedBody712_112

def NamedBody712_114 : StackLang.HolProg 64 :=
.seq NamedBody712_108 NamedBody712_113

def NamedBody712_115 : StackLang.HolProg 64 :=
.seq NamedBody712_107 NamedBody712_114

def NamedBody712_116 : StackLang.HolProg 64 :=
.seq NamedBody712_106 NamedBody712_115

def NamedBody712_117 : StackLang.HolProg 64 :=
.seq NamedBody712_105 NamedBody712_116

def NamedBody712_118 : StackLang.HolProg 64 :=
.seq NamedBody712_104 NamedBody712_117

def NamedBody712_119 : StackLang.HolProg 64 :=
.seq NamedBody712_103 NamedBody712_118

def NamedBody712_120 : StackLang.HolProg 64 :=
.seq NamedBody712_102 NamedBody712_119

def NamedBody712_121 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody712_122 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.equal) 1 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 10) NamedBody712_120 NamedBody712_121

def NamedBody712_123 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody712_124 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody712_125 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody712_126 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 6 1873798617647539866#64)

def NamedBody712_127 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 5 5412103778470702295#64)

def NamedBody712_128 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 13 7239337960414712511#64)

def NamedBody712_129 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 12 7435674573564081700#64)

def NamedBody712_130 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 11 2210141511517208575#64)

def NamedBody712_131 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 13402431016077863595#64)

def NamedBody712_132 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 30
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 56#64))

def NamedBody712_133 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody712_134 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 3157#64)

def NamedBody712_135 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody712_136 : StackLang.HolProg 64 :=
.seq NamedBody712_134 NamedBody712_135

def NamedBody712_137 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody712_138 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 2#64)

def NamedBody712_139 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 10

def NamedBody712_140 : StackLang.HolProg 64 :=
.seq NamedBody712_138 NamedBody712_139

def NamedBody712_141 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody712_142 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) NamedBody712_140 NamedBody712_141

def NamedBody712_143 : StackLang.HolProg 64 :=
.seq NamedBody712_137 NamedBody712_142

def NamedBody712_144 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def NamedBody712_145 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody712_146 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 712 5

def NamedBody712_147 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody712_148 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody712_149 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody712_150 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody712_151 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def NamedBody712_152 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def NamedBody712_153 : StackLang.HolProg 64 :=
.seq NamedBody712_151 NamedBody712_152

def NamedBody712_154 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def NamedBody712_155 : StackLang.HolProg 64 :=
.seq NamedBody712_153 NamedBody712_154

def NamedBody712_156 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody712_157 : StackLang.HolProg 64 :=
.seq NamedBody712_155 NamedBody712_156

def NamedBody712_158 : StackLang.HolProg 64 :=
.seq NamedBody712_150 NamedBody712_157

def NamedBody712_159 : StackLang.HolProg 64 :=
.seq NamedBody712_149 NamedBody712_158

def NamedBody712_160 : StackLang.HolProg 64 :=
.seq NamedBody712_148 NamedBody712_159

def NamedBody712_161 : StackLang.HolProg 64 :=
.seq NamedBody712_147 NamedBody712_160

def NamedBody712_162 : StackLang.HolProg 64 :=
.seq NamedBody712_146 NamedBody712_161

def NamedBody712_163 : StackLang.HolProg 64 :=
.seq NamedBody712_145 NamedBody712_162

def NamedBody712_164 : StackLang.HolProg 64 :=
.seq NamedBody712_144 NamedBody712_163

def NamedBody712_165 : StackLang.HolProg 64 :=
.seq NamedBody712_143 NamedBody712_164

def NamedBody712_166 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody712_167 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody712_168 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody712_169 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody712_170 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody712_171 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody712_172 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 7 10
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 10)))

def NamedBody712_173 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 56#64))

def NamedBody712_174 : StackLang.HolProg 64 :=
.seq NamedBody712_172 NamedBody712_173

def NamedBody712_175 : StackLang.HolProg 64 :=
.seq NamedBody712_171 NamedBody712_174

def NamedBody712_176 : StackLang.HolProg 64 :=
.seq NamedBody712_170 NamedBody712_175

def NamedBody712_177 : StackLang.HolProg 64 :=
.seq NamedBody712_169 NamedBody712_176

def NamedBody712_178 : StackLang.HolProg 64 :=
.seq NamedBody712_168 NamedBody712_177

def NamedBody712_179 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 56#64))

def NamedBody712_180 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def NamedBody712_181 : StackLang.HolProg 64 :=
.seq NamedBody712_179 NamedBody712_180

def NamedBody712_182 : StackLang.HolProg 64 :=
.call (some (NamedBody712_178, 1, 712, 4)) (Sum.inl 709) (some (NamedBody712_181, 712, 5))

def NamedBody712_183 : StackLang.HolProg 64 :=
.seq NamedBody712_167 NamedBody712_182

def NamedBody712_184 : StackLang.HolProg 64 :=
.seq NamedBody712_166 NamedBody712_183

def NamedBody712_185 : StackLang.HolProg 64 :=
.seq NamedBody712_165 NamedBody712_184

def NamedBody712_186 : StackLang.HolProg 64 :=
.seq NamedBody712_136 NamedBody712_185

def NamedBody712_187 : StackLang.HolProg 64 :=
.seq NamedBody712_133 NamedBody712_186

def NamedBody712_188 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody712_189 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 10 7
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 7)))

def NamedBody712_190 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 64#64)))

def NamedBody712_191 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 1

def NamedBody712_192 : StackLang.HolProg 64 :=
.seq NamedBody712_190 NamedBody712_191

def NamedBody712_193 : StackLang.HolProg 64 :=
.seq NamedBody712_189 NamedBody712_192

def NamedBody712_194 : StackLang.HolProg 64 :=
.seq NamedBody712_188 NamedBody712_193

def NamedBody712_195 : StackLang.HolProg 64 :=
.seq NamedBody712_187 NamedBody712_194

def NamedBody712_196 : StackLang.HolProg 64 :=
.seq NamedBody712_132 NamedBody712_195

def NamedBody712_197 : StackLang.HolProg 64 :=
.seq NamedBody712_131 NamedBody712_196

def NamedBody712_198 : StackLang.HolProg 64 :=
.seq NamedBody712_130 NamedBody712_197

def NamedBody712_199 : StackLang.HolProg 64 :=
.seq NamedBody712_129 NamedBody712_198

def NamedBody712_200 : StackLang.HolProg 64 :=
.seq NamedBody712_128 NamedBody712_199

def NamedBody712_201 : StackLang.HolProg 64 :=
.seq NamedBody712_127 NamedBody712_200

def NamedBody712_202 : StackLang.HolProg 64 :=
.seq NamedBody712_126 NamedBody712_201

def NamedBody712_203 : StackLang.HolProg 64 :=
.seq NamedBody712_125 NamedBody712_202

def NamedBody712_204 : StackLang.HolProg 64 :=
.seq NamedBody712_124 NamedBody712_203

def NamedBody712_205 : StackLang.HolProg 64 :=
.seq NamedBody712_123 NamedBody712_204

def NamedBody712_206 : StackLang.HolProg 64 :=
.seq NamedBody712_122 NamedBody712_205

def NamedBody712_207 : StackLang.HolProg 64 :=
.seq NamedBody712_101 NamedBody712_206

def NamedBody712_208 : StackLang.HolProg 64 :=
.seq NamedBody712_100 NamedBody712_207

def NamedBody712_209 : StackLang.HolProg 64 :=
.seq NamedBody712_99 NamedBody712_208

def NamedBody712_210 : StackLang.HolProg 64 :=
.seq NamedBody712_98 NamedBody712_209

def NamedBody712_211 : StackLang.HolProg 64 :=
.seq NamedBody712_19 NamedBody712_210

def NamedBody712_212 : StackLang.HolProg 64 :=
.seq NamedBody712_6 NamedBody712_211

def Named712 : Nat × StackLang.HolProg 64 := (712, NamedBody712_212)
theorem Named712_eq : StackNames.progCompEntryHOL RiscVConfig.riscvNames Removed712 = Named712 := by
  kernel_rfl
#print axioms Named712_eq
end InitECandidate.Proofs.BackendStages
