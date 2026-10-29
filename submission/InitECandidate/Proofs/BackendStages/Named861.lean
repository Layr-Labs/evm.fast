import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.BackendStages.Removed861
import Flapjack.Compiler.Backend.Backend
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
namespace InitECandidate.Proofs.BackendStages
def NamedBody861_0 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody861_1 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 2#64)

def NamedBody861_2 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 10

def NamedBody861_3 : StackLang.HolProg 64 :=
.seq NamedBody861_1 NamedBody861_2

def NamedBody861_4 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody861_5 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) NamedBody861_3 NamedBody861_4

def NamedBody861_6 : StackLang.HolProg 64 :=
.seq NamedBody861_0 NamedBody861_5

def NamedBody861_7 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody861_8 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 10
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody861_9 : StackLang.HolProg 64 :=
.seq NamedBody861_7 NamedBody861_8

def NamedBody861_10 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody861_11 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 4378#64)

def NamedBody861_12 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody861_13 : StackLang.HolProg 64 :=
.seq NamedBody861_11 NamedBody861_12

def NamedBody861_14 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody861_15 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 2#64)

def NamedBody861_16 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 10

def NamedBody861_17 : StackLang.HolProg 64 :=
.seq NamedBody861_15 NamedBody861_16

def NamedBody861_18 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody861_19 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) NamedBody861_17 NamedBody861_18

def NamedBody861_20 : StackLang.HolProg 64 :=
.seq NamedBody861_14 NamedBody861_19

def NamedBody861_21 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def NamedBody861_22 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody861_23 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 861 3

def NamedBody861_24 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody861_25 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody861_26 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody861_27 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody861_28 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def NamedBody861_29 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def NamedBody861_30 : StackLang.HolProg 64 :=
.seq NamedBody861_28 NamedBody861_29

def NamedBody861_31 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def NamedBody861_32 : StackLang.HolProg 64 :=
.seq NamedBody861_30 NamedBody861_31

def NamedBody861_33 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody861_34 : StackLang.HolProg 64 :=
.seq NamedBody861_32 NamedBody861_33

def NamedBody861_35 : StackLang.HolProg 64 :=
.seq NamedBody861_27 NamedBody861_34

def NamedBody861_36 : StackLang.HolProg 64 :=
.seq NamedBody861_26 NamedBody861_35

def NamedBody861_37 : StackLang.HolProg 64 :=
.seq NamedBody861_25 NamedBody861_36

def NamedBody861_38 : StackLang.HolProg 64 :=
.seq NamedBody861_24 NamedBody861_37

def NamedBody861_39 : StackLang.HolProg 64 :=
.seq NamedBody861_23 NamedBody861_38

def NamedBody861_40 : StackLang.HolProg 64 :=
.seq NamedBody861_22 NamedBody861_39

def NamedBody861_41 : StackLang.HolProg 64 :=
.seq NamedBody861_21 NamedBody861_40

def NamedBody861_42 : StackLang.HolProg 64 :=
.seq NamedBody861_20 NamedBody861_41

def NamedBody861_43 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody861_44 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody861_45 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody861_46 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody861_47 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody861_48 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody861_49 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody861_50 : StackLang.HolProg 64 :=
.seq NamedBody861_48 NamedBody861_49

def NamedBody861_51 : StackLang.HolProg 64 :=
.seq NamedBody861_47 NamedBody861_50

def NamedBody861_52 : StackLang.HolProg 64 :=
.seq NamedBody861_46 NamedBody861_51

def NamedBody861_53 : StackLang.HolProg 64 :=
.seq NamedBody861_45 NamedBody861_52

def NamedBody861_54 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody861_55 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def NamedBody861_56 : StackLang.HolProg 64 :=
.seq NamedBody861_54 NamedBody861_55

def NamedBody861_57 : StackLang.HolProg 64 :=
.call (some (NamedBody861_53, 1, 861, 2)) (Sum.inl 387) (some (NamedBody861_56, 861, 3))

def NamedBody861_58 : StackLang.HolProg 64 :=
.seq NamedBody861_44 NamedBody861_57

def NamedBody861_59 : StackLang.HolProg 64 :=
.seq NamedBody861_43 NamedBody861_58

def NamedBody861_60 : StackLang.HolProg 64 :=
.seq NamedBody861_42 NamedBody861_59

def NamedBody861_61 : StackLang.HolProg 64 :=
.seq NamedBody861_13 NamedBody861_60

def NamedBody861_62 : StackLang.HolProg 64 :=
.seq NamedBody861_10 NamedBody861_61

