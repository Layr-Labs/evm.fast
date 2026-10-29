import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.BackendStages.Removed683
import Flapjack.Compiler.Backend.Backend
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
namespace InitECandidate.Proofs.BackendStages
def NamedBody683_0 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 160#64)))

def NamedBody683_1 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 2#64)

def NamedBody683_2 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 10

def NamedBody683_3 : StackLang.HolProg 64 :=
.seq NamedBody683_1 NamedBody683_2

def NamedBody683_4 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody683_5 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) NamedBody683_3 NamedBody683_4

def NamedBody683_6 : StackLang.HolProg 64 :=
.seq NamedBody683_0 NamedBody683_5

def NamedBody683_7 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 5 11
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 11)))

def NamedBody683_8 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsl 6 10
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 5#64)))

def NamedBody683_9 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody683_10 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsl 11 6
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 1#64)))

def NamedBody683_11 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody683_12 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 11 11
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 12)))

def NamedBody683_13 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 152#64))

def NamedBody683_14 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 13
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 144#64))

def NamedBody683_15 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 5
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 112#64))

def NamedBody683_16 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 6
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 136#64))

def NamedBody683_17 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 10
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 128#64))

def NamedBody683_18 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 12
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 120#64))

def NamedBody683_19 : StackLang.HolProg 64 :=
.seq NamedBody683_17 NamedBody683_18

def NamedBody683_20 : StackLang.HolProg 64 :=
.seq NamedBody683_16 NamedBody683_19

def NamedBody683_21 : StackLang.HolProg 64 :=
.seq NamedBody683_15 NamedBody683_20

def NamedBody683_22 : StackLang.HolProg 64 :=
.seq NamedBody683_14 NamedBody683_21

def NamedBody683_23 : StackLang.HolProg 64 :=
.seq NamedBody683_13 NamedBody683_22

def NamedBody683_24 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody683_25 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 2829#64)

def NamedBody683_26 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody683_27 : StackLang.HolProg 64 :=
.seq NamedBody683_25 NamedBody683_26

def NamedBody683_28 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody683_29 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 2#64)

def NamedBody683_30 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 10

def NamedBody683_31 : StackLang.HolProg 64 :=
.seq NamedBody683_29 NamedBody683_30

def NamedBody683_32 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody683_33 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) NamedBody683_31 NamedBody683_32

def NamedBody683_34 : StackLang.HolProg 64 :=
.seq NamedBody683_28 NamedBody683_33

def NamedBody683_35 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def NamedBody683_36 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody683_37 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 683 3

def NamedBody683_38 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody683_39 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody683_40 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody683_41 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody683_42 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def NamedBody683_43 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def NamedBody683_44 : StackLang.HolProg 64 :=
.seq NamedBody683_42 NamedBody683_43

def NamedBody683_45 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def NamedBody683_46 : StackLang.HolProg 64 :=
.seq NamedBody683_44 NamedBody683_45

def NamedBody683_47 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody683_48 : StackLang.HolProg 64 :=
.seq NamedBody683_46 NamedBody683_47

def NamedBody683_49 : StackLang.HolProg 64 :=
.seq NamedBody683_41 NamedBody683_48

def NamedBody683_50 : StackLang.HolProg 64 :=
.seq NamedBody683_40 NamedBody683_49

def NamedBody683_51 : StackLang.HolProg 64 :=
.seq NamedBody683_39 NamedBody683_50

def NamedBody683_52 : StackLang.HolProg 64 :=
.seq NamedBody683_38 NamedBody683_51

def NamedBody683_53 : StackLang.HolProg 64 :=
.seq NamedBody683_37 NamedBody683_52

def NamedBody683_54 : StackLang.HolProg 64 :=
.seq NamedBody683_36 NamedBody683_53

def NamedBody683_55 : StackLang.HolProg 64 :=
.seq NamedBody683_35 NamedBody683_54

def NamedBody683_56 : StackLang.HolProg 64 :=
.seq NamedBody683_34 NamedBody683_55

def NamedBody683_57 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody683_58 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody683_59 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody683_60 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody683_61 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody683_62 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody683_63 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 12 10
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 10)))

def NamedBody683_64 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 13
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 144#64))

def NamedBody683_65 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 136#64))

def NamedBody683_66 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 11
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 128#64))

def NamedBody683_67 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 120#64))

def NamedBody683_68 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 128#64))

def NamedBody683_69 : StackLang.HolProg 64 :=
.seq NamedBody683_67 NamedBody683_68

def NamedBody683_70 : StackLang.HolProg 64 :=
.seq NamedBody683_66 NamedBody683_69

def NamedBody683_71 : StackLang.HolProg 64 :=
.seq NamedBody683_65 NamedBody683_70

def NamedBody683_72 : StackLang.HolProg 64 :=
.seq NamedBody683_64 NamedBody683_71

def NamedBody683_73 : StackLang.HolProg 64 :=
.seq NamedBody683_63 NamedBody683_72

def NamedBody683_74 : StackLang.HolProg 64 :=
.seq NamedBody683_62 NamedBody683_73

def NamedBody683_75 : StackLang.HolProg 64 :=
.seq NamedBody683_61 NamedBody683_74

def NamedBody683_76 : StackLang.HolProg 64 :=
.seq NamedBody683_60 NamedBody683_75

def NamedBody683_77 : StackLang.HolProg 64 :=
.seq NamedBody683_59 NamedBody683_76

def NamedBody683_78 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 13
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 144#64))

def NamedBody683_79 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 136#64))

def NamedBody683_80 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 11
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 128#64))

def NamedBody683_81 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 120#64))

def NamedBody683_82 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 128#64))

def NamedBody683_83 : StackLang.HolProg 64 :=
.seq NamedBody683_81 NamedBody683_82

def NamedBody683_84 : StackLang.HolProg 64 :=
.seq NamedBody683_80 NamedBody683_83

def NamedBody683_85 : StackLang.HolProg 64 :=
.seq NamedBody683_79 NamedBody683_84

def NamedBody683_86 : StackLang.HolProg 64 :=
.seq NamedBody683_78 NamedBody683_85

def NamedBody683_87 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def NamedBody683_88 : StackLang.HolProg 64 :=
.seq NamedBody683_86 NamedBody683_87

def NamedBody683_89 : StackLang.HolProg 64 :=
.call (some (NamedBody683_77, 1, 683, 2)) (Sum.inl 676) (some (NamedBody683_88, 683, 3))

def NamedBody683_90 : StackLang.HolProg 64 :=
.seq NamedBody683_58 NamedBody683_89

def NamedBody683_91 : StackLang.HolProg 64 :=
.seq NamedBody683_57 NamedBody683_90

def NamedBody683_92 : StackLang.HolProg 64 :=
.seq NamedBody683_56 NamedBody683_91

def NamedBody683_93 : StackLang.HolProg 64 :=
.seq NamedBody683_27 NamedBody683_92

def NamedBody683_94 : StackLang.HolProg 64 :=
.seq NamedBody683_24 NamedBody683_93

def NamedBody683_95 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody683_96 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody683_97 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 1#64)

def NamedBody683_98 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody683_99 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody683_100 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 11 3#64)

def NamedBody683_101 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody683_102 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith (Flapjack.Compiler.Encoders.Asm.HolArith.longMul 12 1 1 11))

def NamedBody683_103 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 10
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 112#64))

def NamedBody683_104 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 11 13
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 13)))

def NamedBody683_105 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 12 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def NamedBody683_106 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 152#64))

def NamedBody683_107 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 144#64))

def NamedBody683_108 : StackLang.HolProg 64 :=
.seq NamedBody683_106 NamedBody683_107

def NamedBody683_109 : StackLang.HolProg 64 :=
.seq NamedBody683_105 NamedBody683_108

def NamedBody683_110 : StackLang.HolProg 64 :=
.seq NamedBody683_104 NamedBody683_109

def NamedBody683_111 : StackLang.HolProg 64 :=
.seq NamedBody683_103 NamedBody683_110

def NamedBody683_112 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody683_113 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 2830#64)

def NamedBody683_114 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody683_115 : StackLang.HolProg 64 :=
.seq NamedBody683_113 NamedBody683_114

def NamedBody683_116 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody683_117 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 2#64)

def NamedBody683_118 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 10

def NamedBody683_119 : StackLang.HolProg 64 :=
.seq NamedBody683_117 NamedBody683_118

def NamedBody683_120 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody683_121 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) NamedBody683_119 NamedBody683_120

def NamedBody683_122 : StackLang.HolProg 64 :=
.seq NamedBody683_116 NamedBody683_121

def NamedBody683_123 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def NamedBody683_124 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody683_125 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 683 5

def NamedBody683_126 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody683_127 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody683_128 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody683_129 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody683_130 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def NamedBody683_131 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def NamedBody683_132 : StackLang.HolProg 64 :=
.seq NamedBody683_130 NamedBody683_131

def NamedBody683_133 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def NamedBody683_134 : StackLang.HolProg 64 :=
.seq NamedBody683_132 NamedBody683_133

def NamedBody683_135 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody683_136 : StackLang.HolProg 64 :=
.seq NamedBody683_134 NamedBody683_135

def NamedBody683_137 : StackLang.HolProg 64 :=
.seq NamedBody683_129 NamedBody683_136

def NamedBody683_138 : StackLang.HolProg 64 :=
.seq NamedBody683_128 NamedBody683_137

def NamedBody683_139 : StackLang.HolProg 64 :=
.seq NamedBody683_127 NamedBody683_138

def NamedBody683_140 : StackLang.HolProg 64 :=
.seq NamedBody683_126 NamedBody683_139

def NamedBody683_141 : StackLang.HolProg 64 :=
.seq NamedBody683_125 NamedBody683_140

def NamedBody683_142 : StackLang.HolProg 64 :=
.seq NamedBody683_124 NamedBody683_141

def NamedBody683_143 : StackLang.HolProg 64 :=
.seq NamedBody683_123 NamedBody683_142

def NamedBody683_144 : StackLang.HolProg 64 :=
.seq NamedBody683_122 NamedBody683_143

def NamedBody683_145 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody683_146 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody683_147 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody683_148 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody683_149 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody683_150 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody683_151 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 12
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 144#64))

def NamedBody683_152 : StackLang.HolProg 64 :=
.seq NamedBody683_150 NamedBody683_151

def NamedBody683_153 : StackLang.HolProg 64 :=
.seq NamedBody683_149 NamedBody683_152

def NamedBody683_154 : StackLang.HolProg 64 :=
.seq NamedBody683_148 NamedBody683_153

def NamedBody683_155 : StackLang.HolProg 64 :=
.seq NamedBody683_147 NamedBody683_154

def NamedBody683_156 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 12
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 144#64))

def NamedBody683_157 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def NamedBody683_158 : StackLang.HolProg 64 :=
.seq NamedBody683_156 NamedBody683_157

def NamedBody683_159 : StackLang.HolProg 64 :=
.call (some (NamedBody683_155, 1, 683, 4)) (Sum.inl 77) (some (NamedBody683_158, 683, 5))

def NamedBody683_160 : StackLang.HolProg 64 :=
.seq NamedBody683_146 NamedBody683_159

def NamedBody683_161 : StackLang.HolProg 64 :=
.seq NamedBody683_145 NamedBody683_160

def NamedBody683_162 : StackLang.HolProg 64 :=
.seq NamedBody683_144 NamedBody683_161

def NamedBody683_163 : StackLang.HolProg 64 :=
.seq NamedBody683_115 NamedBody683_162

def NamedBody683_164 : StackLang.HolProg 64 :=
.seq NamedBody683_112 NamedBody683_163

def NamedBody683_165 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody683_166 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 0#64)

def NamedBody683_167 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody683_168 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 160#64)))

def NamedBody683_169 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 12

def NamedBody683_170 : StackLang.HolProg 64 :=
.seq NamedBody683_168 NamedBody683_169

def NamedBody683_171 : StackLang.HolProg 64 :=
.seq NamedBody683_167 NamedBody683_170

def NamedBody683_172 : StackLang.HolProg 64 :=
.seq NamedBody683_166 NamedBody683_171

def NamedBody683_173 : StackLang.HolProg 64 :=
.seq NamedBody683_165 NamedBody683_172

def NamedBody683_174 : StackLang.HolProg 64 :=
.seq NamedBody683_164 NamedBody683_173

def NamedBody683_175 : StackLang.HolProg 64 :=
.seq NamedBody683_111 NamedBody683_174

def NamedBody683_176 : StackLang.HolProg 64 :=
.seq NamedBody683_102 NamedBody683_175

def NamedBody683_177 : StackLang.HolProg 64 :=
.seq NamedBody683_101 NamedBody683_176

def NamedBody683_178 : StackLang.HolProg 64 :=
.seq NamedBody683_100 NamedBody683_177

def NamedBody683_179 : StackLang.HolProg 64 :=
.seq NamedBody683_99 NamedBody683_178

def NamedBody683_180 : StackLang.HolProg 64 :=
.seq NamedBody683_98 NamedBody683_179

def NamedBody683_181 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody683_182 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.equal) 12 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 10) NamedBody683_180 NamedBody683_181

def NamedBody683_183 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody683_184 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody683_185 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 10 11
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 11)))

def NamedBody683_186 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsl 11 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 1#64)))

def NamedBody683_187 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody683_188 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 11 11
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 13)))

def NamedBody683_189 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 13
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 144#64))

def NamedBody683_190 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 136#64))

def NamedBody683_191 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 10
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 96#64))

def NamedBody683_192 : StackLang.HolProg 64 :=
.seq NamedBody683_190 NamedBody683_191

def NamedBody683_193 : StackLang.HolProg 64 :=
.seq NamedBody683_189 NamedBody683_192

def NamedBody683_194 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody683_195 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 2831#64)

def NamedBody683_196 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody683_197 : StackLang.HolProg 64 :=
.seq NamedBody683_195 NamedBody683_196

def NamedBody683_198 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody683_199 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 2#64)

def NamedBody683_200 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 10

def NamedBody683_201 : StackLang.HolProg 64 :=
.seq NamedBody683_199 NamedBody683_200

def NamedBody683_202 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody683_203 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) NamedBody683_201 NamedBody683_202

def NamedBody683_204 : StackLang.HolProg 64 :=
.seq NamedBody683_198 NamedBody683_203

def NamedBody683_205 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def NamedBody683_206 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody683_207 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 683 7

def NamedBody683_208 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody683_209 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody683_210 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody683_211 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody683_212 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def NamedBody683_213 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def NamedBody683_214 : StackLang.HolProg 64 :=
.seq NamedBody683_212 NamedBody683_213

def NamedBody683_215 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def NamedBody683_216 : StackLang.HolProg 64 :=
.seq NamedBody683_214 NamedBody683_215

def NamedBody683_217 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody683_218 : StackLang.HolProg 64 :=
.seq NamedBody683_216 NamedBody683_217

def NamedBody683_219 : StackLang.HolProg 64 :=
.seq NamedBody683_211 NamedBody683_218

def NamedBody683_220 : StackLang.HolProg 64 :=
.seq NamedBody683_210 NamedBody683_219

def NamedBody683_221 : StackLang.HolProg 64 :=
.seq NamedBody683_209 NamedBody683_220

def NamedBody683_222 : StackLang.HolProg 64 :=
.seq NamedBody683_208 NamedBody683_221

def NamedBody683_223 : StackLang.HolProg 64 :=
.seq NamedBody683_207 NamedBody683_222

def NamedBody683_224 : StackLang.HolProg 64 :=
.seq NamedBody683_206 NamedBody683_223

def NamedBody683_225 : StackLang.HolProg 64 :=
.seq NamedBody683_205 NamedBody683_224

def NamedBody683_226 : StackLang.HolProg 64 :=
.seq NamedBody683_204 NamedBody683_225

def NamedBody683_227 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody683_228 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody683_229 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody683_230 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody683_231 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody683_232 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody683_233 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 1 10
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 10)))

def NamedBody683_234 : StackLang.HolProg 64 :=
.seq NamedBody683_232 NamedBody683_233

def NamedBody683_235 : StackLang.HolProg 64 :=
.seq NamedBody683_231 NamedBody683_234

def NamedBody683_236 : StackLang.HolProg 64 :=
.seq NamedBody683_230 NamedBody683_235

def NamedBody683_237 : StackLang.HolProg 64 :=
.seq NamedBody683_229 NamedBody683_236

def NamedBody683_238 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody683_239 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def NamedBody683_240 : StackLang.HolProg 64 :=
.seq NamedBody683_238 NamedBody683_239

def NamedBody683_241 : StackLang.HolProg 64 :=
.call (some (NamedBody683_237, 1, 683, 6)) (Sum.inl 676) (some (NamedBody683_240, 683, 7))

def NamedBody683_242 : StackLang.HolProg 64 :=
.seq NamedBody683_228 NamedBody683_241

def NamedBody683_243 : StackLang.HolProg 64 :=
.seq NamedBody683_227 NamedBody683_242

def NamedBody683_244 : StackLang.HolProg 64 :=
.seq NamedBody683_226 NamedBody683_243

def NamedBody683_245 : StackLang.HolProg 64 :=
.seq NamedBody683_197 NamedBody683_244

def NamedBody683_246 : StackLang.HolProg 64 :=
.seq NamedBody683_194 NamedBody683_245

def NamedBody683_247 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody683_248 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody683_249 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 1#64)

def NamedBody683_250 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody683_251 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 136#64))

def NamedBody683_252 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 11 3#64)

def NamedBody683_253 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody683_254 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith (Flapjack.Compiler.Encoders.Asm.HolArith.longMul 12 1 1 11))

def NamedBody683_255 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 10
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 112#64))

def NamedBody683_256 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 11
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 128#64))

def NamedBody683_257 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 12 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def NamedBody683_258 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 152#64))

def NamedBody683_259 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 120#64))

def NamedBody683_260 : StackLang.HolProg 64 :=
.seq NamedBody683_258 NamedBody683_259

def NamedBody683_261 : StackLang.HolProg 64 :=
.seq NamedBody683_257 NamedBody683_260

def NamedBody683_262 : StackLang.HolProg 64 :=
.seq NamedBody683_256 NamedBody683_261

def NamedBody683_263 : StackLang.HolProg 64 :=
.seq NamedBody683_255 NamedBody683_262

def NamedBody683_264 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody683_265 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 2832#64)

def NamedBody683_266 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody683_267 : StackLang.HolProg 64 :=
.seq NamedBody683_265 NamedBody683_266

def NamedBody683_268 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody683_269 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 2#64)

def NamedBody683_270 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 10

def NamedBody683_271 : StackLang.HolProg 64 :=
.seq NamedBody683_269 NamedBody683_270

def NamedBody683_272 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody683_273 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) NamedBody683_271 NamedBody683_272

def NamedBody683_274 : StackLang.HolProg 64 :=
.seq NamedBody683_268 NamedBody683_273

def NamedBody683_275 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def NamedBody683_276 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody683_277 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 683 9

def NamedBody683_278 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody683_279 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody683_280 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody683_281 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody683_282 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def NamedBody683_283 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def NamedBody683_284 : StackLang.HolProg 64 :=
.seq NamedBody683_282 NamedBody683_283

def NamedBody683_285 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def NamedBody683_286 : StackLang.HolProg 64 :=
.seq NamedBody683_284 NamedBody683_285

def NamedBody683_287 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody683_288 : StackLang.HolProg 64 :=
.seq NamedBody683_286 NamedBody683_287

def NamedBody683_289 : StackLang.HolProg 64 :=
.seq NamedBody683_281 NamedBody683_288

def NamedBody683_290 : StackLang.HolProg 64 :=
.seq NamedBody683_280 NamedBody683_289

def NamedBody683_291 : StackLang.HolProg 64 :=
.seq NamedBody683_279 NamedBody683_290

def NamedBody683_292 : StackLang.HolProg 64 :=
.seq NamedBody683_278 NamedBody683_291

def NamedBody683_293 : StackLang.HolProg 64 :=
.seq NamedBody683_277 NamedBody683_292

def NamedBody683_294 : StackLang.HolProg 64 :=
.seq NamedBody683_276 NamedBody683_293

def NamedBody683_295 : StackLang.HolProg 64 :=
.seq NamedBody683_275 NamedBody683_294

def NamedBody683_296 : StackLang.HolProg 64 :=
.seq NamedBody683_274 NamedBody683_295

def NamedBody683_297 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody683_298 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody683_299 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody683_300 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody683_301 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody683_302 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody683_303 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 120#64))

def NamedBody683_304 : StackLang.HolProg 64 :=
.seq NamedBody683_302 NamedBody683_303

def NamedBody683_305 : StackLang.HolProg 64 :=
.seq NamedBody683_301 NamedBody683_304

def NamedBody683_306 : StackLang.HolProg 64 :=
.seq NamedBody683_300 NamedBody683_305

def NamedBody683_307 : StackLang.HolProg 64 :=
.seq NamedBody683_299 NamedBody683_306

def NamedBody683_308 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 120#64))

def NamedBody683_309 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def NamedBody683_310 : StackLang.HolProg 64 :=
.seq NamedBody683_308 NamedBody683_309

def NamedBody683_311 : StackLang.HolProg 64 :=
.call (some (NamedBody683_307, 1, 683, 8)) (Sum.inl 77) (some (NamedBody683_310, 683, 9))

def NamedBody683_312 : StackLang.HolProg 64 :=
.seq NamedBody683_298 NamedBody683_311

def NamedBody683_313 : StackLang.HolProg 64 :=
.seq NamedBody683_297 NamedBody683_312

def NamedBody683_314 : StackLang.HolProg 64 :=
.seq NamedBody683_296 NamedBody683_313

def NamedBody683_315 : StackLang.HolProg 64 :=
.seq NamedBody683_267 NamedBody683_314

def NamedBody683_316 : StackLang.HolProg 64 :=
.seq NamedBody683_264 NamedBody683_315

def NamedBody683_317 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody683_318 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 0#64)

def NamedBody683_319 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody683_320 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 160#64)))

def NamedBody683_321 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 1

def NamedBody683_322 : StackLang.HolProg 64 :=
.seq NamedBody683_320 NamedBody683_321

def NamedBody683_323 : StackLang.HolProg 64 :=
.seq NamedBody683_319 NamedBody683_322

def NamedBody683_324 : StackLang.HolProg 64 :=
.seq NamedBody683_318 NamedBody683_323

def NamedBody683_325 : StackLang.HolProg 64 :=
.seq NamedBody683_317 NamedBody683_324

def NamedBody683_326 : StackLang.HolProg 64 :=
.seq NamedBody683_316 NamedBody683_325

def NamedBody683_327 : StackLang.HolProg 64 :=
.seq NamedBody683_263 NamedBody683_326

def NamedBody683_328 : StackLang.HolProg 64 :=
.seq NamedBody683_254 NamedBody683_327

def NamedBody683_329 : StackLang.HolProg 64 :=
.seq NamedBody683_253 NamedBody683_328

def NamedBody683_330 : StackLang.HolProg 64 :=
.seq NamedBody683_252 NamedBody683_329

def NamedBody683_331 : StackLang.HolProg 64 :=
.seq NamedBody683_251 NamedBody683_330

def NamedBody683_332 : StackLang.HolProg 64 :=
.seq NamedBody683_250 NamedBody683_331

def NamedBody683_333 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody683_334 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.equal) 1 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 10) NamedBody683_332 NamedBody683_333

def NamedBody683_335 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody683_336 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody683_337 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody683_338 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody683_339 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 2833#64)

def NamedBody683_340 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody683_341 : StackLang.HolProg 64 :=
.seq NamedBody683_339 NamedBody683_340

def NamedBody683_342 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody683_343 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 2#64)

def NamedBody683_344 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 10

def NamedBody683_345 : StackLang.HolProg 64 :=
.seq NamedBody683_343 NamedBody683_344

def NamedBody683_346 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody683_347 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) NamedBody683_345 NamedBody683_346

def NamedBody683_348 : StackLang.HolProg 64 :=
.seq NamedBody683_342 NamedBody683_347

def NamedBody683_349 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def NamedBody683_350 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody683_351 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 683 11

def NamedBody683_352 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody683_353 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody683_354 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody683_355 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody683_356 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def NamedBody683_357 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def NamedBody683_358 : StackLang.HolProg 64 :=
.seq NamedBody683_356 NamedBody683_357

def NamedBody683_359 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def NamedBody683_360 : StackLang.HolProg 64 :=
.seq NamedBody683_358 NamedBody683_359

def NamedBody683_361 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody683_362 : StackLang.HolProg 64 :=
.seq NamedBody683_360 NamedBody683_361

def NamedBody683_363 : StackLang.HolProg 64 :=
.seq NamedBody683_355 NamedBody683_362

def NamedBody683_364 : StackLang.HolProg 64 :=
.seq NamedBody683_354 NamedBody683_363

def NamedBody683_365 : StackLang.HolProg 64 :=
.seq NamedBody683_353 NamedBody683_364

def NamedBody683_366 : StackLang.HolProg 64 :=
.seq NamedBody683_352 NamedBody683_365

def NamedBody683_367 : StackLang.HolProg 64 :=
.seq NamedBody683_351 NamedBody683_366

def NamedBody683_368 : StackLang.HolProg 64 :=
.seq NamedBody683_350 NamedBody683_367

def NamedBody683_369 : StackLang.HolProg 64 :=
.seq NamedBody683_349 NamedBody683_368

def NamedBody683_370 : StackLang.HolProg 64 :=
.seq NamedBody683_348 NamedBody683_369

def NamedBody683_371 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody683_372 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody683_373 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody683_374 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody683_375 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody683_376 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody683_377 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 7 10
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 10)))

def NamedBody683_378 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 11
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 144#64))

def NamedBody683_379 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 12
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 136#64))

def NamedBody683_380 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 128#64))

def NamedBody683_381 : StackLang.HolProg 64 :=
.seq NamedBody683_379 NamedBody683_380

def NamedBody683_382 : StackLang.HolProg 64 :=
.seq NamedBody683_378 NamedBody683_381

def NamedBody683_383 : StackLang.HolProg 64 :=
.seq NamedBody683_377 NamedBody683_382

def NamedBody683_384 : StackLang.HolProg 64 :=
.seq NamedBody683_376 NamedBody683_383

def NamedBody683_385 : StackLang.HolProg 64 :=
.seq NamedBody683_375 NamedBody683_384

def NamedBody683_386 : StackLang.HolProg 64 :=
.seq NamedBody683_374 NamedBody683_385

def NamedBody683_387 : StackLang.HolProg 64 :=
.seq NamedBody683_373 NamedBody683_386

def NamedBody683_388 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 11
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 144#64))

def NamedBody683_389 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 12
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 136#64))

def NamedBody683_390 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 128#64))

def NamedBody683_391 : StackLang.HolProg 64 :=
.seq NamedBody683_389 NamedBody683_390

def NamedBody683_392 : StackLang.HolProg 64 :=
.seq NamedBody683_388 NamedBody683_391

def NamedBody683_393 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def NamedBody683_394 : StackLang.HolProg 64 :=
.seq NamedBody683_392 NamedBody683_393

def NamedBody683_395 : StackLang.HolProg 64 :=
.call (some (NamedBody683_387, 1, 683, 10)) (Sum.inl 69) (some (NamedBody683_394, 683, 11))

def NamedBody683_396 : StackLang.HolProg 64 :=
.seq NamedBody683_372 NamedBody683_395

def NamedBody683_397 : StackLang.HolProg 64 :=
.seq NamedBody683_371 NamedBody683_396

def NamedBody683_398 : StackLang.HolProg 64 :=
.seq NamedBody683_370 NamedBody683_397

def NamedBody683_399 : StackLang.HolProg 64 :=
.seq NamedBody683_341 NamedBody683_398

def NamedBody683_400 : StackLang.HolProg 64 :=
.seq NamedBody683_338 NamedBody683_399

def NamedBody683_401 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody683_402 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 10 12
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 12)))

def NamedBody683_403 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 5 10
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def NamedBody683_404 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody683_405 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsl 12 10
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 1#64)))

def NamedBody683_406 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody683_407 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 6 12
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def NamedBody683_408 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody683_409 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 13 10
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 11)))

def NamedBody683_410 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody683_411 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 12 12
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 11)))

def NamedBody683_412 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 13
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 144#64))

def NamedBody683_413 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 136#64))

def NamedBody683_414 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 11
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 128#64))

def NamedBody683_415 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 10
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 120#64))

def NamedBody683_416 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 12
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 88#64))

def NamedBody683_417 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 5
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 80#64))

def NamedBody683_418 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 72#64))

def NamedBody683_419 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 6
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 56#64))

def NamedBody683_420 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 7
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 24#64))

def NamedBody683_421 : StackLang.HolProg 64 :=
.seq NamedBody683_419 NamedBody683_420

def NamedBody683_422 : StackLang.HolProg 64 :=
.seq NamedBody683_418 NamedBody683_421

def NamedBody683_423 : StackLang.HolProg 64 :=
.seq NamedBody683_417 NamedBody683_422

def NamedBody683_424 : StackLang.HolProg 64 :=
.seq NamedBody683_416 NamedBody683_423

def NamedBody683_425 : StackLang.HolProg 64 :=
.seq NamedBody683_415 NamedBody683_424

def NamedBody683_426 : StackLang.HolProg 64 :=
.seq NamedBody683_414 NamedBody683_425

def NamedBody683_427 : StackLang.HolProg 64 :=
.seq NamedBody683_413 NamedBody683_426

def NamedBody683_428 : StackLang.HolProg 64 :=
.seq NamedBody683_412 NamedBody683_427

def NamedBody683_429 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody683_430 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 2834#64)

def NamedBody683_431 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody683_432 : StackLang.HolProg 64 :=
.seq NamedBody683_430 NamedBody683_431

def NamedBody683_433 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody683_434 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 2#64)

def NamedBody683_435 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 10

def NamedBody683_436 : StackLang.HolProg 64 :=
.seq NamedBody683_434 NamedBody683_435

def NamedBody683_437 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody683_438 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) NamedBody683_436 NamedBody683_437

def NamedBody683_439 : StackLang.HolProg 64 :=
.seq NamedBody683_433 NamedBody683_438

def NamedBody683_440 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def NamedBody683_441 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody683_442 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 683 13

def NamedBody683_443 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody683_444 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody683_445 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody683_446 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody683_447 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def NamedBody683_448 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def NamedBody683_449 : StackLang.HolProg 64 :=
.seq NamedBody683_447 NamedBody683_448

def NamedBody683_450 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def NamedBody683_451 : StackLang.HolProg 64 :=
.seq NamedBody683_449 NamedBody683_450

def NamedBody683_452 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody683_453 : StackLang.HolProg 64 :=
.seq NamedBody683_451 NamedBody683_452

def NamedBody683_454 : StackLang.HolProg 64 :=
.seq NamedBody683_446 NamedBody683_453

def NamedBody683_455 : StackLang.HolProg 64 :=
.seq NamedBody683_445 NamedBody683_454

def NamedBody683_456 : StackLang.HolProg 64 :=
.seq NamedBody683_444 NamedBody683_455

def NamedBody683_457 : StackLang.HolProg 64 :=
.seq NamedBody683_443 NamedBody683_456

def NamedBody683_458 : StackLang.HolProg 64 :=
.seq NamedBody683_442 NamedBody683_457

def NamedBody683_459 : StackLang.HolProg 64 :=
.seq NamedBody683_441 NamedBody683_458

def NamedBody683_460 : StackLang.HolProg 64 :=
.seq NamedBody683_440 NamedBody683_459

def NamedBody683_461 : StackLang.HolProg 64 :=
.seq NamedBody683_439 NamedBody683_460

def NamedBody683_462 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody683_463 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody683_464 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody683_465 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody683_466 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody683_467 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody683_468 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 11 10
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 10)))

def NamedBody683_469 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 120#64))

def NamedBody683_470 : StackLang.HolProg 64 :=
.seq NamedBody683_468 NamedBody683_469

def NamedBody683_471 : StackLang.HolProg 64 :=
.seq NamedBody683_467 NamedBody683_470

def NamedBody683_472 : StackLang.HolProg 64 :=
.seq NamedBody683_466 NamedBody683_471

def NamedBody683_473 : StackLang.HolProg 64 :=
.seq NamedBody683_465 NamedBody683_472

def NamedBody683_474 : StackLang.HolProg 64 :=
.seq NamedBody683_464 NamedBody683_473

def NamedBody683_475 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 120#64))

def NamedBody683_476 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def NamedBody683_477 : StackLang.HolProg 64 :=
.seq NamedBody683_475 NamedBody683_476

def NamedBody683_478 : StackLang.HolProg 64 :=
.call (some (NamedBody683_474, 1, 683, 12)) (Sum.inl 68) (some (NamedBody683_477, 683, 13))

def NamedBody683_479 : StackLang.HolProg 64 :=
.seq NamedBody683_463 NamedBody683_478

def NamedBody683_480 : StackLang.HolProg 64 :=
.seq NamedBody683_462 NamedBody683_479

def NamedBody683_481 : StackLang.HolProg 64 :=
.seq NamedBody683_461 NamedBody683_480

def NamedBody683_482 : StackLang.HolProg 64 :=
.seq NamedBody683_432 NamedBody683_481

def NamedBody683_483 : StackLang.HolProg 64 :=
.seq NamedBody683_429 NamedBody683_482

def NamedBody683_484 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody683_485 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 10 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def NamedBody683_486 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 120#64))

def NamedBody683_487 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 11
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 48#64))

def NamedBody683_488 : StackLang.HolProg 64 :=
.seq NamedBody683_486 NamedBody683_487

def NamedBody683_489 : StackLang.HolProg 64 :=
.seq NamedBody683_485 NamedBody683_488

def NamedBody683_490 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody683_491 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 2835#64)

def NamedBody683_492 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody683_493 : StackLang.HolProg 64 :=
.seq NamedBody683_491 NamedBody683_492

def NamedBody683_494 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody683_495 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 2#64)

def NamedBody683_496 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 10

def NamedBody683_497 : StackLang.HolProg 64 :=
.seq NamedBody683_495 NamedBody683_496

def NamedBody683_498 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody683_499 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) NamedBody683_497 NamedBody683_498

def NamedBody683_500 : StackLang.HolProg 64 :=
.seq NamedBody683_494 NamedBody683_499

def NamedBody683_501 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def NamedBody683_502 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody683_503 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 683 15

def NamedBody683_504 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody683_505 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody683_506 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody683_507 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody683_508 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def NamedBody683_509 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def NamedBody683_510 : StackLang.HolProg 64 :=
.seq NamedBody683_508 NamedBody683_509

def NamedBody683_511 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def NamedBody683_512 : StackLang.HolProg 64 :=
.seq NamedBody683_510 NamedBody683_511

def NamedBody683_513 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody683_514 : StackLang.HolProg 64 :=
.seq NamedBody683_512 NamedBody683_513

def NamedBody683_515 : StackLang.HolProg 64 :=
.seq NamedBody683_507 NamedBody683_514

def NamedBody683_516 : StackLang.HolProg 64 :=
.seq NamedBody683_506 NamedBody683_515

def NamedBody683_517 : StackLang.HolProg 64 :=
.seq NamedBody683_505 NamedBody683_516

def NamedBody683_518 : StackLang.HolProg 64 :=
.seq NamedBody683_504 NamedBody683_517

def NamedBody683_519 : StackLang.HolProg 64 :=
.seq NamedBody683_503 NamedBody683_518

def NamedBody683_520 : StackLang.HolProg 64 :=
.seq NamedBody683_502 NamedBody683_519

def NamedBody683_521 : StackLang.HolProg 64 :=
.seq NamedBody683_501 NamedBody683_520

def NamedBody683_522 : StackLang.HolProg 64 :=
.seq NamedBody683_500 NamedBody683_521

def NamedBody683_523 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody683_524 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody683_525 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody683_526 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody683_527 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody683_528 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody683_529 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 11 10
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 10)))

def NamedBody683_530 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 120#64))

def NamedBody683_531 : StackLang.HolProg 64 :=
.seq NamedBody683_529 NamedBody683_530

def NamedBody683_532 : StackLang.HolProg 64 :=
.seq NamedBody683_528 NamedBody683_531

def NamedBody683_533 : StackLang.HolProg 64 :=
.seq NamedBody683_527 NamedBody683_532

def NamedBody683_534 : StackLang.HolProg 64 :=
.seq NamedBody683_526 NamedBody683_533

def NamedBody683_535 : StackLang.HolProg 64 :=
.seq NamedBody683_525 NamedBody683_534

def NamedBody683_536 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 120#64))

def NamedBody683_537 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def NamedBody683_538 : StackLang.HolProg 64 :=
.seq NamedBody683_536 NamedBody683_537

def NamedBody683_539 : StackLang.HolProg 64 :=
.call (some (NamedBody683_535, 1, 683, 14)) (Sum.inl 68) (some (NamedBody683_538, 683, 15))

def NamedBody683_540 : StackLang.HolProg 64 :=
.seq NamedBody683_524 NamedBody683_539

def NamedBody683_541 : StackLang.HolProg 64 :=
.seq NamedBody683_523 NamedBody683_540

def NamedBody683_542 : StackLang.HolProg 64 :=
.seq NamedBody683_522 NamedBody683_541

def NamedBody683_543 : StackLang.HolProg 64 :=
.seq NamedBody683_493 NamedBody683_542

def NamedBody683_544 : StackLang.HolProg 64 :=
.seq NamedBody683_490 NamedBody683_543

def NamedBody683_545 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody683_546 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 10 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def NamedBody683_547 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 11
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 120#64))

def NamedBody683_548 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 104#64))

def NamedBody683_549 : StackLang.HolProg 64 :=
.seq NamedBody683_547 NamedBody683_548

def NamedBody683_550 : StackLang.HolProg 64 :=
.seq NamedBody683_546 NamedBody683_549

def NamedBody683_551 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody683_552 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 2836#64)

