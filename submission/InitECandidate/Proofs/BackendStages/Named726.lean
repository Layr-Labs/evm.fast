import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.BackendStages.Removed726
import Flapjack.Compiler.Backend.Backend
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
namespace InitECandidate.Proofs.BackendStages
def NamedBody726_0 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 64#64)))

def NamedBody726_1 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 2#64)

def NamedBody726_2 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 10

def NamedBody726_3 : StackLang.HolProg 64 :=
.seq NamedBody726_1 NamedBody726_2

def NamedBody726_4 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody726_5 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) NamedBody726_3 NamedBody726_4

def NamedBody726_6 : StackLang.HolProg 64 :=
.seq NamedBody726_0 NamedBody726_5

def NamedBody726_7 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 10
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 32#64))

def NamedBody726_8 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 10 7
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 7)))

def NamedBody726_9 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 11
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 40#64))

def NamedBody726_10 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 11 6
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 6)))

def NamedBody726_11 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 56#64))

def NamedBody726_12 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 13
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 48#64))

def NamedBody726_13 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 5
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 24#64))

def NamedBody726_14 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 12
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody726_15 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 7
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody726_16 : StackLang.HolProg 64 :=
.seq NamedBody726_14 NamedBody726_15

def NamedBody726_17 : StackLang.HolProg 64 :=
.seq NamedBody726_13 NamedBody726_16

def NamedBody726_18 : StackLang.HolProg 64 :=
.seq NamedBody726_12 NamedBody726_17

def NamedBody726_19 : StackLang.HolProg 64 :=
.seq NamedBody726_11 NamedBody726_18

def NamedBody726_20 : StackLang.HolProg 64 :=
.seq NamedBody726_10 NamedBody726_19

def NamedBody726_21 : StackLang.HolProg 64 :=
.seq NamedBody726_9 NamedBody726_20

def NamedBody726_22 : StackLang.HolProg 64 :=
.seq NamedBody726_8 NamedBody726_21

def NamedBody726_23 : StackLang.HolProg 64 :=
.seq NamedBody726_7 NamedBody726_22

def NamedBody726_24 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody726_25 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 3248#64)

def NamedBody726_26 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody726_27 : StackLang.HolProg 64 :=
.seq NamedBody726_25 NamedBody726_26

def NamedBody726_28 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody726_29 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 2#64)

def NamedBody726_30 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 10

def NamedBody726_31 : StackLang.HolProg 64 :=
.seq NamedBody726_29 NamedBody726_30

def NamedBody726_32 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody726_33 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) NamedBody726_31 NamedBody726_32

def NamedBody726_34 : StackLang.HolProg 64 :=
.seq NamedBody726_28 NamedBody726_33

def NamedBody726_35 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def NamedBody726_36 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody726_37 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 726 3

def NamedBody726_38 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody726_39 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody726_40 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody726_41 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody726_42 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def NamedBody726_43 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def NamedBody726_44 : StackLang.HolProg 64 :=
.seq NamedBody726_42 NamedBody726_43

def NamedBody726_45 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def NamedBody726_46 : StackLang.HolProg 64 :=
.seq NamedBody726_44 NamedBody726_45

def NamedBody726_47 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody726_48 : StackLang.HolProg 64 :=
.seq NamedBody726_46 NamedBody726_47

def NamedBody726_49 : StackLang.HolProg 64 :=
.seq NamedBody726_41 NamedBody726_48

def NamedBody726_50 : StackLang.HolProg 64 :=
.seq NamedBody726_40 NamedBody726_49

def NamedBody726_51 : StackLang.HolProg 64 :=
.seq NamedBody726_39 NamedBody726_50

def NamedBody726_52 : StackLang.HolProg 64 :=
.seq NamedBody726_38 NamedBody726_51

def NamedBody726_53 : StackLang.HolProg 64 :=
.seq NamedBody726_37 NamedBody726_52

def NamedBody726_54 : StackLang.HolProg 64 :=
.seq NamedBody726_36 NamedBody726_53

def NamedBody726_55 : StackLang.HolProg 64 :=
.seq NamedBody726_35 NamedBody726_54

def NamedBody726_56 : StackLang.HolProg 64 :=
.seq NamedBody726_34 NamedBody726_55

