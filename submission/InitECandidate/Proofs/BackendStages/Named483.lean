import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.BackendStages.Removed483
import Flapjack.Compiler.Backend.Backend
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
namespace InitECandidate.Proofs.BackendStages
def NamedBody483_0 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody483_1 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 2#64)

def NamedBody483_2 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 10

def NamedBody483_3 : StackLang.HolProg 64 :=
.seq NamedBody483_1 NamedBody483_2

def NamedBody483_4 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody483_5 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) NamedBody483_3 NamedBody483_4

def NamedBody483_6 : StackLang.HolProg 64 :=
.seq NamedBody483_0 NamedBody483_5

def NamedBody483_7 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 10
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody483_8 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 10 11
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 11)))

def NamedBody483_9 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 11 12
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 12)))

def NamedBody483_10 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 12 13
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 13)))

def NamedBody483_11 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 13 5
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 5)))

def NamedBody483_12 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 5 6
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 6)))

def NamedBody483_13 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 6 7
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 7)))

def NamedBody483_14 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 7 8
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 8)))

def NamedBody483_15 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 8 9
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 9)))

def NamedBody483_16 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody483_17 : StackLang.HolProg 64 :=
.seq NamedBody483_15 NamedBody483_16

def NamedBody483_18 : StackLang.HolProg 64 :=
.seq NamedBody483_14 NamedBody483_17

def NamedBody483_19 : StackLang.HolProg 64 :=
.seq NamedBody483_13 NamedBody483_18

def NamedBody483_20 : StackLang.HolProg 64 :=
.seq NamedBody483_12 NamedBody483_19

def NamedBody483_21 : StackLang.HolProg 64 :=
.seq NamedBody483_11 NamedBody483_20

def NamedBody483_22 : StackLang.HolProg 64 :=
.seq NamedBody483_10 NamedBody483_21

def NamedBody483_23 : StackLang.HolProg 64 :=
.seq NamedBody483_9 NamedBody483_22

def NamedBody483_24 : StackLang.HolProg 64 :=
.seq NamedBody483_8 NamedBody483_23

def NamedBody483_25 : StackLang.HolProg 64 :=
.seq NamedBody483_7 NamedBody483_24

def NamedBody483_26 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody483_27 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1517#64)

def NamedBody483_28 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody483_29 : StackLang.HolProg 64 :=
.seq NamedBody483_27 NamedBody483_28

def NamedBody483_30 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody483_31 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 2#64)

def NamedBody483_32 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 10

def NamedBody483_33 : StackLang.HolProg 64 :=
.seq NamedBody483_31 NamedBody483_32

def NamedBody483_34 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody483_35 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) NamedBody483_33 NamedBody483_34

def NamedBody483_36 : StackLang.HolProg 64 :=
.seq NamedBody483_30 NamedBody483_35

def NamedBody483_37 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def NamedBody483_38 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody483_39 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 483 3

def NamedBody483_40 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody483_41 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody483_42 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody483_43 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody483_44 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def NamedBody483_45 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def NamedBody483_46 : StackLang.HolProg 64 :=
.seq NamedBody483_44 NamedBody483_45

def NamedBody483_47 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def NamedBody483_48 : StackLang.HolProg 64 :=
.seq NamedBody483_46 NamedBody483_47

def NamedBody483_49 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody483_50 : StackLang.HolProg 64 :=
.seq NamedBody483_48 NamedBody483_49

def NamedBody483_51 : StackLang.HolProg 64 :=
.seq NamedBody483_43 NamedBody483_50

def NamedBody483_52 : StackLang.HolProg 64 :=
.seq NamedBody483_42 NamedBody483_51

def NamedBody483_53 : StackLang.HolProg 64 :=
.seq NamedBody483_41 NamedBody483_52

def NamedBody483_54 : StackLang.HolProg 64 :=
.seq NamedBody483_40 NamedBody483_53

def NamedBody483_55 : StackLang.HolProg 64 :=
.seq NamedBody483_39 NamedBody483_54