def NamedBody683_553 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody683_554 : StackLang.HolProg 64 :=
.seq NamedBody683_552 NamedBody683_553

def NamedBody683_555 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody683_556 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 2#64)

def NamedBody683_557 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 10

def NamedBody683_558 : StackLang.HolProg 64 :=
.seq NamedBody683_556 NamedBody683_557

def NamedBody683_559 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody683_560 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) NamedBody683_558 NamedBody683_559

def NamedBody683_561 : StackLang.HolProg 64 :=
.seq NamedBody683_555 NamedBody683_560

def NamedBody683_562 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def NamedBody683_563 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody683_564 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 683 17

def NamedBody683_565 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody683_566 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody683_567 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody683_568 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody683_569 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def NamedBody683_570 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def NamedBody683_571 : StackLang.HolProg 64 :=
.seq NamedBody683_569 NamedBody683_570

def NamedBody683_572 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def NamedBody683_573 : StackLang.HolProg 64 :=
.seq NamedBody683_571 NamedBody683_572

def NamedBody683_574 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody683_575 : StackLang.HolProg 64 :=
.seq NamedBody683_573 NamedBody683_574

def NamedBody683_576 : StackLang.HolProg 64 :=
.seq NamedBody683_568 NamedBody683_575

def NamedBody683_577 : StackLang.HolProg 64 :=
.seq NamedBody683_567 NamedBody683_576

def NamedBody683_578 : StackLang.HolProg 64 :=
.seq NamedBody683_566 NamedBody683_577

def NamedBody683_579 : StackLang.HolProg 64 :=
.seq NamedBody683_565 NamedBody683_578

def NamedBody683_580 : StackLang.HolProg 64 :=
.seq NamedBody683_564 NamedBody683_579

def NamedBody683_581 : StackLang.HolProg 64 :=
.seq NamedBody683_563 NamedBody683_580

def NamedBody683_582 : StackLang.HolProg 64 :=
.seq NamedBody683_562 NamedBody683_581

def NamedBody683_583 : StackLang.HolProg 64 :=
.seq NamedBody683_561 NamedBody683_582

def NamedBody683_584 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody683_585 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody683_586 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody683_587 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody683_588 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody683_589 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody683_590 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 11 10
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 10)))

def NamedBody683_591 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 104#64))

def NamedBody683_592 : StackLang.HolProg 64 :=
.seq NamedBody683_590 NamedBody683_591

def NamedBody683_593 : StackLang.HolProg 64 :=
.seq NamedBody683_589 NamedBody683_592

def NamedBody683_594 : StackLang.HolProg 64 :=
.seq NamedBody683_588 NamedBody683_593

def NamedBody683_595 : StackLang.HolProg 64 :=
.seq NamedBody683_587 NamedBody683_594

def NamedBody683_596 : StackLang.HolProg 64 :=
.seq NamedBody683_586 NamedBody683_595

def NamedBody683_597 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 104#64))

def NamedBody683_598 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def NamedBody683_599 : StackLang.HolProg 64 :=
.seq NamedBody683_597 NamedBody683_598

def NamedBody683_600 : StackLang.HolProg 64 :=
.call (some (NamedBody683_596, 1, 683, 16)) (Sum.inl 68) (some (NamedBody683_599, 683, 17))

def NamedBody683_601 : StackLang.HolProg 64 :=
.seq NamedBody683_585 NamedBody683_600

def NamedBody683_602 : StackLang.HolProg 64 :=
.seq NamedBody683_584 NamedBody683_601

def NamedBody683_603 : StackLang.HolProg 64 :=
.seq NamedBody683_583 NamedBody683_602

def NamedBody683_604 : StackLang.HolProg 64 :=
.seq NamedBody683_554 NamedBody683_603

def NamedBody683_605 : StackLang.HolProg 64 :=
.seq NamedBody683_551 NamedBody683_604

def NamedBody683_606 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody683_607 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 10 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def NamedBody683_608 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 104#64))

def NamedBody683_609 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 11
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 64#64))

def NamedBody683_610 : StackLang.HolProg 64 :=
.seq NamedBody683_608 NamedBody683_609

def NamedBody683_611 : StackLang.HolProg 64 :=
.seq NamedBody683_607 NamedBody683_610

def NamedBody683_612 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody683_613 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 2837#64)

def NamedBody683_614 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody683_615 : StackLang.HolProg 64 :=
.seq NamedBody683_613 NamedBody683_614

def NamedBody683_616 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody683_617 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 2#64)

def NamedBody683_618 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 10

def NamedBody683_619 : StackLang.HolProg 64 :=
.seq NamedBody683_617 NamedBody683_618

def NamedBody683_620 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody683_621 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) NamedBody683_619 NamedBody683_620

def NamedBody683_622 : StackLang.HolProg 64 :=
.seq NamedBody683_616 NamedBody683_621

def NamedBody683_623 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def NamedBody683_624 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody683_625 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 683 19

def NamedBody683_626 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody683_627 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody683_628 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody683_629 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody683_630 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def NamedBody683_631 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def NamedBody683_632 : StackLang.HolProg 64 :=
.seq NamedBody683_630 NamedBody683_631

def NamedBody683_633 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def NamedBody683_634 : StackLang.HolProg 64 :=
.seq NamedBody683_632 NamedBody683_633

def NamedBody683_635 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody683_636 : StackLang.HolProg 64 :=
.seq NamedBody683_634 NamedBody683_635

def NamedBody683_637 : StackLang.HolProg 64 :=
.seq NamedBody683_629 NamedBody683_636

def NamedBody683_638 : StackLang.HolProg 64 :=
.seq NamedBody683_628 NamedBody683_637

def NamedBody683_639 : StackLang.HolProg 64 :=
.seq NamedBody683_627 NamedBody683_638

def NamedBody683_640 : StackLang.HolProg 64 :=
.seq NamedBody683_626 NamedBody683_639

def NamedBody683_641 : StackLang.HolProg 64 :=
.seq NamedBody683_625 NamedBody683_640

def NamedBody683_642 : StackLang.HolProg 64 :=
.seq NamedBody683_624 NamedBody683_641

def NamedBody683_643 : StackLang.HolProg 64 :=
.seq NamedBody683_623 NamedBody683_642

def NamedBody683_644 : StackLang.HolProg 64 :=
.seq NamedBody683_622 NamedBody683_643

def NamedBody683_645 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody683_646 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody683_647 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody683_648 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody683_649 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody683_650 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody683_651 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 5 10
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 10)))

def NamedBody683_652 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 12
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 144#64))

def NamedBody683_653 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 136#64))

def NamedBody683_654 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 144#64))

def NamedBody683_655 : StackLang.HolProg 64 :=
.seq NamedBody683_653 NamedBody683_654

def NamedBody683_656 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 96#64))

def NamedBody683_657 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 13
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 56#64))

def NamedBody683_658 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 11
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 48#64))

def NamedBody683_659 : StackLang.HolProg 64 :=
.seq NamedBody683_657 NamedBody683_658

def NamedBody683_660 : StackLang.HolProg 64 :=
.seq NamedBody683_656 NamedBody683_659

def NamedBody683_661 : StackLang.HolProg 64 :=
.seq NamedBody683_655 NamedBody683_660

def NamedBody683_662 : StackLang.HolProg 64 :=
.seq NamedBody683_652 NamedBody683_661

def NamedBody683_663 : StackLang.HolProg 64 :=
.seq NamedBody683_651 NamedBody683_662

def NamedBody683_664 : StackLang.HolProg 64 :=
.seq NamedBody683_650 NamedBody683_663

def NamedBody683_665 : StackLang.HolProg 64 :=
.seq NamedBody683_649 NamedBody683_664

def NamedBody683_666 : StackLang.HolProg 64 :=
.seq NamedBody683_648 NamedBody683_665

def NamedBody683_667 : StackLang.HolProg 64 :=
.seq NamedBody683_647 NamedBody683_666

def NamedBody683_668 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 12
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 144#64))

def NamedBody683_669 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 136#64))

def NamedBody683_670 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 144#64))

def NamedBody683_671 : StackLang.HolProg 64 :=
.seq NamedBody683_669 NamedBody683_670

def NamedBody683_672 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 96#64))

def NamedBody683_673 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 13
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 56#64))

def NamedBody683_674 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 11
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 48#64))

def NamedBody683_675 : StackLang.HolProg 64 :=
.seq NamedBody683_673 NamedBody683_674

def NamedBody683_676 : StackLang.HolProg 64 :=
.seq NamedBody683_672 NamedBody683_675

def NamedBody683_677 : StackLang.HolProg 64 :=
.seq NamedBody683_671 NamedBody683_676

def NamedBody683_678 : StackLang.HolProg 64 :=
.seq NamedBody683_668 NamedBody683_677

def NamedBody683_679 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def NamedBody683_680 : StackLang.HolProg 64 :=
.seq NamedBody683_678 NamedBody683_679

def NamedBody683_681 : StackLang.HolProg 64 :=
.call (some (NamedBody683_667, 1, 683, 18)) (Sum.inl 68) (some (NamedBody683_680, 683, 19))

def NamedBody683_682 : StackLang.HolProg 64 :=
.seq NamedBody683_646 NamedBody683_681

def NamedBody683_683 : StackLang.HolProg 64 :=
.seq NamedBody683_645 NamedBody683_682

def NamedBody683_684 : StackLang.HolProg 64 :=
.seq NamedBody683_644 NamedBody683_683

def NamedBody683_685 : StackLang.HolProg 64 :=
.seq NamedBody683_615 NamedBody683_684

def NamedBody683_686 : StackLang.HolProg 64 :=
.seq NamedBody683_612 NamedBody683_685

def NamedBody683_687 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody683_688 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 10 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def NamedBody683_689 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 5
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 136#64))

def NamedBody683_690 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 96#64))

def NamedBody683_691 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 13
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 56#64))

def NamedBody683_692 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 11
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 48#64))

def NamedBody683_693 : StackLang.HolProg 64 :=
.seq NamedBody683_691 NamedBody683_692

def NamedBody683_694 : StackLang.HolProg 64 :=
.seq NamedBody683_690 NamedBody683_693

def NamedBody683_695 : StackLang.HolProg 64 :=
.seq NamedBody683_689 NamedBody683_694

def NamedBody683_696 : StackLang.HolProg 64 :=
.seq NamedBody683_688 NamedBody683_695

def NamedBody683_697 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody683_698 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 2838#64)

def NamedBody683_699 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody683_700 : StackLang.HolProg 64 :=
.seq NamedBody683_698 NamedBody683_699

def NamedBody683_701 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody683_702 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 2#64)

def NamedBody683_703 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 10

def NamedBody683_704 : StackLang.HolProg 64 :=
.seq NamedBody683_702 NamedBody683_703

def NamedBody683_705 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody683_706 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) NamedBody683_704 NamedBody683_705

def NamedBody683_707 : StackLang.HolProg 64 :=
.seq NamedBody683_701 NamedBody683_706

def NamedBody683_708 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def NamedBody683_709 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody683_710 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 683 21

def NamedBody683_711 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody683_712 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody683_713 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody683_714 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody683_715 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def NamedBody683_716 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def NamedBody683_717 : StackLang.HolProg 64 :=
.seq NamedBody683_715 NamedBody683_716

def NamedBody683_718 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def NamedBody683_719 : StackLang.HolProg 64 :=
.seq NamedBody683_717 NamedBody683_718

def NamedBody683_720 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody683_721 : StackLang.HolProg 64 :=
.seq NamedBody683_719 NamedBody683_720

def NamedBody683_722 : StackLang.HolProg 64 :=
.seq NamedBody683_714 NamedBody683_721

def NamedBody683_723 : StackLang.HolProg 64 :=
.seq NamedBody683_713 NamedBody683_722

def NamedBody683_724 : StackLang.HolProg 64 :=
.seq NamedBody683_712 NamedBody683_723

def NamedBody683_725 : StackLang.HolProg 64 :=
.seq NamedBody683_711 NamedBody683_724

def NamedBody683_726 : StackLang.HolProg 64 :=
.seq NamedBody683_710 NamedBody683_725

def NamedBody683_727 : StackLang.HolProg 64 :=
.seq NamedBody683_709 NamedBody683_726

def NamedBody683_728 : StackLang.HolProg 64 :=
.seq NamedBody683_708 NamedBody683_727

def NamedBody683_729 : StackLang.HolProg 64 :=
.seq NamedBody683_707 NamedBody683_728

def NamedBody683_730 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody683_731 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody683_732 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody683_733 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody683_734 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody683_735 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody683_736 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 11
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 120#64))

def NamedBody683_737 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 96#64))

def NamedBody683_738 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 13
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 88#64))

def NamedBody683_739 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 12
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 80#64))

def NamedBody683_740 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 72#64))

def NamedBody683_741 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 80#64))

def NamedBody683_742 : StackLang.HolProg 64 :=
.seq NamedBody683_740 NamedBody683_741

def NamedBody683_743 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 64#64))

def NamedBody683_744 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 72#64))

def NamedBody683_745 : StackLang.HolProg 64 :=
.seq NamedBody683_743 NamedBody683_744

def NamedBody683_746 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 56#64))

def NamedBody683_747 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 64#64))

def NamedBody683_748 : StackLang.HolProg 64 :=
.seq NamedBody683_746 NamedBody683_747

def NamedBody683_749 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 48#64))

def NamedBody683_750 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 56#64))

def NamedBody683_751 : StackLang.HolProg 64 :=
.seq NamedBody683_749 NamedBody683_750

def NamedBody683_752 : StackLang.HolProg 64 :=
.seq NamedBody683_748 NamedBody683_751

def NamedBody683_753 : StackLang.HolProg 64 :=
.seq NamedBody683_745 NamedBody683_752

def NamedBody683_754 : StackLang.HolProg 64 :=
.seq NamedBody683_742 NamedBody683_753

def NamedBody683_755 : StackLang.HolProg 64 :=
.seq NamedBody683_739 NamedBody683_754

def NamedBody683_756 : StackLang.HolProg 64 :=
.seq NamedBody683_738 NamedBody683_755

def NamedBody683_757 : StackLang.HolProg 64 :=
.seq NamedBody683_737 NamedBody683_756

def NamedBody683_758 : StackLang.HolProg 64 :=
.seq NamedBody683_736 NamedBody683_757

def NamedBody683_759 : StackLang.HolProg 64 :=
.seq NamedBody683_735 NamedBody683_758

def NamedBody683_760 : StackLang.HolProg 64 :=
.seq NamedBody683_734 NamedBody683_759

def NamedBody683_761 : StackLang.HolProg 64 :=
.seq NamedBody683_733 NamedBody683_760

def NamedBody683_762 : StackLang.HolProg 64 :=
.seq NamedBody683_732 NamedBody683_761

def NamedBody683_763 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 11
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 120#64))

def NamedBody683_764 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 96#64))

def NamedBody683_765 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 13
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 88#64))

def NamedBody683_766 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 12
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 80#64))

def NamedBody683_767 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 72#64))

def NamedBody683_768 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 80#64))

def NamedBody683_769 : StackLang.HolProg 64 :=
.seq NamedBody683_767 NamedBody683_768

def NamedBody683_770 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 64#64))

def NamedBody683_771 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 72#64))

def NamedBody683_772 : StackLang.HolProg 64 :=
.seq NamedBody683_770 NamedBody683_771

def NamedBody683_773 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 56#64))

def NamedBody683_774 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 64#64))

def NamedBody683_775 : StackLang.HolProg 64 :=
.seq NamedBody683_773 NamedBody683_774

def NamedBody683_776 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 48#64))

def NamedBody683_777 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 56#64))

def NamedBody683_778 : StackLang.HolProg 64 :=
.seq NamedBody683_776 NamedBody683_777

def NamedBody683_779 : StackLang.HolProg 64 :=
.seq NamedBody683_775 NamedBody683_778

def NamedBody683_780 : StackLang.HolProg 64 :=
.seq NamedBody683_772 NamedBody683_779

def NamedBody683_781 : StackLang.HolProg 64 :=
.seq NamedBody683_769 NamedBody683_780

def NamedBody683_782 : StackLang.HolProg 64 :=
.seq NamedBody683_766 NamedBody683_781

def NamedBody683_783 : StackLang.HolProg 64 :=
.seq NamedBody683_765 NamedBody683_782

def NamedBody683_784 : StackLang.HolProg 64 :=
.seq NamedBody683_764 NamedBody683_783

def NamedBody683_785 : StackLang.HolProg 64 :=
.seq NamedBody683_763 NamedBody683_784

def NamedBody683_786 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def NamedBody683_787 : StackLang.HolProg 64 :=
.seq NamedBody683_785 NamedBody683_786

def NamedBody683_788 : StackLang.HolProg 64 :=
.call (some (NamedBody683_762, 1, 683, 20)) (Sum.inl 670) (some (NamedBody683_787, 683, 21))

def NamedBody683_789 : StackLang.HolProg 64 :=
.seq NamedBody683_731 NamedBody683_788

def NamedBody683_790 : StackLang.HolProg 64 :=
.seq NamedBody683_730 NamedBody683_789

def NamedBody683_791 : StackLang.HolProg 64 :=
.seq NamedBody683_729 NamedBody683_790

def NamedBody683_792 : StackLang.HolProg 64 :=
.seq NamedBody683_700 NamedBody683_791

def NamedBody683_793 : StackLang.HolProg 64 :=
.seq NamedBody683_697 NamedBody683_792

def NamedBody683_794 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody683_795 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 10 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def NamedBody683_796 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 11
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 120#64))

def NamedBody683_797 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 96#64))

def NamedBody683_798 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 13
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 88#64))

def NamedBody683_799 : StackLang.HolProg 64 :=
.seq NamedBody683_797 NamedBody683_798

def NamedBody683_800 : StackLang.HolProg 64 :=
.seq NamedBody683_796 NamedBody683_799

def NamedBody683_801 : StackLang.HolProg 64 :=
.seq NamedBody683_795 NamedBody683_800

def NamedBody683_802 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody683_803 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 2839#64)

def NamedBody683_804 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody683_805 : StackLang.HolProg 64 :=
.seq NamedBody683_803 NamedBody683_804

def NamedBody683_806 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody683_807 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 2#64)

def NamedBody683_808 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 10

def NamedBody683_809 : StackLang.HolProg 64 :=
.seq NamedBody683_807 NamedBody683_808

def NamedBody683_810 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody683_811 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) NamedBody683_809 NamedBody683_810

def NamedBody683_812 : StackLang.HolProg 64 :=
.seq NamedBody683_806 NamedBody683_811

def NamedBody683_813 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def NamedBody683_814 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody683_815 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 683 23

def NamedBody683_816 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody683_817 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody683_818 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody683_819 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody683_820 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def NamedBody683_821 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def NamedBody683_822 : StackLang.HolProg 64 :=
.seq NamedBody683_820 NamedBody683_821

def NamedBody683_823 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def NamedBody683_824 : StackLang.HolProg 64 :=
.seq NamedBody683_822 NamedBody683_823

def NamedBody683_825 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody683_826 : StackLang.HolProg 64 :=
.seq NamedBody683_824 NamedBody683_825

def NamedBody683_827 : StackLang.HolProg 64 :=
.seq NamedBody683_819 NamedBody683_826

def NamedBody683_828 : StackLang.HolProg 64 :=
.seq NamedBody683_818 NamedBody683_827

def NamedBody683_829 : StackLang.HolProg 64 :=
.seq NamedBody683_817 NamedBody683_828

def NamedBody683_830 : StackLang.HolProg 64 :=
.seq NamedBody683_816 NamedBody683_829

def NamedBody683_831 : StackLang.HolProg 64 :=
.seq NamedBody683_815 NamedBody683_830

def NamedBody683_832 : StackLang.HolProg 64 :=
.seq NamedBody683_814 NamedBody683_831

def NamedBody683_833 : StackLang.HolProg 64 :=
.seq NamedBody683_813 NamedBody683_832

def NamedBody683_834 : StackLang.HolProg 64 :=
.seq NamedBody683_812 NamedBody683_833

def NamedBody683_835 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody683_836 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody683_837 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody683_838 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody683_839 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody683_840 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody683_841 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 12
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 128#64))

def NamedBody683_842 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 104#64))

def NamedBody683_843 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 128#64))

def NamedBody683_844 : StackLang.HolProg 64 :=
.seq NamedBody683_842 NamedBody683_843

def NamedBody683_845 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 96#64))

def NamedBody683_846 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 88#64))

def NamedBody683_847 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 96#64))

def NamedBody683_848 : StackLang.HolProg 64 :=
.seq NamedBody683_846 NamedBody683_847

def NamedBody683_849 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 80#64))

def NamedBody683_850 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 88#64))

def NamedBody683_851 : StackLang.HolProg 64 :=
.seq NamedBody683_849 NamedBody683_850

def NamedBody683_852 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 11
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 72#64))

def NamedBody683_853 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 13
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 64#64))

def NamedBody683_854 : StackLang.HolProg 64 :=
.seq NamedBody683_852 NamedBody683_853

def NamedBody683_855 : StackLang.HolProg 64 :=
.seq NamedBody683_851 NamedBody683_854

def NamedBody683_856 : StackLang.HolProg 64 :=
.seq NamedBody683_848 NamedBody683_855

def NamedBody683_857 : StackLang.HolProg 64 :=
.seq NamedBody683_845 NamedBody683_856

def NamedBody683_858 : StackLang.HolProg 64 :=
.seq NamedBody683_844 NamedBody683_857

def NamedBody683_859 : StackLang.HolProg 64 :=
.seq NamedBody683_841 NamedBody683_858

def NamedBody683_860 : StackLang.HolProg 64 :=
.seq NamedBody683_840 NamedBody683_859

def NamedBody683_861 : StackLang.HolProg 64 :=
.seq NamedBody683_839 NamedBody683_860

def NamedBody683_862 : StackLang.HolProg 64 :=
.seq NamedBody683_838 NamedBody683_861

def NamedBody683_863 : StackLang.HolProg 64 :=
.seq NamedBody683_837 NamedBody683_862

def NamedBody683_864 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 12
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 128#64))

def NamedBody683_865 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 104#64))

def NamedBody683_866 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 128#64))

def NamedBody683_867 : StackLang.HolProg 64 :=
.seq NamedBody683_865 NamedBody683_866

def NamedBody683_868 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 96#64))

def NamedBody683_869 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 88#64))

def NamedBody683_870 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 96#64))

def NamedBody683_871 : StackLang.HolProg 64 :=
.seq NamedBody683_869 NamedBody683_870

def NamedBody683_872 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 80#64))

def NamedBody683_873 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 88#64))

def NamedBody683_874 : StackLang.HolProg 64 :=
.seq NamedBody683_872 NamedBody683_873

def NamedBody683_875 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 11
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 72#64))

def NamedBody683_876 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 13
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 64#64))

def NamedBody683_877 : StackLang.HolProg 64 :=
.seq NamedBody683_875 NamedBody683_876

def NamedBody683_878 : StackLang.HolProg 64 :=
.seq NamedBody683_874 NamedBody683_877

def NamedBody683_879 : StackLang.HolProg 64 :=
.seq NamedBody683_871 NamedBody683_878

def NamedBody683_880 : StackLang.HolProg 64 :=
.seq NamedBody683_868 NamedBody683_879

def NamedBody683_881 : StackLang.HolProg 64 :=
.seq NamedBody683_867 NamedBody683_880

def NamedBody683_882 : StackLang.HolProg 64 :=
.seq NamedBody683_864 NamedBody683_881

def NamedBody683_883 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def NamedBody683_884 : StackLang.HolProg 64 :=
.seq NamedBody683_882 NamedBody683_883

def NamedBody683_885 : StackLang.HolProg 64 :=
.call (some (NamedBody683_863, 1, 683, 22)) (Sum.inl 670) (some (NamedBody683_884, 683, 23))

def NamedBody683_886 : StackLang.HolProg 64 :=
.seq NamedBody683_836 NamedBody683_885

def NamedBody683_887 : StackLang.HolProg 64 :=
.seq NamedBody683_835 NamedBody683_886

def NamedBody683_888 : StackLang.HolProg 64 :=
.seq NamedBody683_834 NamedBody683_887

def NamedBody683_889 : StackLang.HolProg 64 :=
.seq NamedBody683_805 NamedBody683_888

def NamedBody683_890 : StackLang.HolProg 64 :=
.seq NamedBody683_802 NamedBody683_889

def NamedBody683_891 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody683_892 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 10 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def NamedBody683_893 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 104#64))

def NamedBody683_894 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 11
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 80#64))

def NamedBody683_895 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 13
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 32#64))

def NamedBody683_896 : StackLang.HolProg 64 :=
.seq NamedBody683_894 NamedBody683_895

def NamedBody683_897 : StackLang.HolProg 64 :=
.seq NamedBody683_893 NamedBody683_896

def NamedBody683_898 : StackLang.HolProg 64 :=
.seq NamedBody683_892 NamedBody683_897

def NamedBody683_899 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody683_900 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 2840#64)

def NamedBody683_901 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody683_902 : StackLang.HolProg 64 :=
.seq NamedBody683_900 NamedBody683_901

def NamedBody683_903 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody683_904 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 2#64)

def NamedBody683_905 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 10

def NamedBody683_906 : StackLang.HolProg 64 :=
.seq NamedBody683_904 NamedBody683_905

def NamedBody683_907 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody683_908 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) NamedBody683_906 NamedBody683_907

def NamedBody683_909 : StackLang.HolProg 64 :=
.seq NamedBody683_903 NamedBody683_908

def NamedBody683_910 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def NamedBody683_911 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody683_912 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 683 25

def NamedBody683_913 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody683_914 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody683_915 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody683_916 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody683_917 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def NamedBody683_918 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def NamedBody683_919 : StackLang.HolProg 64 :=
.seq NamedBody683_917 NamedBody683_918

def NamedBody683_920 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def NamedBody683_921 : StackLang.HolProg 64 :=
.seq NamedBody683_919 NamedBody683_920

def NamedBody683_922 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody683_923 : StackLang.HolProg 64 :=
.seq NamedBody683_921 NamedBody683_922

def NamedBody683_924 : StackLang.HolProg 64 :=
.seq NamedBody683_916 NamedBody683_923

def NamedBody683_925 : StackLang.HolProg 64 :=
.seq NamedBody683_915 NamedBody683_924

def NamedBody683_926 : StackLang.HolProg 64 :=
.seq NamedBody683_914 NamedBody683_925

def NamedBody683_927 : StackLang.HolProg 64 :=
.seq NamedBody683_913 NamedBody683_926

def NamedBody683_928 : StackLang.HolProg 64 :=
.seq NamedBody683_912 NamedBody683_927

def NamedBody683_929 : StackLang.HolProg 64 :=
.seq NamedBody683_911 NamedBody683_928

def NamedBody683_930 : StackLang.HolProg 64 :=
.seq NamedBody683_910 NamedBody683_929

def NamedBody683_931 : StackLang.HolProg 64 :=
.seq NamedBody683_909 NamedBody683_930

def NamedBody683_932 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody683_933 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody683_934 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody683_935 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody683_936 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody683_937 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody683_938 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 12
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 144#64))

def NamedBody683_939 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 11
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 136#64))

def NamedBody683_940 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 128#64))

def NamedBody683_941 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 136#64))

def NamedBody683_942 : StackLang.HolProg 64 :=
.seq NamedBody683_940 NamedBody683_941

def NamedBody683_943 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 104#64))

def NamedBody683_944 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 13
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 96#64))

def NamedBody683_945 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 88#64))

def NamedBody683_946 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 104#64))

def NamedBody683_947 : StackLang.HolProg 64 :=
.seq NamedBody683_945 NamedBody683_946

def NamedBody683_948 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 80#64))

def NamedBody683_949 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 96#64))

def NamedBody683_950 : StackLang.HolProg 64 :=
.seq NamedBody683_948 NamedBody683_949

def NamedBody683_951 : StackLang.HolProg 64 :=
.seq NamedBody683_947 NamedBody683_950

def NamedBody683_952 : StackLang.HolProg 64 :=
.seq NamedBody683_944 NamedBody683_951

def NamedBody683_953 : StackLang.HolProg 64 :=
.seq NamedBody683_943 NamedBody683_952

def NamedBody683_954 : StackLang.HolProg 64 :=
.seq NamedBody683_942 NamedBody683_953

def NamedBody683_955 : StackLang.HolProg 64 :=
.seq NamedBody683_939 NamedBody683_954

def NamedBody683_956 : StackLang.HolProg 64 :=
.seq NamedBody683_938 NamedBody683_955

def NamedBody683_957 : StackLang.HolProg 64 :=
.seq NamedBody683_937 NamedBody683_956

def NamedBody683_958 : StackLang.HolProg 64 :=
.seq NamedBody683_936 NamedBody683_957

def NamedBody683_959 : StackLang.HolProg 64 :=
.seq NamedBody683_935 NamedBody683_958

def NamedBody683_960 : StackLang.HolProg 64 :=
.seq NamedBody683_934 NamedBody683_959

def NamedBody683_961 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 12
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 144#64))

def NamedBody683_962 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 11
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 136#64))

def NamedBody683_963 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 128#64))

def NamedBody683_964 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 136#64))

def NamedBody683_965 : StackLang.HolProg 64 :=
.seq NamedBody683_963 NamedBody683_964

def NamedBody683_966 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 104#64))

def NamedBody683_967 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 13
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 96#64))

def NamedBody683_968 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 88#64))

def NamedBody683_969 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 104#64))

def NamedBody683_970 : StackLang.HolProg 64 :=
.seq NamedBody683_968 NamedBody683_969

def NamedBody683_971 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 80#64))

def NamedBody683_972 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 96#64))

def NamedBody683_973 : StackLang.HolProg 64 :=
.seq NamedBody683_971 NamedBody683_972

def NamedBody683_974 : StackLang.HolProg 64 :=
.seq NamedBody683_970 NamedBody683_973

def NamedBody683_975 : StackLang.HolProg 64 :=
.seq NamedBody683_967 NamedBody683_974

def NamedBody683_976 : StackLang.HolProg 64 :=
.seq NamedBody683_966 NamedBody683_975

def NamedBody683_977 : StackLang.HolProg 64 :=
.seq NamedBody683_965 NamedBody683_976

def NamedBody683_978 : StackLang.HolProg 64 :=
.seq NamedBody683_962 NamedBody683_977

def NamedBody683_979 : StackLang.HolProg 64 :=
.seq NamedBody683_961 NamedBody683_978

def NamedBody683_980 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def NamedBody683_981 : StackLang.HolProg 64 :=
.seq NamedBody683_979 NamedBody683_980

def NamedBody683_982 : StackLang.HolProg 64 :=
.call (some (NamedBody683_960, 1, 683, 24)) (Sum.inl 670) (some (NamedBody683_981, 683, 25))

def NamedBody683_983 : StackLang.HolProg 64 :=
.seq NamedBody683_933 NamedBody683_982

def NamedBody683_984 : StackLang.HolProg 64 :=
.seq NamedBody683_932 NamedBody683_983

def NamedBody683_985 : StackLang.HolProg 64 :=
.seq NamedBody683_931 NamedBody683_984

def NamedBody683_986 : StackLang.HolProg 64 :=
.seq NamedBody683_902 NamedBody683_985

def NamedBody683_987 : StackLang.HolProg 64 :=
.seq NamedBody683_899 NamedBody683_986

def NamedBody683_988 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody683_989 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 10 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def NamedBody683_990 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 11
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 144#64))

def NamedBody683_991 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 128#64))

def NamedBody683_992 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 13
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 64#64))

def NamedBody683_993 : StackLang.HolProg 64 :=
.seq NamedBody683_991 NamedBody683_992

def NamedBody683_994 : StackLang.HolProg 64 :=
.seq NamedBody683_990 NamedBody683_993

def NamedBody683_995 : StackLang.HolProg 64 :=
.seq NamedBody683_989 NamedBody683_994

def NamedBody683_996 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody683_997 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 2841#64)

def NamedBody683_998 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody683_999 : StackLang.HolProg 64 :=
.seq NamedBody683_997 NamedBody683_998

def NamedBody683_1000 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody683_1001 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 2#64)

def NamedBody683_1002 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 10

def NamedBody683_1003 : StackLang.HolProg 64 :=
.seq NamedBody683_1001 NamedBody683_1002

def NamedBody683_1004 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody683_1005 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) NamedBody683_1003 NamedBody683_1004

def NamedBody683_1006 : StackLang.HolProg 64 :=
.seq NamedBody683_1000 NamedBody683_1005

def NamedBody683_1007 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def NamedBody683_1008 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody683_1009 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 683 27

def NamedBody683_1010 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody683_1011 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody683_1012 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody683_1013 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody683_1014 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def NamedBody683_1015 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def NamedBody683_1016 : StackLang.HolProg 64 :=
.seq NamedBody683_1014 NamedBody683_1015

def NamedBody683_1017 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def NamedBody683_1018 : StackLang.HolProg 64 :=
.seq NamedBody683_1016 NamedBody683_1017

def NamedBody683_1019 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody683_1020 : StackLang.HolProg 64 :=
.seq NamedBody683_1018 NamedBody683_1019

def NamedBody683_1021 : StackLang.HolProg 64 :=
.seq NamedBody683_1013 NamedBody683_1020

def NamedBody683_1022 : StackLang.HolProg 64 :=
.seq NamedBody683_1012 NamedBody683_1021

def NamedBody683_1023 : StackLang.HolProg 64 :=
.seq NamedBody683_1011 NamedBody683_1022

def NamedBody683_1024 : StackLang.HolProg 64 :=
.seq NamedBody683_1010 NamedBody683_1023

def NamedBody683_1025 : StackLang.HolProg 64 :=
.seq NamedBody683_1009 NamedBody683_1024

def NamedBody683_1026 : StackLang.HolProg 64 :=
.seq NamedBody683_1008 NamedBody683_1025

def NamedBody683_1027 : StackLang.HolProg 64 :=
.seq NamedBody683_1007 NamedBody683_1026

def NamedBody683_1028 : StackLang.HolProg 64 :=
.seq NamedBody683_1006 NamedBody683_1027

def NamedBody683_1029 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody683_1030 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody683_1031 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody683_1032 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody683_1033 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody683_1034 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody683_1035 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 12
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 144#64))

def NamedBody683_1036 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 136#64))

def NamedBody683_1037 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 144#64))

def NamedBody683_1038 : StackLang.HolProg 64 :=
.seq NamedBody683_1036 NamedBody683_1037

def NamedBody683_1039 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 128#64))

def NamedBody683_1040 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 104#64))

def NamedBody683_1041 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 136#64))

def NamedBody683_1042 : StackLang.HolProg 64 :=
.seq NamedBody683_1040 NamedBody683_1041

def NamedBody683_1043 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 11
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 96#64))

def NamedBody683_1044 : StackLang.HolProg 64 :=
.seq NamedBody683_1042 NamedBody683_1043

def NamedBody683_1045 : StackLang.HolProg 64 :=
.seq NamedBody683_1039 NamedBody683_1044

def NamedBody683_1046 : StackLang.HolProg 64 :=
.seq NamedBody683_1038 NamedBody683_1045

def NamedBody683_1047 : StackLang.HolProg 64 :=
.seq NamedBody683_1035 NamedBody683_1046

def NamedBody683_1048 : StackLang.HolProg 64 :=
.seq NamedBody683_1034 NamedBody683_1047

def NamedBody683_1049 : StackLang.HolProg 64 :=
.seq NamedBody683_1033 NamedBody683_1048

def NamedBody683_1050 : StackLang.HolProg 64 :=
.seq NamedBody683_1032 NamedBody683_1049

def NamedBody683_1051 : StackLang.HolProg 64 :=
.seq NamedBody683_1031 NamedBody683_1050

def NamedBody683_1052 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 12
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 144#64))

def NamedBody683_1053 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 136#64))

def NamedBody683_1054 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 144#64))

def NamedBody683_1055 : StackLang.HolProg 64 :=
.seq NamedBody683_1053 NamedBody683_1054

def NamedBody683_1056 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 128#64))

def NamedBody683_1057 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 104#64))

def NamedBody683_1058 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 136#64))

def NamedBody683_1059 : StackLang.HolProg 64 :=
.seq NamedBody683_1057 NamedBody683_1058

def NamedBody683_1060 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 11
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 96#64))

def NamedBody683_1061 : StackLang.HolProg 64 :=
.seq NamedBody683_1059 NamedBody683_1060

def NamedBody683_1062 : StackLang.HolProg 64 :=
.seq NamedBody683_1056 NamedBody683_1061

def NamedBody683_1063 : StackLang.HolProg 64 :=
.seq NamedBody683_1055 NamedBody683_1062

def NamedBody683_1064 : StackLang.HolProg 64 :=
.seq NamedBody683_1052 NamedBody683_1063

def NamedBody683_1065 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def NamedBody683_1066 : StackLang.HolProg 64 :=
.seq NamedBody683_1064 NamedBody683_1065

def NamedBody683_1067 : StackLang.HolProg 64 :=
.call (some (NamedBody683_1051, 1, 683, 26)) (Sum.inl 670) (some (NamedBody683_1066, 683, 27))

def NamedBody683_1068 : StackLang.HolProg 64 :=
.seq NamedBody683_1030 NamedBody683_1067

def NamedBody683_1069 : StackLang.HolProg 64 :=
.seq NamedBody683_1029 NamedBody683_1068

def NamedBody683_1070 : StackLang.HolProg 64 :=
.seq NamedBody683_1028 NamedBody683_1069

def NamedBody683_1071 : StackLang.HolProg 64 :=
.seq NamedBody683_999 NamedBody683_1070

def NamedBody683_1072 : StackLang.HolProg 64 :=
.seq NamedBody683_996 NamedBody683_1071

def NamedBody683_1073 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody683_1074 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 10 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def NamedBody683_1075 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 12
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 128#64))

def NamedBody683_1076 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 96#64))

def NamedBody683_1077 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 11
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 40#64))

def NamedBody683_1078 : StackLang.HolProg 64 :=
.seq NamedBody683_1076 NamedBody683_1077