def NamedBody726_57 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody726_58 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody726_59 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody726_60 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody726_61 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody726_62 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody726_63 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 11
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 24#64))

def NamedBody726_64 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody726_65 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 24#64))

def NamedBody726_66 : StackLang.HolProg 64 :=
.seq NamedBody726_64 NamedBody726_65

def NamedBody726_67 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody726_68 : StackLang.HolProg 64 :=
.seq NamedBody726_66 NamedBody726_67

def NamedBody726_69 : StackLang.HolProg 64 :=
.seq NamedBody726_63 NamedBody726_68

def NamedBody726_70 : StackLang.HolProg 64 :=
.seq NamedBody726_62 NamedBody726_69

def NamedBody726_71 : StackLang.HolProg 64 :=
.seq NamedBody726_61 NamedBody726_70

def NamedBody726_72 : StackLang.HolProg 64 :=
.seq NamedBody726_60 NamedBody726_71

def NamedBody726_73 : StackLang.HolProg 64 :=
.seq NamedBody726_59 NamedBody726_72

def NamedBody726_74 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 11
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 24#64))

def NamedBody726_75 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody726_76 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 24#64))

def NamedBody726_77 : StackLang.HolProg 64 :=
.seq NamedBody726_75 NamedBody726_76

def NamedBody726_78 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody726_79 : StackLang.HolProg 64 :=
.seq NamedBody726_77 NamedBody726_78

def NamedBody726_80 : StackLang.HolProg 64 :=
.seq NamedBody726_74 NamedBody726_79

def NamedBody726_81 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def NamedBody726_82 : StackLang.HolProg 64 :=
.seq NamedBody726_80 NamedBody726_81

def NamedBody726_83 : StackLang.HolProg 64 :=
.call (some (NamedBody726_73, 1, 726, 2)) (Sum.inl 89) (some (NamedBody726_82, 726, 3))

def NamedBody726_84 : StackLang.HolProg 64 :=
.seq NamedBody726_58 NamedBody726_83

def NamedBody726_85 : StackLang.HolProg 64 :=
.seq NamedBody726_57 NamedBody726_84

def NamedBody726_86 : StackLang.HolProg 64 :=
.seq NamedBody726_56 NamedBody726_85

def NamedBody726_87 : StackLang.HolProg 64 :=
.seq NamedBody726_27 NamedBody726_86

def NamedBody726_88 : StackLang.HolProg 64 :=
.seq NamedBody726_24 NamedBody726_87

def NamedBody726_89 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody726_90 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody726_91 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 10 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 8#64)))

def NamedBody726_92 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody726_93 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody726_94 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 3249#64)

def NamedBody726_95 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody726_96 : StackLang.HolProg 64 :=
.seq NamedBody726_94 NamedBody726_95

def NamedBody726_97 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody726_98 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 2#64)

def NamedBody726_99 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 10

def NamedBody726_100 : StackLang.HolProg 64 :=
.seq NamedBody726_98 NamedBody726_99

def NamedBody726_101 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody726_102 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) NamedBody726_100 NamedBody726_101

def NamedBody726_103 : StackLang.HolProg 64 :=
.seq NamedBody726_97 NamedBody726_102

def NamedBody726_104 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def NamedBody726_105 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody726_106 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 726 5

def NamedBody726_107 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody726_108 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody726_109 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody726_110 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody726_111 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def NamedBody726_112 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def NamedBody726_113 : StackLang.HolProg 64 :=
.seq NamedBody726_111 NamedBody726_112

def NamedBody726_114 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def NamedBody726_115 : StackLang.HolProg 64 :=
.seq NamedBody726_113 NamedBody726_114

def NamedBody726_116 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody726_117 : StackLang.HolProg 64 :=
.seq NamedBody726_115 NamedBody726_116

def NamedBody726_118 : StackLang.HolProg 64 :=
.seq NamedBody726_110 NamedBody726_117

def NamedBody726_119 : StackLang.HolProg 64 :=
.seq NamedBody726_109 NamedBody726_118

def NamedBody726_120 : StackLang.HolProg 64 :=
.seq NamedBody726_108 NamedBody726_119

def NamedBody726_121 : StackLang.HolProg 64 :=
.seq NamedBody726_107 NamedBody726_120