def NamedBody483_56 : StackLang.HolProg 64 :=
.seq NamedBody483_38 NamedBody483_55

def NamedBody483_57 : StackLang.HolProg 64 :=
.seq NamedBody483_37 NamedBody483_56

def NamedBody483_58 : StackLang.HolProg 64 :=
.seq NamedBody483_36 NamedBody483_57

def NamedBody483_59 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody483_60 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody483_61 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody483_62 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody483_63 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody483_64 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody483_65 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 1 10
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 10)))

def NamedBody483_66 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 12
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody483_67 : StackLang.HolProg 64 :=
.seq NamedBody483_65 NamedBody483_66

def NamedBody483_68 : StackLang.HolProg 64 :=
.seq NamedBody483_64 NamedBody483_67

def NamedBody483_69 : StackLang.HolProg 64 :=
.seq NamedBody483_63 NamedBody483_68

def NamedBody483_70 : StackLang.HolProg 64 :=
.seq NamedBody483_62 NamedBody483_69

def NamedBody483_71 : StackLang.HolProg 64 :=
.seq NamedBody483_61 NamedBody483_70

def NamedBody483_72 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 12
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody483_73 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def NamedBody483_74 : StackLang.HolProg 64 :=
.seq NamedBody483_72 NamedBody483_73

def NamedBody483_75 : StackLang.HolProg 64 :=
.call (some (NamedBody483_71, 1, 483, 2)) (Sum.inl 480) (some (NamedBody483_74, 483, 3))

def NamedBody483_76 : StackLang.HolProg 64 :=
.seq NamedBody483_60 NamedBody483_75

def NamedBody483_77 : StackLang.HolProg 64 :=
.seq NamedBody483_59 NamedBody483_76

def NamedBody483_78 : StackLang.HolProg 64 :=
.seq NamedBody483_58 NamedBody483_77

def NamedBody483_79 : StackLang.HolProg 64 :=
.seq NamedBody483_29 NamedBody483_78

def NamedBody483_80 : StackLang.HolProg 64 :=
.seq NamedBody483_26 NamedBody483_79

def NamedBody483_81 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody483_82 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 10 12
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 12)))

def NamedBody483_83 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 11
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody483_84 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 11 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def NamedBody483_85 : StackLang.HolProg 64 :=
.seq NamedBody483_83 NamedBody483_84

def NamedBody483_86 : StackLang.HolProg 64 :=
.seq NamedBody483_82 NamedBody483_85

def NamedBody483_87 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody483_88 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1518#64)

def NamedBody483_89 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody483_90 : StackLang.HolProg 64 :=
.seq NamedBody483_88 NamedBody483_89

def NamedBody483_91 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody483_92 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 2#64)

def NamedBody483_93 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 10

def NamedBody483_94 : StackLang.HolProg 64 :=
.seq NamedBody483_92 NamedBody483_93

def NamedBody483_95 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody483_96 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) NamedBody483_94 NamedBody483_95

def NamedBody483_97 : StackLang.HolProg 64 :=
.seq NamedBody483_91 NamedBody483_96

def NamedBody483_98 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def NamedBody483_99 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody483_100 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 483 5

def NamedBody483_101 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody483_102 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody483_103 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody483_104 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody483_105 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def NamedBody483_106 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def NamedBody483_107 : StackLang.HolProg 64 :=
.seq NamedBody483_105 NamedBody483_106

def NamedBody483_108 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def NamedBody483_109 : StackLang.HolProg 64 :=
.seq NamedBody483_107 NamedBody483_108

def NamedBody483_110 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody483_111 : StackLang.HolProg 64 :=
.seq NamedBody483_109 NamedBody483_110

def NamedBody483_112 : StackLang.HolProg 64 :=
.seq NamedBody483_104 NamedBody483_111

def NamedBody483_113 : StackLang.HolProg 64 :=
.seq NamedBody483_103 NamedBody483_112

def NamedBody483_114 : StackLang.HolProg 64 :=
.seq NamedBody483_102 NamedBody483_113