def NamedBody683_1079 : StackLang.HolProg 64 :=
.seq NamedBody683_1075 NamedBody683_1078

def NamedBody683_1080 : StackLang.HolProg 64 :=
.seq NamedBody683_1074 NamedBody683_1079

def NamedBody683_1081 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody683_1082 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 2842#64)

def NamedBody683_1083 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody683_1084 : StackLang.HolProg 64 :=
.seq NamedBody683_1082 NamedBody683_1083

def NamedBody683_1085 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody683_1086 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 2#64)

def NamedBody683_1087 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 10

def NamedBody683_1088 : StackLang.HolProg 64 :=
.seq NamedBody683_1086 NamedBody683_1087

def NamedBody683_1089 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody683_1090 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) NamedBody683_1088 NamedBody683_1089

def NamedBody683_1091 : StackLang.HolProg 64 :=
.seq NamedBody683_1085 NamedBody683_1090

def NamedBody683_1092 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def NamedBody683_1093 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody683_1094 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 683 29

def NamedBody683_1095 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody683_1096 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody683_1097 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody683_1098 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody683_1099 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def NamedBody683_1100 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def NamedBody683_1101 : StackLang.HolProg 64 :=
.seq NamedBody683_1099 NamedBody683_1100

def NamedBody683_1102 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def NamedBody683_1103 : StackLang.HolProg 64 :=
.seq NamedBody683_1101 NamedBody683_1102

def NamedBody683_1104 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody683_1105 : StackLang.HolProg 64 :=
.seq NamedBody683_1103 NamedBody683_1104

def NamedBody683_1106 : StackLang.HolProg 64 :=
.seq NamedBody683_1098 NamedBody683_1105

def NamedBody683_1107 : StackLang.HolProg 64 :=
.seq NamedBody683_1097 NamedBody683_1106

def NamedBody683_1108 : StackLang.HolProg 64 :=
.seq NamedBody683_1096 NamedBody683_1107

def NamedBody683_1109 : StackLang.HolProg 64 :=
.seq NamedBody683_1095 NamedBody683_1108

def NamedBody683_1110 : StackLang.HolProg 64 :=
.seq NamedBody683_1094 NamedBody683_1109

def NamedBody683_1111 : StackLang.HolProg 64 :=
.seq NamedBody683_1093 NamedBody683_1110

def NamedBody683_1112 : StackLang.HolProg 64 :=
.seq NamedBody683_1092 NamedBody683_1111

def NamedBody683_1113 : StackLang.HolProg 64 :=
.seq NamedBody683_1091 NamedBody683_1112

def NamedBody683_1114 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody683_1115 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody683_1116 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody683_1117 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody683_1118 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody683_1119 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody683_1120 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 11 10
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 10)))

def NamedBody683_1121 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 144#64))

def NamedBody683_1122 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 136#64))

def NamedBody683_1123 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 144#64))

def NamedBody683_1124 : StackLang.HolProg 64 :=
.seq NamedBody683_1122 NamedBody683_1123

def NamedBody683_1125 : StackLang.HolProg 64 :=
.seq NamedBody683_1121 NamedBody683_1124

def NamedBody683_1126 : StackLang.HolProg 64 :=
.seq NamedBody683_1120 NamedBody683_1125

def NamedBody683_1127 : StackLang.HolProg 64 :=
.seq NamedBody683_1119 NamedBody683_1126

def NamedBody683_1128 : StackLang.HolProg 64 :=
.seq NamedBody683_1118 NamedBody683_1127

def NamedBody683_1129 : StackLang.HolProg 64 :=
.seq NamedBody683_1117 NamedBody683_1128

def NamedBody683_1130 : StackLang.HolProg 64 :=
.seq NamedBody683_1116 NamedBody683_1129

def NamedBody683_1131 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 144#64))

def NamedBody683_1132 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 136#64))

def NamedBody683_1133 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 144#64))

def NamedBody683_1134 : StackLang.HolProg 64 :=
.seq NamedBody683_1132 NamedBody683_1133

def NamedBody683_1135 : StackLang.HolProg 64 :=
.seq NamedBody683_1131 NamedBody683_1134

def NamedBody683_1136 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def NamedBody683_1137 : StackLang.HolProg 64 :=
.seq NamedBody683_1135 NamedBody683_1136

def NamedBody683_1138 : StackLang.HolProg 64 :=
.call (some (NamedBody683_1130, 1, 683, 28)) (Sum.inl 677) (some (NamedBody683_1137, 683, 29))

def NamedBody683_1139 : StackLang.HolProg 64 :=
.seq NamedBody683_1115 NamedBody683_1138

def NamedBody683_1140 : StackLang.HolProg 64 :=
.seq NamedBody683_1114 NamedBody683_1139

def NamedBody683_1141 : StackLang.HolProg 64 :=
.seq NamedBody683_1113 NamedBody683_1140

def NamedBody683_1142 : StackLang.HolProg 64 :=
.seq NamedBody683_1084 NamedBody683_1141

def NamedBody683_1143 : StackLang.HolProg 64 :=
.seq NamedBody683_1081 NamedBody683_1142

def NamedBody683_1144 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody683_1145 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody683_1146 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 1#64)

def NamedBody683_1147 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody683_1148 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 10
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 96#64))

def NamedBody683_1149 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 11
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 56#64))

def NamedBody683_1150 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 12
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 120#64))

def NamedBody683_1151 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 144#64))

def NamedBody683_1152 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 120#64))

def NamedBody683_1153 : StackLang.HolProg 64 :=
.seq NamedBody683_1151 NamedBody683_1152

def NamedBody683_1154 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 152#64))

def NamedBody683_1155 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 144#64))

def NamedBody683_1156 : StackLang.HolProg 64 :=
.seq NamedBody683_1154 NamedBody683_1155

def NamedBody683_1157 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 112#64))

def NamedBody683_1158 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 152#64))

def NamedBody683_1159 : StackLang.HolProg 64 :=
.seq NamedBody683_1157 NamedBody683_1158

def NamedBody683_1160 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 96#64))

def NamedBody683_1161 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 136#64))

def NamedBody683_1162 : StackLang.HolProg 64 :=
.seq NamedBody683_1160 NamedBody683_1161

def NamedBody683_1163 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 24#64))

def NamedBody683_1164 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 128#64))

def NamedBody683_1165 : StackLang.HolProg 64 :=
.seq NamedBody683_1163 NamedBody683_1164

def NamedBody683_1166 : StackLang.HolProg 64 :=
.seq NamedBody683_1162 NamedBody683_1165

def NamedBody683_1167 : StackLang.HolProg 64 :=
.seq NamedBody683_1159 NamedBody683_1166

def NamedBody683_1168 : StackLang.HolProg 64 :=
.seq NamedBody683_1156 NamedBody683_1167

def NamedBody683_1169 : StackLang.HolProg 64 :=
.seq NamedBody683_1153 NamedBody683_1168

def NamedBody683_1170 : StackLang.HolProg 64 :=
.seq NamedBody683_1150 NamedBody683_1169

def NamedBody683_1171 : StackLang.HolProg 64 :=
.seq NamedBody683_1149 NamedBody683_1170

def NamedBody683_1172 : StackLang.HolProg 64 :=
.seq NamedBody683_1148 NamedBody683_1171

def NamedBody683_1173 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody683_1174 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 2843#64)

def NamedBody683_1175 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody683_1176 : StackLang.HolProg 64 :=
.seq NamedBody683_1174 NamedBody683_1175

def NamedBody683_1177 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody683_1178 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 2#64)

def NamedBody683_1179 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 10

def NamedBody683_1180 : StackLang.HolProg 64 :=
.seq NamedBody683_1178 NamedBody683_1179

def NamedBody683_1181 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody683_1182 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) NamedBody683_1180 NamedBody683_1181

def NamedBody683_1183 : StackLang.HolProg 64 :=
.seq NamedBody683_1177 NamedBody683_1182

def NamedBody683_1184 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def NamedBody683_1185 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody683_1186 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 683 31

def NamedBody683_1187 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody683_1188 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody683_1189 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody683_1190 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody683_1191 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def NamedBody683_1192 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def NamedBody683_1193 : StackLang.HolProg 64 :=
.seq NamedBody683_1191 NamedBody683_1192

def NamedBody683_1194 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def NamedBody683_1195 : StackLang.HolProg 64 :=
.seq NamedBody683_1193 NamedBody683_1194

def NamedBody683_1196 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody683_1197 : StackLang.HolProg 64 :=
.seq NamedBody683_1195 NamedBody683_1196

def NamedBody683_1198 : StackLang.HolProg 64 :=
.seq NamedBody683_1190 NamedBody683_1197

def NamedBody683_1199 : StackLang.HolProg 64 :=
.seq NamedBody683_1189 NamedBody683_1198

def NamedBody683_1200 : StackLang.HolProg 64 :=
.seq NamedBody683_1188 NamedBody683_1199

def NamedBody683_1201 : StackLang.HolProg 64 :=
.seq NamedBody683_1187 NamedBody683_1200

def NamedBody683_1202 : StackLang.HolProg 64 :=
.seq NamedBody683_1186 NamedBody683_1201

def NamedBody683_1203 : StackLang.HolProg 64 :=
.seq NamedBody683_1185 NamedBody683_1202

def NamedBody683_1204 : StackLang.HolProg 64 :=
.seq NamedBody683_1184 NamedBody683_1203

def NamedBody683_1205 : StackLang.HolProg 64 :=
.seq NamedBody683_1183 NamedBody683_1204

def NamedBody683_1206 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody683_1207 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody683_1208 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody683_1209 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody683_1210 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody683_1211 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody683_1212 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 11 10
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 10)))

def NamedBody683_1213 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 128#64))

def NamedBody683_1214 : StackLang.HolProg 64 :=
.seq NamedBody683_1212 NamedBody683_1213

def NamedBody683_1215 : StackLang.HolProg 64 :=
.seq NamedBody683_1211 NamedBody683_1214

def NamedBody683_1216 : StackLang.HolProg 64 :=
.seq NamedBody683_1210 NamedBody683_1215

def NamedBody683_1217 : StackLang.HolProg 64 :=
.seq NamedBody683_1209 NamedBody683_1216

def NamedBody683_1218 : StackLang.HolProg 64 :=
.seq NamedBody683_1208 NamedBody683_1217

def NamedBody683_1219 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 128#64))

def NamedBody683_1220 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def NamedBody683_1221 : StackLang.HolProg 64 :=
.seq NamedBody683_1219 NamedBody683_1220

def NamedBody683_1222 : StackLang.HolProg 64 :=
.call (some (NamedBody683_1218, 1, 683, 30)) (Sum.inl 677) (some (NamedBody683_1221, 683, 31))

def NamedBody683_1223 : StackLang.HolProg 64 :=
.seq NamedBody683_1207 NamedBody683_1222

def NamedBody683_1224 : StackLang.HolProg 64 :=
.seq NamedBody683_1206 NamedBody683_1223

def NamedBody683_1225 : StackLang.HolProg 64 :=
.seq NamedBody683_1205 NamedBody683_1224

def NamedBody683_1226 : StackLang.HolProg 64 :=
.seq NamedBody683_1176 NamedBody683_1225

def NamedBody683_1227 : StackLang.HolProg 64 :=
.seq NamedBody683_1173 NamedBody683_1226

def NamedBody683_1228 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody683_1229 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 10 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def NamedBody683_1230 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 11
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 128#64))

def NamedBody683_1231 : StackLang.HolProg 64 :=
.seq NamedBody683_1229 NamedBody683_1230

def NamedBody683_1232 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody683_1233 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 2844#64)

def NamedBody683_1234 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody683_1235 : StackLang.HolProg 64 :=
.seq NamedBody683_1233 NamedBody683_1234

def NamedBody683_1236 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody683_1237 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 2#64)

def NamedBody683_1238 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 10

def NamedBody683_1239 : StackLang.HolProg 64 :=
.seq NamedBody683_1237 NamedBody683_1238

def NamedBody683_1240 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody683_1241 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) NamedBody683_1239 NamedBody683_1240

def NamedBody683_1242 : StackLang.HolProg 64 :=
.seq NamedBody683_1236 NamedBody683_1241

def NamedBody683_1243 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def NamedBody683_1244 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody683_1245 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 683 33

def NamedBody683_1246 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody683_1247 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody683_1248 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody683_1249 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody683_1250 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def NamedBody683_1251 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def NamedBody683_1252 : StackLang.HolProg 64 :=
.seq NamedBody683_1250 NamedBody683_1251

def NamedBody683_1253 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def NamedBody683_1254 : StackLang.HolProg 64 :=
.seq NamedBody683_1252 NamedBody683_1253

def NamedBody683_1255 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody683_1256 : StackLang.HolProg 64 :=
.seq NamedBody683_1254 NamedBody683_1255

def NamedBody683_1257 : StackLang.HolProg 64 :=
.seq NamedBody683_1249 NamedBody683_1256

def NamedBody683_1258 : StackLang.HolProg 64 :=
.seq NamedBody683_1248 NamedBody683_1257

def NamedBody683_1259 : StackLang.HolProg 64 :=
.seq NamedBody683_1247 NamedBody683_1258

def NamedBody683_1260 : StackLang.HolProg 64 :=
.seq NamedBody683_1246 NamedBody683_1259

def NamedBody683_1261 : StackLang.HolProg 64 :=
.seq NamedBody683_1245 NamedBody683_1260

def NamedBody683_1262 : StackLang.HolProg 64 :=
.seq NamedBody683_1244 NamedBody683_1261

def NamedBody683_1263 : StackLang.HolProg 64 :=
.seq NamedBody683_1243 NamedBody683_1262

def NamedBody683_1264 : StackLang.HolProg 64 :=
.seq NamedBody683_1242 NamedBody683_1263

def NamedBody683_1265 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody683_1266 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody683_1267 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody683_1268 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody683_1269 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody683_1270 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody683_1271 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 11
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 152#64))

def NamedBody683_1272 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 136#64))

def NamedBody683_1273 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 13
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 128#64))

def NamedBody683_1274 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 12
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 120#64))

def NamedBody683_1275 : StackLang.HolProg 64 :=
.seq NamedBody683_1273 NamedBody683_1274

def NamedBody683_1276 : StackLang.HolProg 64 :=
.seq NamedBody683_1272 NamedBody683_1275

def NamedBody683_1277 : StackLang.HolProg 64 :=
.seq NamedBody683_1271 NamedBody683_1276

def NamedBody683_1278 : StackLang.HolProg 64 :=
.seq NamedBody683_1270 NamedBody683_1277

def NamedBody683_1279 : StackLang.HolProg 64 :=
.seq NamedBody683_1269 NamedBody683_1278

def NamedBody683_1280 : StackLang.HolProg 64 :=
.seq NamedBody683_1268 NamedBody683_1279

def NamedBody683_1281 : StackLang.HolProg 64 :=
.seq NamedBody683_1267 NamedBody683_1280

def NamedBody683_1282 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 11
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 152#64))

def NamedBody683_1283 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 136#64))

def NamedBody683_1284 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 13
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 128#64))

def NamedBody683_1285 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 12
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 120#64))

def NamedBody683_1286 : StackLang.HolProg 64 :=
.seq NamedBody683_1284 NamedBody683_1285

def NamedBody683_1287 : StackLang.HolProg 64 :=
.seq NamedBody683_1283 NamedBody683_1286

def NamedBody683_1288 : StackLang.HolProg 64 :=
.seq NamedBody683_1282 NamedBody683_1287

def NamedBody683_1289 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def NamedBody683_1290 : StackLang.HolProg 64 :=
.seq NamedBody683_1288 NamedBody683_1289

def NamedBody683_1291 : StackLang.HolProg 64 :=
.call (some (NamedBody683_1281, 1, 683, 32)) (Sum.inl 70) (some (NamedBody683_1290, 683, 33))

def NamedBody683_1292 : StackLang.HolProg 64 :=
.seq NamedBody683_1266 NamedBody683_1291

def NamedBody683_1293 : StackLang.HolProg 64 :=
.seq NamedBody683_1265 NamedBody683_1292

def NamedBody683_1294 : StackLang.HolProg 64 :=
.seq NamedBody683_1264 NamedBody683_1293

def NamedBody683_1295 : StackLang.HolProg 64 :=
.seq NamedBody683_1235 NamedBody683_1294

def NamedBody683_1296 : StackLang.HolProg 64 :=
.seq NamedBody683_1232 NamedBody683_1295

def NamedBody683_1297 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody683_1298 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody683_1299 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 1#64)

def NamedBody683_1300 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody683_1301 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 10 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def NamedBody683_1302 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 144#64))

def NamedBody683_1303 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 152#64))

def NamedBody683_1304 : StackLang.HolProg 64 :=
.seq NamedBody683_1302 NamedBody683_1303

def NamedBody683_1305 : StackLang.HolProg 64 :=
.seq NamedBody683_1301 NamedBody683_1304

def NamedBody683_1306 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody683_1307 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 2845#64)

def NamedBody683_1308 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody683_1309 : StackLang.HolProg 64 :=
.seq NamedBody683_1307 NamedBody683_1308

def NamedBody683_1310 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody683_1311 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 2#64)

def NamedBody683_1312 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 10

def NamedBody683_1313 : StackLang.HolProg 64 :=
.seq NamedBody683_1311 NamedBody683_1312

def NamedBody683_1314 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody683_1315 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) NamedBody683_1313 NamedBody683_1314

def NamedBody683_1316 : StackLang.HolProg 64 :=
.seq NamedBody683_1310 NamedBody683_1315

def NamedBody683_1317 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def NamedBody683_1318 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody683_1319 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 683 35

def NamedBody683_1320 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody683_1321 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody683_1322 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody683_1323 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody683_1324 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def NamedBody683_1325 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def NamedBody683_1326 : StackLang.HolProg 64 :=
.seq NamedBody683_1324 NamedBody683_1325

def NamedBody683_1327 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def NamedBody683_1328 : StackLang.HolProg 64 :=
.seq NamedBody683_1326 NamedBody683_1327

def NamedBody683_1329 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody683_1330 : StackLang.HolProg 64 :=
.seq NamedBody683_1328 NamedBody683_1329

def NamedBody683_1331 : StackLang.HolProg 64 :=
.seq NamedBody683_1323 NamedBody683_1330

def NamedBody683_1332 : StackLang.HolProg 64 :=
.seq NamedBody683_1322 NamedBody683_1331

def NamedBody683_1333 : StackLang.HolProg 64 :=
.seq NamedBody683_1321 NamedBody683_1332

def NamedBody683_1334 : StackLang.HolProg 64 :=
.seq NamedBody683_1320 NamedBody683_1333

def NamedBody683_1335 : StackLang.HolProg 64 :=
.seq NamedBody683_1319 NamedBody683_1334

def NamedBody683_1336 : StackLang.HolProg 64 :=
.seq NamedBody683_1318 NamedBody683_1335

def NamedBody683_1337 : StackLang.HolProg 64 :=
.seq NamedBody683_1317 NamedBody683_1336

def NamedBody683_1338 : StackLang.HolProg 64 :=
.seq NamedBody683_1316 NamedBody683_1337

def NamedBody683_1339 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody683_1340 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody683_1341 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody683_1342 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody683_1343 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody683_1344 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody683_1345 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 12
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 152#64))

def NamedBody683_1346 : StackLang.HolProg 64 :=
.seq NamedBody683_1344 NamedBody683_1345

def NamedBody683_1347 : StackLang.HolProg 64 :=
.seq NamedBody683_1343 NamedBody683_1346

def NamedBody683_1348 : StackLang.HolProg 64 :=
.seq NamedBody683_1342 NamedBody683_1347

def NamedBody683_1349 : StackLang.HolProg 64 :=
.seq NamedBody683_1341 NamedBody683_1348

def NamedBody683_1350 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 12
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 152#64))

def NamedBody683_1351 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def NamedBody683_1352 : StackLang.HolProg 64 :=
.seq NamedBody683_1350 NamedBody683_1351

def NamedBody683_1353 : StackLang.HolProg 64 :=
.call (some (NamedBody683_1349, 1, 683, 34)) (Sum.inl 682) (some (NamedBody683_1352, 683, 35))

def NamedBody683_1354 : StackLang.HolProg 64 :=
.seq NamedBody683_1340 NamedBody683_1353

def NamedBody683_1355 : StackLang.HolProg 64 :=
.seq NamedBody683_1339 NamedBody683_1354

def NamedBody683_1356 : StackLang.HolProg 64 :=
.seq NamedBody683_1338 NamedBody683_1355

def NamedBody683_1357 : StackLang.HolProg 64 :=
.seq NamedBody683_1309 NamedBody683_1356

def NamedBody683_1358 : StackLang.HolProg 64 :=
.seq NamedBody683_1306 NamedBody683_1357

def NamedBody683_1359 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody683_1360 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 0#64)

def NamedBody683_1361 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody683_1362 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 160#64)))

def NamedBody683_1363 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 12

def NamedBody683_1364 : StackLang.HolProg 64 :=
.seq NamedBody683_1362 NamedBody683_1363

def NamedBody683_1365 : StackLang.HolProg 64 :=
.seq NamedBody683_1361 NamedBody683_1364

def NamedBody683_1366 : StackLang.HolProg 64 :=
.seq NamedBody683_1360 NamedBody683_1365

def NamedBody683_1367 : StackLang.HolProg 64 :=
.seq NamedBody683_1359 NamedBody683_1366

def NamedBody683_1368 : StackLang.HolProg 64 :=
.seq NamedBody683_1358 NamedBody683_1367

def NamedBody683_1369 : StackLang.HolProg 64 :=
.seq NamedBody683_1305 NamedBody683_1368

def NamedBody683_1370 : StackLang.HolProg 64 :=
.seq NamedBody683_1300 NamedBody683_1369

def NamedBody683_1371 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody683_1372 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.equal) 13 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 10) NamedBody683_1370 NamedBody683_1371

def NamedBody683_1373 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody683_1374 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody683_1375 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 10 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def NamedBody683_1376 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody683_1377 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 2846#64)

def NamedBody683_1378 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody683_1379 : StackLang.HolProg 64 :=
.seq NamedBody683_1377 NamedBody683_1378

def NamedBody683_1380 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody683_1381 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 2#64)

def NamedBody683_1382 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 10

def NamedBody683_1383 : StackLang.HolProg 64 :=
.seq NamedBody683_1381 NamedBody683_1382

def NamedBody683_1384 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody683_1385 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) NamedBody683_1383 NamedBody683_1384

def NamedBody683_1386 : StackLang.HolProg 64 :=
.seq NamedBody683_1380 NamedBody683_1385

def NamedBody683_1387 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def NamedBody683_1388 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody683_1389 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 683 37

def NamedBody683_1390 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody683_1391 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody683_1392 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody683_1393 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody683_1394 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def NamedBody683_1395 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def NamedBody683_1396 : StackLang.HolProg 64 :=
.seq NamedBody683_1394 NamedBody683_1395

def NamedBody683_1397 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def NamedBody683_1398 : StackLang.HolProg 64 :=
.seq NamedBody683_1396 NamedBody683_1397

def NamedBody683_1399 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody683_1400 : StackLang.HolProg 64 :=
.seq NamedBody683_1398 NamedBody683_1399

def NamedBody683_1401 : StackLang.HolProg 64 :=
.seq NamedBody683_1393 NamedBody683_1400

def NamedBody683_1402 : StackLang.HolProg 64 :=
.seq NamedBody683_1392 NamedBody683_1401

def NamedBody683_1403 : StackLang.HolProg 64 :=
.seq NamedBody683_1391 NamedBody683_1402

def NamedBody683_1404 : StackLang.HolProg 64 :=
.seq NamedBody683_1390 NamedBody683_1403

def NamedBody683_1405 : StackLang.HolProg 64 :=
.seq NamedBody683_1389 NamedBody683_1404

def NamedBody683_1406 : StackLang.HolProg 64 :=
.seq NamedBody683_1388 NamedBody683_1405

def NamedBody683_1407 : StackLang.HolProg 64 :=
.seq NamedBody683_1387 NamedBody683_1406

def NamedBody683_1408 : StackLang.HolProg 64 :=
.seq NamedBody683_1386 NamedBody683_1407

def NamedBody683_1409 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody683_1410 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody683_1411 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody683_1412 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody683_1413 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody683_1414 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody683_1415 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 11
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 144#64))

def NamedBody683_1416 : StackLang.HolProg 64 :=
.seq NamedBody683_1414 NamedBody683_1415

def NamedBody683_1417 : StackLang.HolProg 64 :=
.seq NamedBody683_1413 NamedBody683_1416

def NamedBody683_1418 : StackLang.HolProg 64 :=
.seq NamedBody683_1412 NamedBody683_1417

def NamedBody683_1419 : StackLang.HolProg 64 :=
.seq NamedBody683_1411 NamedBody683_1418

def NamedBody683_1420 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 11
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 144#64))

def NamedBody683_1421 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def NamedBody683_1422 : StackLang.HolProg 64 :=
.seq NamedBody683_1420 NamedBody683_1421

def NamedBody683_1423 : StackLang.HolProg 64 :=
.call (some (NamedBody683_1419, 1, 683, 36)) (Sum.inl 680) (some (NamedBody683_1422, 683, 37))

def NamedBody683_1424 : StackLang.HolProg 64 :=
.seq NamedBody683_1410 NamedBody683_1423

def NamedBody683_1425 : StackLang.HolProg 64 :=
.seq NamedBody683_1409 NamedBody683_1424

def NamedBody683_1426 : StackLang.HolProg 64 :=
.seq NamedBody683_1408 NamedBody683_1425

def NamedBody683_1427 : StackLang.HolProg 64 :=
.seq NamedBody683_1379 NamedBody683_1426

def NamedBody683_1428 : StackLang.HolProg 64 :=
.seq NamedBody683_1376 NamedBody683_1427

def NamedBody683_1429 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody683_1430 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 0#64)

def NamedBody683_1431 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody683_1432 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 160#64)))

def NamedBody683_1433 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 11

def NamedBody683_1434 : StackLang.HolProg 64 :=
.seq NamedBody683_1432 NamedBody683_1433

def NamedBody683_1435 : StackLang.HolProg 64 :=
.seq NamedBody683_1431 NamedBody683_1434

def NamedBody683_1436 : StackLang.HolProg 64 :=
.seq NamedBody683_1430 NamedBody683_1435

def NamedBody683_1437 : StackLang.HolProg 64 :=
.seq NamedBody683_1429 NamedBody683_1436

def NamedBody683_1438 : StackLang.HolProg 64 :=
.seq NamedBody683_1428 NamedBody683_1437

def NamedBody683_1439 : StackLang.HolProg 64 :=
.seq NamedBody683_1375 NamedBody683_1438

def NamedBody683_1440 : StackLang.HolProg 64 :=
.seq NamedBody683_1374 NamedBody683_1439

def NamedBody683_1441 : StackLang.HolProg 64 :=
.seq NamedBody683_1373 NamedBody683_1440

def NamedBody683_1442 : StackLang.HolProg 64 :=
.seq NamedBody683_1372 NamedBody683_1441

def NamedBody683_1443 : StackLang.HolProg 64 :=
.seq NamedBody683_1299 NamedBody683_1442

def NamedBody683_1444 : StackLang.HolProg 64 :=
.seq NamedBody683_1298 NamedBody683_1443

def NamedBody683_1445 : StackLang.HolProg 64 :=
.seq NamedBody683_1297 NamedBody683_1444

def NamedBody683_1446 : StackLang.HolProg 64 :=
.seq NamedBody683_1296 NamedBody683_1445

def NamedBody683_1447 : StackLang.HolProg 64 :=
.seq NamedBody683_1231 NamedBody683_1446

def NamedBody683_1448 : StackLang.HolProg 64 :=
.seq NamedBody683_1228 NamedBody683_1447

def NamedBody683_1449 : StackLang.HolProg 64 :=
.seq NamedBody683_1227 NamedBody683_1448

def NamedBody683_1450 : StackLang.HolProg 64 :=
.seq NamedBody683_1172 NamedBody683_1449

def NamedBody683_1451 : StackLang.HolProg 64 :=
.seq NamedBody683_1147 NamedBody683_1450

def NamedBody683_1452 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody683_1453 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.equal) 11 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 10) NamedBody683_1451 NamedBody683_1452

def NamedBody683_1454 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody683_1455 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody683_1456 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 10 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def NamedBody683_1457 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 144#64))

def NamedBody683_1458 : StackLang.HolProg 64 :=
.seq NamedBody683_1456 NamedBody683_1457

def NamedBody683_1459 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody683_1460 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 2847#64)

def NamedBody683_1461 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody683_1462 : StackLang.HolProg 64 :=
.seq NamedBody683_1460 NamedBody683_1461

def NamedBody683_1463 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody683_1464 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 2#64)

def NamedBody683_1465 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 10

def NamedBody683_1466 : StackLang.HolProg 64 :=
.seq NamedBody683_1464 NamedBody683_1465

def NamedBody683_1467 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody683_1468 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) NamedBody683_1466 NamedBody683_1467

def NamedBody683_1469 : StackLang.HolProg 64 :=
.seq NamedBody683_1463 NamedBody683_1468

def NamedBody683_1470 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def NamedBody683_1471 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody683_1472 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 683 39

def NamedBody683_1473 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody683_1474 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody683_1475 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody683_1476 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody683_1477 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def NamedBody683_1478 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def NamedBody683_1479 : StackLang.HolProg 64 :=
.seq NamedBody683_1477 NamedBody683_1478

def NamedBody683_1480 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def NamedBody683_1481 : StackLang.HolProg 64 :=
.seq NamedBody683_1479 NamedBody683_1480

def NamedBody683_1482 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody683_1483 : StackLang.HolProg 64 :=
.seq NamedBody683_1481 NamedBody683_1482

def NamedBody683_1484 : StackLang.HolProg 64 :=
.seq NamedBody683_1476 NamedBody683_1483

def NamedBody683_1485 : StackLang.HolProg 64 :=
.seq NamedBody683_1475 NamedBody683_1484

def NamedBody683_1486 : StackLang.HolProg 64 :=
.seq NamedBody683_1474 NamedBody683_1485

def NamedBody683_1487 : StackLang.HolProg 64 :=
.seq NamedBody683_1473 NamedBody683_1486

def NamedBody683_1488 : StackLang.HolProg 64 :=
.seq NamedBody683_1472 NamedBody683_1487

def NamedBody683_1489 : StackLang.HolProg 64 :=
.seq NamedBody683_1471 NamedBody683_1488

def NamedBody683_1490 : StackLang.HolProg 64 :=
.seq NamedBody683_1470 NamedBody683_1489

def NamedBody683_1491 : StackLang.HolProg 64 :=
.seq NamedBody683_1469 NamedBody683_1490

def NamedBody683_1492 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody683_1493 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody683_1494 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody683_1495 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody683_1496 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody683_1497 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody683_1498 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 11 10
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 10)))

def NamedBody683_1499 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 144#64))

def NamedBody683_1500 : StackLang.HolProg 64 :=
.seq NamedBody683_1498 NamedBody683_1499

def NamedBody683_1501 : StackLang.HolProg 64 :=
.seq NamedBody683_1497 NamedBody683_1500

def NamedBody683_1502 : StackLang.HolProg 64 :=
.seq NamedBody683_1496 NamedBody683_1501

def NamedBody683_1503 : StackLang.HolProg 64 :=
.seq NamedBody683_1495 NamedBody683_1502

def NamedBody683_1504 : StackLang.HolProg 64 :=
.seq NamedBody683_1494 NamedBody683_1503

def NamedBody683_1505 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 144#64))

def NamedBody683_1506 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def NamedBody683_1507 : StackLang.HolProg 64 :=
.seq NamedBody683_1505 NamedBody683_1506

def NamedBody683_1508 : StackLang.HolProg 64 :=
.call (some (NamedBody683_1504, 1, 683, 38)) (Sum.inl 68) (some (NamedBody683_1507, 683, 39))

def NamedBody683_1509 : StackLang.HolProg 64 :=
.seq NamedBody683_1493 NamedBody683_1508

def NamedBody683_1510 : StackLang.HolProg 64 :=
.seq NamedBody683_1492 NamedBody683_1509

def NamedBody683_1511 : StackLang.HolProg 64 :=
.seq NamedBody683_1491 NamedBody683_1510

def NamedBody683_1512 : StackLang.HolProg 64 :=
.seq NamedBody683_1462 NamedBody683_1511

def NamedBody683_1513 : StackLang.HolProg 64 :=
.seq NamedBody683_1459 NamedBody683_1512

def NamedBody683_1514 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody683_1515 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 10 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def NamedBody683_1516 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 144#64))

def NamedBody683_1517 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 11
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 72#64))

def NamedBody683_1518 : StackLang.HolProg 64 :=
.seq NamedBody683_1516 NamedBody683_1517

def NamedBody683_1519 : StackLang.HolProg 64 :=
.seq NamedBody683_1515 NamedBody683_1518

def NamedBody683_1520 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody683_1521 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 2848#64)

def NamedBody683_1522 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody683_1523 : StackLang.HolProg 64 :=
.seq NamedBody683_1521 NamedBody683_1522

def NamedBody683_1524 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody683_1525 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 2#64)

def NamedBody683_1526 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 10

def NamedBody683_1527 : StackLang.HolProg 64 :=
.seq NamedBody683_1525 NamedBody683_1526

def NamedBody683_1528 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody683_1529 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) NamedBody683_1527 NamedBody683_1528

def NamedBody683_1530 : StackLang.HolProg 64 :=
.seq NamedBody683_1524 NamedBody683_1529

def NamedBody683_1531 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def NamedBody683_1532 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody683_1533 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 683 41

def NamedBody683_1534 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody683_1535 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody683_1536 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody683_1537 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody683_1538 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def NamedBody683_1539 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def NamedBody683_1540 : StackLang.HolProg 64 :=
.seq NamedBody683_1538 NamedBody683_1539

def NamedBody683_1541 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def NamedBody683_1542 : StackLang.HolProg 64 :=
.seq NamedBody683_1540 NamedBody683_1541

def NamedBody683_1543 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody683_1544 : StackLang.HolProg 64 :=
.seq NamedBody683_1542 NamedBody683_1543

def NamedBody683_1545 : StackLang.HolProg 64 :=
.seq NamedBody683_1537 NamedBody683_1544

def NamedBody683_1546 : StackLang.HolProg 64 :=
.seq NamedBody683_1536 NamedBody683_1545

def NamedBody683_1547 : StackLang.HolProg 64 :=
.seq NamedBody683_1535 NamedBody683_1546

def NamedBody683_1548 : StackLang.HolProg 64 :=
.seq NamedBody683_1534 NamedBody683_1547

def NamedBody683_1549 : StackLang.HolProg 64 :=
.seq NamedBody683_1533 NamedBody683_1548

def NamedBody683_1550 : StackLang.HolProg 64 :=
.seq NamedBody683_1532 NamedBody683_1549

def NamedBody683_1551 : StackLang.HolProg 64 :=
.seq NamedBody683_1531 NamedBody683_1550

def NamedBody683_1552 : StackLang.HolProg 64 :=
.seq NamedBody683_1530 NamedBody683_1551

def NamedBody683_1553 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody683_1554 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody683_1555 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody683_1556 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody683_1557 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody683_1558 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody683_1559 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 11 10
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 10)))

def NamedBody683_1560 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 144#64))

def NamedBody683_1561 : StackLang.HolProg 64 :=
.seq NamedBody683_1559 NamedBody683_1560

def NamedBody683_1562 : StackLang.HolProg 64 :=
.seq NamedBody683_1558 NamedBody683_1561

def NamedBody683_1563 : StackLang.HolProg 64 :=
.seq NamedBody683_1557 NamedBody683_1562

def NamedBody683_1564 : StackLang.HolProg 64 :=
.seq NamedBody683_1556 NamedBody683_1563

def NamedBody683_1565 : StackLang.HolProg 64 :=
.seq NamedBody683_1555 NamedBody683_1564

def NamedBody683_1566 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 144#64))

def NamedBody683_1567 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def NamedBody683_1568 : StackLang.HolProg 64 :=
.seq NamedBody683_1566 NamedBody683_1567

def NamedBody683_1569 : StackLang.HolProg 64 :=
.call (some (NamedBody683_1565, 1, 683, 40)) (Sum.inl 68) (some (NamedBody683_1568, 683, 41))

def NamedBody683_1570 : StackLang.HolProg 64 :=
.seq NamedBody683_1554 NamedBody683_1569

def NamedBody683_1571 : StackLang.HolProg 64 :=
.seq NamedBody683_1553 NamedBody683_1570

def NamedBody683_1572 : StackLang.HolProg 64 :=
.seq NamedBody683_1552 NamedBody683_1571

def NamedBody683_1573 : StackLang.HolProg 64 :=
.seq NamedBody683_1523 NamedBody683_1572

def NamedBody683_1574 : StackLang.HolProg 64 :=
.seq NamedBody683_1520 NamedBody683_1573

def NamedBody683_1575 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody683_1576 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 10 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def NamedBody683_1577 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 144#64))

def NamedBody683_1578 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 11
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody683_1579 : StackLang.HolProg 64 :=
.seq NamedBody683_1577 NamedBody683_1578

def NamedBody683_1580 : StackLang.HolProg 64 :=
.seq NamedBody683_1576 NamedBody683_1579

def NamedBody683_1581 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody683_1582 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 2849#64)

def NamedBody683_1583 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody683_1584 : StackLang.HolProg 64 :=
.seq NamedBody683_1582 NamedBody683_1583

def NamedBody683_1585 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody683_1586 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 2#64)

def NamedBody683_1587 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 10

def NamedBody683_1588 : StackLang.HolProg 64 :=
.seq NamedBody683_1586 NamedBody683_1587

def NamedBody683_1589 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody683_1590 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) NamedBody683_1588 NamedBody683_1589