def NamedBody726_122 : StackLang.HolProg 64 :=
.seq NamedBody726_106 NamedBody726_121

def NamedBody726_123 : StackLang.HolProg 64 :=
.seq NamedBody726_105 NamedBody726_122

def NamedBody726_124 : StackLang.HolProg 64 :=
.seq NamedBody726_104 NamedBody726_123

def NamedBody726_125 : StackLang.HolProg 64 :=
.seq NamedBody726_103 NamedBody726_124

def NamedBody726_126 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody726_127 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody726_128 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody726_129 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody726_130 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody726_131 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody726_132 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 11
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 48#64))

def NamedBody726_133 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 40#64))

def NamedBody726_134 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 48#64))

def NamedBody726_135 : StackLang.HolProg 64 :=
.seq NamedBody726_133 NamedBody726_134

def NamedBody726_136 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 32#64))

def NamedBody726_137 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 40#64))

def NamedBody726_138 : StackLang.HolProg 64 :=
.seq NamedBody726_136 NamedBody726_137

def NamedBody726_139 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 24#64))

def NamedBody726_140 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 32#64))

def NamedBody726_141 : StackLang.HolProg 64 :=
.seq NamedBody726_139 NamedBody726_140

def NamedBody726_142 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody726_143 : StackLang.HolProg 64 :=
.seq NamedBody726_141 NamedBody726_142

def NamedBody726_144 : StackLang.HolProg 64 :=
.seq NamedBody726_138 NamedBody726_143

def NamedBody726_145 : StackLang.HolProg 64 :=
.seq NamedBody726_135 NamedBody726_144

def NamedBody726_146 : StackLang.HolProg 64 :=
.seq NamedBody726_132 NamedBody726_145

def NamedBody726_147 : StackLang.HolProg 64 :=
.seq NamedBody726_131 NamedBody726_146

def NamedBody726_148 : StackLang.HolProg 64 :=
.seq NamedBody726_130 NamedBody726_147

def NamedBody726_149 : StackLang.HolProg 64 :=
.seq NamedBody726_129 NamedBody726_148

def NamedBody726_150 : StackLang.HolProg 64 :=
.seq NamedBody726_128 NamedBody726_149

def NamedBody726_151 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 11
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 48#64))

def NamedBody726_152 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 40#64))

def NamedBody726_153 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 48#64))

def NamedBody726_154 : StackLang.HolProg 64 :=
.seq NamedBody726_152 NamedBody726_153

def NamedBody726_155 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 32#64))

def NamedBody726_156 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 40#64))

def NamedBody726_157 : StackLang.HolProg 64 :=
.seq NamedBody726_155 NamedBody726_156

def NamedBody726_158 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 24#64))

def NamedBody726_159 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 32#64))

def NamedBody726_160 : StackLang.HolProg 64 :=
.seq NamedBody726_158 NamedBody726_159

def NamedBody726_161 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody726_162 : StackLang.HolProg 64 :=
.seq NamedBody726_160 NamedBody726_161

def NamedBody726_163 : StackLang.HolProg 64 :=
.seq NamedBody726_157 NamedBody726_162

def NamedBody726_164 : StackLang.HolProg 64 :=
.seq NamedBody726_154 NamedBody726_163

def NamedBody726_165 : StackLang.HolProg 64 :=
.seq NamedBody726_151 NamedBody726_164

def NamedBody726_166 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def NamedBody726_167 : StackLang.HolProg 64 :=
.seq NamedBody726_165 NamedBody726_166

def NamedBody726_168 : StackLang.HolProg 64 :=
.call (some (NamedBody726_150, 1, 726, 4)) (Sum.inl 89) (some (NamedBody726_167, 726, 5))

def NamedBody726_169 : StackLang.HolProg 64 :=
.seq NamedBody726_127 NamedBody726_168

def NamedBody726_170 : StackLang.HolProg 64 :=
.seq NamedBody726_126 NamedBody726_169

def NamedBody726_171 : StackLang.HolProg 64 :=
.seq NamedBody726_125 NamedBody726_170

def NamedBody726_172 : StackLang.HolProg 64 :=
.seq NamedBody726_96 NamedBody726_171

def NamedBody726_173 : StackLang.HolProg 64 :=
.seq NamedBody726_93 NamedBody726_172