def NamedBody483_115 : StackLang.HolProg 64 :=
.seq NamedBody483_101 NamedBody483_114

def NamedBody483_116 : StackLang.HolProg 64 :=
.seq NamedBody483_100 NamedBody483_115

def NamedBody483_117 : StackLang.HolProg 64 :=
.seq NamedBody483_99 NamedBody483_116

def NamedBody483_118 : StackLang.HolProg 64 :=
.seq NamedBody483_98 NamedBody483_117

def NamedBody483_119 : StackLang.HolProg 64 :=
.seq NamedBody483_97 NamedBody483_118

def NamedBody483_120 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody483_121 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody483_122 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody483_123 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody483_124 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody483_125 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody483_126 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 1 10
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 10)))

def NamedBody483_127 : StackLang.HolProg 64 :=
.seq NamedBody483_125 NamedBody483_126

def NamedBody483_128 : StackLang.HolProg 64 :=
.seq NamedBody483_124 NamedBody483_127

def NamedBody483_129 : StackLang.HolProg 64 :=
.seq NamedBody483_123 NamedBody483_128

def NamedBody483_130 : StackLang.HolProg 64 :=
.seq NamedBody483_122 NamedBody483_129

def NamedBody483_131 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody483_132 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def NamedBody483_133 : StackLang.HolProg 64 :=
.seq NamedBody483_131 NamedBody483_132

def NamedBody483_134 : StackLang.HolProg 64 :=
.call (some (NamedBody483_130, 1, 483, 4)) (Sum.inl 463) (some (NamedBody483_133, 483, 5))

def NamedBody483_135 : StackLang.HolProg 64 :=
.seq NamedBody483_121 NamedBody483_134

def NamedBody483_136 : StackLang.HolProg 64 :=
.seq NamedBody483_120 NamedBody483_135

def NamedBody483_137 : StackLang.HolProg 64 :=
.seq NamedBody483_119 NamedBody483_136

def NamedBody483_138 : StackLang.HolProg 64 :=
.seq NamedBody483_90 NamedBody483_137

def NamedBody483_139 : StackLang.HolProg 64 :=
.seq NamedBody483_87 NamedBody483_138

def NamedBody483_140 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody483_141 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 10 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def NamedBody483_142 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody483_143 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1519#64)

def NamedBody483_144 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody483_145 : StackLang.HolProg 64 :=
.seq NamedBody483_143 NamedBody483_144

def NamedBody483_146 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody483_147 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 2#64)

def NamedBody483_148 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 10

def NamedBody483_149 : StackLang.HolProg 64 :=
.seq NamedBody483_147 NamedBody483_148

def NamedBody483_150 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody483_151 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) NamedBody483_149 NamedBody483_150

def NamedBody483_152 : StackLang.HolProg 64 :=
.seq NamedBody483_146 NamedBody483_151

def NamedBody483_153 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def NamedBody483_154 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody483_155 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 483 7

def NamedBody483_156 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody483_157 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody483_158 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody483_159 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody483_160 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def NamedBody483_161 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def NamedBody483_162 : StackLang.HolProg 64 :=
.seq NamedBody483_160 NamedBody483_161

def NamedBody483_163 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def NamedBody483_164 : StackLang.HolProg 64 :=
.seq NamedBody483_162 NamedBody483_163

def NamedBody483_165 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody483_166 : StackLang.HolProg 64 :=
.seq NamedBody483_164 NamedBody483_165

def NamedBody483_167 : StackLang.HolProg 64 :=
.seq NamedBody483_159 NamedBody483_166

def NamedBody483_168 : StackLang.HolProg 64 :=
.seq NamedBody483_158 NamedBody483_167

def NamedBody483_169 : StackLang.HolProg 64 :=
.seq NamedBody483_157 NamedBody483_168

def NamedBody483_170 : StackLang.HolProg 64 :=
.seq NamedBody483_156 NamedBody483_169

def NamedBody483_171 : StackLang.HolProg 64 :=
.seq NamedBody483_155 NamedBody483_170