def NamedBody683_1591 : StackLang.HolProg 64 :=
.seq NamedBody683_1585 NamedBody683_1590

def NamedBody683_1592 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def NamedBody683_1593 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody683_1594 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 683 43

def NamedBody683_1595 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody683_1596 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody683_1597 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody683_1598 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody683_1599 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def NamedBody683_1600 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def NamedBody683_1601 : StackLang.HolProg 64 :=
.seq NamedBody683_1599 NamedBody683_1600

def NamedBody683_1602 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def NamedBody683_1603 : StackLang.HolProg 64 :=
.seq NamedBody683_1601 NamedBody683_1602

def NamedBody683_1604 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody683_1605 : StackLang.HolProg 64 :=
.seq NamedBody683_1603 NamedBody683_1604

def NamedBody683_1606 : StackLang.HolProg 64 :=
.seq NamedBody683_1598 NamedBody683_1605

def NamedBody683_1607 : StackLang.HolProg 64 :=
.seq NamedBody683_1597 NamedBody683_1606

def NamedBody683_1608 : StackLang.HolProg 64 :=
.seq NamedBody683_1596 NamedBody683_1607

def NamedBody683_1609 : StackLang.HolProg 64 :=
.seq NamedBody683_1595 NamedBody683_1608

def NamedBody683_1610 : StackLang.HolProg 64 :=
.seq NamedBody683_1594 NamedBody683_1609

def NamedBody683_1611 : StackLang.HolProg 64 :=
.seq NamedBody683_1593 NamedBody683_1610

def NamedBody683_1612 : StackLang.HolProg 64 :=
.seq NamedBody683_1592 NamedBody683_1611

def NamedBody683_1613 : StackLang.HolProg 64 :=
.seq NamedBody683_1591 NamedBody683_1612

def NamedBody683_1614 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody683_1615 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody683_1616 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody683_1617 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody683_1618 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody683_1619 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody683_1620 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 11 10
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 10)))

def NamedBody683_1621 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 144#64))

def NamedBody683_1622 : StackLang.HolProg 64 :=
.seq NamedBody683_1620 NamedBody683_1621

def NamedBody683_1623 : StackLang.HolProg 64 :=
.seq NamedBody683_1619 NamedBody683_1622

def NamedBody683_1624 : StackLang.HolProg 64 :=
.seq NamedBody683_1618 NamedBody683_1623

def NamedBody683_1625 : StackLang.HolProg 64 :=
.seq NamedBody683_1617 NamedBody683_1624

def NamedBody683_1626 : StackLang.HolProg 64 :=
.seq NamedBody683_1616 NamedBody683_1625

def NamedBody683_1627 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 144#64))

def NamedBody683_1628 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def NamedBody683_1629 : StackLang.HolProg 64 :=
.seq NamedBody683_1627 NamedBody683_1628

def NamedBody683_1630 : StackLang.HolProg 64 :=
.call (some (NamedBody683_1626, 1, 683, 42)) (Sum.inl 68) (some (NamedBody683_1629, 683, 43))

def NamedBody683_1631 : StackLang.HolProg 64 :=
.seq NamedBody683_1615 NamedBody683_1630

def NamedBody683_1632 : StackLang.HolProg 64 :=
.seq NamedBody683_1614 NamedBody683_1631

def NamedBody683_1633 : StackLang.HolProg 64 :=
.seq NamedBody683_1613 NamedBody683_1632

def NamedBody683_1634 : StackLang.HolProg 64 :=
.seq NamedBody683_1584 NamedBody683_1633

def NamedBody683_1635 : StackLang.HolProg 64 :=
.seq NamedBody683_1581 NamedBody683_1634

def NamedBody683_1636 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody683_1637 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 10 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def NamedBody683_1638 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 11
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 144#64))

def NamedBody683_1639 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 136#64))

def NamedBody683_1640 : StackLang.HolProg 64 :=
.seq NamedBody683_1638 NamedBody683_1639

def NamedBody683_1641 : StackLang.HolProg 64 :=
.seq NamedBody683_1637 NamedBody683_1640

def NamedBody683_1642 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody683_1643 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 2850#64)

def NamedBody683_1644 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody683_1645 : StackLang.HolProg 64 :=
.seq NamedBody683_1643 NamedBody683_1644

def NamedBody683_1646 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody683_1647 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 2#64)

def NamedBody683_1648 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 10

def NamedBody683_1649 : StackLang.HolProg 64 :=
.seq NamedBody683_1647 NamedBody683_1648

def NamedBody683_1650 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody683_1651 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) NamedBody683_1649 NamedBody683_1650

def NamedBody683_1652 : StackLang.HolProg 64 :=
.seq NamedBody683_1646 NamedBody683_1651

def NamedBody683_1653 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def NamedBody683_1654 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody683_1655 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 683 45

def NamedBody683_1656 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody683_1657 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody683_1658 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody683_1659 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody683_1660 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def NamedBody683_1661 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def NamedBody683_1662 : StackLang.HolProg 64 :=
.seq NamedBody683_1660 NamedBody683_1661

def NamedBody683_1663 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def NamedBody683_1664 : StackLang.HolProg 64 :=
.seq NamedBody683_1662 NamedBody683_1663

def NamedBody683_1665 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody683_1666 : StackLang.HolProg 64 :=
.seq NamedBody683_1664 NamedBody683_1665

def NamedBody683_1667 : StackLang.HolProg 64 :=
.seq NamedBody683_1659 NamedBody683_1666

def NamedBody683_1668 : StackLang.HolProg 64 :=
.seq NamedBody683_1658 NamedBody683_1667

def NamedBody683_1669 : StackLang.HolProg 64 :=
.seq NamedBody683_1657 NamedBody683_1668

def NamedBody683_1670 : StackLang.HolProg 64 :=
.seq NamedBody683_1656 NamedBody683_1669

def NamedBody683_1671 : StackLang.HolProg 64 :=
.seq NamedBody683_1655 NamedBody683_1670

def NamedBody683_1672 : StackLang.HolProg 64 :=
.seq NamedBody683_1654 NamedBody683_1671

def NamedBody683_1673 : StackLang.HolProg 64 :=
.seq NamedBody683_1653 NamedBody683_1672

def NamedBody683_1674 : StackLang.HolProg 64 :=
.seq NamedBody683_1652 NamedBody683_1673

def NamedBody683_1675 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody683_1676 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody683_1677 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody683_1678 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody683_1679 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody683_1680 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody683_1681 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 11 10
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 10)))

def NamedBody683_1682 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 136#64))

def NamedBody683_1683 : StackLang.HolProg 64 :=
.seq NamedBody683_1681 NamedBody683_1682

def NamedBody683_1684 : StackLang.HolProg 64 :=
.seq NamedBody683_1680 NamedBody683_1683

def NamedBody683_1685 : StackLang.HolProg 64 :=
.seq NamedBody683_1679 NamedBody683_1684

def NamedBody683_1686 : StackLang.HolProg 64 :=
.seq NamedBody683_1678 NamedBody683_1685

def NamedBody683_1687 : StackLang.HolProg 64 :=
.seq NamedBody683_1677 NamedBody683_1686

def NamedBody683_1688 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 136#64))

def NamedBody683_1689 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def NamedBody683_1690 : StackLang.HolProg 64 :=
.seq NamedBody683_1688 NamedBody683_1689

def NamedBody683_1691 : StackLang.HolProg 64 :=
.call (some (NamedBody683_1687, 1, 683, 44)) (Sum.inl 68) (some (NamedBody683_1690, 683, 45))

def NamedBody683_1692 : StackLang.HolProg 64 :=
.seq NamedBody683_1676 NamedBody683_1691

def NamedBody683_1693 : StackLang.HolProg 64 :=
.seq NamedBody683_1675 NamedBody683_1692

def NamedBody683_1694 : StackLang.HolProg 64 :=
.seq NamedBody683_1674 NamedBody683_1693

def NamedBody683_1695 : StackLang.HolProg 64 :=
.seq NamedBody683_1645 NamedBody683_1694

def NamedBody683_1696 : StackLang.HolProg 64 :=
.seq NamedBody683_1642 NamedBody683_1695

def NamedBody683_1697 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody683_1698 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 10 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def NamedBody683_1699 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 136#64))

def NamedBody683_1700 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 11
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 80#64))

def NamedBody683_1701 : StackLang.HolProg 64 :=
.seq NamedBody683_1699 NamedBody683_1700

def NamedBody683_1702 : StackLang.HolProg 64 :=
.seq NamedBody683_1698 NamedBody683_1701

def NamedBody683_1703 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody683_1704 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 2851#64)

def NamedBody683_1705 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody683_1706 : StackLang.HolProg 64 :=
.seq NamedBody683_1704 NamedBody683_1705

def NamedBody683_1707 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody683_1708 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 2#64)

def NamedBody683_1709 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 10

def NamedBody683_1710 : StackLang.HolProg 64 :=
.seq NamedBody683_1708 NamedBody683_1709

def NamedBody683_1711 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody683_1712 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) NamedBody683_1710 NamedBody683_1711

def NamedBody683_1713 : StackLang.HolProg 64 :=
.seq NamedBody683_1707 NamedBody683_1712

def NamedBody683_1714 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def NamedBody683_1715 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody683_1716 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 683 47

def NamedBody683_1717 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody683_1718 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody683_1719 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody683_1720 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody683_1721 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def NamedBody683_1722 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def NamedBody683_1723 : StackLang.HolProg 64 :=
.seq NamedBody683_1721 NamedBody683_1722

def NamedBody683_1724 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def NamedBody683_1725 : StackLang.HolProg 64 :=
.seq NamedBody683_1723 NamedBody683_1724

def NamedBody683_1726 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody683_1727 : StackLang.HolProg 64 :=
.seq NamedBody683_1725 NamedBody683_1726

def NamedBody683_1728 : StackLang.HolProg 64 :=
.seq NamedBody683_1720 NamedBody683_1727

def NamedBody683_1729 : StackLang.HolProg 64 :=
.seq NamedBody683_1719 NamedBody683_1728

def NamedBody683_1730 : StackLang.HolProg 64 :=
.seq NamedBody683_1718 NamedBody683_1729

def NamedBody683_1731 : StackLang.HolProg 64 :=
.seq NamedBody683_1717 NamedBody683_1730

def NamedBody683_1732 : StackLang.HolProg 64 :=
.seq NamedBody683_1716 NamedBody683_1731

def NamedBody683_1733 : StackLang.HolProg 64 :=
.seq NamedBody683_1715 NamedBody683_1732

def NamedBody683_1734 : StackLang.HolProg 64 :=
.seq NamedBody683_1714 NamedBody683_1733

def NamedBody683_1735 : StackLang.HolProg 64 :=
.seq NamedBody683_1713 NamedBody683_1734

def NamedBody683_1736 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody683_1737 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody683_1738 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody683_1739 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody683_1740 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody683_1741 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody683_1742 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 11 10
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 10)))

def NamedBody683_1743 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 136#64))

def NamedBody683_1744 : StackLang.HolProg 64 :=
.seq NamedBody683_1742 NamedBody683_1743

def NamedBody683_1745 : StackLang.HolProg 64 :=
.seq NamedBody683_1741 NamedBody683_1744

def NamedBody683_1746 : StackLang.HolProg 64 :=
.seq NamedBody683_1740 NamedBody683_1745

def NamedBody683_1747 : StackLang.HolProg 64 :=
.seq NamedBody683_1739 NamedBody683_1746

def NamedBody683_1748 : StackLang.HolProg 64 :=
.seq NamedBody683_1738 NamedBody683_1747

def NamedBody683_1749 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 136#64))

def NamedBody683_1750 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def NamedBody683_1751 : StackLang.HolProg 64 :=
.seq NamedBody683_1749 NamedBody683_1750

def NamedBody683_1752 : StackLang.HolProg 64 :=
.call (some (NamedBody683_1748, 1, 683, 46)) (Sum.inl 68) (some (NamedBody683_1751, 683, 47))

def NamedBody683_1753 : StackLang.HolProg 64 :=
.seq NamedBody683_1737 NamedBody683_1752

def NamedBody683_1754 : StackLang.HolProg 64 :=
.seq NamedBody683_1736 NamedBody683_1753

def NamedBody683_1755 : StackLang.HolProg 64 :=
.seq NamedBody683_1735 NamedBody683_1754

def NamedBody683_1756 : StackLang.HolProg 64 :=
.seq NamedBody683_1706 NamedBody683_1755

def NamedBody683_1757 : StackLang.HolProg 64 :=
.seq NamedBody683_1703 NamedBody683_1756

def NamedBody683_1758 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody683_1759 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 10 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def NamedBody683_1760 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 11
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 136#64))

def NamedBody683_1761 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 104#64))

def NamedBody683_1762 : StackLang.HolProg 64 :=
.seq NamedBody683_1760 NamedBody683_1761

def NamedBody683_1763 : StackLang.HolProg 64 :=
.seq NamedBody683_1759 NamedBody683_1762

def NamedBody683_1764 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody683_1765 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 2852#64)

def NamedBody683_1766 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody683_1767 : StackLang.HolProg 64 :=
.seq NamedBody683_1765 NamedBody683_1766

def NamedBody683_1768 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody683_1769 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 2#64)

def NamedBody683_1770 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 10

def NamedBody683_1771 : StackLang.HolProg 64 :=
.seq NamedBody683_1769 NamedBody683_1770

def NamedBody683_1772 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody683_1773 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) NamedBody683_1771 NamedBody683_1772

def NamedBody683_1774 : StackLang.HolProg 64 :=
.seq NamedBody683_1768 NamedBody683_1773

def NamedBody683_1775 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def NamedBody683_1776 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody683_1777 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 683 49

def NamedBody683_1778 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody683_1779 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody683_1780 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody683_1781 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody683_1782 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def NamedBody683_1783 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def NamedBody683_1784 : StackLang.HolProg 64 :=
.seq NamedBody683_1782 NamedBody683_1783

def NamedBody683_1785 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def NamedBody683_1786 : StackLang.HolProg 64 :=
.seq NamedBody683_1784 NamedBody683_1785

def NamedBody683_1787 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody683_1788 : StackLang.HolProg 64 :=
.seq NamedBody683_1786 NamedBody683_1787

def NamedBody683_1789 : StackLang.HolProg 64 :=
.seq NamedBody683_1781 NamedBody683_1788

def NamedBody683_1790 : StackLang.HolProg 64 :=
.seq NamedBody683_1780 NamedBody683_1789

def NamedBody683_1791 : StackLang.HolProg 64 :=
.seq NamedBody683_1779 NamedBody683_1790

def NamedBody683_1792 : StackLang.HolProg 64 :=
.seq NamedBody683_1778 NamedBody683_1791

def NamedBody683_1793 : StackLang.HolProg 64 :=
.seq NamedBody683_1777 NamedBody683_1792

def NamedBody683_1794 : StackLang.HolProg 64 :=
.seq NamedBody683_1776 NamedBody683_1793

def NamedBody683_1795 : StackLang.HolProg 64 :=
.seq NamedBody683_1775 NamedBody683_1794

def NamedBody683_1796 : StackLang.HolProg 64 :=
.seq NamedBody683_1774 NamedBody683_1795

def NamedBody683_1797 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody683_1798 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody683_1799 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody683_1800 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody683_1801 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody683_1802 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody683_1803 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 11 10
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 10)))

def NamedBody683_1804 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 104#64))

def NamedBody683_1805 : StackLang.HolProg 64 :=
.seq NamedBody683_1803 NamedBody683_1804

def NamedBody683_1806 : StackLang.HolProg 64 :=
.seq NamedBody683_1802 NamedBody683_1805

def NamedBody683_1807 : StackLang.HolProg 64 :=
.seq NamedBody683_1801 NamedBody683_1806

def NamedBody683_1808 : StackLang.HolProg 64 :=
.seq NamedBody683_1800 NamedBody683_1807

def NamedBody683_1809 : StackLang.HolProg 64 :=
.seq NamedBody683_1799 NamedBody683_1808

def NamedBody683_1810 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 104#64))

def NamedBody683_1811 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def NamedBody683_1812 : StackLang.HolProg 64 :=
.seq NamedBody683_1810 NamedBody683_1811

def NamedBody683_1813 : StackLang.HolProg 64 :=
.call (some (NamedBody683_1809, 1, 683, 48)) (Sum.inl 68) (some (NamedBody683_1812, 683, 49))

def NamedBody683_1814 : StackLang.HolProg 64 :=
.seq NamedBody683_1798 NamedBody683_1813

def NamedBody683_1815 : StackLang.HolProg 64 :=
.seq NamedBody683_1797 NamedBody683_1814

def NamedBody683_1816 : StackLang.HolProg 64 :=
.seq NamedBody683_1796 NamedBody683_1815

def NamedBody683_1817 : StackLang.HolProg 64 :=
.seq NamedBody683_1767 NamedBody683_1816

def NamedBody683_1818 : StackLang.HolProg 64 :=
.seq NamedBody683_1764 NamedBody683_1817

def NamedBody683_1819 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody683_1820 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 10 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def NamedBody683_1821 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 104#64))

def NamedBody683_1822 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 11
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 48#64))

def NamedBody683_1823 : StackLang.HolProg 64 :=
.seq NamedBody683_1821 NamedBody683_1822

def NamedBody683_1824 : StackLang.HolProg 64 :=
.seq NamedBody683_1820 NamedBody683_1823

def NamedBody683_1825 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody683_1826 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 2853#64)

def NamedBody683_1827 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody683_1828 : StackLang.HolProg 64 :=
.seq NamedBody683_1826 NamedBody683_1827

def NamedBody683_1829 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody683_1830 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 2#64)

def NamedBody683_1831 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 10

def NamedBody683_1832 : StackLang.HolProg 64 :=
.seq NamedBody683_1830 NamedBody683_1831

def NamedBody683_1833 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody683_1834 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) NamedBody683_1832 NamedBody683_1833

def NamedBody683_1835 : StackLang.HolProg 64 :=
.seq NamedBody683_1829 NamedBody683_1834

def NamedBody683_1836 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def NamedBody683_1837 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody683_1838 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 683 51

def NamedBody683_1839 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody683_1840 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody683_1841 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody683_1842 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody683_1843 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def NamedBody683_1844 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def NamedBody683_1845 : StackLang.HolProg 64 :=
.seq NamedBody683_1843 NamedBody683_1844

def NamedBody683_1846 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def NamedBody683_1847 : StackLang.HolProg 64 :=
.seq NamedBody683_1845 NamedBody683_1846

def NamedBody683_1848 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody683_1849 : StackLang.HolProg 64 :=
.seq NamedBody683_1847 NamedBody683_1848

def NamedBody683_1850 : StackLang.HolProg 64 :=
.seq NamedBody683_1842 NamedBody683_1849

def NamedBody683_1851 : StackLang.HolProg 64 :=
.seq NamedBody683_1841 NamedBody683_1850

def NamedBody683_1852 : StackLang.HolProg 64 :=
.seq NamedBody683_1840 NamedBody683_1851

def NamedBody683_1853 : StackLang.HolProg 64 :=
.seq NamedBody683_1839 NamedBody683_1852

def NamedBody683_1854 : StackLang.HolProg 64 :=
.seq NamedBody683_1838 NamedBody683_1853

def NamedBody683_1855 : StackLang.HolProg 64 :=
.seq NamedBody683_1837 NamedBody683_1854

def NamedBody683_1856 : StackLang.HolProg 64 :=
.seq NamedBody683_1836 NamedBody683_1855

def NamedBody683_1857 : StackLang.HolProg 64 :=
.seq NamedBody683_1835 NamedBody683_1856

def NamedBody683_1858 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody683_1859 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody683_1860 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody683_1861 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody683_1862 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody683_1863 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody683_1864 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 11 10
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 10)))

def NamedBody683_1865 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 104#64))

def NamedBody683_1866 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 96#64))

def NamedBody683_1867 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 104#64))

def NamedBody683_1868 : StackLang.HolProg 64 :=
.seq NamedBody683_1866 NamedBody683_1867

def NamedBody683_1869 : StackLang.HolProg 64 :=
.seq NamedBody683_1865 NamedBody683_1868

def NamedBody683_1870 : StackLang.HolProg 64 :=
.seq NamedBody683_1864 NamedBody683_1869

def NamedBody683_1871 : StackLang.HolProg 64 :=
.seq NamedBody683_1863 NamedBody683_1870

def NamedBody683_1872 : StackLang.HolProg 64 :=
.seq NamedBody683_1862 NamedBody683_1871

def NamedBody683_1873 : StackLang.HolProg 64 :=
.seq NamedBody683_1861 NamedBody683_1872

def NamedBody683_1874 : StackLang.HolProg 64 :=
.seq NamedBody683_1860 NamedBody683_1873

def NamedBody683_1875 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 104#64))

def NamedBody683_1876 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 96#64))

def NamedBody683_1877 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 104#64))

def NamedBody683_1878 : StackLang.HolProg 64 :=
.seq NamedBody683_1876 NamedBody683_1877

def NamedBody683_1879 : StackLang.HolProg 64 :=
.seq NamedBody683_1875 NamedBody683_1878

def NamedBody683_1880 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def NamedBody683_1881 : StackLang.HolProg 64 :=
.seq NamedBody683_1879 NamedBody683_1880

def NamedBody683_1882 : StackLang.HolProg 64 :=
.call (some (NamedBody683_1874, 1, 683, 50)) (Sum.inl 68) (some (NamedBody683_1881, 683, 51))

def NamedBody683_1883 : StackLang.HolProg 64 :=
.seq NamedBody683_1859 NamedBody683_1882

def NamedBody683_1884 : StackLang.HolProg 64 :=
.seq NamedBody683_1858 NamedBody683_1883

def NamedBody683_1885 : StackLang.HolProg 64 :=
.seq NamedBody683_1857 NamedBody683_1884

def NamedBody683_1886 : StackLang.HolProg 64 :=
.seq NamedBody683_1828 NamedBody683_1885

def NamedBody683_1887 : StackLang.HolProg 64 :=
.seq NamedBody683_1825 NamedBody683_1886

def NamedBody683_1888 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody683_1889 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 10 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def NamedBody683_1890 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 96#64))

def NamedBody683_1891 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 11
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 88#64))

def NamedBody683_1892 : StackLang.HolProg 64 :=
.seq NamedBody683_1890 NamedBody683_1891

def NamedBody683_1893 : StackLang.HolProg 64 :=
.seq NamedBody683_1889 NamedBody683_1892

def NamedBody683_1894 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody683_1895 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 2854#64)

def NamedBody683_1896 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody683_1897 : StackLang.HolProg 64 :=
.seq NamedBody683_1895 NamedBody683_1896

def NamedBody683_1898 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody683_1899 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 2#64)

def NamedBody683_1900 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 10

def NamedBody683_1901 : StackLang.HolProg 64 :=
.seq NamedBody683_1899 NamedBody683_1900

def NamedBody683_1902 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody683_1903 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) NamedBody683_1901 NamedBody683_1902

def NamedBody683_1904 : StackLang.HolProg 64 :=
.seq NamedBody683_1898 NamedBody683_1903

def NamedBody683_1905 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def NamedBody683_1906 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody683_1907 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 683 53

def NamedBody683_1908 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody683_1909 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody683_1910 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody683_1911 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody683_1912 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def NamedBody683_1913 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def NamedBody683_1914 : StackLang.HolProg 64 :=
.seq NamedBody683_1912 NamedBody683_1913

def NamedBody683_1915 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def NamedBody683_1916 : StackLang.HolProg 64 :=
.seq NamedBody683_1914 NamedBody683_1915

def NamedBody683_1917 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody683_1918 : StackLang.HolProg 64 :=
.seq NamedBody683_1916 NamedBody683_1917

def NamedBody683_1919 : StackLang.HolProg 64 :=
.seq NamedBody683_1911 NamedBody683_1918

def NamedBody683_1920 : StackLang.HolProg 64 :=
.seq NamedBody683_1910 NamedBody683_1919

def NamedBody683_1921 : StackLang.HolProg 64 :=
.seq NamedBody683_1909 NamedBody683_1920

def NamedBody683_1922 : StackLang.HolProg 64 :=
.seq NamedBody683_1908 NamedBody683_1921

def NamedBody683_1923 : StackLang.HolProg 64 :=
.seq NamedBody683_1907 NamedBody683_1922

def NamedBody683_1924 : StackLang.HolProg 64 :=
.seq NamedBody683_1906 NamedBody683_1923

def NamedBody683_1925 : StackLang.HolProg 64 :=
.seq NamedBody683_1905 NamedBody683_1924

def NamedBody683_1926 : StackLang.HolProg 64 :=
.seq NamedBody683_1904 NamedBody683_1925

def NamedBody683_1927 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody683_1928 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody683_1929 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody683_1930 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody683_1931 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody683_1932 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody683_1933 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 5 10
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 10)))

def NamedBody683_1934 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 13
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 120#64))

def NamedBody683_1935 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 104#64))

def NamedBody683_1936 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 11
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 72#64))

def NamedBody683_1937 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 12
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 56#64))

def NamedBody683_1938 : StackLang.HolProg 64 :=
.seq NamedBody683_1936 NamedBody683_1937

def NamedBody683_1939 : StackLang.HolProg 64 :=
.seq NamedBody683_1935 NamedBody683_1938

def NamedBody683_1940 : StackLang.HolProg 64 :=
.seq NamedBody683_1934 NamedBody683_1939

def NamedBody683_1941 : StackLang.HolProg 64 :=
.seq NamedBody683_1933 NamedBody683_1940

def NamedBody683_1942 : StackLang.HolProg 64 :=
.seq NamedBody683_1932 NamedBody683_1941

def NamedBody683_1943 : StackLang.HolProg 64 :=
.seq NamedBody683_1931 NamedBody683_1942

def NamedBody683_1944 : StackLang.HolProg 64 :=
.seq NamedBody683_1930 NamedBody683_1943

def NamedBody683_1945 : StackLang.HolProg 64 :=
.seq NamedBody683_1929 NamedBody683_1944

def NamedBody683_1946 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 13
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 120#64))

def NamedBody683_1947 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 104#64))

def NamedBody683_1948 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 11
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 72#64))

def NamedBody683_1949 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 12
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 56#64))

def NamedBody683_1950 : StackLang.HolProg 64 :=
.seq NamedBody683_1948 NamedBody683_1949

def NamedBody683_1951 : StackLang.HolProg 64 :=
.seq NamedBody683_1947 NamedBody683_1950

def NamedBody683_1952 : StackLang.HolProg 64 :=
.seq NamedBody683_1946 NamedBody683_1951

def NamedBody683_1953 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def NamedBody683_1954 : StackLang.HolProg 64 :=
.seq NamedBody683_1952 NamedBody683_1953

def NamedBody683_1955 : StackLang.HolProg 64 :=
.call (some (NamedBody683_1945, 1, 683, 52)) (Sum.inl 68) (some (NamedBody683_1954, 683, 53))

def NamedBody683_1956 : StackLang.HolProg 64 :=
.seq NamedBody683_1928 NamedBody683_1955

def NamedBody683_1957 : StackLang.HolProg 64 :=
.seq NamedBody683_1927 NamedBody683_1956

def NamedBody683_1958 : StackLang.HolProg 64 :=
.seq NamedBody683_1926 NamedBody683_1957

def NamedBody683_1959 : StackLang.HolProg 64 :=
.seq NamedBody683_1897 NamedBody683_1958

def NamedBody683_1960 : StackLang.HolProg 64 :=
.seq NamedBody683_1894 NamedBody683_1959

def NamedBody683_1961 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody683_1962 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 10 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def NamedBody683_1963 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 5
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 120#64))

def NamedBody683_1964 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 13
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 104#64))

def NamedBody683_1965 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 72#64))

def NamedBody683_1966 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 11
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 56#64))

def NamedBody683_1967 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 12
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody683_1968 : StackLang.HolProg 64 :=
.seq NamedBody683_1966 NamedBody683_1967

def NamedBody683_1969 : StackLang.HolProg 64 :=
.seq NamedBody683_1965 NamedBody683_1968

def NamedBody683_1970 : StackLang.HolProg 64 :=
.seq NamedBody683_1964 NamedBody683_1969

def NamedBody683_1971 : StackLang.HolProg 64 :=
.seq NamedBody683_1963 NamedBody683_1970

def NamedBody683_1972 : StackLang.HolProg 64 :=
.seq NamedBody683_1962 NamedBody683_1971

def NamedBody683_1973 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody683_1974 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 2855#64)

def NamedBody683_1975 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody683_1976 : StackLang.HolProg 64 :=
.seq NamedBody683_1974 NamedBody683_1975

def NamedBody683_1977 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody683_1978 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 2#64)

def NamedBody683_1979 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 10

def NamedBody683_1980 : StackLang.HolProg 64 :=
.seq NamedBody683_1978 NamedBody683_1979

def NamedBody683_1981 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody683_1982 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) NamedBody683_1980 NamedBody683_1981

def NamedBody683_1983 : StackLang.HolProg 64 :=
.seq NamedBody683_1977 NamedBody683_1982

def NamedBody683_1984 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def NamedBody683_1985 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody683_1986 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 683 55

def NamedBody683_1987 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody683_1988 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody683_1989 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody683_1990 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody683_1991 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def NamedBody683_1992 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def NamedBody683_1993 : StackLang.HolProg 64 :=
.seq NamedBody683_1991 NamedBody683_1992

def NamedBody683_1994 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def NamedBody683_1995 : StackLang.HolProg 64 :=
.seq NamedBody683_1993 NamedBody683_1994

def NamedBody683_1996 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody683_1997 : StackLang.HolProg 64 :=
.seq NamedBody683_1995 NamedBody683_1996

def NamedBody683_1998 : StackLang.HolProg 64 :=
.seq NamedBody683_1990 NamedBody683_1997

def NamedBody683_1999 : StackLang.HolProg 64 :=
.seq NamedBody683_1989 NamedBody683_1998

def NamedBody683_2000 : StackLang.HolProg 64 :=
.seq NamedBody683_1988 NamedBody683_1999

def NamedBody683_2001 : StackLang.HolProg 64 :=
.seq NamedBody683_1987 NamedBody683_2000

def NamedBody683_2002 : StackLang.HolProg 64 :=
.seq NamedBody683_1986 NamedBody683_2001

def NamedBody683_2003 : StackLang.HolProg 64 :=
.seq NamedBody683_1985 NamedBody683_2002

def NamedBody683_2004 : StackLang.HolProg 64 :=
.seq NamedBody683_1984 NamedBody683_2003

def NamedBody683_2005 : StackLang.HolProg 64 :=
.seq NamedBody683_1983 NamedBody683_2004

def NamedBody683_2006 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody683_2007 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody683_2008 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody683_2009 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody683_2010 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody683_2011 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody683_2012 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 13
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 128#64))

def NamedBody683_2013 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 72#64))

def NamedBody683_2014 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 12
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 40#64))

def NamedBody683_2015 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 32#64))

def NamedBody683_2016 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 40#64))

def NamedBody683_2017 : StackLang.HolProg 64 :=
.seq NamedBody683_2015 NamedBody683_2016

def NamedBody683_2018 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 24#64))

def NamedBody683_2019 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 32#64))

def NamedBody683_2020 : StackLang.HolProg 64 :=
.seq NamedBody683_2018 NamedBody683_2019

def NamedBody683_2021 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 11
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody683_2022 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody683_2023 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody683_2024 : StackLang.HolProg 64 :=
.seq NamedBody683_2022 NamedBody683_2023

def NamedBody683_2025 : StackLang.HolProg 64 :=
.seq NamedBody683_2021 NamedBody683_2024

def NamedBody683_2026 : StackLang.HolProg 64 :=
.seq NamedBody683_2020 NamedBody683_2025

def NamedBody683_2027 : StackLang.HolProg 64 :=
.seq NamedBody683_2017 NamedBody683_2026

def NamedBody683_2028 : StackLang.HolProg 64 :=
.seq NamedBody683_2014 NamedBody683_2027

def NamedBody683_2029 : StackLang.HolProg 64 :=
.seq NamedBody683_2013 NamedBody683_2028

def NamedBody683_2030 : StackLang.HolProg 64 :=
.seq NamedBody683_2012 NamedBody683_2029

def NamedBody683_2031 : StackLang.HolProg 64 :=
.seq NamedBody683_2011 NamedBody683_2030

def NamedBody683_2032 : StackLang.HolProg 64 :=
.seq NamedBody683_2010 NamedBody683_2031

def NamedBody683_2033 : StackLang.HolProg 64 :=
.seq NamedBody683_2009 NamedBody683_2032

def NamedBody683_2034 : StackLang.HolProg 64 :=
.seq NamedBody683_2008 NamedBody683_2033

def NamedBody683_2035 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 13
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 128#64))

def NamedBody683_2036 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 72#64))

def NamedBody683_2037 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 12
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 40#64))

def NamedBody683_2038 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 32#64))

def NamedBody683_2039 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 40#64))

def NamedBody683_2040 : StackLang.HolProg 64 :=
.seq NamedBody683_2038 NamedBody683_2039

def NamedBody683_2041 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 24#64))

def NamedBody683_2042 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 32#64))

def NamedBody683_2043 : StackLang.HolProg 64 :=
.seq NamedBody683_2041 NamedBody683_2042

def NamedBody683_2044 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 11
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody683_2045 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody683_2046 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody683_2047 : StackLang.HolProg 64 :=
.seq NamedBody683_2045 NamedBody683_2046

def NamedBody683_2048 : StackLang.HolProg 64 :=
.seq NamedBody683_2044 NamedBody683_2047

def NamedBody683_2049 : StackLang.HolProg 64 :=
.seq NamedBody683_2043 NamedBody683_2048

def NamedBody683_2050 : StackLang.HolProg 64 :=
.seq NamedBody683_2040 NamedBody683_2049

def NamedBody683_2051 : StackLang.HolProg 64 :=
.seq NamedBody683_2037 NamedBody683_2050

def NamedBody683_2052 : StackLang.HolProg 64 :=
.seq NamedBody683_2036 NamedBody683_2051

def NamedBody683_2053 : StackLang.HolProg 64 :=
.seq NamedBody683_2035 NamedBody683_2052

def NamedBody683_2054 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def NamedBody683_2055 : StackLang.HolProg 64 :=
.seq NamedBody683_2053 NamedBody683_2054

def NamedBody683_2056 : StackLang.HolProg 64 :=
.call (some (NamedBody683_2034, 1, 683, 54)) (Sum.inl 673) (some (NamedBody683_2055, 683, 55))

def NamedBody683_2057 : StackLang.HolProg 64 :=
.seq NamedBody683_2007 NamedBody683_2056

def NamedBody683_2058 : StackLang.HolProg 64 :=
.seq NamedBody683_2006 NamedBody683_2057

def NamedBody683_2059 : StackLang.HolProg 64 :=
.seq NamedBody683_2005 NamedBody683_2058

def NamedBody683_2060 : StackLang.HolProg 64 :=
.seq NamedBody683_1976 NamedBody683_2059

def NamedBody683_2061 : StackLang.HolProg 64 :=
.seq NamedBody683_1973 NamedBody683_2060

def NamedBody683_2062 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody683_2063 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 10 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def NamedBody683_2064 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 13
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 128#64))

def NamedBody683_2065 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 72#64))

def NamedBody683_2066 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 11
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 24#64))

def NamedBody683_2067 : StackLang.HolProg 64 :=
.seq NamedBody683_2065 NamedBody683_2066

def NamedBody683_2068 : StackLang.HolProg 64 :=
.seq NamedBody683_2064 NamedBody683_2067

def NamedBody683_2069 : StackLang.HolProg 64 :=
.seq NamedBody683_2063 NamedBody683_2068

def NamedBody683_2070 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody683_2071 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 2856#64)

def NamedBody683_2072 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody683_2073 : StackLang.HolProg 64 :=
.seq NamedBody683_2071 NamedBody683_2072

def NamedBody683_2074 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody683_2075 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 2#64)

def NamedBody683_2076 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 10

def NamedBody683_2077 : StackLang.HolProg 64 :=
.seq NamedBody683_2075 NamedBody683_2076

def NamedBody683_2078 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody683_2079 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) NamedBody683_2077 NamedBody683_2078

def NamedBody683_2080 : StackLang.HolProg 64 :=
.seq NamedBody683_2074 NamedBody683_2079

def NamedBody683_2081 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def NamedBody683_2082 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody683_2083 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 683 57

def NamedBody683_2084 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody683_2085 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody683_2086 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody683_2087 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody683_2088 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def NamedBody683_2089 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def NamedBody683_2090 : StackLang.HolProg 64 :=
.seq NamedBody683_2088 NamedBody683_2089

def NamedBody683_2091 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def NamedBody683_2092 : StackLang.HolProg 64 :=
.seq NamedBody683_2090 NamedBody683_2091

def NamedBody683_2093 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody683_2094 : StackLang.HolProg 64 :=
.seq NamedBody683_2092 NamedBody683_2093

def NamedBody683_2095 : StackLang.HolProg 64 :=
.seq NamedBody683_2087 NamedBody683_2094

def NamedBody683_2096 : StackLang.HolProg 64 :=
.seq NamedBody683_2086 NamedBody683_2095

def NamedBody683_2097 : StackLang.HolProg 64 :=
.seq NamedBody683_2085 NamedBody683_2096

def NamedBody683_2098 : StackLang.HolProg 64 :=
.seq NamedBody683_2084 NamedBody683_2097

def NamedBody683_2099 : StackLang.HolProg 64 :=
.seq NamedBody683_2083 NamedBody683_2098

def NamedBody683_2100 : StackLang.HolProg 64 :=
.seq NamedBody683_2082 NamedBody683_2099

def NamedBody683_2101 : StackLang.HolProg 64 :=
.seq NamedBody683_2081 NamedBody683_2100

def NamedBody683_2102 : StackLang.HolProg 64 :=
.seq NamedBody683_2080 NamedBody683_2101