def NamedBody861_63 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody861_64 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 10 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def NamedBody861_65 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody861_66 : StackLang.HolProg 64 :=
.seq NamedBody861_64 NamedBody861_65

def NamedBody861_67 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody861_68 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 4379#64)

def NamedBody861_69 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody861_70 : StackLang.HolProg 64 :=
.seq NamedBody861_68 NamedBody861_69

def NamedBody861_71 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody861_72 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 2#64)

def NamedBody861_73 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 10

def NamedBody861_74 : StackLang.HolProg 64 :=
.seq NamedBody861_72 NamedBody861_73

def NamedBody861_75 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody861_76 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) NamedBody861_74 NamedBody861_75

def NamedBody861_77 : StackLang.HolProg 64 :=
.seq NamedBody861_71 NamedBody861_76

def NamedBody861_78 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def NamedBody861_79 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody861_80 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 861 5

def NamedBody861_81 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody861_82 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody861_83 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody861_84 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody861_85 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def NamedBody861_86 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def NamedBody861_87 : StackLang.HolProg 64 :=
.seq NamedBody861_85 NamedBody861_86

def NamedBody861_88 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def NamedBody861_89 : StackLang.HolProg 64 :=
.seq NamedBody861_87 NamedBody861_88

def NamedBody861_90 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody861_91 : StackLang.HolProg 64 :=
.seq NamedBody861_89 NamedBody861_90

def NamedBody861_92 : StackLang.HolProg 64 :=
.seq NamedBody861_84 NamedBody861_91

def NamedBody861_93 : StackLang.HolProg 64 :=
.seq NamedBody861_83 NamedBody861_92

def NamedBody861_94 : StackLang.HolProg 64 :=
.seq NamedBody861_82 NamedBody861_93

def NamedBody861_95 : StackLang.HolProg 64 :=
.seq NamedBody861_81 NamedBody861_94

def NamedBody861_96 : StackLang.HolProg 64 :=
.seq NamedBody861_80 NamedBody861_95

def NamedBody861_97 : StackLang.HolProg 64 :=
.seq NamedBody861_79 NamedBody861_96

def NamedBody861_98 : StackLang.HolProg 64 :=
.seq NamedBody861_78 NamedBody861_97

def NamedBody861_99 : StackLang.HolProg 64 :=
.seq NamedBody861_77 NamedBody861_98

def NamedBody861_100 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody861_101 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody861_102 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody861_103 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody861_104 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody861_105 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody861_106 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody861_107 : StackLang.HolProg 64 :=
.seq NamedBody861_105 NamedBody861_106

def NamedBody861_108 : StackLang.HolProg 64 :=
.seq NamedBody861_104 NamedBody861_107

def NamedBody861_109 : StackLang.HolProg 64 :=
.seq NamedBody861_103 NamedBody861_108

def NamedBody861_110 : StackLang.HolProg 64 :=
.seq NamedBody861_102 NamedBody861_109

def NamedBody861_111 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody861_112 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def NamedBody861_113 : StackLang.HolProg 64 :=
.seq NamedBody861_111 NamedBody861_112

def NamedBody861_114 : StackLang.HolProg 64 :=
.call (some (NamedBody861_110, 1, 861, 4)) (Sum.inl 565) (some (NamedBody861_113, 861, 5))

def NamedBody861_115 : StackLang.HolProg 64 :=
.seq NamedBody861_101 NamedBody861_114

def NamedBody861_116 : StackLang.HolProg 64 :=
.seq NamedBody861_100 NamedBody861_115

def NamedBody861_117 : StackLang.HolProg 64 :=
.seq NamedBody861_99 NamedBody861_116

def NamedBody861_118 : StackLang.HolProg 64 :=
.seq NamedBody861_70 NamedBody861_117

def NamedBody861_119 : StackLang.HolProg 64 :=
.seq NamedBody861_67 NamedBody861_118

def NamedBody861_120 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody861_121 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody861_122 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 0#64)

def NamedBody861_123 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody861_124 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 70#64)

def NamedBody861_125 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody861_126 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551480#64))

def NamedBody861_127 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 4#64)

def NamedBody861_128 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody861_129 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def NamedBody861_130 : StackLang.HolProg 64 :=
.seq NamedBody861_128 NamedBody861_129

def NamedBody861_131 : StackLang.HolProg 64 :=
.seq NamedBody861_127 NamedBody861_130