def NamedBody483_172 : StackLang.HolProg 64 :=
.seq NamedBody483_154 NamedBody483_171

def NamedBody483_173 : StackLang.HolProg 64 :=
.seq NamedBody483_153 NamedBody483_172

def NamedBody483_174 : StackLang.HolProg 64 :=
.seq NamedBody483_152 NamedBody483_173

def NamedBody483_175 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody483_176 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody483_177 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody483_178 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody483_179 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody483_180 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody483_181 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody483_182 : StackLang.HolProg 64 :=
.seq NamedBody483_180 NamedBody483_181

def NamedBody483_183 : StackLang.HolProg 64 :=
.seq NamedBody483_179 NamedBody483_182

def NamedBody483_184 : StackLang.HolProg 64 :=
.seq NamedBody483_178 NamedBody483_183

def NamedBody483_185 : StackLang.HolProg 64 :=
.seq NamedBody483_177 NamedBody483_184

def NamedBody483_186 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody483_187 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def NamedBody483_188 : StackLang.HolProg 64 :=
.seq NamedBody483_186 NamedBody483_187

def NamedBody483_189 : StackLang.HolProg 64 :=
.call (some (NamedBody483_185, 1, 483, 6)) (Sum.inl 470) (some (NamedBody483_188, 483, 7))

def NamedBody483_190 : StackLang.HolProg 64 :=
.seq NamedBody483_176 NamedBody483_189

def NamedBody483_191 : StackLang.HolProg 64 :=
.seq NamedBody483_175 NamedBody483_190

def NamedBody483_192 : StackLang.HolProg 64 :=
.seq NamedBody483_174 NamedBody483_191

def NamedBody483_193 : StackLang.HolProg 64 :=
.seq NamedBody483_145 NamedBody483_192

def NamedBody483_194 : StackLang.HolProg 64 :=
.seq NamedBody483_142 NamedBody483_193

def NamedBody483_195 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody483_196 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 10 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def NamedBody483_197 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody483_198 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1520#64)

def NamedBody483_199 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody483_200 : StackLang.HolProg 64 :=
.seq NamedBody483_198 NamedBody483_199

def NamedBody483_201 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody483_202 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 2#64)

def NamedBody483_203 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 10

def NamedBody483_204 : StackLang.HolProg 64 :=
.seq NamedBody483_202 NamedBody483_203

def NamedBody483_205 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody483_206 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) NamedBody483_204 NamedBody483_205

def NamedBody483_207 : StackLang.HolProg 64 :=
.seq NamedBody483_201 NamedBody483_206

def NamedBody483_208 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def NamedBody483_209 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody483_210 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 483 9

def NamedBody483_211 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody483_212 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody483_213 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody483_214 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody483_215 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def NamedBody483_216 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def NamedBody483_217 : StackLang.HolProg 64 :=
.seq NamedBody483_215 NamedBody483_216

def NamedBody483_218 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def NamedBody483_219 : StackLang.HolProg 64 :=
.seq NamedBody483_217 NamedBody483_218

def NamedBody483_220 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody483_221 : StackLang.HolProg 64 :=
.seq NamedBody483_219 NamedBody483_220

def NamedBody483_222 : StackLang.HolProg 64 :=
.seq NamedBody483_214 NamedBody483_221

def NamedBody483_223 : StackLang.HolProg 64 :=
.seq NamedBody483_213 NamedBody483_222

def NamedBody483_224 : StackLang.HolProg 64 :=
.seq NamedBody483_212 NamedBody483_223

def NamedBody483_225 : StackLang.HolProg 64 :=
.seq NamedBody483_211 NamedBody483_224

def NamedBody483_226 : StackLang.HolProg 64 :=
.seq NamedBody483_210 NamedBody483_225

def NamedBody483_227 : StackLang.HolProg 64 :=
.seq NamedBody483_209 NamedBody483_226

def NamedBody483_228 : StackLang.HolProg 64 :=
.seq NamedBody483_208 NamedBody483_227