def NamedBody683_2103 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody683_2104 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody683_2105 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody683_2106 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody683_2107 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody683_2108 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody683_2109 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 11
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 144#64))

def NamedBody683_2110 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 72#64))

def NamedBody683_2111 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 12
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 24#64))

def NamedBody683_2112 : StackLang.HolProg 64 :=
.seq NamedBody683_2110 NamedBody683_2111

def NamedBody683_2113 : StackLang.HolProg 64 :=
.seq NamedBody683_2109 NamedBody683_2112

def NamedBody683_2114 : StackLang.HolProg 64 :=
.seq NamedBody683_2108 NamedBody683_2113

def NamedBody683_2115 : StackLang.HolProg 64 :=
.seq NamedBody683_2107 NamedBody683_2114

def NamedBody683_2116 : StackLang.HolProg 64 :=
.seq NamedBody683_2106 NamedBody683_2115

def NamedBody683_2117 : StackLang.HolProg 64 :=
.seq NamedBody683_2105 NamedBody683_2116

def NamedBody683_2118 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 11
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 144#64))

def NamedBody683_2119 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 72#64))

def NamedBody683_2120 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 12
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 24#64))

def NamedBody683_2121 : StackLang.HolProg 64 :=
.seq NamedBody683_2119 NamedBody683_2120

def NamedBody683_2122 : StackLang.HolProg 64 :=
.seq NamedBody683_2118 NamedBody683_2121

def NamedBody683_2123 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def NamedBody683_2124 : StackLang.HolProg 64 :=
.seq NamedBody683_2122 NamedBody683_2123

def NamedBody683_2125 : StackLang.HolProg 64 :=
.call (some (NamedBody683_2117, 1, 683, 56)) (Sum.inl 673) (some (NamedBody683_2124, 683, 57))

def NamedBody683_2126 : StackLang.HolProg 64 :=
.seq NamedBody683_2104 NamedBody683_2125

def NamedBody683_2127 : StackLang.HolProg 64 :=
.seq NamedBody683_2103 NamedBody683_2126

def NamedBody683_2128 : StackLang.HolProg 64 :=
.seq NamedBody683_2102 NamedBody683_2127

def NamedBody683_2129 : StackLang.HolProg 64 :=
.seq NamedBody683_2073 NamedBody683_2128

def NamedBody683_2130 : StackLang.HolProg 64 :=
.seq NamedBody683_2070 NamedBody683_2129

def NamedBody683_2131 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody683_2132 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 10 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def NamedBody683_2133 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 11
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 144#64))

def NamedBody683_2134 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 72#64))

def NamedBody683_2135 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 12
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 24#64))

def NamedBody683_2136 : StackLang.HolProg 64 :=
.seq NamedBody683_2134 NamedBody683_2135

def NamedBody683_2137 : StackLang.HolProg 64 :=
.seq NamedBody683_2133 NamedBody683_2136

def NamedBody683_2138 : StackLang.HolProg 64 :=
.seq NamedBody683_2132 NamedBody683_2137

def NamedBody683_2139 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody683_2140 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 2857#64)

def NamedBody683_2141 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody683_2142 : StackLang.HolProg 64 :=
.seq NamedBody683_2140 NamedBody683_2141

def NamedBody683_2143 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody683_2144 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 2#64)

def NamedBody683_2145 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 10

def NamedBody683_2146 : StackLang.HolProg 64 :=
.seq NamedBody683_2144 NamedBody683_2145

def NamedBody683_2147 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody683_2148 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) NamedBody683_2146 NamedBody683_2147

def NamedBody683_2149 : StackLang.HolProg 64 :=
.seq NamedBody683_2143 NamedBody683_2148

def NamedBody683_2150 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def NamedBody683_2151 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody683_2152 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 683 59

def NamedBody683_2153 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody683_2154 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody683_2155 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody683_2156 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody683_2157 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def NamedBody683_2158 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def NamedBody683_2159 : StackLang.HolProg 64 :=
.seq NamedBody683_2157 NamedBody683_2158

def NamedBody683_2160 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def NamedBody683_2161 : StackLang.HolProg 64 :=
.seq NamedBody683_2159 NamedBody683_2160

def NamedBody683_2162 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody683_2163 : StackLang.HolProg 64 :=
.seq NamedBody683_2161 NamedBody683_2162

def NamedBody683_2164 : StackLang.HolProg 64 :=
.seq NamedBody683_2156 NamedBody683_2163

def NamedBody683_2165 : StackLang.HolProg 64 :=
.seq NamedBody683_2155 NamedBody683_2164

def NamedBody683_2166 : StackLang.HolProg 64 :=
.seq NamedBody683_2154 NamedBody683_2165

def NamedBody683_2167 : StackLang.HolProg 64 :=
.seq NamedBody683_2153 NamedBody683_2166

def NamedBody683_2168 : StackLang.HolProg 64 :=
.seq NamedBody683_2152 NamedBody683_2167

def NamedBody683_2169 : StackLang.HolProg 64 :=
.seq NamedBody683_2151 NamedBody683_2168

def NamedBody683_2170 : StackLang.HolProg 64 :=
.seq NamedBody683_2150 NamedBody683_2169

def NamedBody683_2171 : StackLang.HolProg 64 :=
.seq NamedBody683_2149 NamedBody683_2170

def NamedBody683_2172 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody683_2173 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody683_2174 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody683_2175 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody683_2176 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody683_2177 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody683_2178 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 12
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 144#64))

def NamedBody683_2179 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 13
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 128#64))

def NamedBody683_2180 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 120#64))

def NamedBody683_2181 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 128#64))

def NamedBody683_2182 : StackLang.HolProg 64 :=
.seq NamedBody683_2180 NamedBody683_2181

def NamedBody683_2183 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 112#64))

def NamedBody683_2184 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 120#64))

def NamedBody683_2185 : StackLang.HolProg 64 :=
.seq NamedBody683_2183 NamedBody683_2184

def NamedBody683_2186 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 104#64))

def NamedBody683_2187 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 112#64))

def NamedBody683_2188 : StackLang.HolProg 64 :=
.seq NamedBody683_2186 NamedBody683_2187

def NamedBody683_2189 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 96#64))

def NamedBody683_2190 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 104#64))

def NamedBody683_2191 : StackLang.HolProg 64 :=
.seq NamedBody683_2189 NamedBody683_2190

def NamedBody683_2192 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 88#64))

def NamedBody683_2193 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 96#64))

def NamedBody683_2194 : StackLang.HolProg 64 :=
.seq NamedBody683_2192 NamedBody683_2193

def NamedBody683_2195 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 11
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 80#64))

def NamedBody683_2196 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 72#64))

def NamedBody683_2197 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 64#64))

def NamedBody683_2198 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 72#64))

def NamedBody683_2199 : StackLang.HolProg 64 :=
.seq NamedBody683_2197 NamedBody683_2198

def NamedBody683_2200 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 56#64))

def NamedBody683_2201 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 64#64))

def NamedBody683_2202 : StackLang.HolProg 64 :=
.seq NamedBody683_2200 NamedBody683_2201

def NamedBody683_2203 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 48#64))

def NamedBody683_2204 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 56#64))

def NamedBody683_2205 : StackLang.HolProg 64 :=
.seq NamedBody683_2203 NamedBody683_2204

def NamedBody683_2206 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 40#64))

def NamedBody683_2207 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 48#64))

def NamedBody683_2208 : StackLang.HolProg 64 :=
.seq NamedBody683_2206 NamedBody683_2207

def NamedBody683_2209 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 32#64))

def NamedBody683_2210 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 40#64))

def NamedBody683_2211 : StackLang.HolProg 64 :=
.seq NamedBody683_2209 NamedBody683_2210

def NamedBody683_2212 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 24#64))

def NamedBody683_2213 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 32#64))

def NamedBody683_2214 : StackLang.HolProg 64 :=
.seq NamedBody683_2212 NamedBody683_2213

def NamedBody683_2215 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody683_2216 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 24#64))

def NamedBody683_2217 : StackLang.HolProg 64 :=
.seq NamedBody683_2215 NamedBody683_2216

def NamedBody683_2218 : StackLang.HolProg 64 :=
.seq NamedBody683_2214 NamedBody683_2217

def NamedBody683_2219 : StackLang.HolProg 64 :=
.seq NamedBody683_2211 NamedBody683_2218

def NamedBody683_2220 : StackLang.HolProg 64 :=
.seq NamedBody683_2208 NamedBody683_2219

def NamedBody683_2221 : StackLang.HolProg 64 :=
.seq NamedBody683_2205 NamedBody683_2220

def NamedBody683_2222 : StackLang.HolProg 64 :=
.seq NamedBody683_2202 NamedBody683_2221

def NamedBody683_2223 : StackLang.HolProg 64 :=
.seq NamedBody683_2199 NamedBody683_2222

def NamedBody683_2224 : StackLang.HolProg 64 :=
.seq NamedBody683_2196 NamedBody683_2223

def NamedBody683_2225 : StackLang.HolProg 64 :=
.seq NamedBody683_2195 NamedBody683_2224

def NamedBody683_2226 : StackLang.HolProg 64 :=
.seq NamedBody683_2194 NamedBody683_2225

def NamedBody683_2227 : StackLang.HolProg 64 :=
.seq NamedBody683_2191 NamedBody683_2226

def NamedBody683_2228 : StackLang.HolProg 64 :=
.seq NamedBody683_2188 NamedBody683_2227

def NamedBody683_2229 : StackLang.HolProg 64 :=
.seq NamedBody683_2185 NamedBody683_2228

def NamedBody683_2230 : StackLang.HolProg 64 :=
.seq NamedBody683_2182 NamedBody683_2229

def NamedBody683_2231 : StackLang.HolProg 64 :=
.seq NamedBody683_2179 NamedBody683_2230

def NamedBody683_2232 : StackLang.HolProg 64 :=
.seq NamedBody683_2178 NamedBody683_2231

def NamedBody683_2233 : StackLang.HolProg 64 :=
.seq NamedBody683_2177 NamedBody683_2232

def NamedBody683_2234 : StackLang.HolProg 64 :=
.seq NamedBody683_2176 NamedBody683_2233

def NamedBody683_2235 : StackLang.HolProg 64 :=
.seq NamedBody683_2175 NamedBody683_2234

def NamedBody683_2236 : StackLang.HolProg 64 :=
.seq NamedBody683_2174 NamedBody683_2235

def NamedBody683_2237 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 12
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 144#64))

def NamedBody683_2238 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 13
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 128#64))

def NamedBody683_2239 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 120#64))

def NamedBody683_2240 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 128#64))

def NamedBody683_2241 : StackLang.HolProg 64 :=
.seq NamedBody683_2239 NamedBody683_2240

def NamedBody683_2242 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 112#64))

def NamedBody683_2243 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 120#64))

def NamedBody683_2244 : StackLang.HolProg 64 :=
.seq NamedBody683_2242 NamedBody683_2243

def NamedBody683_2245 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 104#64))

def NamedBody683_2246 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 112#64))

def NamedBody683_2247 : StackLang.HolProg 64 :=
.seq NamedBody683_2245 NamedBody683_2246

def NamedBody683_2248 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 96#64))

def NamedBody683_2249 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 104#64))

def NamedBody683_2250 : StackLang.HolProg 64 :=
.seq NamedBody683_2248 NamedBody683_2249

def NamedBody683_2251 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 88#64))

def NamedBody683_2252 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 96#64))

def NamedBody683_2253 : StackLang.HolProg 64 :=
.seq NamedBody683_2251 NamedBody683_2252

def NamedBody683_2254 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 11
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 80#64))

def NamedBody683_2255 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 72#64))

def NamedBody683_2256 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 64#64))

def NamedBody683_2257 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 72#64))

def NamedBody683_2258 : StackLang.HolProg 64 :=
.seq NamedBody683_2256 NamedBody683_2257

def NamedBody683_2259 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 56#64))

def NamedBody683_2260 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 64#64))

def NamedBody683_2261 : StackLang.HolProg 64 :=
.seq NamedBody683_2259 NamedBody683_2260

def NamedBody683_2262 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 48#64))

def NamedBody683_2263 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 56#64))

def NamedBody683_2264 : StackLang.HolProg 64 :=
.seq NamedBody683_2262 NamedBody683_2263

def NamedBody683_2265 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 40#64))

def NamedBody683_2266 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 48#64))

def NamedBody683_2267 : StackLang.HolProg 64 :=
.seq NamedBody683_2265 NamedBody683_2266

def NamedBody683_2268 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 32#64))

def NamedBody683_2269 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 40#64))

def NamedBody683_2270 : StackLang.HolProg 64 :=
.seq NamedBody683_2268 NamedBody683_2269

def NamedBody683_2271 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 24#64))

def NamedBody683_2272 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 32#64))

def NamedBody683_2273 : StackLang.HolProg 64 :=
.seq NamedBody683_2271 NamedBody683_2272

def NamedBody683_2274 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody683_2275 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 24#64))

def NamedBody683_2276 : StackLang.HolProg 64 :=
.seq NamedBody683_2274 NamedBody683_2275

def NamedBody683_2277 : StackLang.HolProg 64 :=
.seq NamedBody683_2273 NamedBody683_2276

def NamedBody683_2278 : StackLang.HolProg 64 :=
.seq NamedBody683_2270 NamedBody683_2277

def NamedBody683_2279 : StackLang.HolProg 64 :=
.seq NamedBody683_2267 NamedBody683_2278

def NamedBody683_2280 : StackLang.HolProg 64 :=
.seq NamedBody683_2264 NamedBody683_2279

def NamedBody683_2281 : StackLang.HolProg 64 :=
.seq NamedBody683_2261 NamedBody683_2280

def NamedBody683_2282 : StackLang.HolProg 64 :=
.seq NamedBody683_2258 NamedBody683_2281

def NamedBody683_2283 : StackLang.HolProg 64 :=
.seq NamedBody683_2255 NamedBody683_2282

def NamedBody683_2284 : StackLang.HolProg 64 :=
.seq NamedBody683_2254 NamedBody683_2283

def NamedBody683_2285 : StackLang.HolProg 64 :=
.seq NamedBody683_2253 NamedBody683_2284

def NamedBody683_2286 : StackLang.HolProg 64 :=
.seq NamedBody683_2250 NamedBody683_2285

def NamedBody683_2287 : StackLang.HolProg 64 :=
.seq NamedBody683_2247 NamedBody683_2286

def NamedBody683_2288 : StackLang.HolProg 64 :=
.seq NamedBody683_2244 NamedBody683_2287

def NamedBody683_2289 : StackLang.HolProg 64 :=
.seq NamedBody683_2241 NamedBody683_2288

def NamedBody683_2290 : StackLang.HolProg 64 :=
.seq NamedBody683_2238 NamedBody683_2289

def NamedBody683_2291 : StackLang.HolProg 64 :=
.seq NamedBody683_2237 NamedBody683_2290

def NamedBody683_2292 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def NamedBody683_2293 : StackLang.HolProg 64 :=
.seq NamedBody683_2291 NamedBody683_2292

def NamedBody683_2294 : StackLang.HolProg 64 :=
.call (some (NamedBody683_2236, 1, 683, 58)) (Sum.inl 671) (some (NamedBody683_2293, 683, 59))

def NamedBody683_2295 : StackLang.HolProg 64 :=
.seq NamedBody683_2173 NamedBody683_2294

def NamedBody683_2296 : StackLang.HolProg 64 :=
.seq NamedBody683_2172 NamedBody683_2295

def NamedBody683_2297 : StackLang.HolProg 64 :=
.seq NamedBody683_2171 NamedBody683_2296

def NamedBody683_2298 : StackLang.HolProg 64 :=
.seq NamedBody683_2142 NamedBody683_2297

def NamedBody683_2299 : StackLang.HolProg 64 :=
.seq NamedBody683_2139 NamedBody683_2298

def NamedBody683_2300 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody683_2301 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 10 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def NamedBody683_2302 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 12
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 144#64))

def NamedBody683_2303 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 11
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 88#64))

def NamedBody683_2304 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 80#64))

def NamedBody683_2305 : StackLang.HolProg 64 :=
.seq NamedBody683_2303 NamedBody683_2304

def NamedBody683_2306 : StackLang.HolProg 64 :=
.seq NamedBody683_2302 NamedBody683_2305

def NamedBody683_2307 : StackLang.HolProg 64 :=
.seq NamedBody683_2301 NamedBody683_2306

def NamedBody683_2308 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody683_2309 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 2858#64)

def NamedBody683_2310 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody683_2311 : StackLang.HolProg 64 :=
.seq NamedBody683_2309 NamedBody683_2310

def NamedBody683_2312 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody683_2313 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 2#64)

def NamedBody683_2314 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 10

def NamedBody683_2315 : StackLang.HolProg 64 :=
.seq NamedBody683_2313 NamedBody683_2314

def NamedBody683_2316 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody683_2317 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) NamedBody683_2315 NamedBody683_2316

def NamedBody683_2318 : StackLang.HolProg 64 :=
.seq NamedBody683_2312 NamedBody683_2317

def NamedBody683_2319 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def NamedBody683_2320 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody683_2321 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 683 61

def NamedBody683_2322 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody683_2323 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody683_2324 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody683_2325 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody683_2326 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def NamedBody683_2327 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def NamedBody683_2328 : StackLang.HolProg 64 :=
.seq NamedBody683_2326 NamedBody683_2327

def NamedBody683_2329 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def NamedBody683_2330 : StackLang.HolProg 64 :=
.seq NamedBody683_2328 NamedBody683_2329

def NamedBody683_2331 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody683_2332 : StackLang.HolProg 64 :=
.seq NamedBody683_2330 NamedBody683_2331

def NamedBody683_2333 : StackLang.HolProg 64 :=
.seq NamedBody683_2325 NamedBody683_2332

def NamedBody683_2334 : StackLang.HolProg 64 :=
.seq NamedBody683_2324 NamedBody683_2333

def NamedBody683_2335 : StackLang.HolProg 64 :=
.seq NamedBody683_2323 NamedBody683_2334

def NamedBody683_2336 : StackLang.HolProg 64 :=
.seq NamedBody683_2322 NamedBody683_2335

def NamedBody683_2337 : StackLang.HolProg 64 :=
.seq NamedBody683_2321 NamedBody683_2336

def NamedBody683_2338 : StackLang.HolProg 64 :=
.seq NamedBody683_2320 NamedBody683_2337

def NamedBody683_2339 : StackLang.HolProg 64 :=
.seq NamedBody683_2319 NamedBody683_2338

def NamedBody683_2340 : StackLang.HolProg 64 :=
.seq NamedBody683_2318 NamedBody683_2339

def NamedBody683_2341 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody683_2342 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody683_2343 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody683_2344 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody683_2345 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody683_2346 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody683_2347 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 13
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 144#64))

def NamedBody683_2348 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 11
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 136#64))

def NamedBody683_2349 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 128#64))

def NamedBody683_2350 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 136#64))

def NamedBody683_2351 : StackLang.HolProg 64 :=
.seq NamedBody683_2349 NamedBody683_2350

def NamedBody683_2352 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 120#64))

def NamedBody683_2353 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 128#64))

def NamedBody683_2354 : StackLang.HolProg 64 :=
.seq NamedBody683_2352 NamedBody683_2353

def NamedBody683_2355 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 112#64))

def NamedBody683_2356 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 120#64))

def NamedBody683_2357 : StackLang.HolProg 64 :=
.seq NamedBody683_2355 NamedBody683_2356

def NamedBody683_2358 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 104#64))

def NamedBody683_2359 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 112#64))

def NamedBody683_2360 : StackLang.HolProg 64 :=
.seq NamedBody683_2358 NamedBody683_2359

def NamedBody683_2361 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 96#64))

def NamedBody683_2362 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 104#64))

def NamedBody683_2363 : StackLang.HolProg 64 :=
.seq NamedBody683_2361 NamedBody683_2362

def NamedBody683_2364 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 88#64))

def NamedBody683_2365 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 96#64))

def NamedBody683_2366 : StackLang.HolProg 64 :=
.seq NamedBody683_2364 NamedBody683_2365

def NamedBody683_2367 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 80#64))

def NamedBody683_2368 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 72#64))

def NamedBody683_2369 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 80#64))

def NamedBody683_2370 : StackLang.HolProg 64 :=
.seq NamedBody683_2368 NamedBody683_2369

def NamedBody683_2371 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 64#64))

def NamedBody683_2372 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 72#64))

def NamedBody683_2373 : StackLang.HolProg 64 :=
.seq NamedBody683_2371 NamedBody683_2372

def NamedBody683_2374 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 56#64))

def NamedBody683_2375 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 64#64))

def NamedBody683_2376 : StackLang.HolProg 64 :=
.seq NamedBody683_2374 NamedBody683_2375

def NamedBody683_2377 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 48#64))

def NamedBody683_2378 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 56#64))

def NamedBody683_2379 : StackLang.HolProg 64 :=
.seq NamedBody683_2377 NamedBody683_2378

def NamedBody683_2380 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 40#64))

def NamedBody683_2381 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 48#64))

def NamedBody683_2382 : StackLang.HolProg 64 :=
.seq NamedBody683_2380 NamedBody683_2381

def NamedBody683_2383 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 12
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 32#64))

def NamedBody683_2384 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 24#64))

def NamedBody683_2385 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 32#64))

def NamedBody683_2386 : StackLang.HolProg 64 :=
.seq NamedBody683_2384 NamedBody683_2385

def NamedBody683_2387 : StackLang.HolProg 64 :=
.seq NamedBody683_2383 NamedBody683_2386

def NamedBody683_2388 : StackLang.HolProg 64 :=
.seq NamedBody683_2382 NamedBody683_2387

def NamedBody683_2389 : StackLang.HolProg 64 :=
.seq NamedBody683_2379 NamedBody683_2388

def NamedBody683_2390 : StackLang.HolProg 64 :=
.seq NamedBody683_2376 NamedBody683_2389

def NamedBody683_2391 : StackLang.HolProg 64 :=
.seq NamedBody683_2373 NamedBody683_2390

def NamedBody683_2392 : StackLang.HolProg 64 :=
.seq NamedBody683_2370 NamedBody683_2391

def NamedBody683_2393 : StackLang.HolProg 64 :=
.seq NamedBody683_2367 NamedBody683_2392

def NamedBody683_2394 : StackLang.HolProg 64 :=
.seq NamedBody683_2366 NamedBody683_2393

def NamedBody683_2395 : StackLang.HolProg 64 :=
.seq NamedBody683_2363 NamedBody683_2394

def NamedBody683_2396 : StackLang.HolProg 64 :=
.seq NamedBody683_2360 NamedBody683_2395

def NamedBody683_2397 : StackLang.HolProg 64 :=
.seq NamedBody683_2357 NamedBody683_2396

def NamedBody683_2398 : StackLang.HolProg 64 :=
.seq NamedBody683_2354 NamedBody683_2397

def NamedBody683_2399 : StackLang.HolProg 64 :=
.seq NamedBody683_2351 NamedBody683_2398

def NamedBody683_2400 : StackLang.HolProg 64 :=
.seq NamedBody683_2348 NamedBody683_2399

def NamedBody683_2401 : StackLang.HolProg 64 :=
.seq NamedBody683_2347 NamedBody683_2400

def NamedBody683_2402 : StackLang.HolProg 64 :=
.seq NamedBody683_2346 NamedBody683_2401

def NamedBody683_2403 : StackLang.HolProg 64 :=
.seq NamedBody683_2345 NamedBody683_2402

def NamedBody683_2404 : StackLang.HolProg 64 :=
.seq NamedBody683_2344 NamedBody683_2403

def NamedBody683_2405 : StackLang.HolProg 64 :=
.seq NamedBody683_2343 NamedBody683_2404

def NamedBody683_2406 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 13
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 144#64))

def NamedBody683_2407 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 11
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 136#64))

def NamedBody683_2408 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 128#64))

def NamedBody683_2409 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 136#64))

def NamedBody683_2410 : StackLang.HolProg 64 :=
.seq NamedBody683_2408 NamedBody683_2409

def NamedBody683_2411 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 120#64))

def NamedBody683_2412 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 128#64))

def NamedBody683_2413 : StackLang.HolProg 64 :=
.seq NamedBody683_2411 NamedBody683_2412

def NamedBody683_2414 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 112#64))

def NamedBody683_2415 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 120#64))

def NamedBody683_2416 : StackLang.HolProg 64 :=
.seq NamedBody683_2414 NamedBody683_2415

def NamedBody683_2417 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 104#64))

def NamedBody683_2418 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 112#64))

def NamedBody683_2419 : StackLang.HolProg 64 :=
.seq NamedBody683_2417 NamedBody683_2418

def NamedBody683_2420 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 96#64))

def NamedBody683_2421 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 104#64))

def NamedBody683_2422 : StackLang.HolProg 64 :=
.seq NamedBody683_2420 NamedBody683_2421

def NamedBody683_2423 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 88#64))

def NamedBody683_2424 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 96#64))

def NamedBody683_2425 : StackLang.HolProg 64 :=
.seq NamedBody683_2423 NamedBody683_2424

def NamedBody683_2426 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 80#64))

def NamedBody683_2427 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 72#64))

def NamedBody683_2428 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 80#64))

def NamedBody683_2429 : StackLang.HolProg 64 :=
.seq NamedBody683_2427 NamedBody683_2428

def NamedBody683_2430 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 64#64))

def NamedBody683_2431 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 72#64))

def NamedBody683_2432 : StackLang.HolProg 64 :=
.seq NamedBody683_2430 NamedBody683_2431

def NamedBody683_2433 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 56#64))

def NamedBody683_2434 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 64#64))

def NamedBody683_2435 : StackLang.HolProg 64 :=
.seq NamedBody683_2433 NamedBody683_2434

def NamedBody683_2436 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 48#64))

def NamedBody683_2437 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 56#64))

def NamedBody683_2438 : StackLang.HolProg 64 :=
.seq NamedBody683_2436 NamedBody683_2437

def NamedBody683_2439 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 40#64))

def NamedBody683_2440 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 48#64))

def NamedBody683_2441 : StackLang.HolProg 64 :=
.seq NamedBody683_2439 NamedBody683_2440

def NamedBody683_2442 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 12
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 32#64))

def NamedBody683_2443 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 24#64))

def NamedBody683_2444 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 32#64))

def NamedBody683_2445 : StackLang.HolProg 64 :=
.seq NamedBody683_2443 NamedBody683_2444

def NamedBody683_2446 : StackLang.HolProg 64 :=
.seq NamedBody683_2442 NamedBody683_2445

def NamedBody683_2447 : StackLang.HolProg 64 :=
.seq NamedBody683_2441 NamedBody683_2446

def NamedBody683_2448 : StackLang.HolProg 64 :=
.seq NamedBody683_2438 NamedBody683_2447

def NamedBody683_2449 : StackLang.HolProg 64 :=
.seq NamedBody683_2435 NamedBody683_2448

def NamedBody683_2450 : StackLang.HolProg 64 :=
.seq NamedBody683_2432 NamedBody683_2449

def NamedBody683_2451 : StackLang.HolProg 64 :=
.seq NamedBody683_2429 NamedBody683_2450

def NamedBody683_2452 : StackLang.HolProg 64 :=
.seq NamedBody683_2426 NamedBody683_2451

def NamedBody683_2453 : StackLang.HolProg 64 :=
.seq NamedBody683_2425 NamedBody683_2452

def NamedBody683_2454 : StackLang.HolProg 64 :=
.seq NamedBody683_2422 NamedBody683_2453

def NamedBody683_2455 : StackLang.HolProg 64 :=
.seq NamedBody683_2419 NamedBody683_2454

def NamedBody683_2456 : StackLang.HolProg 64 :=
.seq NamedBody683_2416 NamedBody683_2455

def NamedBody683_2457 : StackLang.HolProg 64 :=
.seq NamedBody683_2413 NamedBody683_2456

def NamedBody683_2458 : StackLang.HolProg 64 :=
.seq NamedBody683_2410 NamedBody683_2457

def NamedBody683_2459 : StackLang.HolProg 64 :=
.seq NamedBody683_2407 NamedBody683_2458

def NamedBody683_2460 : StackLang.HolProg 64 :=
.seq NamedBody683_2406 NamedBody683_2459

def NamedBody683_2461 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def NamedBody683_2462 : StackLang.HolProg 64 :=
.seq NamedBody683_2460 NamedBody683_2461

def NamedBody683_2463 : StackLang.HolProg 64 :=
.call (some (NamedBody683_2405, 1, 683, 60)) (Sum.inl 670) (some (NamedBody683_2462, 683, 61))

def NamedBody683_2464 : StackLang.HolProg 64 :=
.seq NamedBody683_2342 NamedBody683_2463

def NamedBody683_2465 : StackLang.HolProg 64 :=
.seq NamedBody683_2341 NamedBody683_2464

def NamedBody683_2466 : StackLang.HolProg 64 :=
.seq NamedBody683_2340 NamedBody683_2465

def NamedBody683_2467 : StackLang.HolProg 64 :=
.seq NamedBody683_2311 NamedBody683_2466

def NamedBody683_2468 : StackLang.HolProg 64 :=
.seq NamedBody683_2308 NamedBody683_2467

def NamedBody683_2469 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody683_2470 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 10 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def NamedBody683_2471 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 11
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 144#64))

def NamedBody683_2472 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 88#64))

def NamedBody683_2473 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 12
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 40#64))

def NamedBody683_2474 : StackLang.HolProg 64 :=
.seq NamedBody683_2472 NamedBody683_2473

def NamedBody683_2475 : StackLang.HolProg 64 :=
.seq NamedBody683_2471 NamedBody683_2474

def NamedBody683_2476 : StackLang.HolProg 64 :=
.seq NamedBody683_2470 NamedBody683_2475

def NamedBody683_2477 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody683_2478 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 2859#64)

def NamedBody683_2479 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody683_2480 : StackLang.HolProg 64 :=
.seq NamedBody683_2478 NamedBody683_2479

def NamedBody683_2481 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody683_2482 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 2#64)

def NamedBody683_2483 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 10

def NamedBody683_2484 : StackLang.HolProg 64 :=
.seq NamedBody683_2482 NamedBody683_2483

def NamedBody683_2485 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody683_2486 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) NamedBody683_2484 NamedBody683_2485

def NamedBody683_2487 : StackLang.HolProg 64 :=
.seq NamedBody683_2481 NamedBody683_2486

def NamedBody683_2488 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def NamedBody683_2489 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody683_2490 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 683 63

def NamedBody683_2491 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody683_2492 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody683_2493 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody683_2494 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody683_2495 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def NamedBody683_2496 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def NamedBody683_2497 : StackLang.HolProg 64 :=
.seq NamedBody683_2495 NamedBody683_2496

def NamedBody683_2498 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def NamedBody683_2499 : StackLang.HolProg 64 :=
.seq NamedBody683_2497 NamedBody683_2498

def NamedBody683_2500 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody683_2501 : StackLang.HolProg 64 :=
.seq NamedBody683_2499 NamedBody683_2500

def NamedBody683_2502 : StackLang.HolProg 64 :=
.seq NamedBody683_2494 NamedBody683_2501

def NamedBody683_2503 : StackLang.HolProg 64 :=
.seq NamedBody683_2493 NamedBody683_2502

def NamedBody683_2504 : StackLang.HolProg 64 :=
.seq NamedBody683_2492 NamedBody683_2503

def NamedBody683_2505 : StackLang.HolProg 64 :=
.seq NamedBody683_2491 NamedBody683_2504

def NamedBody683_2506 : StackLang.HolProg 64 :=
.seq NamedBody683_2490 NamedBody683_2505

def NamedBody683_2507 : StackLang.HolProg 64 :=
.seq NamedBody683_2489 NamedBody683_2506

def NamedBody683_2508 : StackLang.HolProg 64 :=
.seq NamedBody683_2488 NamedBody683_2507

def NamedBody683_2509 : StackLang.HolProg 64 :=
.seq NamedBody683_2487 NamedBody683_2508

def NamedBody683_2510 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody683_2511 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody683_2512 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody683_2513 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody683_2514 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody683_2515 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody683_2516 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 88#64))

def NamedBody683_2517 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 13
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 80#64))

def NamedBody683_2518 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 72#64))

def NamedBody683_2519 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 80#64))

def NamedBody683_2520 : StackLang.HolProg 64 :=
.seq NamedBody683_2518 NamedBody683_2519

def NamedBody683_2521 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 11
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 64#64))

def NamedBody683_2522 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 12
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 56#64))

def NamedBody683_2523 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 48#64))

def NamedBody683_2524 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 64#64))

def NamedBody683_2525 : StackLang.HolProg 64 :=
.seq NamedBody683_2523 NamedBody683_2524

def NamedBody683_2526 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 40#64))

def NamedBody683_2527 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 56#64))

def NamedBody683_2528 : StackLang.HolProg 64 :=
.seq NamedBody683_2526 NamedBody683_2527

def NamedBody683_2529 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 32#64))

def NamedBody683_2530 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 48#64))

def NamedBody683_2531 : StackLang.HolProg 64 :=
.seq NamedBody683_2529 NamedBody683_2530

def NamedBody683_2532 : StackLang.HolProg 64 :=
.seq NamedBody683_2528 NamedBody683_2531

def NamedBody683_2533 : StackLang.HolProg 64 :=
.seq NamedBody683_2525 NamedBody683_2532

def NamedBody683_2534 : StackLang.HolProg 64 :=
.seq NamedBody683_2522 NamedBody683_2533

def NamedBody683_2535 : StackLang.HolProg 64 :=
.seq NamedBody683_2521 NamedBody683_2534

def NamedBody683_2536 : StackLang.HolProg 64 :=
.seq NamedBody683_2520 NamedBody683_2535

def NamedBody683_2537 : StackLang.HolProg 64 :=
.seq NamedBody683_2517 NamedBody683_2536

def NamedBody683_2538 : StackLang.HolProg 64 :=
.seq NamedBody683_2516 NamedBody683_2537

def NamedBody683_2539 : StackLang.HolProg 64 :=
.seq NamedBody683_2515 NamedBody683_2538

def NamedBody683_2540 : StackLang.HolProg 64 :=
.seq NamedBody683_2514 NamedBody683_2539

def NamedBody683_2541 : StackLang.HolProg 64 :=
.seq NamedBody683_2513 NamedBody683_2540

def NamedBody683_2542 : StackLang.HolProg 64 :=
.seq NamedBody683_2512 NamedBody683_2541

def NamedBody683_2543 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 88#64))

def NamedBody683_2544 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 13
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 80#64))

def NamedBody683_2545 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 72#64))

def NamedBody683_2546 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 80#64))

def NamedBody683_2547 : StackLang.HolProg 64 :=
.seq NamedBody683_2545 NamedBody683_2546

def NamedBody683_2548 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 11
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 64#64))

def NamedBody683_2549 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 12
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 56#64))

def NamedBody683_2550 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 48#64))

def NamedBody683_2551 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 64#64))

def NamedBody683_2552 : StackLang.HolProg 64 :=
.seq NamedBody683_2550 NamedBody683_2551

def NamedBody683_2553 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 40#64))

def NamedBody683_2554 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 56#64))

def NamedBody683_2555 : StackLang.HolProg 64 :=
.seq NamedBody683_2553 NamedBody683_2554

def NamedBody683_2556 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 32#64))

def NamedBody683_2557 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 48#64))

def NamedBody683_2558 : StackLang.HolProg 64 :=
.seq NamedBody683_2556 NamedBody683_2557

def NamedBody683_2559 : StackLang.HolProg 64 :=
.seq NamedBody683_2555 NamedBody683_2558

def NamedBody683_2560 : StackLang.HolProg 64 :=
.seq NamedBody683_2552 NamedBody683_2559

def NamedBody683_2561 : StackLang.HolProg 64 :=
.seq NamedBody683_2549 NamedBody683_2560

def NamedBody683_2562 : StackLang.HolProg 64 :=
.seq NamedBody683_2548 NamedBody683_2561

def NamedBody683_2563 : StackLang.HolProg 64 :=
.seq NamedBody683_2547 NamedBody683_2562

def NamedBody683_2564 : StackLang.HolProg 64 :=
.seq NamedBody683_2544 NamedBody683_2563

def NamedBody683_2565 : StackLang.HolProg 64 :=
.seq NamedBody683_2543 NamedBody683_2564

def NamedBody683_2566 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def NamedBody683_2567 : StackLang.HolProg 64 :=
.seq NamedBody683_2565 NamedBody683_2566

def NamedBody683_2568 : StackLang.HolProg 64 :=
.call (some (NamedBody683_2542, 1, 683, 62)) (Sum.inl 670) (some (NamedBody683_2567, 683, 63))

def NamedBody683_2569 : StackLang.HolProg 64 :=
.seq NamedBody683_2511 NamedBody683_2568

def NamedBody683_2570 : StackLang.HolProg 64 :=
.seq NamedBody683_2510 NamedBody683_2569

def NamedBody683_2571 : StackLang.HolProg 64 :=
.seq NamedBody683_2509 NamedBody683_2570

def NamedBody683_2572 : StackLang.HolProg 64 :=
.seq NamedBody683_2480 NamedBody683_2571

def NamedBody683_2573 : StackLang.HolProg 64 :=
.seq NamedBody683_2477 NamedBody683_2572

def NamedBody683_2574 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody683_2575 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 10 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def NamedBody683_2576 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 88#64))

def NamedBody683_2577 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 11
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 72#64))

def NamedBody683_2578 : StackLang.HolProg 64 :=
.seq NamedBody683_2576 NamedBody683_2577

def NamedBody683_2579 : StackLang.HolProg 64 :=
.seq NamedBody683_2575 NamedBody683_2578

def NamedBody683_2580 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody683_2581 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 2860#64)

def NamedBody683_2582 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody683_2583 : StackLang.HolProg 64 :=
.seq NamedBody683_2581 NamedBody683_2582

def NamedBody683_2584 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody683_2585 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 2#64)

def NamedBody683_2586 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 10

def NamedBody683_2587 : StackLang.HolProg 64 :=
.seq NamedBody683_2585 NamedBody683_2586