def NamedBody726_174 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody726_175 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody726_176 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 10 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 16#64)))

def NamedBody726_177 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 24#64))

def NamedBody726_178 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody726_179 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 3250#64)

def NamedBody726_180 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody726_181 : StackLang.HolProg 64 :=
.seq NamedBody726_179 NamedBody726_180

def NamedBody726_182 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody726_183 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 2#64)

def NamedBody726_184 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 10

def NamedBody726_185 : StackLang.HolProg 64 :=
.seq NamedBody726_183 NamedBody726_184

def NamedBody726_186 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody726_187 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) NamedBody726_185 NamedBody726_186

def NamedBody726_188 : StackLang.HolProg 64 :=
.seq NamedBody726_182 NamedBody726_187

def NamedBody726_189 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def NamedBody726_190 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody726_191 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 726 7

def NamedBody726_192 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody726_193 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody726_194 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody726_195 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody726_196 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def NamedBody726_197 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def NamedBody726_198 : StackLang.HolProg 64 :=
.seq NamedBody726_196 NamedBody726_197

def NamedBody726_199 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def NamedBody726_200 : StackLang.HolProg 64 :=
.seq NamedBody726_198 NamedBody726_199

def NamedBody726_201 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody726_202 : StackLang.HolProg 64 :=
.seq NamedBody726_200 NamedBody726_201

def NamedBody726_203 : StackLang.HolProg 64 :=
.seq NamedBody726_195 NamedBody726_202

def NamedBody726_204 : StackLang.HolProg 64 :=
.seq NamedBody726_194 NamedBody726_203

def NamedBody726_205 : StackLang.HolProg 64 :=
.seq NamedBody726_193 NamedBody726_204

def NamedBody726_206 : StackLang.HolProg 64 :=
.seq NamedBody726_192 NamedBody726_205

def NamedBody726_207 : StackLang.HolProg 64 :=
.seq NamedBody726_191 NamedBody726_206

def NamedBody726_208 : StackLang.HolProg 64 :=
.seq NamedBody726_190 NamedBody726_207

def NamedBody726_209 : StackLang.HolProg 64 :=
.seq NamedBody726_189 NamedBody726_208

def NamedBody726_210 : StackLang.HolProg 64 :=
.seq NamedBody726_188 NamedBody726_209

def NamedBody726_211 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody726_212 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody726_213 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody726_214 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody726_215 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody726_216 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody726_217 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 11
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 32#64))

def NamedBody726_218 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 24#64))

def NamedBody726_219 : StackLang.HolProg 64 :=
.seq NamedBody726_217 NamedBody726_218

def NamedBody726_220 : StackLang.HolProg 64 :=
.seq NamedBody726_216 NamedBody726_219

def NamedBody726_221 : StackLang.HolProg 64 :=
.seq NamedBody726_215 NamedBody726_220

def NamedBody726_222 : StackLang.HolProg 64 :=
.seq NamedBody726_214 NamedBody726_221

def NamedBody726_223 : StackLang.HolProg 64 :=
.seq NamedBody726_213 NamedBody726_222

def NamedBody726_224 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 11
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 32#64))

def NamedBody726_225 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 24#64))

def NamedBody726_226 : StackLang.HolProg 64 :=
.seq NamedBody726_224 NamedBody726_225

def NamedBody726_227 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def NamedBody726_228 : StackLang.HolProg 64 :=
.seq NamedBody726_226 NamedBody726_227

def NamedBody726_229 : StackLang.HolProg 64 :=
.call (some (NamedBody726_223, 1, 726, 6)) (Sum.inl 89) (some (NamedBody726_228, 726, 7))

def NamedBody726_230 : StackLang.HolProg 64 :=
.seq NamedBody726_212 NamedBody726_229

def NamedBody726_231 : StackLang.HolProg 64 :=
.seq NamedBody726_211 NamedBody726_230

def NamedBody726_232 : StackLang.HolProg 64 :=
.seq NamedBody726_210 NamedBody726_231

def NamedBody726_233 : StackLang.HolProg 64 :=
.seq NamedBody726_181 NamedBody726_232

def NamedBody726_234 : StackLang.HolProg 64 :=
.seq NamedBody726_178 NamedBody726_233

def NamedBody726_235 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody726_236 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody726_237 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 10 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody726_238 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 32#64))

