import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.BackendStages.Removed674
import Flapjack.Compiler.Backend.Backend
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
namespace InitECandidate.Proofs.BackendStages
def NamedBody674_0 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 48#64)))

def NamedBody674_1 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 2#64)

def NamedBody674_2 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 10

def NamedBody674_3 : StackLang.HolProg 64 :=
.seq NamedBody674_1 NamedBody674_2

def NamedBody674_4 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody674_5 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) NamedBody674_3 NamedBody674_4

def NamedBody674_6 : StackLang.HolProg 64 :=
.seq NamedBody674_0 NamedBody674_5

def NamedBody674_7 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody674_8 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 13 0#64)

def NamedBody674_9 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody674_10 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 40#64))

def NamedBody674_11 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 11
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 32#64))

def NamedBody674_12 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 1 10
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 10)))

def NamedBody674_13 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 7 12
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 12)))

def NamedBody674_14 : StackLang.HolProg 64 :=
.seq NamedBody674_12 NamedBody674_13

def NamedBody674_15 : StackLang.HolProg 64 :=
.seq NamedBody674_11 NamedBody674_14

def NamedBody674_16 : StackLang.HolProg 64 :=
.seq NamedBody674_10 NamedBody674_15

def NamedBody674_17 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody674_18 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody674_19 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody674_20 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsl 11 13
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 5#64)))

def NamedBody674_21 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody674_22 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 10 11
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 7)))

def NamedBody674_23 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 10
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 10 0#64))

def NamedBody674_24 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 13
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 24#64))

def NamedBody674_25 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 13 7
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 11)))

def NamedBody674_26 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 11
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 13 8#64))

def NamedBody674_27 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 7
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody674_28 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 12
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 13 16#64))

def NamedBody674_29 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody674_30 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 13
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 13 24#64))

def NamedBody674_31 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody674_32 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody674_33 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 2790#64)

def NamedBody674_34 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody674_35 : StackLang.HolProg 64 :=
.seq NamedBody674_33 NamedBody674_34

def NamedBody674_36 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody674_37 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 2#64)

def NamedBody674_38 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 10

def NamedBody674_39 : StackLang.HolProg 64 :=
.seq NamedBody674_37 NamedBody674_38

def NamedBody674_40 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody674_41 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) NamedBody674_39 NamedBody674_40

def NamedBody674_42 : StackLang.HolProg 64 :=
.seq NamedBody674_36 NamedBody674_41

def NamedBody674_43 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def NamedBody674_44 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody674_45 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 674 3

def NamedBody674_46 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody674_47 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody674_48 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody674_49 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody674_50 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def NamedBody674_51 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def NamedBody674_52 : StackLang.HolProg 64 :=
.seq NamedBody674_50 NamedBody674_51

def NamedBody674_53 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def NamedBody674_54 : StackLang.HolProg 64 :=
.seq NamedBody674_52 NamedBody674_53

def NamedBody674_55 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody674_56 : StackLang.HolProg 64 :=
.seq NamedBody674_54 NamedBody674_55

def NamedBody674_57 : StackLang.HolProg 64 :=
.seq NamedBody674_49 NamedBody674_56

def NamedBody674_58 : StackLang.HolProg 64 :=
.seq NamedBody674_48 NamedBody674_57

def NamedBody674_59 : StackLang.HolProg 64 :=
.seq NamedBody674_47 NamedBody674_58

def NamedBody674_60 : StackLang.HolProg 64 :=
.seq NamedBody674_46 NamedBody674_59

def NamedBody674_61 : StackLang.HolProg 64 :=
.seq NamedBody674_45 NamedBody674_60

def NamedBody674_62 : StackLang.HolProg 64 :=
.seq NamedBody674_44 NamedBody674_61

def NamedBody674_63 : StackLang.HolProg 64 :=
.seq NamedBody674_43 NamedBody674_62

def NamedBody674_64 : StackLang.HolProg 64 :=
.seq NamedBody674_42 NamedBody674_63

def NamedBody674_65 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody674_66 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody674_67 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody674_68 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody674_69 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody674_70 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody674_71 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 5 10
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 10)))

def NamedBody674_72 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 9
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 40#64))

def NamedBody674_73 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 6
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 32#64))

def NamedBody674_74 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 8
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 24#64))

def NamedBody674_75 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody674_76 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 7
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody674_77 : StackLang.HolProg 64 :=
.seq NamedBody674_75 NamedBody674_76

def NamedBody674_78 : StackLang.HolProg 64 :=
.seq NamedBody674_74 NamedBody674_77

def NamedBody674_79 : StackLang.HolProg 64 :=
.seq NamedBody674_73 NamedBody674_78