def NamedBody683_2588 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody683_2589 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) NamedBody683_2587 NamedBody683_2588

def NamedBody683_2590 : StackLang.HolProg 64 :=
.seq NamedBody683_2584 NamedBody683_2589

def NamedBody683_2591 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def NamedBody683_2592 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody683_2593 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 683 65

def NamedBody683_2594 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody683_2595 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody683_2596 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody683_2597 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody683_2598 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def NamedBody683_2599 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def NamedBody683_2600 : StackLang.HolProg 64 :=
.seq NamedBody683_2598 NamedBody683_2599

def NamedBody683_2601 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def NamedBody683_2602 : StackLang.HolProg 64 :=
.seq NamedBody683_2600 NamedBody683_2601

def NamedBody683_2603 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody683_2604 : StackLang.HolProg 64 :=
.seq NamedBody683_2602 NamedBody683_2603

def NamedBody683_2605 : StackLang.HolProg 64 :=
.seq NamedBody683_2597 NamedBody683_2604

def NamedBody683_2606 : StackLang.HolProg 64 :=
.seq NamedBody683_2596 NamedBody683_2605

def NamedBody683_2607 : StackLang.HolProg 64 :=
.seq NamedBody683_2595 NamedBody683_2606

def NamedBody683_2608 : StackLang.HolProg 64 :=
.seq NamedBody683_2594 NamedBody683_2607

def NamedBody683_2609 : StackLang.HolProg 64 :=
.seq NamedBody683_2593 NamedBody683_2608

def NamedBody683_2610 : StackLang.HolProg 64 :=
.seq NamedBody683_2592 NamedBody683_2609

def NamedBody683_2611 : StackLang.HolProg 64 :=
.seq NamedBody683_2591 NamedBody683_2610

def NamedBody683_2612 : StackLang.HolProg 64 :=
.seq NamedBody683_2590 NamedBody683_2611

def NamedBody683_2613 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody683_2614 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody683_2615 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody683_2616 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody683_2617 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody683_2618 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody683_2619 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 11
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 104#64))

def NamedBody683_2620 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 88#64))

def NamedBody683_2621 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 12
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 80#64))

def NamedBody683_2622 : StackLang.HolProg 64 :=
.seq NamedBody683_2620 NamedBody683_2621

def NamedBody683_2623 : StackLang.HolProg 64 :=
.seq NamedBody683_2619 NamedBody683_2622

def NamedBody683_2624 : StackLang.HolProg 64 :=
.seq NamedBody683_2618 NamedBody683_2623

def NamedBody683_2625 : StackLang.HolProg 64 :=
.seq NamedBody683_2617 NamedBody683_2624

def NamedBody683_2626 : StackLang.HolProg 64 :=
.seq NamedBody683_2616 NamedBody683_2625

def NamedBody683_2627 : StackLang.HolProg 64 :=
.seq NamedBody683_2615 NamedBody683_2626

def NamedBody683_2628 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 11
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 104#64))

def NamedBody683_2629 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 88#64))

def NamedBody683_2630 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 12
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 80#64))

def NamedBody683_2631 : StackLang.HolProg 64 :=
.seq NamedBody683_2629 NamedBody683_2630

def NamedBody683_2632 : StackLang.HolProg 64 :=
.seq NamedBody683_2628 NamedBody683_2631

def NamedBody683_2633 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def NamedBody683_2634 : StackLang.HolProg 64 :=
.seq NamedBody683_2632 NamedBody683_2633

def NamedBody683_2635 : StackLang.HolProg 64 :=
.call (some (NamedBody683_2627, 1, 683, 64)) (Sum.inl 670) (some (NamedBody683_2634, 683, 65))

def NamedBody683_2636 : StackLang.HolProg 64 :=
.seq NamedBody683_2614 NamedBody683_2635

def NamedBody683_2637 : StackLang.HolProg 64 :=
.seq NamedBody683_2613 NamedBody683_2636

def NamedBody683_2638 : StackLang.HolProg 64 :=
.seq NamedBody683_2612 NamedBody683_2637

def NamedBody683_2639 : StackLang.HolProg 64 :=
.seq NamedBody683_2583 NamedBody683_2638

def NamedBody683_2640 : StackLang.HolProg 64 :=
.seq NamedBody683_2580 NamedBody683_2639

def NamedBody683_2641 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody683_2642 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 10 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def NamedBody683_2643 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 11
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 104#64))

def NamedBody683_2644 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 88#64))

def NamedBody683_2645 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 12
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 80#64))

def NamedBody683_2646 : StackLang.HolProg 64 :=
.seq NamedBody683_2644 NamedBody683_2645

def NamedBody683_2647 : StackLang.HolProg 64 :=
.seq NamedBody683_2643 NamedBody683_2646

def NamedBody683_2648 : StackLang.HolProg 64 :=
.seq NamedBody683_2642 NamedBody683_2647

def NamedBody683_2649 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody683_2650 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 2861#64)

def NamedBody683_2651 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody683_2652 : StackLang.HolProg 64 :=
.seq NamedBody683_2650 NamedBody683_2651

def NamedBody683_2653 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody683_2654 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 2#64)

def NamedBody683_2655 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 10

def NamedBody683_2656 : StackLang.HolProg 64 :=
.seq NamedBody683_2654 NamedBody683_2655

def NamedBody683_2657 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody683_2658 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) NamedBody683_2656 NamedBody683_2657

def NamedBody683_2659 : StackLang.HolProg 64 :=
.seq NamedBody683_2653 NamedBody683_2658

def NamedBody683_2660 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def NamedBody683_2661 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody683_2662 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 683 67

def NamedBody683_2663 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody683_2664 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody683_2665 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody683_2666 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody683_2667 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def NamedBody683_2668 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def NamedBody683_2669 : StackLang.HolProg 64 :=
.seq NamedBody683_2667 NamedBody683_2668

def NamedBody683_2670 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def NamedBody683_2671 : StackLang.HolProg 64 :=
.seq NamedBody683_2669 NamedBody683_2670

def NamedBody683_2672 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody683_2673 : StackLang.HolProg 64 :=
.seq NamedBody683_2671 NamedBody683_2672

def NamedBody683_2674 : StackLang.HolProg 64 :=
.seq NamedBody683_2666 NamedBody683_2673

def NamedBody683_2675 : StackLang.HolProg 64 :=
.seq NamedBody683_2665 NamedBody683_2674

def NamedBody683_2676 : StackLang.HolProg 64 :=
.seq NamedBody683_2664 NamedBody683_2675

def NamedBody683_2677 : StackLang.HolProg 64 :=
.seq NamedBody683_2663 NamedBody683_2676

def NamedBody683_2678 : StackLang.HolProg 64 :=
.seq NamedBody683_2662 NamedBody683_2677

def NamedBody683_2679 : StackLang.HolProg 64 :=
.seq NamedBody683_2661 NamedBody683_2678

def NamedBody683_2680 : StackLang.HolProg 64 :=
.seq NamedBody683_2660 NamedBody683_2679

def NamedBody683_2681 : StackLang.HolProg 64 :=
.seq NamedBody683_2659 NamedBody683_2680

def NamedBody683_2682 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody683_2683 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody683_2684 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody683_2685 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody683_2686 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody683_2687 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody683_2688 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 12
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 104#64))

def NamedBody683_2689 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 88#64))

def NamedBody683_2690 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 13
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 72#64))

def NamedBody683_2691 : StackLang.HolProg 64 :=
.seq NamedBody683_2689 NamedBody683_2690

def NamedBody683_2692 : StackLang.HolProg 64 :=
.seq NamedBody683_2688 NamedBody683_2691

def NamedBody683_2693 : StackLang.HolProg 64 :=
.seq NamedBody683_2687 NamedBody683_2692

def NamedBody683_2694 : StackLang.HolProg 64 :=
.seq NamedBody683_2686 NamedBody683_2693

def NamedBody683_2695 : StackLang.HolProg 64 :=
.seq NamedBody683_2685 NamedBody683_2694

def NamedBody683_2696 : StackLang.HolProg 64 :=
.seq NamedBody683_2684 NamedBody683_2695

def NamedBody683_2697 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 12
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 104#64))

def NamedBody683_2698 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 88#64))

def NamedBody683_2699 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 13
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 72#64))

def NamedBody683_2700 : StackLang.HolProg 64 :=
.seq NamedBody683_2698 NamedBody683_2699

def NamedBody683_2701 : StackLang.HolProg 64 :=
.seq NamedBody683_2697 NamedBody683_2700

def NamedBody683_2702 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def NamedBody683_2703 : StackLang.HolProg 64 :=
.seq NamedBody683_2701 NamedBody683_2702

def NamedBody683_2704 : StackLang.HolProg 64 :=
.call (some (NamedBody683_2696, 1, 683, 66)) (Sum.inl 671) (some (NamedBody683_2703, 683, 67))

def NamedBody683_2705 : StackLang.HolProg 64 :=
.seq NamedBody683_2683 NamedBody683_2704

def NamedBody683_2706 : StackLang.HolProg 64 :=
.seq NamedBody683_2682 NamedBody683_2705

def NamedBody683_2707 : StackLang.HolProg 64 :=
.seq NamedBody683_2681 NamedBody683_2706

def NamedBody683_2708 : StackLang.HolProg 64 :=
.seq NamedBody683_2652 NamedBody683_2707

def NamedBody683_2709 : StackLang.HolProg 64 :=
.seq NamedBody683_2649 NamedBody683_2708

def NamedBody683_2710 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody683_2711 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 10 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def NamedBody683_2712 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 11 12
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 12)))

def NamedBody683_2713 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 12
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 104#64))

def NamedBody683_2714 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 88#64))

def NamedBody683_2715 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 13
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 72#64))

def NamedBody683_2716 : StackLang.HolProg 64 :=
.seq NamedBody683_2714 NamedBody683_2715

def NamedBody683_2717 : StackLang.HolProg 64 :=
.seq NamedBody683_2713 NamedBody683_2716

def NamedBody683_2718 : StackLang.HolProg 64 :=
.seq NamedBody683_2712 NamedBody683_2717

def NamedBody683_2719 : StackLang.HolProg 64 :=
.seq NamedBody683_2711 NamedBody683_2718

def NamedBody683_2720 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody683_2721 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 2862#64)

def NamedBody683_2722 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody683_2723 : StackLang.HolProg 64 :=
.seq NamedBody683_2721 NamedBody683_2722

def NamedBody683_2724 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody683_2725 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 2#64)

def NamedBody683_2726 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 10

def NamedBody683_2727 : StackLang.HolProg 64 :=
.seq NamedBody683_2725 NamedBody683_2726

def NamedBody683_2728 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody683_2729 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) NamedBody683_2727 NamedBody683_2728

def NamedBody683_2730 : StackLang.HolProg 64 :=
.seq NamedBody683_2724 NamedBody683_2729

def NamedBody683_2731 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def NamedBody683_2732 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody683_2733 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 683 69

def NamedBody683_2734 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody683_2735 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody683_2736 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody683_2737 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody683_2738 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def NamedBody683_2739 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def NamedBody683_2740 : StackLang.HolProg 64 :=
.seq NamedBody683_2738 NamedBody683_2739

def NamedBody683_2741 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def NamedBody683_2742 : StackLang.HolProg 64 :=
.seq NamedBody683_2740 NamedBody683_2741

def NamedBody683_2743 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody683_2744 : StackLang.HolProg 64 :=
.seq NamedBody683_2742 NamedBody683_2743

def NamedBody683_2745 : StackLang.HolProg 64 :=
.seq NamedBody683_2737 NamedBody683_2744

def NamedBody683_2746 : StackLang.HolProg 64 :=
.seq NamedBody683_2736 NamedBody683_2745

def NamedBody683_2747 : StackLang.HolProg 64 :=
.seq NamedBody683_2735 NamedBody683_2746

def NamedBody683_2748 : StackLang.HolProg 64 :=
.seq NamedBody683_2734 NamedBody683_2747

def NamedBody683_2749 : StackLang.HolProg 64 :=
.seq NamedBody683_2733 NamedBody683_2748

def NamedBody683_2750 : StackLang.HolProg 64 :=
.seq NamedBody683_2732 NamedBody683_2749

def NamedBody683_2751 : StackLang.HolProg 64 :=
.seq NamedBody683_2731 NamedBody683_2750

def NamedBody683_2752 : StackLang.HolProg 64 :=
.seq NamedBody683_2730 NamedBody683_2751

def NamedBody683_2753 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody683_2754 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody683_2755 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody683_2756 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody683_2757 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody683_2758 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody683_2759 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 13
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 144#64))

def NamedBody683_2760 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 12
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 104#64))

def NamedBody683_2761 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 88#64))

def NamedBody683_2762 : StackLang.HolProg 64 :=
.seq NamedBody683_2760 NamedBody683_2761

def NamedBody683_2763 : StackLang.HolProg 64 :=
.seq NamedBody683_2759 NamedBody683_2762

def NamedBody683_2764 : StackLang.HolProg 64 :=
.seq NamedBody683_2758 NamedBody683_2763

def NamedBody683_2765 : StackLang.HolProg 64 :=
.seq NamedBody683_2757 NamedBody683_2764

def NamedBody683_2766 : StackLang.HolProg 64 :=
.seq NamedBody683_2756 NamedBody683_2765

def NamedBody683_2767 : StackLang.HolProg 64 :=
.seq NamedBody683_2755 NamedBody683_2766

def NamedBody683_2768 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 13
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 144#64))

def NamedBody683_2769 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 12
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 104#64))

def NamedBody683_2770 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 88#64))

def NamedBody683_2771 : StackLang.HolProg 64 :=
.seq NamedBody683_2769 NamedBody683_2770

def NamedBody683_2772 : StackLang.HolProg 64 :=
.seq NamedBody683_2768 NamedBody683_2771

def NamedBody683_2773 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def NamedBody683_2774 : StackLang.HolProg 64 :=
.seq NamedBody683_2772 NamedBody683_2773

def NamedBody683_2775 : StackLang.HolProg 64 :=
.call (some (NamedBody683_2767, 1, 683, 68)) (Sum.inl 670) (some (NamedBody683_2774, 683, 69))

def NamedBody683_2776 : StackLang.HolProg 64 :=
.seq NamedBody683_2754 NamedBody683_2775

def NamedBody683_2777 : StackLang.HolProg 64 :=
.seq NamedBody683_2753 NamedBody683_2776

def NamedBody683_2778 : StackLang.HolProg 64 :=
.seq NamedBody683_2752 NamedBody683_2777

def NamedBody683_2779 : StackLang.HolProg 64 :=
.seq NamedBody683_2723 NamedBody683_2778

def NamedBody683_2780 : StackLang.HolProg 64 :=
.seq NamedBody683_2720 NamedBody683_2779

def NamedBody683_2781 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody683_2782 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 10 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def NamedBody683_2783 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 11 12
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 12)))

def NamedBody683_2784 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 13
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 144#64))

def NamedBody683_2785 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 12
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 104#64))

def NamedBody683_2786 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 88#64))

def NamedBody683_2787 : StackLang.HolProg 64 :=
.seq NamedBody683_2785 NamedBody683_2786

def NamedBody683_2788 : StackLang.HolProg 64 :=
.seq NamedBody683_2784 NamedBody683_2787

def NamedBody683_2789 : StackLang.HolProg 64 :=
.seq NamedBody683_2783 NamedBody683_2788

def NamedBody683_2790 : StackLang.HolProg 64 :=
.seq NamedBody683_2782 NamedBody683_2789

def NamedBody683_2791 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody683_2792 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 2863#64)

def NamedBody683_2793 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody683_2794 : StackLang.HolProg 64 :=
.seq NamedBody683_2792 NamedBody683_2793

def NamedBody683_2795 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody683_2796 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 2#64)

def NamedBody683_2797 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 10

def NamedBody683_2798 : StackLang.HolProg 64 :=
.seq NamedBody683_2796 NamedBody683_2797

def NamedBody683_2799 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody683_2800 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) NamedBody683_2798 NamedBody683_2799

def NamedBody683_2801 : StackLang.HolProg 64 :=
.seq NamedBody683_2795 NamedBody683_2800

def NamedBody683_2802 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def NamedBody683_2803 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody683_2804 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 683 71

def NamedBody683_2805 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody683_2806 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody683_2807 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody683_2808 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody683_2809 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def NamedBody683_2810 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def NamedBody683_2811 : StackLang.HolProg 64 :=
.seq NamedBody683_2809 NamedBody683_2810

def NamedBody683_2812 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def NamedBody683_2813 : StackLang.HolProg 64 :=
.seq NamedBody683_2811 NamedBody683_2812

def NamedBody683_2814 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody683_2815 : StackLang.HolProg 64 :=
.seq NamedBody683_2813 NamedBody683_2814

def NamedBody683_2816 : StackLang.HolProg 64 :=
.seq NamedBody683_2808 NamedBody683_2815

def NamedBody683_2817 : StackLang.HolProg 64 :=
.seq NamedBody683_2807 NamedBody683_2816

def NamedBody683_2818 : StackLang.HolProg 64 :=
.seq NamedBody683_2806 NamedBody683_2817

def NamedBody683_2819 : StackLang.HolProg 64 :=
.seq NamedBody683_2805 NamedBody683_2818

def NamedBody683_2820 : StackLang.HolProg 64 :=
.seq NamedBody683_2804 NamedBody683_2819

def NamedBody683_2821 : StackLang.HolProg 64 :=
.seq NamedBody683_2803 NamedBody683_2820

def NamedBody683_2822 : StackLang.HolProg 64 :=
.seq NamedBody683_2802 NamedBody683_2821

def NamedBody683_2823 : StackLang.HolProg 64 :=
.seq NamedBody683_2801 NamedBody683_2822

def NamedBody683_2824 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody683_2825 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody683_2826 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody683_2827 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody683_2828 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody683_2829 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody683_2830 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 11
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 136#64))

def NamedBody683_2831 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 12
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 96#64))

def NamedBody683_2832 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 88#64))

def NamedBody683_2833 : StackLang.HolProg 64 :=
.seq NamedBody683_2831 NamedBody683_2832

def NamedBody683_2834 : StackLang.HolProg 64 :=
.seq NamedBody683_2830 NamedBody683_2833

def NamedBody683_2835 : StackLang.HolProg 64 :=
.seq NamedBody683_2829 NamedBody683_2834

def NamedBody683_2836 : StackLang.HolProg 64 :=
.seq NamedBody683_2828 NamedBody683_2835

def NamedBody683_2837 : StackLang.HolProg 64 :=
.seq NamedBody683_2827 NamedBody683_2836

def NamedBody683_2838 : StackLang.HolProg 64 :=
.seq NamedBody683_2826 NamedBody683_2837

def NamedBody683_2839 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 11
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 136#64))

def NamedBody683_2840 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 12
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 96#64))

def NamedBody683_2841 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 88#64))

def NamedBody683_2842 : StackLang.HolProg 64 :=
.seq NamedBody683_2840 NamedBody683_2841

def NamedBody683_2843 : StackLang.HolProg 64 :=
.seq NamedBody683_2839 NamedBody683_2842

def NamedBody683_2844 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def NamedBody683_2845 : StackLang.HolProg 64 :=
.seq NamedBody683_2843 NamedBody683_2844

def NamedBody683_2846 : StackLang.HolProg 64 :=
.call (some (NamedBody683_2838, 1, 683, 70)) (Sum.inl 673) (some (NamedBody683_2845, 683, 71))

def NamedBody683_2847 : StackLang.HolProg 64 :=
.seq NamedBody683_2825 NamedBody683_2846

def NamedBody683_2848 : StackLang.HolProg 64 :=
.seq NamedBody683_2824 NamedBody683_2847

def NamedBody683_2849 : StackLang.HolProg 64 :=
.seq NamedBody683_2823 NamedBody683_2848

def NamedBody683_2850 : StackLang.HolProg 64 :=
.seq NamedBody683_2794 NamedBody683_2849

def NamedBody683_2851 : StackLang.HolProg 64 :=
.seq NamedBody683_2791 NamedBody683_2850

def NamedBody683_2852 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody683_2853 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 10 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def NamedBody683_2854 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 13 2#64)

def NamedBody683_2855 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 11
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 136#64))

def NamedBody683_2856 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 12
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 96#64))

def NamedBody683_2857 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 10
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 88#64))

def NamedBody683_2858 : StackLang.HolProg 64 :=
.seq NamedBody683_2856 NamedBody683_2857

def NamedBody683_2859 : StackLang.HolProg 64 :=
.seq NamedBody683_2855 NamedBody683_2858

def NamedBody683_2860 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody683_2861 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 2864#64)

def NamedBody683_2862 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody683_2863 : StackLang.HolProg 64 :=
.seq NamedBody683_2861 NamedBody683_2862

def NamedBody683_2864 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody683_2865 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 2#64)

def NamedBody683_2866 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 10

def NamedBody683_2867 : StackLang.HolProg 64 :=
.seq NamedBody683_2865 NamedBody683_2866

def NamedBody683_2868 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody683_2869 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) NamedBody683_2867 NamedBody683_2868

def NamedBody683_2870 : StackLang.HolProg 64 :=
.seq NamedBody683_2864 NamedBody683_2869

def NamedBody683_2871 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def NamedBody683_2872 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody683_2873 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 683 73

def NamedBody683_2874 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody683_2875 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody683_2876 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody683_2877 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody683_2878 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def NamedBody683_2879 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def NamedBody683_2880 : StackLang.HolProg 64 :=
.seq NamedBody683_2878 NamedBody683_2879

def NamedBody683_2881 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def NamedBody683_2882 : StackLang.HolProg 64 :=
.seq NamedBody683_2880 NamedBody683_2881

def NamedBody683_2883 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody683_2884 : StackLang.HolProg 64 :=
.seq NamedBody683_2882 NamedBody683_2883

def NamedBody683_2885 : StackLang.HolProg 64 :=
.seq NamedBody683_2877 NamedBody683_2884

def NamedBody683_2886 : StackLang.HolProg 64 :=
.seq NamedBody683_2876 NamedBody683_2885

def NamedBody683_2887 : StackLang.HolProg 64 :=
.seq NamedBody683_2875 NamedBody683_2886

def NamedBody683_2888 : StackLang.HolProg 64 :=
.seq NamedBody683_2874 NamedBody683_2887

def NamedBody683_2889 : StackLang.HolProg 64 :=
.seq NamedBody683_2873 NamedBody683_2888

def NamedBody683_2890 : StackLang.HolProg 64 :=
.seq NamedBody683_2872 NamedBody683_2889

def NamedBody683_2891 : StackLang.HolProg 64 :=
.seq NamedBody683_2871 NamedBody683_2890

def NamedBody683_2892 : StackLang.HolProg 64 :=
.seq NamedBody683_2870 NamedBody683_2891

def NamedBody683_2893 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody683_2894 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody683_2895 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody683_2896 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody683_2897 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody683_2898 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody683_2899 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 13
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 136#64))

def NamedBody683_2900 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 12
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 104#64))

def NamedBody683_2901 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 88#64))

def NamedBody683_2902 : StackLang.HolProg 64 :=
.seq NamedBody683_2900 NamedBody683_2901

def NamedBody683_2903 : StackLang.HolProg 64 :=
.seq NamedBody683_2899 NamedBody683_2902

def NamedBody683_2904 : StackLang.HolProg 64 :=
.seq NamedBody683_2898 NamedBody683_2903

def NamedBody683_2905 : StackLang.HolProg 64 :=
.seq NamedBody683_2897 NamedBody683_2904

def NamedBody683_2906 : StackLang.HolProg 64 :=
.seq NamedBody683_2896 NamedBody683_2905

def NamedBody683_2907 : StackLang.HolProg 64 :=
.seq NamedBody683_2895 NamedBody683_2906

def NamedBody683_2908 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 13
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 136#64))

def NamedBody683_2909 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 12
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 104#64))

def NamedBody683_2910 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 88#64))

def NamedBody683_2911 : StackLang.HolProg 64 :=
.seq NamedBody683_2909 NamedBody683_2910

def NamedBody683_2912 : StackLang.HolProg 64 :=
.seq NamedBody683_2908 NamedBody683_2911

def NamedBody683_2913 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def NamedBody683_2914 : StackLang.HolProg 64 :=
.seq NamedBody683_2912 NamedBody683_2913

def NamedBody683_2915 : StackLang.HolProg 64 :=
.call (some (NamedBody683_2907, 1, 683, 72)) (Sum.inl 675) (some (NamedBody683_2914, 683, 73))

def NamedBody683_2916 : StackLang.HolProg 64 :=
.seq NamedBody683_2894 NamedBody683_2915

def NamedBody683_2917 : StackLang.HolProg 64 :=
.seq NamedBody683_2893 NamedBody683_2916

def NamedBody683_2918 : StackLang.HolProg 64 :=
.seq NamedBody683_2892 NamedBody683_2917

def NamedBody683_2919 : StackLang.HolProg 64 :=
.seq NamedBody683_2863 NamedBody683_2918

def NamedBody683_2920 : StackLang.HolProg 64 :=
.seq NamedBody683_2860 NamedBody683_2919

def NamedBody683_2921 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody683_2922 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 10 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def NamedBody683_2923 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 11 12
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 12)))

def NamedBody683_2924 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 13
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 136#64))

def NamedBody683_2925 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 12
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 104#64))

def NamedBody683_2926 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 88#64))

def NamedBody683_2927 : StackLang.HolProg 64 :=
.seq NamedBody683_2925 NamedBody683_2926

def NamedBody683_2928 : StackLang.HolProg 64 :=
.seq NamedBody683_2924 NamedBody683_2927

def NamedBody683_2929 : StackLang.HolProg 64 :=
.seq NamedBody683_2923 NamedBody683_2928

def NamedBody683_2930 : StackLang.HolProg 64 :=
.seq NamedBody683_2922 NamedBody683_2929

def NamedBody683_2931 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody683_2932 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 2865#64)

def NamedBody683_2933 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody683_2934 : StackLang.HolProg 64 :=
.seq NamedBody683_2932 NamedBody683_2933

def NamedBody683_2935 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody683_2936 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 2#64)

def NamedBody683_2937 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 10

def NamedBody683_2938 : StackLang.HolProg 64 :=
.seq NamedBody683_2936 NamedBody683_2937

def NamedBody683_2939 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody683_2940 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) NamedBody683_2938 NamedBody683_2939

def NamedBody683_2941 : StackLang.HolProg 64 :=
.seq NamedBody683_2935 NamedBody683_2940

def NamedBody683_2942 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def NamedBody683_2943 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody683_2944 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 683 75

def NamedBody683_2945 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody683_2946 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody683_2947 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody683_2948 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody683_2949 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def NamedBody683_2950 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def NamedBody683_2951 : StackLang.HolProg 64 :=
.seq NamedBody683_2949 NamedBody683_2950

def NamedBody683_2952 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def NamedBody683_2953 : StackLang.HolProg 64 :=
.seq NamedBody683_2951 NamedBody683_2952

def NamedBody683_2954 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody683_2955 : StackLang.HolProg 64 :=
.seq NamedBody683_2953 NamedBody683_2954

def NamedBody683_2956 : StackLang.HolProg 64 :=
.seq NamedBody683_2948 NamedBody683_2955

def NamedBody683_2957 : StackLang.HolProg 64 :=
.seq NamedBody683_2947 NamedBody683_2956

def NamedBody683_2958 : StackLang.HolProg 64 :=
.seq NamedBody683_2946 NamedBody683_2957

def NamedBody683_2959 : StackLang.HolProg 64 :=
.seq NamedBody683_2945 NamedBody683_2958

def NamedBody683_2960 : StackLang.HolProg 64 :=
.seq NamedBody683_2944 NamedBody683_2959

def NamedBody683_2961 : StackLang.HolProg 64 :=
.seq NamedBody683_2943 NamedBody683_2960

def NamedBody683_2962 : StackLang.HolProg 64 :=
.seq NamedBody683_2942 NamedBody683_2961

def NamedBody683_2963 : StackLang.HolProg 64 :=
.seq NamedBody683_2941 NamedBody683_2962

def NamedBody683_2964 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody683_2965 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody683_2966 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody683_2967 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody683_2968 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody683_2969 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody683_2970 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 11
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 136#64))

def NamedBody683_2971 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 13
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 104#64))

def NamedBody683_2972 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 88#64))

def NamedBody683_2973 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 12
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 56#64))

def NamedBody683_2974 : StackLang.HolProg 64 :=
.seq NamedBody683_2972 NamedBody683_2973

def NamedBody683_2975 : StackLang.HolProg 64 :=
.seq NamedBody683_2971 NamedBody683_2974

def NamedBody683_2976 : StackLang.HolProg 64 :=
.seq NamedBody683_2970 NamedBody683_2975

def NamedBody683_2977 : StackLang.HolProg 64 :=
.seq NamedBody683_2969 NamedBody683_2976

def NamedBody683_2978 : StackLang.HolProg 64 :=
.seq NamedBody683_2968 NamedBody683_2977

def NamedBody683_2979 : StackLang.HolProg 64 :=
.seq NamedBody683_2967 NamedBody683_2978

def NamedBody683_2980 : StackLang.HolProg 64 :=
.seq NamedBody683_2966 NamedBody683_2979

def NamedBody683_2981 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 11
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 136#64))

def NamedBody683_2982 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 13
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 104#64))

def NamedBody683_2983 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 88#64))

def NamedBody683_2984 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 12
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 56#64))

def NamedBody683_2985 : StackLang.HolProg 64 :=
.seq NamedBody683_2983 NamedBody683_2984

def NamedBody683_2986 : StackLang.HolProg 64 :=
.seq NamedBody683_2982 NamedBody683_2985

def NamedBody683_2987 : StackLang.HolProg 64 :=
.seq NamedBody683_2981 NamedBody683_2986

def NamedBody683_2988 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def NamedBody683_2989 : StackLang.HolProg 64 :=
.seq NamedBody683_2987 NamedBody683_2988

def NamedBody683_2990 : StackLang.HolProg 64 :=
.call (some (NamedBody683_2980, 1, 683, 74)) (Sum.inl 673) (some (NamedBody683_2989, 683, 75))

def NamedBody683_2991 : StackLang.HolProg 64 :=
.seq NamedBody683_2965 NamedBody683_2990

def NamedBody683_2992 : StackLang.HolProg 64 :=
.seq NamedBody683_2964 NamedBody683_2991

def NamedBody683_2993 : StackLang.HolProg 64 :=
.seq NamedBody683_2963 NamedBody683_2992

def NamedBody683_2994 : StackLang.HolProg 64 :=
.seq NamedBody683_2934 NamedBody683_2993

def NamedBody683_2995 : StackLang.HolProg 64 :=
.seq NamedBody683_2931 NamedBody683_2994

def NamedBody683_2996 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody683_2997 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 10 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def NamedBody683_2998 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 11
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 136#64))

def NamedBody683_2999 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 13
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 104#64))

def NamedBody683_3000 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 88#64))

def NamedBody683_3001 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 12
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 56#64))

def NamedBody683_3002 : StackLang.HolProg 64 :=
.seq NamedBody683_3000 NamedBody683_3001

def NamedBody683_3003 : StackLang.HolProg 64 :=
.seq NamedBody683_2999 NamedBody683_3002

def NamedBody683_3004 : StackLang.HolProg 64 :=
.seq NamedBody683_2998 NamedBody683_3003

def NamedBody683_3005 : StackLang.HolProg 64 :=
.seq NamedBody683_2997 NamedBody683_3004

def NamedBody683_3006 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody683_3007 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 2866#64)

def NamedBody683_3008 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody683_3009 : StackLang.HolProg 64 :=
.seq NamedBody683_3007 NamedBody683_3008

def NamedBody683_3010 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody683_3011 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 2#64)

def NamedBody683_3012 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 10

def NamedBody683_3013 : StackLang.HolProg 64 :=
.seq NamedBody683_3011 NamedBody683_3012

def NamedBody683_3014 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody683_3015 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) NamedBody683_3013 NamedBody683_3014

def NamedBody683_3016 : StackLang.HolProg 64 :=
.seq NamedBody683_3010 NamedBody683_3015

def NamedBody683_3017 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def NamedBody683_3018 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody683_3019 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 683 77

def NamedBody683_3020 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody683_3021 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody683_3022 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody683_3023 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody683_3024 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def NamedBody683_3025 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def NamedBody683_3026 : StackLang.HolProg 64 :=
.seq NamedBody683_3024 NamedBody683_3025

def NamedBody683_3027 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def NamedBody683_3028 : StackLang.HolProg 64 :=
.seq NamedBody683_3026 NamedBody683_3027

def NamedBody683_3029 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody683_3030 : StackLang.HolProg 64 :=
.seq NamedBody683_3028 NamedBody683_3029

def NamedBody683_3031 : StackLang.HolProg 64 :=
.seq NamedBody683_3023 NamedBody683_3030

def NamedBody683_3032 : StackLang.HolProg 64 :=
.seq NamedBody683_3022 NamedBody683_3031

def NamedBody683_3033 : StackLang.HolProg 64 :=
.seq NamedBody683_3021 NamedBody683_3032

def NamedBody683_3034 : StackLang.HolProg 64 :=
.seq NamedBody683_3020 NamedBody683_3033

def NamedBody683_3035 : StackLang.HolProg 64 :=
.seq NamedBody683_3019 NamedBody683_3034

def NamedBody683_3036 : StackLang.HolProg 64 :=
.seq NamedBody683_3018 NamedBody683_3035

def NamedBody683_3037 : StackLang.HolProg 64 :=
.seq NamedBody683_3017 NamedBody683_3036

def NamedBody683_3038 : StackLang.HolProg 64 :=
.seq NamedBody683_3016 NamedBody683_3037

def NamedBody683_3039 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody683_3040 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody683_3041 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody683_3042 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody683_3043 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody683_3044 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody683_3045 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 13
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 104#64))

def NamedBody683_3046 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 12
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 96#64))

def NamedBody683_3047 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 88#64))

def NamedBody683_3048 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 80#64))

def NamedBody683_3049 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 96#64))

def NamedBody683_3050 : StackLang.HolProg 64 :=
.seq NamedBody683_3048 NamedBody683_3049

def NamedBody683_3051 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 72#64))

def NamedBody683_3052 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 88#64))

def NamedBody683_3053 : StackLang.HolProg 64 :=
.seq NamedBody683_3051 NamedBody683_3052

def NamedBody683_3054 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 64#64))

def NamedBody683_3055 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 80#64))

def NamedBody683_3056 : StackLang.HolProg 64 :=
.seq NamedBody683_3054 NamedBody683_3055

def NamedBody683_3057 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 11
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 56#64))

def NamedBody683_3058 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 48#64))

def NamedBody683_3059 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 64#64))

def NamedBody683_3060 : StackLang.HolProg 64 :=
.seq NamedBody683_3058 NamedBody683_3059

def NamedBody683_3061 : StackLang.HolProg 64 :=
.seq NamedBody683_3057 NamedBody683_3060

def NamedBody683_3062 : StackLang.HolProg 64 :=
.seq NamedBody683_3056 NamedBody683_3061

def NamedBody683_3063 : StackLang.HolProg 64 :=
.seq NamedBody683_3053 NamedBody683_3062

def NamedBody683_3064 : StackLang.HolProg 64 :=
.seq NamedBody683_3050 NamedBody683_3063

def NamedBody683_3065 : StackLang.HolProg 64 :=
.seq NamedBody683_3047 NamedBody683_3064

def NamedBody683_3066 : StackLang.HolProg 64 :=
.seq NamedBody683_3046 NamedBody683_3065

def NamedBody683_3067 : StackLang.HolProg 64 :=
.seq NamedBody683_3045 NamedBody683_3066

def NamedBody683_3068 : StackLang.HolProg 64 :=
.seq NamedBody683_3044 NamedBody683_3067

def NamedBody683_3069 : StackLang.HolProg 64 :=
.seq NamedBody683_3043 NamedBody683_3068

def NamedBody683_3070 : StackLang.HolProg 64 :=
.seq NamedBody683_3042 NamedBody683_3069

def NamedBody683_3071 : StackLang.HolProg 64 :=
.seq NamedBody683_3041 NamedBody683_3070

def NamedBody683_3072 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 13
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 104#64))

def NamedBody683_3073 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 12
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 96#64))

def NamedBody683_3074 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 88#64))

def NamedBody683_3075 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 80#64))

def NamedBody683_3076 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 96#64))

def NamedBody683_3077 : StackLang.HolProg 64 :=
.seq NamedBody683_3075 NamedBody683_3076

def NamedBody683_3078 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 72#64))

def NamedBody683_3079 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 88#64))

def NamedBody683_3080 : StackLang.HolProg 64 :=
.seq NamedBody683_3078 NamedBody683_3079

def NamedBody683_3081 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 64#64))

def NamedBody683_3082 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 80#64))

def NamedBody683_3083 : StackLang.HolProg 64 :=
.seq NamedBody683_3081 NamedBody683_3082

def NamedBody683_3084 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 11
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 56#64))

def NamedBody683_3085 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 48#64))

def NamedBody683_3086 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 64#64))

def NamedBody683_3087 : StackLang.HolProg 64 :=
.seq NamedBody683_3085 NamedBody683_3086

def NamedBody683_3088 : StackLang.HolProg 64 :=
.seq NamedBody683_3084 NamedBody683_3087

def NamedBody683_3089 : StackLang.HolProg 64 :=
.seq NamedBody683_3083 NamedBody683_3088

def NamedBody683_3090 : StackLang.HolProg 64 :=
.seq NamedBody683_3080 NamedBody683_3089

def NamedBody683_3091 : StackLang.HolProg 64 :=
.seq NamedBody683_3077 NamedBody683_3090

def NamedBody683_3092 : StackLang.HolProg 64 :=
.seq NamedBody683_3074 NamedBody683_3091

def NamedBody683_3093 : StackLang.HolProg 64 :=
.seq NamedBody683_3073 NamedBody683_3092

def NamedBody683_3094 : StackLang.HolProg 64 :=
.seq NamedBody683_3072 NamedBody683_3093