def NamedBody861_132 : StackLang.HolProg 64 :=
.seq NamedBody861_126 NamedBody861_131

def NamedBody861_133 : StackLang.HolProg 64 :=
.seq NamedBody861_125 NamedBody861_132

def NamedBody861_134 : StackLang.HolProg 64 :=
.seq NamedBody861_124 NamedBody861_133

def NamedBody861_135 : StackLang.HolProg 64 :=
.seq NamedBody861_123 NamedBody861_134

def NamedBody861_136 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody861_137 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.equal) 11 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1) NamedBody861_135 NamedBody861_136

def NamedBody861_138 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody861_139 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody861_140 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 8#64)

def NamedBody861_141 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody861_142 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody861_143 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 4380#64)

def NamedBody861_144 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody861_145 : StackLang.HolProg 64 :=
.seq NamedBody861_143 NamedBody861_144

def NamedBody861_146 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody861_147 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 2#64)

def NamedBody861_148 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 10

def NamedBody861_149 : StackLang.HolProg 64 :=
.seq NamedBody861_147 NamedBody861_148

def NamedBody861_150 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody861_151 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) NamedBody861_149 NamedBody861_150

def NamedBody861_152 : StackLang.HolProg 64 :=
.seq NamedBody861_146 NamedBody861_151

def NamedBody861_153 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def NamedBody861_154 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody861_155 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 861 7

def NamedBody861_156 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody861_157 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody861_158 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody861_159 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody861_160 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def NamedBody861_161 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def NamedBody861_162 : StackLang.HolProg 64 :=
.seq NamedBody861_160 NamedBody861_161

def NamedBody861_163 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def NamedBody861_164 : StackLang.HolProg 64 :=
.seq NamedBody861_162 NamedBody861_163

def NamedBody861_165 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody861_166 : StackLang.HolProg 64 :=
.seq NamedBody861_164 NamedBody861_165

def NamedBody861_167 : StackLang.HolProg 64 :=
.seq NamedBody861_159 NamedBody861_166

def NamedBody861_168 : StackLang.HolProg 64 :=
.seq NamedBody861_158 NamedBody861_167

def NamedBody861_169 : StackLang.HolProg 64 :=
.seq NamedBody861_157 NamedBody861_168

def NamedBody861_170 : StackLang.HolProg 64 :=
.seq NamedBody861_156 NamedBody861_169

def NamedBody861_171 : StackLang.HolProg 64 :=
.seq NamedBody861_155 NamedBody861_170

def NamedBody861_172 : StackLang.HolProg 64 :=
.seq NamedBody861_154 NamedBody861_171

def NamedBody861_173 : StackLang.HolProg 64 :=
.seq NamedBody861_153 NamedBody861_172

def NamedBody861_174 : StackLang.HolProg 64 :=
.seq NamedBody861_152 NamedBody861_173

def NamedBody861_175 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody861_176 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody861_177 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody861_178 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody861_179 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody861_180 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody861_181 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 11 10
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 10)))

def NamedBody861_182 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody861_183 : StackLang.HolProg 64 :=
.seq NamedBody861_181 NamedBody861_182

def NamedBody861_184 : StackLang.HolProg 64 :=
.seq NamedBody861_180 NamedBody861_183

def NamedBody861_185 : StackLang.HolProg 64 :=
.seq NamedBody861_179 NamedBody861_184

def NamedBody861_186 : StackLang.HolProg 64 :=
.seq NamedBody861_178 NamedBody861_185

def NamedBody861_187 : StackLang.HolProg 64 :=
.seq NamedBody861_177 NamedBody861_186

def NamedBody861_188 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody861_189 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def NamedBody861_190 : StackLang.HolProg 64 :=
.seq NamedBody861_188 NamedBody861_189

def NamedBody861_191 : StackLang.HolProg 64 :=
.call (some (NamedBody861_187, 1, 861, 6)) (Sum.inl 68) (some (NamedBody861_190, 861, 7))

def NamedBody861_192 : StackLang.HolProg 64 :=
.seq NamedBody861_176 NamedBody861_191

def NamedBody861_193 : StackLang.HolProg 64 :=
.seq NamedBody861_175 NamedBody861_192

def NamedBody861_194 : StackLang.HolProg 64 :=
.seq NamedBody861_174 NamedBody861_193

def NamedBody861_195 : StackLang.HolProg 64 :=
.seq NamedBody861_145 NamedBody861_194

def NamedBody861_196 : StackLang.HolProg 64 :=
.seq NamedBody861_142 NamedBody861_195