def NamedBody726_239 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody726_240 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 3251#64)

def NamedBody726_241 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody726_242 : StackLang.HolProg 64 :=
.seq NamedBody726_240 NamedBody726_241

def NamedBody726_243 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody726_244 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 2#64)

def NamedBody726_245 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 10

def NamedBody726_246 : StackLang.HolProg 64 :=
.seq NamedBody726_244 NamedBody726_245

def NamedBody726_247 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody726_248 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) NamedBody726_246 NamedBody726_247

def NamedBody726_249 : StackLang.HolProg 64 :=
.seq NamedBody726_243 NamedBody726_248

def NamedBody726_250 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def NamedBody726_251 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody726_252 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 726 9

def NamedBody726_253 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody726_254 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody726_255 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody726_256 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody726_257 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def NamedBody726_258 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def NamedBody726_259 : StackLang.HolProg 64 :=
.seq NamedBody726_257 NamedBody726_258

def NamedBody726_260 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def NamedBody726_261 : StackLang.HolProg 64 :=
.seq NamedBody726_259 NamedBody726_260

def NamedBody726_262 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody726_263 : StackLang.HolProg 64 :=
.seq NamedBody726_261 NamedBody726_262

def NamedBody726_264 : StackLang.HolProg 64 :=
.seq NamedBody726_256 NamedBody726_263

def NamedBody726_265 : StackLang.HolProg 64 :=
.seq NamedBody726_255 NamedBody726_264

def NamedBody726_266 : StackLang.HolProg 64 :=
.seq NamedBody726_254 NamedBody726_265

def NamedBody726_267 : StackLang.HolProg 64 :=
.seq NamedBody726_253 NamedBody726_266

def NamedBody726_268 : StackLang.HolProg 64 :=
.seq NamedBody726_252 NamedBody726_267

def NamedBody726_269 : StackLang.HolProg 64 :=
.seq NamedBody726_251 NamedBody726_268

def NamedBody726_270 : StackLang.HolProg 64 :=
.seq NamedBody726_250 NamedBody726_269

def NamedBody726_271 : StackLang.HolProg 64 :=
.seq NamedBody726_249 NamedBody726_270

def NamedBody726_272 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody726_273 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody726_274 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody726_275 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody726_276 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody726_277 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody726_278 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 11
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 48#64))

def NamedBody726_279 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 40#64))

def NamedBody726_280 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 48#64))

def NamedBody726_281 : StackLang.HolProg 64 :=
.seq NamedBody726_279 NamedBody726_280

def NamedBody726_282 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 32#64))

def NamedBody726_283 : StackLang.HolProg 64 :=
.seq NamedBody726_281 NamedBody726_282

def NamedBody726_284 : StackLang.HolProg 64 :=
.seq NamedBody726_278 NamedBody726_283

def NamedBody726_285 : StackLang.HolProg 64 :=
.seq NamedBody726_277 NamedBody726_284

def NamedBody726_286 : StackLang.HolProg 64 :=
.seq NamedBody726_276 NamedBody726_285

def NamedBody726_287 : StackLang.HolProg 64 :=
.seq NamedBody726_275 NamedBody726_286

def NamedBody726_288 : StackLang.HolProg 64 :=
.seq NamedBody726_274 NamedBody726_287

def NamedBody726_289 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 11
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 48#64))

def NamedBody726_290 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 40#64))

def NamedBody726_291 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 48#64))

def NamedBody726_292 : StackLang.HolProg 64 :=
.seq NamedBody726_290 NamedBody726_291

def NamedBody726_293 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 32#64))

def NamedBody726_294 : StackLang.HolProg 64 :=
.seq NamedBody726_292 NamedBody726_293

def NamedBody726_295 : StackLang.HolProg 64 :=
.seq NamedBody726_289 NamedBody726_294

def NamedBody726_296 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def NamedBody726_297 : StackLang.HolProg 64 :=
.seq NamedBody726_295 NamedBody726_296

def NamedBody726_298 : StackLang.HolProg 64 :=
.call (some (NamedBody726_288, 1, 726, 8)) (Sum.inl 89) (some (NamedBody726_297, 726, 9))

def NamedBody726_299 : StackLang.HolProg 64 :=
.seq NamedBody726_273 NamedBody726_298