def NamedBody683_3095 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def NamedBody683_3096 : StackLang.HolProg 64 :=
.seq NamedBody683_3094 NamedBody683_3095

def NamedBody683_3097 : StackLang.HolProg 64 :=
.call (some (NamedBody683_3071, 1, 683, 76)) (Sum.inl 670) (some (NamedBody683_3096, 683, 77))

def NamedBody683_3098 : StackLang.HolProg 64 :=
.seq NamedBody683_3040 NamedBody683_3097

def NamedBody683_3099 : StackLang.HolProg 64 :=
.seq NamedBody683_3039 NamedBody683_3098

def NamedBody683_3100 : StackLang.HolProg 64 :=
.seq NamedBody683_3038 NamedBody683_3099

def NamedBody683_3101 : StackLang.HolProg 64 :=
.seq NamedBody683_3009 NamedBody683_3100

def NamedBody683_3102 : StackLang.HolProg 64 :=
.seq NamedBody683_3006 NamedBody683_3101

def NamedBody683_3103 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody683_3104 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 10 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def NamedBody683_3105 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 104#64))

def NamedBody683_3106 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 11
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 72#64))

def NamedBody683_3107 : StackLang.HolProg 64 :=
.seq NamedBody683_3105 NamedBody683_3106

def NamedBody683_3108 : StackLang.HolProg 64 :=
.seq NamedBody683_3104 NamedBody683_3107

def NamedBody683_3109 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody683_3110 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 2867#64)

def NamedBody683_3111 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody683_3112 : StackLang.HolProg 64 :=
.seq NamedBody683_3110 NamedBody683_3111

def NamedBody683_3113 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody683_3114 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 2#64)

def NamedBody683_3115 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 10

def NamedBody683_3116 : StackLang.HolProg 64 :=
.seq NamedBody683_3114 NamedBody683_3115

def NamedBody683_3117 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody683_3118 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) NamedBody683_3116 NamedBody683_3117

def NamedBody683_3119 : StackLang.HolProg 64 :=
.seq NamedBody683_3113 NamedBody683_3118

def NamedBody683_3120 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def NamedBody683_3121 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody683_3122 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 683 79

def NamedBody683_3123 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody683_3124 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody683_3125 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody683_3126 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody683_3127 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def NamedBody683_3128 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def NamedBody683_3129 : StackLang.HolProg 64 :=
.seq NamedBody683_3127 NamedBody683_3128

def NamedBody683_3130 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def NamedBody683_3131 : StackLang.HolProg 64 :=
.seq NamedBody683_3129 NamedBody683_3130

def NamedBody683_3132 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody683_3133 : StackLang.HolProg 64 :=
.seq NamedBody683_3131 NamedBody683_3132

def NamedBody683_3134 : StackLang.HolProg 64 :=
.seq NamedBody683_3126 NamedBody683_3133

def NamedBody683_3135 : StackLang.HolProg 64 :=
.seq NamedBody683_3125 NamedBody683_3134

def NamedBody683_3136 : StackLang.HolProg 64 :=
.seq NamedBody683_3124 NamedBody683_3135

def NamedBody683_3137 : StackLang.HolProg 64 :=
.seq NamedBody683_3123 NamedBody683_3136

def NamedBody683_3138 : StackLang.HolProg 64 :=
.seq NamedBody683_3122 NamedBody683_3137

def NamedBody683_3139 : StackLang.HolProg 64 :=
.seq NamedBody683_3121 NamedBody683_3138

def NamedBody683_3140 : StackLang.HolProg 64 :=
.seq NamedBody683_3120 NamedBody683_3139

def NamedBody683_3141 : StackLang.HolProg 64 :=
.seq NamedBody683_3119 NamedBody683_3140

def NamedBody683_3142 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody683_3143 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody683_3144 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody683_3145 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody683_3146 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody683_3147 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody683_3148 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 104#64))

def NamedBody683_3149 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 12
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 96#64))

def NamedBody683_3150 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 88#64))

def NamedBody683_3151 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 96#64))

def NamedBody683_3152 : StackLang.HolProg 64 :=
.seq NamedBody683_3150 NamedBody683_3151

def NamedBody683_3153 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 80#64))

def NamedBody683_3154 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 88#64))

def NamedBody683_3155 : StackLang.HolProg 64 :=
.seq NamedBody683_3153 NamedBody683_3154

def NamedBody683_3156 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 13
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 72#64))

def NamedBody683_3157 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 64#64))

def NamedBody683_3158 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 72#64))

def NamedBody683_3159 : StackLang.HolProg 64 :=
.seq NamedBody683_3157 NamedBody683_3158

def NamedBody683_3160 : StackLang.HolProg 64 :=
.seq NamedBody683_3156 NamedBody683_3159

def NamedBody683_3161 : StackLang.HolProg 64 :=
.seq NamedBody683_3155 NamedBody683_3160

def NamedBody683_3162 : StackLang.HolProg 64 :=
.seq NamedBody683_3152 NamedBody683_3161

def NamedBody683_3163 : StackLang.HolProg 64 :=
.seq NamedBody683_3149 NamedBody683_3162

def NamedBody683_3164 : StackLang.HolProg 64 :=
.seq NamedBody683_3148 NamedBody683_3163

def NamedBody683_3165 : StackLang.HolProg 64 :=
.seq NamedBody683_3147 NamedBody683_3164

def NamedBody683_3166 : StackLang.HolProg 64 :=
.seq NamedBody683_3146 NamedBody683_3165

def NamedBody683_3167 : StackLang.HolProg 64 :=
.seq NamedBody683_3145 NamedBody683_3166

def NamedBody683_3168 : StackLang.HolProg 64 :=
.seq NamedBody683_3144 NamedBody683_3167

def NamedBody683_3169 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 104#64))

def NamedBody683_3170 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 12
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 96#64))

def NamedBody683_3171 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 88#64))

def NamedBody683_3172 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 96#64))

def NamedBody683_3173 : StackLang.HolProg 64 :=
.seq NamedBody683_3171 NamedBody683_3172

def NamedBody683_3174 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 80#64))

def NamedBody683_3175 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 88#64))

def NamedBody683_3176 : StackLang.HolProg 64 :=
.seq NamedBody683_3174 NamedBody683_3175

def NamedBody683_3177 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 13
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 72#64))

def NamedBody683_3178 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 64#64))

def NamedBody683_3179 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 72#64))

def NamedBody683_3180 : StackLang.HolProg 64 :=
.seq NamedBody683_3178 NamedBody683_3179

def NamedBody683_3181 : StackLang.HolProg 64 :=
.seq NamedBody683_3177 NamedBody683_3180

def NamedBody683_3182 : StackLang.HolProg 64 :=
.seq NamedBody683_3176 NamedBody683_3181

def NamedBody683_3183 : StackLang.HolProg 64 :=
.seq NamedBody683_3173 NamedBody683_3182

def NamedBody683_3184 : StackLang.HolProg 64 :=
.seq NamedBody683_3170 NamedBody683_3183

def NamedBody683_3185 : StackLang.HolProg 64 :=
.seq NamedBody683_3169 NamedBody683_3184

def NamedBody683_3186 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def NamedBody683_3187 : StackLang.HolProg 64 :=
.seq NamedBody683_3185 NamedBody683_3186

def NamedBody683_3188 : StackLang.HolProg 64 :=
.call (some (NamedBody683_3168, 1, 683, 78)) (Sum.inl 673) (some (NamedBody683_3187, 683, 79))

def NamedBody683_3189 : StackLang.HolProg 64 :=
.seq NamedBody683_3143 NamedBody683_3188

def NamedBody683_3190 : StackLang.HolProg 64 :=
.seq NamedBody683_3142 NamedBody683_3189

def NamedBody683_3191 : StackLang.HolProg 64 :=
.seq NamedBody683_3141 NamedBody683_3190

def NamedBody683_3192 : StackLang.HolProg 64 :=
.seq NamedBody683_3112 NamedBody683_3191

def NamedBody683_3193 : StackLang.HolProg 64 :=
.seq NamedBody683_3109 NamedBody683_3192

def NamedBody683_3194 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody683_3195 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 10 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def NamedBody683_3196 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 11 13
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 13)))

def NamedBody683_3197 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 104#64))

def NamedBody683_3198 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 13
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 80#64))

def NamedBody683_3199 : StackLang.HolProg 64 :=
.seq NamedBody683_3197 NamedBody683_3198

def NamedBody683_3200 : StackLang.HolProg 64 :=
.seq NamedBody683_3196 NamedBody683_3199

def NamedBody683_3201 : StackLang.HolProg 64 :=
.seq NamedBody683_3195 NamedBody683_3200

def NamedBody683_3202 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody683_3203 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 2868#64)

def NamedBody683_3204 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody683_3205 : StackLang.HolProg 64 :=
.seq NamedBody683_3203 NamedBody683_3204

def NamedBody683_3206 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody683_3207 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 2#64)

def NamedBody683_3208 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 10

def NamedBody683_3209 : StackLang.HolProg 64 :=
.seq NamedBody683_3207 NamedBody683_3208

def NamedBody683_3210 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody683_3211 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) NamedBody683_3209 NamedBody683_3210

def NamedBody683_3212 : StackLang.HolProg 64 :=
.seq NamedBody683_3206 NamedBody683_3211

def NamedBody683_3213 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def NamedBody683_3214 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody683_3215 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 683 81

def NamedBody683_3216 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody683_3217 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody683_3218 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody683_3219 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody683_3220 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def NamedBody683_3221 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def NamedBody683_3222 : StackLang.HolProg 64 :=
.seq NamedBody683_3220 NamedBody683_3221

def NamedBody683_3223 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def NamedBody683_3224 : StackLang.HolProg 64 :=
.seq NamedBody683_3222 NamedBody683_3223

def NamedBody683_3225 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody683_3226 : StackLang.HolProg 64 :=
.seq NamedBody683_3224 NamedBody683_3225

def NamedBody683_3227 : StackLang.HolProg 64 :=
.seq NamedBody683_3219 NamedBody683_3226

def NamedBody683_3228 : StackLang.HolProg 64 :=
.seq NamedBody683_3218 NamedBody683_3227

def NamedBody683_3229 : StackLang.HolProg 64 :=
.seq NamedBody683_3217 NamedBody683_3228

def NamedBody683_3230 : StackLang.HolProg 64 :=
.seq NamedBody683_3216 NamedBody683_3229

def NamedBody683_3231 : StackLang.HolProg 64 :=
.seq NamedBody683_3215 NamedBody683_3230

def NamedBody683_3232 : StackLang.HolProg 64 :=
.seq NamedBody683_3214 NamedBody683_3231

def NamedBody683_3233 : StackLang.HolProg 64 :=
.seq NamedBody683_3213 NamedBody683_3232

def NamedBody683_3234 : StackLang.HolProg 64 :=
.seq NamedBody683_3212 NamedBody683_3233

def NamedBody683_3235 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody683_3236 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody683_3237 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody683_3238 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody683_3239 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody683_3240 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody683_3241 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 12
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 144#64))

def NamedBody683_3242 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 13
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 120#64))

def NamedBody683_3243 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 112#64))

def NamedBody683_3244 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 120#64))

def NamedBody683_3245 : StackLang.HolProg 64 :=
.seq NamedBody683_3243 NamedBody683_3244

def NamedBody683_3246 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 104#64))

def NamedBody683_3247 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 96#64))

def NamedBody683_3248 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 104#64))

def NamedBody683_3249 : StackLang.HolProg 64 :=
.seq NamedBody683_3247 NamedBody683_3248

def NamedBody683_3250 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 88#64))

def NamedBody683_3251 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 96#64))

def NamedBody683_3252 : StackLang.HolProg 64 :=
.seq NamedBody683_3250 NamedBody683_3251

def NamedBody683_3253 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 80#64))

def NamedBody683_3254 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 88#64))

def NamedBody683_3255 : StackLang.HolProg 64 :=
.seq NamedBody683_3253 NamedBody683_3254

def NamedBody683_3256 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 11
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 72#64))

def NamedBody683_3257 : StackLang.HolProg 64 :=
.seq NamedBody683_3255 NamedBody683_3256

def NamedBody683_3258 : StackLang.HolProg 64 :=
.seq NamedBody683_3252 NamedBody683_3257

def NamedBody683_3259 : StackLang.HolProg 64 :=
.seq NamedBody683_3249 NamedBody683_3258

def NamedBody683_3260 : StackLang.HolProg 64 :=
.seq NamedBody683_3246 NamedBody683_3259

def NamedBody683_3261 : StackLang.HolProg 64 :=
.seq NamedBody683_3245 NamedBody683_3260

def NamedBody683_3262 : StackLang.HolProg 64 :=
.seq NamedBody683_3242 NamedBody683_3261

def NamedBody683_3263 : StackLang.HolProg 64 :=
.seq NamedBody683_3241 NamedBody683_3262

def NamedBody683_3264 : StackLang.HolProg 64 :=
.seq NamedBody683_3240 NamedBody683_3263

def NamedBody683_3265 : StackLang.HolProg 64 :=
.seq NamedBody683_3239 NamedBody683_3264

def NamedBody683_3266 : StackLang.HolProg 64 :=
.seq NamedBody683_3238 NamedBody683_3265

def NamedBody683_3267 : StackLang.HolProg 64 :=
.seq NamedBody683_3237 NamedBody683_3266

def NamedBody683_3268 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 12
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 144#64))

def NamedBody683_3269 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 13
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 120#64))

def NamedBody683_3270 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 112#64))

def NamedBody683_3271 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 120#64))

def NamedBody683_3272 : StackLang.HolProg 64 :=
.seq NamedBody683_3270 NamedBody683_3271

def NamedBody683_3273 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 104#64))

def NamedBody683_3274 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 96#64))

def NamedBody683_3275 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 104#64))

def NamedBody683_3276 : StackLang.HolProg 64 :=
.seq NamedBody683_3274 NamedBody683_3275

def NamedBody683_3277 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 88#64))

def NamedBody683_3278 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 96#64))

def NamedBody683_3279 : StackLang.HolProg 64 :=
.seq NamedBody683_3277 NamedBody683_3278

def NamedBody683_3280 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 80#64))

def NamedBody683_3281 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 88#64))

def NamedBody683_3282 : StackLang.HolProg 64 :=
.seq NamedBody683_3280 NamedBody683_3281

def NamedBody683_3283 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 11
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 72#64))

def NamedBody683_3284 : StackLang.HolProg 64 :=
.seq NamedBody683_3282 NamedBody683_3283

def NamedBody683_3285 : StackLang.HolProg 64 :=
.seq NamedBody683_3279 NamedBody683_3284

def NamedBody683_3286 : StackLang.HolProg 64 :=
.seq NamedBody683_3276 NamedBody683_3285

def NamedBody683_3287 : StackLang.HolProg 64 :=
.seq NamedBody683_3273 NamedBody683_3286

def NamedBody683_3288 : StackLang.HolProg 64 :=
.seq NamedBody683_3272 NamedBody683_3287

def NamedBody683_3289 : StackLang.HolProg 64 :=
.seq NamedBody683_3269 NamedBody683_3288

def NamedBody683_3290 : StackLang.HolProg 64 :=
.seq NamedBody683_3268 NamedBody683_3289

def NamedBody683_3291 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def NamedBody683_3292 : StackLang.HolProg 64 :=
.seq NamedBody683_3290 NamedBody683_3291

def NamedBody683_3293 : StackLang.HolProg 64 :=
.call (some (NamedBody683_3267, 1, 683, 80)) (Sum.inl 670) (some (NamedBody683_3292, 683, 81))

def NamedBody683_3294 : StackLang.HolProg 64 :=
.seq NamedBody683_3236 NamedBody683_3293

def NamedBody683_3295 : StackLang.HolProg 64 :=
.seq NamedBody683_3235 NamedBody683_3294

def NamedBody683_3296 : StackLang.HolProg 64 :=
.seq NamedBody683_3234 NamedBody683_3295

def NamedBody683_3297 : StackLang.HolProg 64 :=
.seq NamedBody683_3205 NamedBody683_3296

def NamedBody683_3298 : StackLang.HolProg 64 :=
.seq NamedBody683_3202 NamedBody683_3297

def NamedBody683_3299 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody683_3300 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 10 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def NamedBody683_3301 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 12
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 144#64))

def NamedBody683_3302 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 112#64))

def NamedBody683_3303 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 11
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 80#64))

def NamedBody683_3304 : StackLang.HolProg 64 :=
.seq NamedBody683_3302 NamedBody683_3303

def NamedBody683_3305 : StackLang.HolProg 64 :=
.seq NamedBody683_3301 NamedBody683_3304

def NamedBody683_3306 : StackLang.HolProg 64 :=
.seq NamedBody683_3300 NamedBody683_3305

def NamedBody683_3307 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody683_3308 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 2869#64)

def NamedBody683_3309 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody683_3310 : StackLang.HolProg 64 :=
.seq NamedBody683_3308 NamedBody683_3309

def NamedBody683_3311 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody683_3312 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 2#64)

def NamedBody683_3313 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 10

def NamedBody683_3314 : StackLang.HolProg 64 :=
.seq NamedBody683_3312 NamedBody683_3313

def NamedBody683_3315 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody683_3316 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) NamedBody683_3314 NamedBody683_3315

def NamedBody683_3317 : StackLang.HolProg 64 :=
.seq NamedBody683_3311 NamedBody683_3316

def NamedBody683_3318 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def NamedBody683_3319 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody683_3320 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 683 83

def NamedBody683_3321 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody683_3322 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody683_3323 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody683_3324 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody683_3325 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def NamedBody683_3326 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def NamedBody683_3327 : StackLang.HolProg 64 :=
.seq NamedBody683_3325 NamedBody683_3326

def NamedBody683_3328 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def NamedBody683_3329 : StackLang.HolProg 64 :=
.seq NamedBody683_3327 NamedBody683_3328

def NamedBody683_3330 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody683_3331 : StackLang.HolProg 64 :=
.seq NamedBody683_3329 NamedBody683_3330

def NamedBody683_3332 : StackLang.HolProg 64 :=
.seq NamedBody683_3324 NamedBody683_3331

def NamedBody683_3333 : StackLang.HolProg 64 :=
.seq NamedBody683_3323 NamedBody683_3332

def NamedBody683_3334 : StackLang.HolProg 64 :=
.seq NamedBody683_3322 NamedBody683_3333

def NamedBody683_3335 : StackLang.HolProg 64 :=
.seq NamedBody683_3321 NamedBody683_3334

def NamedBody683_3336 : StackLang.HolProg 64 :=
.seq NamedBody683_3320 NamedBody683_3335

def NamedBody683_3337 : StackLang.HolProg 64 :=
.seq NamedBody683_3319 NamedBody683_3336

def NamedBody683_3338 : StackLang.HolProg 64 :=
.seq NamedBody683_3318 NamedBody683_3337

def NamedBody683_3339 : StackLang.HolProg 64 :=
.seq NamedBody683_3317 NamedBody683_3338

def NamedBody683_3340 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody683_3341 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody683_3342 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody683_3343 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody683_3344 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody683_3345 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody683_3346 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 112#64))

def NamedBody683_3347 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 12
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 88#64))

def NamedBody683_3348 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 13
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 80#64))

def NamedBody683_3349 : StackLang.HolProg 64 :=
.seq NamedBody683_3347 NamedBody683_3348

def NamedBody683_3350 : StackLang.HolProg 64 :=
.seq NamedBody683_3346 NamedBody683_3349

def NamedBody683_3351 : StackLang.HolProg 64 :=
.seq NamedBody683_3345 NamedBody683_3350

def NamedBody683_3352 : StackLang.HolProg 64 :=
.seq NamedBody683_3344 NamedBody683_3351

def NamedBody683_3353 : StackLang.HolProg 64 :=
.seq NamedBody683_3343 NamedBody683_3352

def NamedBody683_3354 : StackLang.HolProg 64 :=
.seq NamedBody683_3342 NamedBody683_3353

def NamedBody683_3355 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 112#64))

def NamedBody683_3356 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 12
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 88#64))

def NamedBody683_3357 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 13
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 80#64))

def NamedBody683_3358 : StackLang.HolProg 64 :=
.seq NamedBody683_3356 NamedBody683_3357

def NamedBody683_3359 : StackLang.HolProg 64 :=
.seq NamedBody683_3355 NamedBody683_3358

def NamedBody683_3360 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def NamedBody683_3361 : StackLang.HolProg 64 :=
.seq NamedBody683_3359 NamedBody683_3360

def NamedBody683_3362 : StackLang.HolProg 64 :=
.call (some (NamedBody683_3354, 1, 683, 82)) (Sum.inl 670) (some (NamedBody683_3361, 683, 83))

def NamedBody683_3363 : StackLang.HolProg 64 :=
.seq NamedBody683_3341 NamedBody683_3362

def NamedBody683_3364 : StackLang.HolProg 64 :=
.seq NamedBody683_3340 NamedBody683_3363

def NamedBody683_3365 : StackLang.HolProg 64 :=
.seq NamedBody683_3339 NamedBody683_3364

def NamedBody683_3366 : StackLang.HolProg 64 :=
.seq NamedBody683_3310 NamedBody683_3365

def NamedBody683_3367 : StackLang.HolProg 64 :=
.seq NamedBody683_3307 NamedBody683_3366

def NamedBody683_3368 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody683_3369 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 10 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def NamedBody683_3370 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 11 12
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 12)))

def NamedBody683_3371 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 112#64))

def NamedBody683_3372 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 12
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 88#64))

def NamedBody683_3373 : StackLang.HolProg 64 :=
.seq NamedBody683_3371 NamedBody683_3372

def NamedBody683_3374 : StackLang.HolProg 64 :=
.seq NamedBody683_3370 NamedBody683_3373

def NamedBody683_3375 : StackLang.HolProg 64 :=
.seq NamedBody683_3369 NamedBody683_3374

def NamedBody683_3376 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody683_3377 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 2870#64)

def NamedBody683_3378 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody683_3379 : StackLang.HolProg 64 :=
.seq NamedBody683_3377 NamedBody683_3378

def NamedBody683_3380 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody683_3381 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 2#64)

def NamedBody683_3382 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 10

def NamedBody683_3383 : StackLang.HolProg 64 :=
.seq NamedBody683_3381 NamedBody683_3382

def NamedBody683_3384 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody683_3385 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) NamedBody683_3383 NamedBody683_3384

def NamedBody683_3386 : StackLang.HolProg 64 :=
.seq NamedBody683_3380 NamedBody683_3385

def NamedBody683_3387 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def NamedBody683_3388 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody683_3389 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 683 85

def NamedBody683_3390 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody683_3391 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody683_3392 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody683_3393 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody683_3394 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def NamedBody683_3395 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def NamedBody683_3396 : StackLang.HolProg 64 :=
.seq NamedBody683_3394 NamedBody683_3395

def NamedBody683_3397 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def NamedBody683_3398 : StackLang.HolProg 64 :=
.seq NamedBody683_3396 NamedBody683_3397

def NamedBody683_3399 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody683_3400 : StackLang.HolProg 64 :=
.seq NamedBody683_3398 NamedBody683_3399

def NamedBody683_3401 : StackLang.HolProg 64 :=
.seq NamedBody683_3393 NamedBody683_3400

def NamedBody683_3402 : StackLang.HolProg 64 :=
.seq NamedBody683_3392 NamedBody683_3401

def NamedBody683_3403 : StackLang.HolProg 64 :=
.seq NamedBody683_3391 NamedBody683_3402

def NamedBody683_3404 : StackLang.HolProg 64 :=
.seq NamedBody683_3390 NamedBody683_3403

def NamedBody683_3405 : StackLang.HolProg 64 :=
.seq NamedBody683_3389 NamedBody683_3404

def NamedBody683_3406 : StackLang.HolProg 64 :=
.seq NamedBody683_3388 NamedBody683_3405

def NamedBody683_3407 : StackLang.HolProg 64 :=
.seq NamedBody683_3387 NamedBody683_3406

def NamedBody683_3408 : StackLang.HolProg 64 :=
.seq NamedBody683_3386 NamedBody683_3407

def NamedBody683_3409 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody683_3410 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody683_3411 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody683_3412 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody683_3413 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody683_3414 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody683_3415 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 12
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 144#64))

def NamedBody683_3416 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 136#64))

def NamedBody683_3417 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 144#64))

def NamedBody683_3418 : StackLang.HolProg 64 :=
.seq NamedBody683_3416 NamedBody683_3417

def NamedBody683_3419 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 128#64))

def NamedBody683_3420 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 136#64))

def NamedBody683_3421 : StackLang.HolProg 64 :=
.seq NamedBody683_3419 NamedBody683_3420

def NamedBody683_3422 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 120#64))

def NamedBody683_3423 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 128#64))

def NamedBody683_3424 : StackLang.HolProg 64 :=
.seq NamedBody683_3422 NamedBody683_3423

def NamedBody683_3425 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 112#64))

def NamedBody683_3426 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 13
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 104#64))

def NamedBody683_3427 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 96#64))

def NamedBody683_3428 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 112#64))

def NamedBody683_3429 : StackLang.HolProg 64 :=
.seq NamedBody683_3427 NamedBody683_3428

def NamedBody683_3430 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 88#64))

def NamedBody683_3431 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 104#64))

def NamedBody683_3432 : StackLang.HolProg 64 :=
.seq NamedBody683_3430 NamedBody683_3431

def NamedBody683_3433 : StackLang.HolProg 64 :=
.seq NamedBody683_3429 NamedBody683_3432

def NamedBody683_3434 : StackLang.HolProg 64 :=
.seq NamedBody683_3426 NamedBody683_3433

def NamedBody683_3435 : StackLang.HolProg 64 :=
.seq NamedBody683_3425 NamedBody683_3434

def NamedBody683_3436 : StackLang.HolProg 64 :=
.seq NamedBody683_3424 NamedBody683_3435

def NamedBody683_3437 : StackLang.HolProg 64 :=
.seq NamedBody683_3421 NamedBody683_3436

def NamedBody683_3438 : StackLang.HolProg 64 :=
.seq NamedBody683_3418 NamedBody683_3437

def NamedBody683_3439 : StackLang.HolProg 64 :=
.seq NamedBody683_3415 NamedBody683_3438

def NamedBody683_3440 : StackLang.HolProg 64 :=
.seq NamedBody683_3414 NamedBody683_3439

def NamedBody683_3441 : StackLang.HolProg 64 :=
.seq NamedBody683_3413 NamedBody683_3440

def NamedBody683_3442 : StackLang.HolProg 64 :=
.seq NamedBody683_3412 NamedBody683_3441

def NamedBody683_3443 : StackLang.HolProg 64 :=
.seq NamedBody683_3411 NamedBody683_3442

def NamedBody683_3444 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 12
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 144#64))

def NamedBody683_3445 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 136#64))

def NamedBody683_3446 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 144#64))

def NamedBody683_3447 : StackLang.HolProg 64 :=
.seq NamedBody683_3445 NamedBody683_3446

def NamedBody683_3448 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 128#64))

def NamedBody683_3449 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 136#64))

def NamedBody683_3450 : StackLang.HolProg 64 :=
.seq NamedBody683_3448 NamedBody683_3449

def NamedBody683_3451 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 120#64))

def NamedBody683_3452 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 128#64))

def NamedBody683_3453 : StackLang.HolProg 64 :=
.seq NamedBody683_3451 NamedBody683_3452

def NamedBody683_3454 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 112#64))

def NamedBody683_3455 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 13
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 104#64))

def NamedBody683_3456 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 96#64))

def NamedBody683_3457 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 112#64))

def NamedBody683_3458 : StackLang.HolProg 64 :=
.seq NamedBody683_3456 NamedBody683_3457

def NamedBody683_3459 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 88#64))

def NamedBody683_3460 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 104#64))

def NamedBody683_3461 : StackLang.HolProg 64 :=
.seq NamedBody683_3459 NamedBody683_3460

def NamedBody683_3462 : StackLang.HolProg 64 :=
.seq NamedBody683_3458 NamedBody683_3461

def NamedBody683_3463 : StackLang.HolProg 64 :=
.seq NamedBody683_3455 NamedBody683_3462

def NamedBody683_3464 : StackLang.HolProg 64 :=
.seq NamedBody683_3454 NamedBody683_3463

def NamedBody683_3465 : StackLang.HolProg 64 :=
.seq NamedBody683_3453 NamedBody683_3464

def NamedBody683_3466 : StackLang.HolProg 64 :=
.seq NamedBody683_3450 NamedBody683_3465

def NamedBody683_3467 : StackLang.HolProg 64 :=
.seq NamedBody683_3447 NamedBody683_3466

def NamedBody683_3468 : StackLang.HolProg 64 :=
.seq NamedBody683_3444 NamedBody683_3467

def NamedBody683_3469 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def NamedBody683_3470 : StackLang.HolProg 64 :=
.seq NamedBody683_3468 NamedBody683_3469

def NamedBody683_3471 : StackLang.HolProg 64 :=
.call (some (NamedBody683_3443, 1, 683, 84)) (Sum.inl 673) (some (NamedBody683_3470, 683, 85))

def NamedBody683_3472 : StackLang.HolProg 64 :=
.seq NamedBody683_3410 NamedBody683_3471

def NamedBody683_3473 : StackLang.HolProg 64 :=
.seq NamedBody683_3409 NamedBody683_3472

def NamedBody683_3474 : StackLang.HolProg 64 :=
.seq NamedBody683_3408 NamedBody683_3473

def NamedBody683_3475 : StackLang.HolProg 64 :=
.seq NamedBody683_3379 NamedBody683_3474

def NamedBody683_3476 : StackLang.HolProg 64 :=
.seq NamedBody683_3376 NamedBody683_3475

def NamedBody683_3477 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody683_3478 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 10 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def NamedBody683_3479 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 11 13
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 13)))

def NamedBody683_3480 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 13
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 120#64))

def NamedBody683_3481 : StackLang.HolProg 64 :=
.seq NamedBody683_3479 NamedBody683_3480

def NamedBody683_3482 : StackLang.HolProg 64 :=
.seq NamedBody683_3478 NamedBody683_3481

def NamedBody683_3483 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody683_3484 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 2871#64)

def NamedBody683_3485 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody683_3486 : StackLang.HolProg 64 :=
.seq NamedBody683_3484 NamedBody683_3485

def NamedBody683_3487 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody683_3488 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 2#64)

def NamedBody683_3489 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 10

def NamedBody683_3490 : StackLang.HolProg 64 :=
.seq NamedBody683_3488 NamedBody683_3489

def NamedBody683_3491 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody683_3492 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) NamedBody683_3490 NamedBody683_3491

def NamedBody683_3493 : StackLang.HolProg 64 :=
.seq NamedBody683_3487 NamedBody683_3492

def NamedBody683_3494 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def NamedBody683_3495 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody683_3496 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 683 87

def NamedBody683_3497 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody683_3498 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody683_3499 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody683_3500 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody683_3501 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def NamedBody683_3502 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def NamedBody683_3503 : StackLang.HolProg 64 :=
.seq NamedBody683_3501 NamedBody683_3502

def NamedBody683_3504 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def NamedBody683_3505 : StackLang.HolProg 64 :=
.seq NamedBody683_3503 NamedBody683_3504

def NamedBody683_3506 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody683_3507 : StackLang.HolProg 64 :=
.seq NamedBody683_3505 NamedBody683_3506

def NamedBody683_3508 : StackLang.HolProg 64 :=
.seq NamedBody683_3500 NamedBody683_3507

def NamedBody683_3509 : StackLang.HolProg 64 :=
.seq NamedBody683_3499 NamedBody683_3508

def NamedBody683_3510 : StackLang.HolProg 64 :=
.seq NamedBody683_3498 NamedBody683_3509

def NamedBody683_3511 : StackLang.HolProg 64 :=
.seq NamedBody683_3497 NamedBody683_3510

def NamedBody683_3512 : StackLang.HolProg 64 :=
.seq NamedBody683_3496 NamedBody683_3511

def NamedBody683_3513 : StackLang.HolProg 64 :=
.seq NamedBody683_3495 NamedBody683_3512

def NamedBody683_3514 : StackLang.HolProg 64 :=
.seq NamedBody683_3494 NamedBody683_3513

def NamedBody683_3515 : StackLang.HolProg 64 :=
.seq NamedBody683_3493 NamedBody683_3514

def NamedBody683_3516 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody683_3517 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody683_3518 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody683_3519 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody683_3520 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody683_3521 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody683_3522 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 11
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 144#64))

def NamedBody683_3523 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 136#64))

def NamedBody683_3524 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 12
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 128#64))

def NamedBody683_3525 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 120#64))

def NamedBody683_3526 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 128#64))

def NamedBody683_3527 : StackLang.HolProg 64 :=
.seq NamedBody683_3525 NamedBody683_3526

def NamedBody683_3528 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 112#64))

def NamedBody683_3529 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 120#64))

def NamedBody683_3530 : StackLang.HolProg 64 :=
.seq NamedBody683_3528 NamedBody683_3529

def NamedBody683_3531 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 104#64))

def NamedBody683_3532 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 112#64))

def NamedBody683_3533 : StackLang.HolProg 64 :=
.seq NamedBody683_3531 NamedBody683_3532

def NamedBody683_3534 : StackLang.HolProg 64 :=
.seq NamedBody683_3530 NamedBody683_3533

def NamedBody683_3535 : StackLang.HolProg 64 :=
.seq NamedBody683_3527 NamedBody683_3534

def NamedBody683_3536 : StackLang.HolProg 64 :=
.seq NamedBody683_3524 NamedBody683_3535

def NamedBody683_3537 : StackLang.HolProg 64 :=
.seq NamedBody683_3523 NamedBody683_3536

def NamedBody683_3538 : StackLang.HolProg 64 :=
.seq NamedBody683_3522 NamedBody683_3537

def NamedBody683_3539 : StackLang.HolProg 64 :=
.seq NamedBody683_3521 NamedBody683_3538

def NamedBody683_3540 : StackLang.HolProg 64 :=
.seq NamedBody683_3520 NamedBody683_3539

def NamedBody683_3541 : StackLang.HolProg 64 :=
.seq NamedBody683_3519 NamedBody683_3540

def NamedBody683_3542 : StackLang.HolProg 64 :=
.seq NamedBody683_3518 NamedBody683_3541

def NamedBody683_3543 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 11
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 144#64))

def NamedBody683_3544 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 136#64))

def NamedBody683_3545 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 12
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 128#64))

def NamedBody683_3546 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 120#64))

def NamedBody683_3547 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 128#64))

def NamedBody683_3548 : StackLang.HolProg 64 :=
.seq NamedBody683_3546 NamedBody683_3547

def NamedBody683_3549 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 112#64))

def NamedBody683_3550 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 120#64))

def NamedBody683_3551 : StackLang.HolProg 64 :=
.seq NamedBody683_3549 NamedBody683_3550

def NamedBody683_3552 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 104#64))

def NamedBody683_3553 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 112#64))

def NamedBody683_3554 : StackLang.HolProg 64 :=
.seq NamedBody683_3552 NamedBody683_3553

def NamedBody683_3555 : StackLang.HolProg 64 :=
.seq NamedBody683_3551 NamedBody683_3554

def NamedBody683_3556 : StackLang.HolProg 64 :=
.seq NamedBody683_3548 NamedBody683_3555

def NamedBody683_3557 : StackLang.HolProg 64 :=
.seq NamedBody683_3545 NamedBody683_3556

def NamedBody683_3558 : StackLang.HolProg 64 :=
.seq NamedBody683_3544 NamedBody683_3557

def NamedBody683_3559 : StackLang.HolProg 64 :=
.seq NamedBody683_3543 NamedBody683_3558

def NamedBody683_3560 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def NamedBody683_3561 : StackLang.HolProg 64 :=
.seq NamedBody683_3559 NamedBody683_3560

def NamedBody683_3562 : StackLang.HolProg 64 :=
.call (some (NamedBody683_3542, 1, 683, 86)) (Sum.inl 670) (some (NamedBody683_3561, 683, 87))

def NamedBody683_3563 : StackLang.HolProg 64 :=
.seq NamedBody683_3517 NamedBody683_3562

def NamedBody683_3564 : StackLang.HolProg 64 :=
.seq NamedBody683_3516 NamedBody683_3563

def NamedBody683_3565 : StackLang.HolProg 64 :=
.seq NamedBody683_3515 NamedBody683_3564

def NamedBody683_3566 : StackLang.HolProg 64 :=
.seq NamedBody683_3486 NamedBody683_3565

def NamedBody683_3567 : StackLang.HolProg 64 :=
.seq NamedBody683_3483 NamedBody683_3566

def NamedBody683_3568 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody683_3569 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 10 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def NamedBody683_3570 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 144#64))

def NamedBody683_3571 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 12
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 136#64))

def NamedBody683_3572 : StackLang.HolProg 64 :=
.seq NamedBody683_3570 NamedBody683_3571

def NamedBody683_3573 : StackLang.HolProg 64 :=
.seq NamedBody683_3569 NamedBody683_3572

def NamedBody683_3574 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody683_3575 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 2872#64)

def NamedBody683_3576 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody683_3577 : StackLang.HolProg 64 :=
.seq NamedBody683_3575 NamedBody683_3576

def NamedBody683_3578 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody683_3579 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 2#64)

def NamedBody683_3580 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 10

def NamedBody683_3581 : StackLang.HolProg 64 :=
.seq NamedBody683_3579 NamedBody683_3580

def NamedBody683_3582 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody683_3583 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) NamedBody683_3581 NamedBody683_3582

def NamedBody683_3584 : StackLang.HolProg 64 :=
.seq NamedBody683_3578 NamedBody683_3583

def NamedBody683_3585 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def NamedBody683_3586 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody683_3587 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 683 89

def NamedBody683_3588 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody683_3589 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody683_3590 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody683_3591 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody683_3592 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def NamedBody683_3593 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def NamedBody683_3594 : StackLang.HolProg 64 :=
.seq NamedBody683_3592 NamedBody683_3593