def NamedBody861_197 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody861_198 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 10 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def NamedBody861_199 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 12 0#64)

def NamedBody861_200 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody861_201 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody861_202 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 4381#64)

def NamedBody861_203 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody861_204 : StackLang.HolProg 64 :=
.seq NamedBody861_202 NamedBody861_203

def NamedBody861_205 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody861_206 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 2#64)

def NamedBody861_207 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 10

def NamedBody861_208 : StackLang.HolProg 64 :=
.seq NamedBody861_206 NamedBody861_207

def NamedBody861_209 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody861_210 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) NamedBody861_208 NamedBody861_209

def NamedBody861_211 : StackLang.HolProg 64 :=
.seq NamedBody861_205 NamedBody861_210

def NamedBody861_212 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def NamedBody861_213 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody861_214 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 861 9

def NamedBody861_215 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody861_216 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody861_217 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody861_218 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody861_219 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def NamedBody861_220 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def NamedBody861_221 : StackLang.HolProg 64 :=
.seq NamedBody861_219 NamedBody861_220

def NamedBody861_222 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def NamedBody861_223 : StackLang.HolProg 64 :=
.seq NamedBody861_221 NamedBody861_222

def NamedBody861_224 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody861_225 : StackLang.HolProg 64 :=
.seq NamedBody861_223 NamedBody861_224

def NamedBody861_226 : StackLang.HolProg 64 :=
.seq NamedBody861_218 NamedBody861_225

def NamedBody861_227 : StackLang.HolProg 64 :=
.seq NamedBody861_217 NamedBody861_226

def NamedBody861_228 : StackLang.HolProg 64 :=
.seq NamedBody861_216 NamedBody861_227

def NamedBody861_229 : StackLang.HolProg 64 :=
.seq NamedBody861_215 NamedBody861_228

def NamedBody861_230 : StackLang.HolProg 64 :=
.seq NamedBody861_214 NamedBody861_229

def NamedBody861_231 : StackLang.HolProg 64 :=
.seq NamedBody861_213 NamedBody861_230

def NamedBody861_232 : StackLang.HolProg 64 :=
.seq NamedBody861_212 NamedBody861_231

def NamedBody861_233 : StackLang.HolProg 64 :=
.seq NamedBody861_211 NamedBody861_232

def NamedBody861_234 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody861_235 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody861_236 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody861_237 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody861_238 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody861_239 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody861_240 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 1 10
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 10)))

def NamedBody861_241 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 11
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody861_242 : StackLang.HolProg 64 :=
.seq NamedBody861_240 NamedBody861_241

def NamedBody861_243 : StackLang.HolProg 64 :=
.seq NamedBody861_239 NamedBody861_242

def NamedBody861_244 : StackLang.HolProg 64 :=
.seq NamedBody861_238 NamedBody861_243

def NamedBody861_245 : StackLang.HolProg 64 :=
.seq NamedBody861_237 NamedBody861_244

def NamedBody861_246 : StackLang.HolProg 64 :=
.seq NamedBody861_236 NamedBody861_245

def NamedBody861_247 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 11
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody861_248 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def NamedBody861_249 : StackLang.HolProg 64 :=
.seq NamedBody861_247 NamedBody861_248

def NamedBody861_250 : StackLang.HolProg 64 :=
.call (some (NamedBody861_246, 1, 861, 8)) (Sum.inl 860) (some (NamedBody861_249, 861, 9))

def NamedBody861_251 : StackLang.HolProg 64 :=
.seq NamedBody861_235 NamedBody861_250

def NamedBody861_252 : StackLang.HolProg 64 :=
.seq NamedBody861_234 NamedBody861_251

def NamedBody861_253 : StackLang.HolProg 64 :=
.seq NamedBody861_233 NamedBody861_252

def NamedBody861_254 : StackLang.HolProg 64 :=
.seq NamedBody861_204 NamedBody861_253

def NamedBody861_255 : StackLang.HolProg 64 :=
.seq NamedBody861_201 NamedBody861_254

def NamedBody861_256 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody861_257 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody861_258 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 10
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 1 32#64))

def NamedBody861_259 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 12 0#64)

def NamedBody861_260 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody861_261 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 71#64)

def NamedBody861_262 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody861_263 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 10
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551480#64))

def NamedBody861_264 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 4#64)

def NamedBody861_265 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody861_266 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def NamedBody861_267 : StackLang.HolProg 64 :=
.seq NamedBody861_265 NamedBody861_266