def NamedBody726_300 : StackLang.HolProg 64 :=
.seq NamedBody726_272 NamedBody726_299

def NamedBody726_301 : StackLang.HolProg 64 :=
.seq NamedBody726_271 NamedBody726_300

def NamedBody726_302 : StackLang.HolProg 64 :=
.seq NamedBody726_242 NamedBody726_301

def NamedBody726_303 : StackLang.HolProg 64 :=
.seq NamedBody726_239 NamedBody726_302

def NamedBody726_304 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody726_305 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody726_306 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 10 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 32#64)))

def NamedBody726_307 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 40#64))

def NamedBody726_308 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody726_309 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 3252#64)

def NamedBody726_310 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody726_311 : StackLang.HolProg 64 :=
.seq NamedBody726_309 NamedBody726_310

def NamedBody726_312 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody726_313 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 2#64)

def NamedBody726_314 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 10

def NamedBody726_315 : StackLang.HolProg 64 :=
.seq NamedBody726_313 NamedBody726_314

def NamedBody726_316 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody726_317 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) NamedBody726_315 NamedBody726_316

def NamedBody726_318 : StackLang.HolProg 64 :=
.seq NamedBody726_312 NamedBody726_317

def NamedBody726_319 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def NamedBody726_320 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody726_321 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 726 11

def NamedBody726_322 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody726_323 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody726_324 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody726_325 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody726_326 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def NamedBody726_327 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def NamedBody726_328 : StackLang.HolProg 64 :=
.seq NamedBody726_326 NamedBody726_327

def NamedBody726_329 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def NamedBody726_330 : StackLang.HolProg 64 :=
.seq NamedBody726_328 NamedBody726_329

def NamedBody726_331 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody726_332 : StackLang.HolProg 64 :=
.seq NamedBody726_330 NamedBody726_331

def NamedBody726_333 : StackLang.HolProg 64 :=
.seq NamedBody726_325 NamedBody726_332

def NamedBody726_334 : StackLang.HolProg 64 :=
.seq NamedBody726_324 NamedBody726_333

def NamedBody726_335 : StackLang.HolProg 64 :=
.seq NamedBody726_323 NamedBody726_334

def NamedBody726_336 : StackLang.HolProg 64 :=
.seq NamedBody726_322 NamedBody726_335

def NamedBody726_337 : StackLang.HolProg 64 :=
.seq NamedBody726_321 NamedBody726_336

def NamedBody726_338 : StackLang.HolProg 64 :=
.seq NamedBody726_320 NamedBody726_337

def NamedBody726_339 : StackLang.HolProg 64 :=
.seq NamedBody726_319 NamedBody726_338

def NamedBody726_340 : StackLang.HolProg 64 :=
.seq NamedBody726_318 NamedBody726_339

def NamedBody726_341 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody726_342 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody726_343 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody726_344 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody726_345 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody726_346 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody726_347 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 11
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 48#64))

def NamedBody726_348 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 40#64))

def NamedBody726_349 : StackLang.HolProg 64 :=
.seq NamedBody726_347 NamedBody726_348

def NamedBody726_350 : StackLang.HolProg 64 :=
.seq NamedBody726_346 NamedBody726_349

def NamedBody726_351 : StackLang.HolProg 64 :=
.seq NamedBody726_345 NamedBody726_350

def NamedBody726_352 : StackLang.HolProg 64 :=
.seq NamedBody726_344 NamedBody726_351

def NamedBody726_353 : StackLang.HolProg 64 :=
.seq NamedBody726_343 NamedBody726_352

def NamedBody726_354 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 11
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 48#64))

def NamedBody726_355 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 40#64))

def NamedBody726_356 : StackLang.HolProg 64 :=
.seq NamedBody726_354 NamedBody726_355

def NamedBody726_357 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def NamedBody726_358 : StackLang.HolProg 64 :=
.seq NamedBody726_356 NamedBody726_357

def NamedBody726_359 : StackLang.HolProg 64 :=
.call (some (NamedBody726_353, 1, 726, 10)) (Sum.inl 89) (some (NamedBody726_358, 726, 11))

def NamedBody726_360 : StackLang.HolProg 64 :=
.seq NamedBody726_342 NamedBody726_359