def NamedBody483_229 : StackLang.HolProg 64 :=
.seq NamedBody483_207 NamedBody483_228

def NamedBody483_230 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody483_231 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody483_232 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody483_233 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody483_234 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody483_235 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody483_236 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody483_237 : StackLang.HolProg 64 :=
.seq NamedBody483_235 NamedBody483_236

def NamedBody483_238 : StackLang.HolProg 64 :=
.seq NamedBody483_234 NamedBody483_237

def NamedBody483_239 : StackLang.HolProg 64 :=
.seq NamedBody483_233 NamedBody483_238

def NamedBody483_240 : StackLang.HolProg 64 :=
.seq NamedBody483_232 NamedBody483_239

def NamedBody483_241 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody483_242 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def NamedBody483_243 : StackLang.HolProg 64 :=
.seq NamedBody483_241 NamedBody483_242

def NamedBody483_244 : StackLang.HolProg 64 :=
.call (some (NamedBody483_240, 1, 483, 8)) (Sum.inl 482) (some (NamedBody483_243, 483, 9))

def NamedBody483_245 : StackLang.HolProg 64 :=
.seq NamedBody483_231 NamedBody483_244

def NamedBody483_246 : StackLang.HolProg 64 :=
.seq NamedBody483_230 NamedBody483_245

def NamedBody483_247 : StackLang.HolProg 64 :=
.seq NamedBody483_229 NamedBody483_246

def NamedBody483_248 : StackLang.HolProg 64 :=
.seq NamedBody483_200 NamedBody483_247

def NamedBody483_249 : StackLang.HolProg 64 :=
.seq NamedBody483_197 NamedBody483_248

def NamedBody483_250 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody483_251 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 0#64)

def NamedBody483_252 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody483_253 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody483_254 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 1

def NamedBody483_255 : StackLang.HolProg 64 :=
.seq NamedBody483_253 NamedBody483_254

def NamedBody483_256 : StackLang.HolProg 64 :=
.seq NamedBody483_252 NamedBody483_255

def NamedBody483_257 : StackLang.HolProg 64 :=
.seq NamedBody483_251 NamedBody483_256

def NamedBody483_258 : StackLang.HolProg 64 :=
.seq NamedBody483_250 NamedBody483_257

def NamedBody483_259 : StackLang.HolProg 64 :=
.seq NamedBody483_249 NamedBody483_258

def NamedBody483_260 : StackLang.HolProg 64 :=
.seq NamedBody483_196 NamedBody483_259

def NamedBody483_261 : StackLang.HolProg 64 :=
.seq NamedBody483_195 NamedBody483_260

def NamedBody483_262 : StackLang.HolProg 64 :=
.seq NamedBody483_194 NamedBody483_261

def NamedBody483_263 : StackLang.HolProg 64 :=
.seq NamedBody483_141 NamedBody483_262

def NamedBody483_264 : StackLang.HolProg 64 :=
.seq NamedBody483_140 NamedBody483_263

def NamedBody483_265 : StackLang.HolProg 64 :=
.seq NamedBody483_139 NamedBody483_264

def NamedBody483_266 : StackLang.HolProg 64 :=
.seq NamedBody483_86 NamedBody483_265

def NamedBody483_267 : StackLang.HolProg 64 :=
.seq NamedBody483_81 NamedBody483_266

def NamedBody483_268 : StackLang.HolProg 64 :=
.seq NamedBody483_80 NamedBody483_267

def NamedBody483_269 : StackLang.HolProg 64 :=
.seq NamedBody483_25 NamedBody483_268

def NamedBody483_270 : StackLang.HolProg 64 :=
.seq NamedBody483_6 NamedBody483_269

def Named483 : Nat × StackLang.HolProg 64 := (483, NamedBody483_270)
theorem Named483_eq : StackNames.progCompEntryHOL RiscVConfig.riscvNames Removed483 = Named483 := by
  kernel_rfl
#print axioms Named483_eq
end InitECandidate.Proofs.BackendStages