def NamedBody674_80 : StackLang.HolProg 64 :=
.seq NamedBody674_72 NamedBody674_79

def NamedBody674_81 : StackLang.HolProg 64 :=
.seq NamedBody674_71 NamedBody674_80

def NamedBody674_82 : StackLang.HolProg 64 :=
.seq NamedBody674_70 NamedBody674_81

def NamedBody674_83 : StackLang.HolProg 64 :=
.seq NamedBody674_69 NamedBody674_82

def NamedBody674_84 : StackLang.HolProg 64 :=
.seq NamedBody674_68 NamedBody674_83

def NamedBody674_85 : StackLang.HolProg 64 :=
.seq NamedBody674_67 NamedBody674_84

def NamedBody674_86 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 9
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 40#64))

def NamedBody674_87 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 6
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 32#64))

def NamedBody674_88 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 8
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 24#64))

def NamedBody674_89 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody674_90 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 7
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody674_91 : StackLang.HolProg 64 :=
.seq NamedBody674_89 NamedBody674_90

def NamedBody674_92 : StackLang.HolProg 64 :=
.seq NamedBody674_88 NamedBody674_91

def NamedBody674_93 : StackLang.HolProg 64 :=
.seq NamedBody674_87 NamedBody674_92

def NamedBody674_94 : StackLang.HolProg 64 :=
.seq NamedBody674_86 NamedBody674_93

def NamedBody674_95 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def NamedBody674_96 : StackLang.HolProg 64 :=
.seq NamedBody674_94 NamedBody674_95

def NamedBody674_97 : StackLang.HolProg 64 :=
.call (some (NamedBody674_85, 1, 674, 2)) (Sum.inl 660) (some (NamedBody674_96, 674, 3))

def NamedBody674_98 : StackLang.HolProg 64 :=
.seq NamedBody674_66 NamedBody674_97

def NamedBody674_99 : StackLang.HolProg 64 :=
.seq NamedBody674_65 NamedBody674_98

def NamedBody674_100 : StackLang.HolProg 64 :=
.seq NamedBody674_64 NamedBody674_99

def NamedBody674_101 : StackLang.HolProg 64 :=
.seq NamedBody674_35 NamedBody674_100

def NamedBody674_102 : StackLang.HolProg 64 :=
.seq NamedBody674_32 NamedBody674_101

def NamedBody674_103 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody674_104 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody674_105 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsl 10 8
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 5#64)))

def NamedBody674_106 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody674_107 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 10 10
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 6)))

def NamedBody674_108 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody674_109 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 5
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 10 0#64))

def NamedBody674_110 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody674_111 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 11
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 10 8#64))

def NamedBody674_112 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody674_113 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 12
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 10 16#64))

def NamedBody674_114 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody674_115 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 13
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 10 24#64))

def NamedBody674_116 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody674_117 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 13 8
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 1#64)))

def NamedBody674_118 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 9
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 40#64))

def NamedBody674_119 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 6
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 32#64))

def NamedBody674_120 : StackLang.HolProg 64 :=
.seq NamedBody674_118 NamedBody674_119

def NamedBody674_121 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.continue 0

def NamedBody674_122 : StackLang.HolProg 64 :=
.seq NamedBody674_120 NamedBody674_121

def NamedBody674_123 : StackLang.HolProg 64 :=
.seq NamedBody674_117 NamedBody674_122

def NamedBody674_124 : StackLang.HolProg 64 :=
.seq NamedBody674_116 NamedBody674_123

def NamedBody674_125 : StackLang.HolProg 64 :=
.seq NamedBody674_115 NamedBody674_124

def NamedBody674_126 : StackLang.HolProg 64 :=
.seq NamedBody674_114 NamedBody674_125

def NamedBody674_127 : StackLang.HolProg 64 :=
.seq NamedBody674_113 NamedBody674_126

def NamedBody674_128 : StackLang.HolProg 64 :=
.seq NamedBody674_112 NamedBody674_127

def NamedBody674_129 : StackLang.HolProg 64 :=
.seq NamedBody674_111 NamedBody674_128

def NamedBody674_130 : StackLang.HolProg 64 :=
.seq NamedBody674_110 NamedBody674_129

def NamedBody674_131 : StackLang.HolProg 64 :=
.seq NamedBody674_109 NamedBody674_130

def NamedBody674_132 : StackLang.HolProg 64 :=
.seq NamedBody674_108 NamedBody674_131

def NamedBody674_133 : StackLang.HolProg 64 :=
.seq NamedBody674_107 NamedBody674_132

def NamedBody674_134 : StackLang.HolProg 64 :=
.seq NamedBody674_106 NamedBody674_133

def NamedBody674_135 : StackLang.HolProg 64 :=
.seq NamedBody674_105 NamedBody674_134