def NamedBody726_361 : StackLang.HolProg 64 :=
.seq NamedBody726_341 NamedBody726_360

def NamedBody726_362 : StackLang.HolProg 64 :=
.seq NamedBody726_340 NamedBody726_361

def NamedBody726_363 : StackLang.HolProg 64 :=
.seq NamedBody726_311 NamedBody726_362

def NamedBody726_364 : StackLang.HolProg 64 :=
.seq NamedBody726_308 NamedBody726_363

def NamedBody726_365 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody726_366 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody726_367 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 10 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 40#64)))

def NamedBody726_368 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody726_369 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody726_370 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 3253#64)

def NamedBody726_371 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody726_372 : StackLang.HolProg 64 :=
.seq NamedBody726_370 NamedBody726_371

def NamedBody726_373 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody726_374 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 2#64)

def NamedBody726_375 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 10

def NamedBody726_376 : StackLang.HolProg 64 :=
.seq NamedBody726_374 NamedBody726_375

def NamedBody726_377 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody726_378 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) NamedBody726_376 NamedBody726_377

def NamedBody726_379 : StackLang.HolProg 64 :=
.seq NamedBody726_373 NamedBody726_378

def NamedBody726_380 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def NamedBody726_381 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody726_382 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 726 13

def NamedBody726_383 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody726_384 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody726_385 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody726_386 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody726_387 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def NamedBody726_388 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def NamedBody726_389 : StackLang.HolProg 64 :=
.seq NamedBody726_387 NamedBody726_388

def NamedBody726_390 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def NamedBody726_391 : StackLang.HolProg 64 :=
.seq NamedBody726_389 NamedBody726_390

def NamedBody726_392 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody726_393 : StackLang.HolProg 64 :=
.seq NamedBody726_391 NamedBody726_392

def NamedBody726_394 : StackLang.HolProg 64 :=
.seq NamedBody726_386 NamedBody726_393

def NamedBody726_395 : StackLang.HolProg 64 :=
.seq NamedBody726_385 NamedBody726_394

def NamedBody726_396 : StackLang.HolProg 64 :=
.seq NamedBody726_384 NamedBody726_395

def NamedBody726_397 : StackLang.HolProg 64 :=
.seq NamedBody726_383 NamedBody726_396

def NamedBody726_398 : StackLang.HolProg 64 :=
.seq NamedBody726_382 NamedBody726_397

def NamedBody726_399 : StackLang.HolProg 64 :=
.seq NamedBody726_381 NamedBody726_398

def NamedBody726_400 : StackLang.HolProg 64 :=
.seq NamedBody726_380 NamedBody726_399

def NamedBody726_401 : StackLang.HolProg 64 :=
.seq NamedBody726_379 NamedBody726_400

def NamedBody726_402 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody726_403 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody726_404 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody726_405 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody726_406 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody726_407 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody726_408 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 56#64))

def NamedBody726_409 : StackLang.HolProg 64 :=
.seq NamedBody726_407 NamedBody726_408

def NamedBody726_410 : StackLang.HolProg 64 :=
.seq NamedBody726_406 NamedBody726_409

def NamedBody726_411 : StackLang.HolProg 64 :=
.seq NamedBody726_405 NamedBody726_410

def NamedBody726_412 : StackLang.HolProg 64 :=
.seq NamedBody726_404 NamedBody726_411

def NamedBody726_413 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 56#64))

def NamedBody726_414 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def NamedBody726_415 : StackLang.HolProg 64 :=
.seq NamedBody726_413 NamedBody726_414

def NamedBody726_416 : StackLang.HolProg 64 :=
.call (some (NamedBody726_412, 1, 726, 12)) (Sum.inl 89) (some (NamedBody726_415, 726, 13))

def NamedBody726_417 : StackLang.HolProg 64 :=
.seq NamedBody726_403 NamedBody726_416

def NamedBody726_418 : StackLang.HolProg 64 :=
.seq NamedBody726_402 NamedBody726_417

def NamedBody726_419 : StackLang.HolProg 64 :=
.seq NamedBody726_401 NamedBody726_418

def NamedBody726_420 : StackLang.HolProg 64 :=
.seq NamedBody726_372 NamedBody726_419

def NamedBody726_421 : StackLang.HolProg 64 :=
.seq NamedBody726_369 NamedBody726_420