def NamedBody683_3595 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def NamedBody683_3596 : StackLang.HolProg 64 :=
.seq NamedBody683_3594 NamedBody683_3595

def NamedBody683_3597 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody683_3598 : StackLang.HolProg 64 :=
.seq NamedBody683_3596 NamedBody683_3597

def NamedBody683_3599 : StackLang.HolProg 64 :=
.seq NamedBody683_3591 NamedBody683_3598

def NamedBody683_3600 : StackLang.HolProg 64 :=
.seq NamedBody683_3590 NamedBody683_3599

def NamedBody683_3601 : StackLang.HolProg 64 :=
.seq NamedBody683_3589 NamedBody683_3600

def NamedBody683_3602 : StackLang.HolProg 64 :=
.seq NamedBody683_3588 NamedBody683_3601

def NamedBody683_3603 : StackLang.HolProg 64 :=
.seq NamedBody683_3587 NamedBody683_3602

def NamedBody683_3604 : StackLang.HolProg 64 :=
.seq NamedBody683_3586 NamedBody683_3603

def NamedBody683_3605 : StackLang.HolProg 64 :=
.seq NamedBody683_3585 NamedBody683_3604

def NamedBody683_3606 : StackLang.HolProg 64 :=
.seq NamedBody683_3584 NamedBody683_3605

def NamedBody683_3607 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody683_3608 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody683_3609 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody683_3610 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody683_3611 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody683_3612 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody683_3613 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 144#64))

def NamedBody683_3614 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 12
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 136#64))

def NamedBody683_3615 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 11
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 112#64))

def NamedBody683_3616 : StackLang.HolProg 64 :=
.seq NamedBody683_3614 NamedBody683_3615

def NamedBody683_3617 : StackLang.HolProg 64 :=
.seq NamedBody683_3613 NamedBody683_3616

def NamedBody683_3618 : StackLang.HolProg 64 :=
.seq NamedBody683_3612 NamedBody683_3617

def NamedBody683_3619 : StackLang.HolProg 64 :=
.seq NamedBody683_3611 NamedBody683_3618

def NamedBody683_3620 : StackLang.HolProg 64 :=
.seq NamedBody683_3610 NamedBody683_3619

def NamedBody683_3621 : StackLang.HolProg 64 :=
.seq NamedBody683_3609 NamedBody683_3620

def NamedBody683_3622 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 144#64))

def NamedBody683_3623 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 12
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 136#64))

def NamedBody683_3624 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 11
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 112#64))

def NamedBody683_3625 : StackLang.HolProg 64 :=
.seq NamedBody683_3623 NamedBody683_3624

def NamedBody683_3626 : StackLang.HolProg 64 :=
.seq NamedBody683_3622 NamedBody683_3625

def NamedBody683_3627 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def NamedBody683_3628 : StackLang.HolProg 64 :=
.seq NamedBody683_3626 NamedBody683_3627

def NamedBody683_3629 : StackLang.HolProg 64 :=
.call (some (NamedBody683_3621, 1, 683, 88)) (Sum.inl 77) (some (NamedBody683_3628, 683, 89))

def NamedBody683_3630 : StackLang.HolProg 64 :=
.seq NamedBody683_3608 NamedBody683_3629

def NamedBody683_3631 : StackLang.HolProg 64 :=
.seq NamedBody683_3607 NamedBody683_3630

def NamedBody683_3632 : StackLang.HolProg 64 :=
.seq NamedBody683_3606 NamedBody683_3631

def NamedBody683_3633 : StackLang.HolProg 64 :=
.seq NamedBody683_3577 NamedBody683_3632

def NamedBody683_3634 : StackLang.HolProg 64 :=
.seq NamedBody683_3574 NamedBody683_3633

def NamedBody683_3635 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody683_3636 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody683_3637 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 10 12
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def NamedBody683_3638 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 144#64))

def NamedBody683_3639 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 12
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 136#64))

def NamedBody683_3640 : StackLang.HolProg 64 :=
.seq NamedBody683_3638 NamedBody683_3639

def NamedBody683_3641 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody683_3642 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 2873#64)

def NamedBody683_3643 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody683_3644 : StackLang.HolProg 64 :=
.seq NamedBody683_3642 NamedBody683_3643

def NamedBody683_3645 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody683_3646 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 2#64)

def NamedBody683_3647 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 10

def NamedBody683_3648 : StackLang.HolProg 64 :=
.seq NamedBody683_3646 NamedBody683_3647

def NamedBody683_3649 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody683_3650 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) NamedBody683_3648 NamedBody683_3649

def NamedBody683_3651 : StackLang.HolProg 64 :=
.seq NamedBody683_3645 NamedBody683_3650

def NamedBody683_3652 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def NamedBody683_3653 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody683_3654 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 683 91

def NamedBody683_3655 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody683_3656 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody683_3657 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody683_3658 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody683_3659 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def NamedBody683_3660 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def NamedBody683_3661 : StackLang.HolProg 64 :=
.seq NamedBody683_3659 NamedBody683_3660

def NamedBody683_3662 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def NamedBody683_3663 : StackLang.HolProg 64 :=
.seq NamedBody683_3661 NamedBody683_3662

def NamedBody683_3664 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody683_3665 : StackLang.HolProg 64 :=
.seq NamedBody683_3663 NamedBody683_3664

def NamedBody683_3666 : StackLang.HolProg 64 :=
.seq NamedBody683_3658 NamedBody683_3665

def NamedBody683_3667 : StackLang.HolProg 64 :=
.seq NamedBody683_3657 NamedBody683_3666

def NamedBody683_3668 : StackLang.HolProg 64 :=
.seq NamedBody683_3656 NamedBody683_3667

def NamedBody683_3669 : StackLang.HolProg 64 :=
.seq NamedBody683_3655 NamedBody683_3668

def NamedBody683_3670 : StackLang.HolProg 64 :=
.seq NamedBody683_3654 NamedBody683_3669

def NamedBody683_3671 : StackLang.HolProg 64 :=
.seq NamedBody683_3653 NamedBody683_3670

def NamedBody683_3672 : StackLang.HolProg 64 :=
.seq NamedBody683_3652 NamedBody683_3671

def NamedBody683_3673 : StackLang.HolProg 64 :=
.seq NamedBody683_3651 NamedBody683_3672

def NamedBody683_3674 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody683_3675 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody683_3676 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody683_3677 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody683_3678 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody683_3679 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody683_3680 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 144#64))

def NamedBody683_3681 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 12
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 136#64))

def NamedBody683_3682 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 11
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 128#64))

def NamedBody683_3683 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 120#64))

def NamedBody683_3684 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 144#64))

def NamedBody683_3685 : StackLang.HolProg 64 :=
.seq NamedBody683_3683 NamedBody683_3684

def NamedBody683_3686 : StackLang.HolProg 64 :=
.seq NamedBody683_3682 NamedBody683_3685

def NamedBody683_3687 : StackLang.HolProg 64 :=
.seq NamedBody683_3681 NamedBody683_3686

def NamedBody683_3688 : StackLang.HolProg 64 :=
.seq NamedBody683_3680 NamedBody683_3687

def NamedBody683_3689 : StackLang.HolProg 64 :=
.seq NamedBody683_3679 NamedBody683_3688

def NamedBody683_3690 : StackLang.HolProg 64 :=
.seq NamedBody683_3678 NamedBody683_3689

def NamedBody683_3691 : StackLang.HolProg 64 :=
.seq NamedBody683_3677 NamedBody683_3690

def NamedBody683_3692 : StackLang.HolProg 64 :=
.seq NamedBody683_3676 NamedBody683_3691

def NamedBody683_3693 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 144#64))

def NamedBody683_3694 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 12
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 136#64))

def NamedBody683_3695 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 11
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 128#64))

def NamedBody683_3696 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 120#64))

def NamedBody683_3697 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 144#64))

def NamedBody683_3698 : StackLang.HolProg 64 :=
.seq NamedBody683_3696 NamedBody683_3697

def NamedBody683_3699 : StackLang.HolProg 64 :=
.seq NamedBody683_3695 NamedBody683_3698

def NamedBody683_3700 : StackLang.HolProg 64 :=
.seq NamedBody683_3694 NamedBody683_3699

def NamedBody683_3701 : StackLang.HolProg 64 :=
.seq NamedBody683_3693 NamedBody683_3700

def NamedBody683_3702 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def NamedBody683_3703 : StackLang.HolProg 64 :=
.seq NamedBody683_3701 NamedBody683_3702

def NamedBody683_3704 : StackLang.HolProg 64 :=
.call (some (NamedBody683_3692, 1, 683, 90)) (Sum.inl 77) (some (NamedBody683_3703, 683, 91))

def NamedBody683_3705 : StackLang.HolProg 64 :=
.seq NamedBody683_3675 NamedBody683_3704

def NamedBody683_3706 : StackLang.HolProg 64 :=
.seq NamedBody683_3674 NamedBody683_3705

def NamedBody683_3707 : StackLang.HolProg 64 :=
.seq NamedBody683_3673 NamedBody683_3706

def NamedBody683_3708 : StackLang.HolProg 64 :=
.seq NamedBody683_3644 NamedBody683_3707

def NamedBody683_3709 : StackLang.HolProg 64 :=
.seq NamedBody683_3641 NamedBody683_3708

def NamedBody683_3710 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody683_3711 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody683_3712 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsl 10 12
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 1#64)))

def NamedBody683_3713 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody683_3714 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 10 10
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def NamedBody683_3715 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody683_3716 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody683_3717 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 2874#64)

def NamedBody683_3718 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody683_3719 : StackLang.HolProg 64 :=
.seq NamedBody683_3717 NamedBody683_3718

def NamedBody683_3720 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody683_3721 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 2#64)

def NamedBody683_3722 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 10

def NamedBody683_3723 : StackLang.HolProg 64 :=
.seq NamedBody683_3721 NamedBody683_3722

def NamedBody683_3724 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody683_3725 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) NamedBody683_3723 NamedBody683_3724

def NamedBody683_3726 : StackLang.HolProg 64 :=
.seq NamedBody683_3720 NamedBody683_3725

def NamedBody683_3727 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def NamedBody683_3728 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody683_3729 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 683 93

def NamedBody683_3730 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody683_3731 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody683_3732 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody683_3733 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody683_3734 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def NamedBody683_3735 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def NamedBody683_3736 : StackLang.HolProg 64 :=
.seq NamedBody683_3734 NamedBody683_3735

def NamedBody683_3737 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def NamedBody683_3738 : StackLang.HolProg 64 :=
.seq NamedBody683_3736 NamedBody683_3737

def NamedBody683_3739 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody683_3740 : StackLang.HolProg 64 :=
.seq NamedBody683_3738 NamedBody683_3739

def NamedBody683_3741 : StackLang.HolProg 64 :=
.seq NamedBody683_3733 NamedBody683_3740

def NamedBody683_3742 : StackLang.HolProg 64 :=
.seq NamedBody683_3732 NamedBody683_3741

def NamedBody683_3743 : StackLang.HolProg 64 :=
.seq NamedBody683_3731 NamedBody683_3742

def NamedBody683_3744 : StackLang.HolProg 64 :=
.seq NamedBody683_3730 NamedBody683_3743

def NamedBody683_3745 : StackLang.HolProg 64 :=
.seq NamedBody683_3729 NamedBody683_3744

def NamedBody683_3746 : StackLang.HolProg 64 :=
.seq NamedBody683_3728 NamedBody683_3745

def NamedBody683_3747 : StackLang.HolProg 64 :=
.seq NamedBody683_3727 NamedBody683_3746

def NamedBody683_3748 : StackLang.HolProg 64 :=
.seq NamedBody683_3726 NamedBody683_3747

def NamedBody683_3749 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody683_3750 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody683_3751 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody683_3752 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody683_3753 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody683_3754 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody683_3755 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 144#64))

def NamedBody683_3756 : StackLang.HolProg 64 :=
.seq NamedBody683_3754 NamedBody683_3755

def NamedBody683_3757 : StackLang.HolProg 64 :=
.seq NamedBody683_3753 NamedBody683_3756

def NamedBody683_3758 : StackLang.HolProg 64 :=
.seq NamedBody683_3752 NamedBody683_3757

def NamedBody683_3759 : StackLang.HolProg 64 :=
.seq NamedBody683_3751 NamedBody683_3758

def NamedBody683_3760 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 144#64))

def NamedBody683_3761 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def NamedBody683_3762 : StackLang.HolProg 64 :=
.seq NamedBody683_3760 NamedBody683_3761

def NamedBody683_3763 : StackLang.HolProg 64 :=
.call (some (NamedBody683_3759, 1, 683, 92)) (Sum.inl 77) (some (NamedBody683_3762, 683, 93))

def NamedBody683_3764 : StackLang.HolProg 64 :=
.seq NamedBody683_3750 NamedBody683_3763

def NamedBody683_3765 : StackLang.HolProg 64 :=
.seq NamedBody683_3749 NamedBody683_3764

def NamedBody683_3766 : StackLang.HolProg 64 :=
.seq NamedBody683_3748 NamedBody683_3765

def NamedBody683_3767 : StackLang.HolProg 64 :=
.seq NamedBody683_3719 NamedBody683_3766

def NamedBody683_3768 : StackLang.HolProg 64 :=
.seq NamedBody683_3716 NamedBody683_3767

def NamedBody683_3769 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody683_3770 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 10 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def NamedBody683_3771 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody683_3772 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 2875#64)

def NamedBody683_3773 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody683_3774 : StackLang.HolProg 64 :=
.seq NamedBody683_3772 NamedBody683_3773

def NamedBody683_3775 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody683_3776 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 2#64)

def NamedBody683_3777 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 10

def NamedBody683_3778 : StackLang.HolProg 64 :=
.seq NamedBody683_3776 NamedBody683_3777

def NamedBody683_3779 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody683_3780 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) NamedBody683_3778 NamedBody683_3779

def NamedBody683_3781 : StackLang.HolProg 64 :=
.seq NamedBody683_3775 NamedBody683_3780

def NamedBody683_3782 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def NamedBody683_3783 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody683_3784 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 683 95

def NamedBody683_3785 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody683_3786 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody683_3787 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody683_3788 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody683_3789 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def NamedBody683_3790 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def NamedBody683_3791 : StackLang.HolProg 64 :=
.seq NamedBody683_3789 NamedBody683_3790

def NamedBody683_3792 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def NamedBody683_3793 : StackLang.HolProg 64 :=
.seq NamedBody683_3791 NamedBody683_3792

def NamedBody683_3794 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody683_3795 : StackLang.HolProg 64 :=
.seq NamedBody683_3793 NamedBody683_3794

def NamedBody683_3796 : StackLang.HolProg 64 :=
.seq NamedBody683_3788 NamedBody683_3795

def NamedBody683_3797 : StackLang.HolProg 64 :=
.seq NamedBody683_3787 NamedBody683_3796

def NamedBody683_3798 : StackLang.HolProg 64 :=
.seq NamedBody683_3786 NamedBody683_3797

def NamedBody683_3799 : StackLang.HolProg 64 :=
.seq NamedBody683_3785 NamedBody683_3798

def NamedBody683_3800 : StackLang.HolProg 64 :=
.seq NamedBody683_3784 NamedBody683_3799

def NamedBody683_3801 : StackLang.HolProg 64 :=
.seq NamedBody683_3783 NamedBody683_3800

def NamedBody683_3802 : StackLang.HolProg 64 :=
.seq NamedBody683_3782 NamedBody683_3801

def NamedBody683_3803 : StackLang.HolProg 64 :=
.seq NamedBody683_3781 NamedBody683_3802

def NamedBody683_3804 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody683_3805 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody683_3806 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody683_3807 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody683_3808 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody683_3809 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody683_3810 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 152#64))

def NamedBody683_3811 : StackLang.HolProg 64 :=
.seq NamedBody683_3809 NamedBody683_3810

def NamedBody683_3812 : StackLang.HolProg 64 :=
.seq NamedBody683_3808 NamedBody683_3811

def NamedBody683_3813 : StackLang.HolProg 64 :=
.seq NamedBody683_3807 NamedBody683_3812

def NamedBody683_3814 : StackLang.HolProg 64 :=
.seq NamedBody683_3806 NamedBody683_3813

def NamedBody683_3815 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 152#64))

def NamedBody683_3816 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def NamedBody683_3817 : StackLang.HolProg 64 :=
.seq NamedBody683_3815 NamedBody683_3816

def NamedBody683_3818 : StackLang.HolProg 64 :=
.call (some (NamedBody683_3814, 1, 683, 94)) (Sum.inl 70) (some (NamedBody683_3817, 683, 95))

def NamedBody683_3819 : StackLang.HolProg 64 :=
.seq NamedBody683_3805 NamedBody683_3818

def NamedBody683_3820 : StackLang.HolProg 64 :=
.seq NamedBody683_3804 NamedBody683_3819

def NamedBody683_3821 : StackLang.HolProg 64 :=
.seq NamedBody683_3803 NamedBody683_3820

def NamedBody683_3822 : StackLang.HolProg 64 :=
.seq NamedBody683_3774 NamedBody683_3821

def NamedBody683_3823 : StackLang.HolProg 64 :=
.seq NamedBody683_3771 NamedBody683_3822

def NamedBody683_3824 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody683_3825 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 0#64)

def NamedBody683_3826 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody683_3827 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 160#64)))

def NamedBody683_3828 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 1

def NamedBody683_3829 : StackLang.HolProg 64 :=
.seq NamedBody683_3827 NamedBody683_3828

def NamedBody683_3830 : StackLang.HolProg 64 :=
.seq NamedBody683_3826 NamedBody683_3829

def NamedBody683_3831 : StackLang.HolProg 64 :=
.seq NamedBody683_3825 NamedBody683_3830

def NamedBody683_3832 : StackLang.HolProg 64 :=
.seq NamedBody683_3824 NamedBody683_3831

def NamedBody683_3833 : StackLang.HolProg 64 :=
.seq NamedBody683_3823 NamedBody683_3832

def NamedBody683_3834 : StackLang.HolProg 64 :=
.seq NamedBody683_3770 NamedBody683_3833

def NamedBody683_3835 : StackLang.HolProg 64 :=
.seq NamedBody683_3769 NamedBody683_3834

def NamedBody683_3836 : StackLang.HolProg 64 :=
.seq NamedBody683_3768 NamedBody683_3835

def NamedBody683_3837 : StackLang.HolProg 64 :=
.seq NamedBody683_3715 NamedBody683_3836

def NamedBody683_3838 : StackLang.HolProg 64 :=
.seq NamedBody683_3714 NamedBody683_3837

def NamedBody683_3839 : StackLang.HolProg 64 :=
.seq NamedBody683_3713 NamedBody683_3838

def NamedBody683_3840 : StackLang.HolProg 64 :=
.seq NamedBody683_3712 NamedBody683_3839

def NamedBody683_3841 : StackLang.HolProg 64 :=
.seq NamedBody683_3711 NamedBody683_3840

def NamedBody683_3842 : StackLang.HolProg 64 :=
.seq NamedBody683_3710 NamedBody683_3841

def NamedBody683_3843 : StackLang.HolProg 64 :=
.seq NamedBody683_3709 NamedBody683_3842

def NamedBody683_3844 : StackLang.HolProg 64 :=
.seq NamedBody683_3640 NamedBody683_3843

def NamedBody683_3845 : StackLang.HolProg 64 :=
.seq NamedBody683_3637 NamedBody683_3844

def NamedBody683_3846 : StackLang.HolProg 64 :=
.seq NamedBody683_3636 NamedBody683_3845

def NamedBody683_3847 : StackLang.HolProg 64 :=
.seq NamedBody683_3635 NamedBody683_3846

def NamedBody683_3848 : StackLang.HolProg 64 :=
.seq NamedBody683_3634 NamedBody683_3847

def NamedBody683_3849 : StackLang.HolProg 64 :=
.seq NamedBody683_3573 NamedBody683_3848

def NamedBody683_3850 : StackLang.HolProg 64 :=
.seq NamedBody683_3568 NamedBody683_3849

def NamedBody683_3851 : StackLang.HolProg 64 :=
.seq NamedBody683_3567 NamedBody683_3850

def NamedBody683_3852 : StackLang.HolProg 64 :=
.seq NamedBody683_3482 NamedBody683_3851

def NamedBody683_3853 : StackLang.HolProg 64 :=
.seq NamedBody683_3477 NamedBody683_3852

def NamedBody683_3854 : StackLang.HolProg 64 :=
.seq NamedBody683_3476 NamedBody683_3853

def NamedBody683_3855 : StackLang.HolProg 64 :=
.seq NamedBody683_3375 NamedBody683_3854

def NamedBody683_3856 : StackLang.HolProg 64 :=
.seq NamedBody683_3368 NamedBody683_3855

def NamedBody683_3857 : StackLang.HolProg 64 :=
.seq NamedBody683_3367 NamedBody683_3856

def NamedBody683_3858 : StackLang.HolProg 64 :=
.seq NamedBody683_3306 NamedBody683_3857

def NamedBody683_3859 : StackLang.HolProg 64 :=
.seq NamedBody683_3299 NamedBody683_3858

def NamedBody683_3860 : StackLang.HolProg 64 :=
.seq NamedBody683_3298 NamedBody683_3859

def NamedBody683_3861 : StackLang.HolProg 64 :=
.seq NamedBody683_3201 NamedBody683_3860

def NamedBody683_3862 : StackLang.HolProg 64 :=
.seq NamedBody683_3194 NamedBody683_3861

def NamedBody683_3863 : StackLang.HolProg 64 :=
.seq NamedBody683_3193 NamedBody683_3862

def NamedBody683_3864 : StackLang.HolProg 64 :=
.seq NamedBody683_3108 NamedBody683_3863

def NamedBody683_3865 : StackLang.HolProg 64 :=
.seq NamedBody683_3103 NamedBody683_3864

def NamedBody683_3866 : StackLang.HolProg 64 :=
.seq NamedBody683_3102 NamedBody683_3865

def NamedBody683_3867 : StackLang.HolProg 64 :=
.seq NamedBody683_3005 NamedBody683_3866

def NamedBody683_3868 : StackLang.HolProg 64 :=
.seq NamedBody683_2996 NamedBody683_3867

def NamedBody683_3869 : StackLang.HolProg 64 :=
.seq NamedBody683_2995 NamedBody683_3868

def NamedBody683_3870 : StackLang.HolProg 64 :=
.seq NamedBody683_2930 NamedBody683_3869

def NamedBody683_3871 : StackLang.HolProg 64 :=
.seq NamedBody683_2921 NamedBody683_3870

def NamedBody683_3872 : StackLang.HolProg 64 :=
.seq NamedBody683_2920 NamedBody683_3871

def NamedBody683_3873 : StackLang.HolProg 64 :=
.seq NamedBody683_2859 NamedBody683_3872

def NamedBody683_3874 : StackLang.HolProg 64 :=
.seq NamedBody683_2854 NamedBody683_3873

def NamedBody683_3875 : StackLang.HolProg 64 :=
.seq NamedBody683_2853 NamedBody683_3874

def NamedBody683_3876 : StackLang.HolProg 64 :=
.seq NamedBody683_2852 NamedBody683_3875

def NamedBody683_3877 : StackLang.HolProg 64 :=
.seq NamedBody683_2851 NamedBody683_3876

def NamedBody683_3878 : StackLang.HolProg 64 :=
.seq NamedBody683_2790 NamedBody683_3877

def NamedBody683_3879 : StackLang.HolProg 64 :=
.seq NamedBody683_2781 NamedBody683_3878

def NamedBody683_3880 : StackLang.HolProg 64 :=
.seq NamedBody683_2780 NamedBody683_3879

def NamedBody683_3881 : StackLang.HolProg 64 :=
.seq NamedBody683_2719 NamedBody683_3880

def NamedBody683_3882 : StackLang.HolProg 64 :=
.seq NamedBody683_2710 NamedBody683_3881

def NamedBody683_3883 : StackLang.HolProg 64 :=
.seq NamedBody683_2709 NamedBody683_3882

def NamedBody683_3884 : StackLang.HolProg 64 :=
.seq NamedBody683_2648 NamedBody683_3883

def NamedBody683_3885 : StackLang.HolProg 64 :=
.seq NamedBody683_2641 NamedBody683_3884

def NamedBody683_3886 : StackLang.HolProg 64 :=
.seq NamedBody683_2640 NamedBody683_3885

def NamedBody683_3887 : StackLang.HolProg 64 :=
.seq NamedBody683_2579 NamedBody683_3886

def NamedBody683_3888 : StackLang.HolProg 64 :=
.seq NamedBody683_2574 NamedBody683_3887

def NamedBody683_3889 : StackLang.HolProg 64 :=
.seq NamedBody683_2573 NamedBody683_3888

def NamedBody683_3890 : StackLang.HolProg 64 :=
.seq NamedBody683_2476 NamedBody683_3889

def NamedBody683_3891 : StackLang.HolProg 64 :=
.seq NamedBody683_2469 NamedBody683_3890

def NamedBody683_3892 : StackLang.HolProg 64 :=
.seq NamedBody683_2468 NamedBody683_3891

def NamedBody683_3893 : StackLang.HolProg 64 :=
.seq NamedBody683_2307 NamedBody683_3892

def NamedBody683_3894 : StackLang.HolProg 64 :=
.seq NamedBody683_2300 NamedBody683_3893

def NamedBody683_3895 : StackLang.HolProg 64 :=
.seq NamedBody683_2299 NamedBody683_3894

def NamedBody683_3896 : StackLang.HolProg 64 :=
.seq NamedBody683_2138 NamedBody683_3895

def NamedBody683_3897 : StackLang.HolProg 64 :=
.seq NamedBody683_2131 NamedBody683_3896

def NamedBody683_3898 : StackLang.HolProg 64 :=
.seq NamedBody683_2130 NamedBody683_3897

def NamedBody683_3899 : StackLang.HolProg 64 :=
.seq NamedBody683_2069 NamedBody683_3898

def NamedBody683_3900 : StackLang.HolProg 64 :=
.seq NamedBody683_2062 NamedBody683_3899

def NamedBody683_3901 : StackLang.HolProg 64 :=
.seq NamedBody683_2061 NamedBody683_3900

def NamedBody683_3902 : StackLang.HolProg 64 :=
.seq NamedBody683_1972 NamedBody683_3901

def NamedBody683_3903 : StackLang.HolProg 64 :=
.seq NamedBody683_1961 NamedBody683_3902

def NamedBody683_3904 : StackLang.HolProg 64 :=
.seq NamedBody683_1960 NamedBody683_3903

def NamedBody683_3905 : StackLang.HolProg 64 :=
.seq NamedBody683_1893 NamedBody683_3904

def NamedBody683_3906 : StackLang.HolProg 64 :=
.seq NamedBody683_1888 NamedBody683_3905

def NamedBody683_3907 : StackLang.HolProg 64 :=
.seq NamedBody683_1887 NamedBody683_3906

def NamedBody683_3908 : StackLang.HolProg 64 :=
.seq NamedBody683_1824 NamedBody683_3907

def NamedBody683_3909 : StackLang.HolProg 64 :=
.seq NamedBody683_1819 NamedBody683_3908

def NamedBody683_3910 : StackLang.HolProg 64 :=
.seq NamedBody683_1818 NamedBody683_3909

def NamedBody683_3911 : StackLang.HolProg 64 :=
.seq NamedBody683_1763 NamedBody683_3910

def NamedBody683_3912 : StackLang.HolProg 64 :=
.seq NamedBody683_1758 NamedBody683_3911

def NamedBody683_3913 : StackLang.HolProg 64 :=
.seq NamedBody683_1757 NamedBody683_3912

def NamedBody683_3914 : StackLang.HolProg 64 :=
.seq NamedBody683_1702 NamedBody683_3913

def NamedBody683_3915 : StackLang.HolProg 64 :=
.seq NamedBody683_1697 NamedBody683_3914

def NamedBody683_3916 : StackLang.HolProg 64 :=
.seq NamedBody683_1696 NamedBody683_3915

def NamedBody683_3917 : StackLang.HolProg 64 :=
.seq NamedBody683_1641 NamedBody683_3916

def NamedBody683_3918 : StackLang.HolProg 64 :=
.seq NamedBody683_1636 NamedBody683_3917

def NamedBody683_3919 : StackLang.HolProg 64 :=
.seq NamedBody683_1635 NamedBody683_3918

def NamedBody683_3920 : StackLang.HolProg 64 :=
.seq NamedBody683_1580 NamedBody683_3919

def NamedBody683_3921 : StackLang.HolProg 64 :=
.seq NamedBody683_1575 NamedBody683_3920

def NamedBody683_3922 : StackLang.HolProg 64 :=
.seq NamedBody683_1574 NamedBody683_3921

def NamedBody683_3923 : StackLang.HolProg 64 :=
.seq NamedBody683_1519 NamedBody683_3922

def NamedBody683_3924 : StackLang.HolProg 64 :=
.seq NamedBody683_1514 NamedBody683_3923

def NamedBody683_3925 : StackLang.HolProg 64 :=
.seq NamedBody683_1513 NamedBody683_3924

def NamedBody683_3926 : StackLang.HolProg 64 :=
.seq NamedBody683_1458 NamedBody683_3925

def NamedBody683_3927 : StackLang.HolProg 64 :=
.seq NamedBody683_1455 NamedBody683_3926

def NamedBody683_3928 : StackLang.HolProg 64 :=
.seq NamedBody683_1454 NamedBody683_3927

def NamedBody683_3929 : StackLang.HolProg 64 :=
.seq NamedBody683_1453 NamedBody683_3928

def NamedBody683_3930 : StackLang.HolProg 64 :=
.seq NamedBody683_1146 NamedBody683_3929

def NamedBody683_3931 : StackLang.HolProg 64 :=
.seq NamedBody683_1145 NamedBody683_3930

def NamedBody683_3932 : StackLang.HolProg 64 :=
.seq NamedBody683_1144 NamedBody683_3931

def NamedBody683_3933 : StackLang.HolProg 64 :=
.seq NamedBody683_1143 NamedBody683_3932

def NamedBody683_3934 : StackLang.HolProg 64 :=
.seq NamedBody683_1080 NamedBody683_3933

def NamedBody683_3935 : StackLang.HolProg 64 :=
.seq NamedBody683_1073 NamedBody683_3934

def NamedBody683_3936 : StackLang.HolProg 64 :=
.seq NamedBody683_1072 NamedBody683_3935

def NamedBody683_3937 : StackLang.HolProg 64 :=
.seq NamedBody683_995 NamedBody683_3936

def NamedBody683_3938 : StackLang.HolProg 64 :=
.seq NamedBody683_988 NamedBody683_3937

def NamedBody683_3939 : StackLang.HolProg 64 :=
.seq NamedBody683_987 NamedBody683_3938

def NamedBody683_3940 : StackLang.HolProg 64 :=
.seq NamedBody683_898 NamedBody683_3939

def NamedBody683_3941 : StackLang.HolProg 64 :=
.seq NamedBody683_891 NamedBody683_3940

def NamedBody683_3942 : StackLang.HolProg 64 :=
.seq NamedBody683_890 NamedBody683_3941

def NamedBody683_3943 : StackLang.HolProg 64 :=
.seq NamedBody683_801 NamedBody683_3942

def NamedBody683_3944 : StackLang.HolProg 64 :=
.seq NamedBody683_794 NamedBody683_3943

def NamedBody683_3945 : StackLang.HolProg 64 :=
.seq NamedBody683_793 NamedBody683_3944

def NamedBody683_3946 : StackLang.HolProg 64 :=
.seq NamedBody683_696 NamedBody683_3945

def NamedBody683_3947 : StackLang.HolProg 64 :=
.seq NamedBody683_687 NamedBody683_3946

def NamedBody683_3948 : StackLang.HolProg 64 :=
.seq NamedBody683_686 NamedBody683_3947

def NamedBody683_3949 : StackLang.HolProg 64 :=
.seq NamedBody683_611 NamedBody683_3948

def NamedBody683_3950 : StackLang.HolProg 64 :=
.seq NamedBody683_606 NamedBody683_3949

def NamedBody683_3951 : StackLang.HolProg 64 :=
.seq NamedBody683_605 NamedBody683_3950

def NamedBody683_3952 : StackLang.HolProg 64 :=
.seq NamedBody683_550 NamedBody683_3951

def NamedBody683_3953 : StackLang.HolProg 64 :=
.seq NamedBody683_545 NamedBody683_3952

def NamedBody683_3954 : StackLang.HolProg 64 :=
.seq NamedBody683_544 NamedBody683_3953

def NamedBody683_3955 : StackLang.HolProg 64 :=
.seq NamedBody683_489 NamedBody683_3954

def NamedBody683_3956 : StackLang.HolProg 64 :=
.seq NamedBody683_484 NamedBody683_3955

def NamedBody683_3957 : StackLang.HolProg 64 :=
.seq NamedBody683_483 NamedBody683_3956

def NamedBody683_3958 : StackLang.HolProg 64 :=
.seq NamedBody683_428 NamedBody683_3957

def NamedBody683_3959 : StackLang.HolProg 64 :=
.seq NamedBody683_411 NamedBody683_3958

def NamedBody683_3960 : StackLang.HolProg 64 :=
.seq NamedBody683_410 NamedBody683_3959

def NamedBody683_3961 : StackLang.HolProg 64 :=
.seq NamedBody683_409 NamedBody683_3960

def NamedBody683_3962 : StackLang.HolProg 64 :=
.seq NamedBody683_408 NamedBody683_3961

def NamedBody683_3963 : StackLang.HolProg 64 :=
.seq NamedBody683_407 NamedBody683_3962

def NamedBody683_3964 : StackLang.HolProg 64 :=
.seq NamedBody683_406 NamedBody683_3963

def NamedBody683_3965 : StackLang.HolProg 64 :=
.seq NamedBody683_405 NamedBody683_3964

def NamedBody683_3966 : StackLang.HolProg 64 :=
.seq NamedBody683_404 NamedBody683_3965

def NamedBody683_3967 : StackLang.HolProg 64 :=
.seq NamedBody683_403 NamedBody683_3966

def NamedBody683_3968 : StackLang.HolProg 64 :=
.seq NamedBody683_402 NamedBody683_3967

def NamedBody683_3969 : StackLang.HolProg 64 :=
.seq NamedBody683_401 NamedBody683_3968

def NamedBody683_3970 : StackLang.HolProg 64 :=
.seq NamedBody683_400 NamedBody683_3969

def NamedBody683_3971 : StackLang.HolProg 64 :=
.seq NamedBody683_337 NamedBody683_3970

def NamedBody683_3972 : StackLang.HolProg 64 :=
.seq NamedBody683_336 NamedBody683_3971

def NamedBody683_3973 : StackLang.HolProg 64 :=
.seq NamedBody683_335 NamedBody683_3972

def NamedBody683_3974 : StackLang.HolProg 64 :=
.seq NamedBody683_334 NamedBody683_3973

def NamedBody683_3975 : StackLang.HolProg 64 :=
.seq NamedBody683_249 NamedBody683_3974

def NamedBody683_3976 : StackLang.HolProg 64 :=
.seq NamedBody683_248 NamedBody683_3975

def NamedBody683_3977 : StackLang.HolProg 64 :=
.seq NamedBody683_247 NamedBody683_3976

def NamedBody683_3978 : StackLang.HolProg 64 :=
.seq NamedBody683_246 NamedBody683_3977

def NamedBody683_3979 : StackLang.HolProg 64 :=
.seq NamedBody683_193 NamedBody683_3978

def NamedBody683_3980 : StackLang.HolProg 64 :=
.seq NamedBody683_188 NamedBody683_3979

def NamedBody683_3981 : StackLang.HolProg 64 :=
.seq NamedBody683_187 NamedBody683_3980

def NamedBody683_3982 : StackLang.HolProg 64 :=
.seq NamedBody683_186 NamedBody683_3981

def NamedBody683_3983 : StackLang.HolProg 64 :=
.seq NamedBody683_185 NamedBody683_3982

def NamedBody683_3984 : StackLang.HolProg 64 :=
.seq NamedBody683_184 NamedBody683_3983

def NamedBody683_3985 : StackLang.HolProg 64 :=
.seq NamedBody683_183 NamedBody683_3984

def NamedBody683_3986 : StackLang.HolProg 64 :=
.seq NamedBody683_182 NamedBody683_3985

def NamedBody683_3987 : StackLang.HolProg 64 :=
.seq NamedBody683_97 NamedBody683_3986

def NamedBody683_3988 : StackLang.HolProg 64 :=
.seq NamedBody683_96 NamedBody683_3987

def NamedBody683_3989 : StackLang.HolProg 64 :=
.seq NamedBody683_95 NamedBody683_3988

def NamedBody683_3990 : StackLang.HolProg 64 :=
.seq NamedBody683_94 NamedBody683_3989

def NamedBody683_3991 : StackLang.HolProg 64 :=
.seq NamedBody683_23 NamedBody683_3990

def NamedBody683_3992 : StackLang.HolProg 64 :=
.seq NamedBody683_12 NamedBody683_3991

def NamedBody683_3993 : StackLang.HolProg 64 :=
.seq NamedBody683_11 NamedBody683_3992

def NamedBody683_3994 : StackLang.HolProg 64 :=
.seq NamedBody683_10 NamedBody683_3993

def NamedBody683_3995 : StackLang.HolProg 64 :=
.seq NamedBody683_9 NamedBody683_3994

def NamedBody683_3996 : StackLang.HolProg 64 :=
.seq NamedBody683_8 NamedBody683_3995

def NamedBody683_3997 : StackLang.HolProg 64 :=
.seq NamedBody683_7 NamedBody683_3996

def NamedBody683_3998 : StackLang.HolProg 64 :=
.seq NamedBody683_6 NamedBody683_3997

def Named683 : Nat × StackLang.HolProg 64 := (683, NamedBody683_3998)
theorem Named683_eq : StackNames.progCompEntryHOL RiscVConfig.riscvNames Removed683 = Named683 := by
  kernel_rfl
#print axioms Named683_eq
end InitECandidate.Proofs.BackendStages