def NamedBody674_136 : StackLang.HolProg 64 :=
.seq NamedBody674_104 NamedBody674_135

def NamedBody674_137 : StackLang.HolProg 64 :=
.seq NamedBody674_103 NamedBody674_136

def NamedBody674_138 : StackLang.HolProg 64 :=
.seq NamedBody674_102 NamedBody674_137

def NamedBody674_139 : StackLang.HolProg 64 :=
.seq NamedBody674_31 NamedBody674_138

def NamedBody674_140 : StackLang.HolProg 64 :=
.seq NamedBody674_30 NamedBody674_139

def NamedBody674_141 : StackLang.HolProg 64 :=
.seq NamedBody674_29 NamedBody674_140

def NamedBody674_142 : StackLang.HolProg 64 :=
.seq NamedBody674_28 NamedBody674_141

def NamedBody674_143 : StackLang.HolProg 64 :=
.seq NamedBody674_27 NamedBody674_142

def NamedBody674_144 : StackLang.HolProg 64 :=
.seq NamedBody674_26 NamedBody674_143

def NamedBody674_145 : StackLang.HolProg 64 :=
.seq NamedBody674_25 NamedBody674_144

def NamedBody674_146 : StackLang.HolProg 64 :=
.seq NamedBody674_24 NamedBody674_145

def NamedBody674_147 : StackLang.HolProg 64 :=
.seq NamedBody674_23 NamedBody674_146

def NamedBody674_148 : StackLang.HolProg 64 :=
.seq NamedBody674_22 NamedBody674_147

def NamedBody674_149 : StackLang.HolProg 64 :=
.seq NamedBody674_21 NamedBody674_148

def NamedBody674_150 : StackLang.HolProg 64 :=
.seq NamedBody674_20 NamedBody674_149

def NamedBody674_151 : StackLang.HolProg 64 :=
.seq NamedBody674_19 NamedBody674_150

def NamedBody674_152 : StackLang.HolProg 64 :=
.seq NamedBody674_18 NamedBody674_151

def NamedBody674_153 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody674_154 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.break 0

def NamedBody674_155 : StackLang.HolProg 64 :=
.seq NamedBody674_153 NamedBody674_154

def NamedBody674_156 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 13 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1) NamedBody674_152 NamedBody674_155

def NamedBody674_157 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody674_158 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 10
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 40#64))

def NamedBody674_159 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 11
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 32#64))

def NamedBody674_160 : StackLang.HolProg 64 :=
.seq NamedBody674_158 NamedBody674_159

def NamedBody674_161 : StackLang.HolProg 64 :=
.seq NamedBody674_157 NamedBody674_160

def NamedBody674_162 : StackLang.HolProg 64 :=
.seq NamedBody674_156 NamedBody674_161

def NamedBody674_163 : StackLang.HolProg 64 :=
.seq NamedBody674_17 NamedBody674_162

def NamedBody674_164 : StackLang.HolProg 64 :=
.loop NamedBody674_163

def NamedBody674_165 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody674_166 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 0#64)

def NamedBody674_167 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody674_168 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 40#64))

def NamedBody674_169 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 48#64)))

def NamedBody674_170 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 22

def NamedBody674_171 : StackLang.HolProg 64 :=
.seq NamedBody674_169 NamedBody674_170

def NamedBody674_172 : StackLang.HolProg 64 :=
.seq NamedBody674_168 NamedBody674_171

def NamedBody674_173 : StackLang.HolProg 64 :=
.seq NamedBody674_167 NamedBody674_172

def NamedBody674_174 : StackLang.HolProg 64 :=
.seq NamedBody674_166 NamedBody674_173

def NamedBody674_175 : StackLang.HolProg 64 :=
.seq NamedBody674_165 NamedBody674_174

def NamedBody674_176 : StackLang.HolProg 64 :=
.seq NamedBody674_164 NamedBody674_175

def NamedBody674_177 : StackLang.HolProg 64 :=
.seq NamedBody674_16 NamedBody674_176

def NamedBody674_178 : StackLang.HolProg 64 :=
.seq NamedBody674_9 NamedBody674_177

def NamedBody674_179 : StackLang.HolProg 64 :=
.seq NamedBody674_8 NamedBody674_178

def NamedBody674_180 : StackLang.HolProg 64 :=
.seq NamedBody674_7 NamedBody674_179

def NamedBody674_181 : StackLang.HolProg 64 :=
.seq NamedBody674_6 NamedBody674_180

def Named674 : Nat × StackLang.HolProg 64 := (674, NamedBody674_181)
theorem Named674_eq : StackNames.progCompEntryHOL RiscVConfig.riscvNames Removed674 = Named674 := by
  kernel_rfl
#print axioms Named674_eq
end InitECandidate.Proofs.BackendStages