def NamedBody861_268 : StackLang.HolProg 64 :=
.seq NamedBody861_264 NamedBody861_267

def NamedBody861_269 : StackLang.HolProg 64 :=
.seq NamedBody861_263 NamedBody861_268

def NamedBody861_270 : StackLang.HolProg 64 :=
.seq NamedBody861_262 NamedBody861_269

def NamedBody861_271 : StackLang.HolProg 64 :=
.seq NamedBody861_261 NamedBody861_270

def NamedBody861_272 : StackLang.HolProg 64 :=
.seq NamedBody861_260 NamedBody861_271

def NamedBody861_273 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody861_274 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.notEqual) 10 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 12) NamedBody861_272 NamedBody861_273

def NamedBody861_275 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody861_276 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody861_277 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 10 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def NamedBody861_278 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody861_279 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 11

def NamedBody861_280 : StackLang.HolProg 64 :=
.seq NamedBody861_278 NamedBody861_279

def NamedBody861_281 : StackLang.HolProg 64 :=
.seq NamedBody861_277 NamedBody861_280

def NamedBody861_282 : StackLang.HolProg 64 :=
.seq NamedBody861_276 NamedBody861_281

def NamedBody861_283 : StackLang.HolProg 64 :=
.seq NamedBody861_275 NamedBody861_282

def NamedBody861_284 : StackLang.HolProg 64 :=
.seq NamedBody861_274 NamedBody861_283

def NamedBody861_285 : StackLang.HolProg 64 :=
.seq NamedBody861_259 NamedBody861_284

def NamedBody861_286 : StackLang.HolProg 64 :=
.seq NamedBody861_258 NamedBody861_285

def NamedBody861_287 : StackLang.HolProg 64 :=
.seq NamedBody861_257 NamedBody861_286

def NamedBody861_288 : StackLang.HolProg 64 :=
.seq NamedBody861_256 NamedBody861_287

def NamedBody861_289 : StackLang.HolProg 64 :=
.seq NamedBody861_255 NamedBody861_288

def NamedBody861_290 : StackLang.HolProg 64 :=
.seq NamedBody861_200 NamedBody861_289

def NamedBody861_291 : StackLang.HolProg 64 :=
.seq NamedBody861_199 NamedBody861_290

def NamedBody861_292 : StackLang.HolProg 64 :=
.seq NamedBody861_198 NamedBody861_291

def NamedBody861_293 : StackLang.HolProg 64 :=
.seq NamedBody861_197 NamedBody861_292

def NamedBody861_294 : StackLang.HolProg 64 :=
.seq NamedBody861_196 NamedBody861_293

def NamedBody861_295 : StackLang.HolProg 64 :=
.seq NamedBody861_141 NamedBody861_294

def NamedBody861_296 : StackLang.HolProg 64 :=
.seq NamedBody861_140 NamedBody861_295

def NamedBody861_297 : StackLang.HolProg 64 :=
.seq NamedBody861_139 NamedBody861_296

def NamedBody861_298 : StackLang.HolProg 64 :=
.seq NamedBody861_138 NamedBody861_297

def NamedBody861_299 : StackLang.HolProg 64 :=
.seq NamedBody861_137 NamedBody861_298

def NamedBody861_300 : StackLang.HolProg 64 :=
.seq NamedBody861_122 NamedBody861_299

def NamedBody861_301 : StackLang.HolProg 64 :=
.seq NamedBody861_121 NamedBody861_300

def NamedBody861_302 : StackLang.HolProg 64 :=
.seq NamedBody861_120 NamedBody861_301

def NamedBody861_303 : StackLang.HolProg 64 :=
.seq NamedBody861_119 NamedBody861_302

def NamedBody861_304 : StackLang.HolProg 64 :=
.seq NamedBody861_66 NamedBody861_303

def NamedBody861_305 : StackLang.HolProg 64 :=
.seq NamedBody861_63 NamedBody861_304

def NamedBody861_306 : StackLang.HolProg 64 :=
.seq NamedBody861_62 NamedBody861_305

def NamedBody861_307 : StackLang.HolProg 64 :=
.seq NamedBody861_9 NamedBody861_306

def NamedBody861_308 : StackLang.HolProg 64 :=
.seq NamedBody861_6 NamedBody861_307

def Named861 : Nat × StackLang.HolProg 64 := (861, NamedBody861_308)
theorem Named861_eq : StackNames.progCompEntryHOL RiscVConfig.riscvNames Removed861 = Named861 := by
  kernel_rfl
#print axioms Named861_eq
end InitECandidate.Proofs.BackendStages