def NamedBody726_422 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody726_423 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 0#64)

def NamedBody726_424 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody726_425 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 64#64)))

def NamedBody726_426 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 1

def NamedBody726_427 : StackLang.HolProg 64 :=
.seq NamedBody726_425 NamedBody726_426

def NamedBody726_428 : StackLang.HolProg 64 :=
.seq NamedBody726_424 NamedBody726_427

def NamedBody726_429 : StackLang.HolProg 64 :=
.seq NamedBody726_423 NamedBody726_428

def NamedBody726_430 : StackLang.HolProg 64 :=
.seq NamedBody726_422 NamedBody726_429

def NamedBody726_431 : StackLang.HolProg 64 :=
.seq NamedBody726_421 NamedBody726_430

def NamedBody726_432 : StackLang.HolProg 64 :=
.seq NamedBody726_368 NamedBody726_431

def NamedBody726_433 : StackLang.HolProg 64 :=
.seq NamedBody726_367 NamedBody726_432

def NamedBody726_434 : StackLang.HolProg 64 :=
.seq NamedBody726_366 NamedBody726_433

def NamedBody726_435 : StackLang.HolProg 64 :=
.seq NamedBody726_365 NamedBody726_434

def NamedBody726_436 : StackLang.HolProg 64 :=
.seq NamedBody726_364 NamedBody726_435

def NamedBody726_437 : StackLang.HolProg 64 :=
.seq NamedBody726_307 NamedBody726_436

def NamedBody726_438 : StackLang.HolProg 64 :=
.seq NamedBody726_306 NamedBody726_437

def NamedBody726_439 : StackLang.HolProg 64 :=
.seq NamedBody726_305 NamedBody726_438

def NamedBody726_440 : StackLang.HolProg 64 :=
.seq NamedBody726_304 NamedBody726_439

def NamedBody726_441 : StackLang.HolProg 64 :=
.seq NamedBody726_303 NamedBody726_440

def NamedBody726_442 : StackLang.HolProg 64 :=
.seq NamedBody726_238 NamedBody726_441

def NamedBody726_443 : StackLang.HolProg 64 :=
.seq NamedBody726_237 NamedBody726_442

def NamedBody726_444 : StackLang.HolProg 64 :=
.seq NamedBody726_236 NamedBody726_443

def NamedBody726_445 : StackLang.HolProg 64 :=
.seq NamedBody726_235 NamedBody726_444

def NamedBody726_446 : StackLang.HolProg 64 :=
.seq NamedBody726_234 NamedBody726_445

def NamedBody726_447 : StackLang.HolProg 64 :=
.seq NamedBody726_177 NamedBody726_446

def NamedBody726_448 : StackLang.HolProg 64 :=
.seq NamedBody726_176 NamedBody726_447

def NamedBody726_449 : StackLang.HolProg 64 :=
.seq NamedBody726_175 NamedBody726_448

def NamedBody726_450 : StackLang.HolProg 64 :=
.seq NamedBody726_174 NamedBody726_449

def NamedBody726_451 : StackLang.HolProg 64 :=
.seq NamedBody726_173 NamedBody726_450

def NamedBody726_452 : StackLang.HolProg 64 :=
.seq NamedBody726_92 NamedBody726_451

def NamedBody726_453 : StackLang.HolProg 64 :=
.seq NamedBody726_91 NamedBody726_452

def NamedBody726_454 : StackLang.HolProg 64 :=
.seq NamedBody726_90 NamedBody726_453

def NamedBody726_455 : StackLang.HolProg 64 :=
.seq NamedBody726_89 NamedBody726_454

def NamedBody726_456 : StackLang.HolProg 64 :=
.seq NamedBody726_88 NamedBody726_455

def NamedBody726_457 : StackLang.HolProg 64 :=
.seq NamedBody726_23 NamedBody726_456

def NamedBody726_458 : StackLang.HolProg 64 :=
.seq NamedBody726_6 NamedBody726_457

def Named726 : Nat × StackLang.HolProg 64 := (726, NamedBody726_458)
theorem Named726_eq : StackNames.progCompEntryHOL RiscVConfig.riscvNames Removed726 = Named726 := by
  kernel_rfl
#print axioms Named726_eq
end InitECandidate.Proofs.BackendStages
