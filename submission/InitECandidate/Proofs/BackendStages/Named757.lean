import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.BackendStages.Removed757
import Flapjack.Compiler.Backend.Backend
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
namespace InitECandidate.Proofs.BackendStages
def NamedBody757_0 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 40#64)))

def NamedBody757_1 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 2#64)

def NamedBody757_2 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 10

def NamedBody757_3 : StackLang.HolProg 64 :=
.seq NamedBody757_1 NamedBody757_2

def NamedBody757_4 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody757_5 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) NamedBody757_3 NamedBody757_4

def NamedBody757_6 : StackLang.HolProg 64 :=
.seq NamedBody757_0 NamedBody757_5

def NamedBody757_7 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 32#64))

def NamedBody757_8 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 10
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody757_9 : StackLang.HolProg 64 :=
.seq NamedBody757_7 NamedBody757_8

def NamedBody757_10 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody757_11 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 3374#64)

def NamedBody757_12 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody757_13 : StackLang.HolProg 64 :=
.seq NamedBody757_11 NamedBody757_12

def NamedBody757_14 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody757_15 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 2#64)

def NamedBody757_16 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 10

def NamedBody757_17 : StackLang.HolProg 64 :=
.seq NamedBody757_15 NamedBody757_16

def NamedBody757_18 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody757_19 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) NamedBody757_17 NamedBody757_18

def NamedBody757_20 : StackLang.HolProg 64 :=
.seq NamedBody757_14 NamedBody757_19

def NamedBody757_21 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def NamedBody757_22 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody757_23 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 757 3

def NamedBody757_24 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody757_25 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody757_26 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody757_27 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody757_28 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def NamedBody757_29 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def NamedBody757_30 : StackLang.HolProg 64 :=
.seq NamedBody757_28 NamedBody757_29

def NamedBody757_31 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def NamedBody757_32 : StackLang.HolProg 64 :=
.seq NamedBody757_30 NamedBody757_31

def NamedBody757_33 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody757_34 : StackLang.HolProg 64 :=
.seq NamedBody757_32 NamedBody757_33

def NamedBody757_35 : StackLang.HolProg 64 :=
.seq NamedBody757_27 NamedBody757_34

def NamedBody757_36 : StackLang.HolProg 64 :=
.seq NamedBody757_26 NamedBody757_35

def NamedBody757_37 : StackLang.HolProg 64 :=
.seq NamedBody757_25 NamedBody757_36

def NamedBody757_38 : StackLang.HolProg 64 :=
.seq NamedBody757_24 NamedBody757_37

def NamedBody757_39 : StackLang.HolProg 64 :=
.seq NamedBody757_23 NamedBody757_38

def NamedBody757_40 : StackLang.HolProg 64 :=
.seq NamedBody757_22 NamedBody757_39

def NamedBody757_41 : StackLang.HolProg 64 :=
.seq NamedBody757_21 NamedBody757_40

def NamedBody757_42 : StackLang.HolProg 64 :=
.seq NamedBody757_20 NamedBody757_41

def NamedBody757_43 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody757_44 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody757_45 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody757_46 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody757_47 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody757_48 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody757_49 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 1 10
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 10)))

def NamedBody757_50 : StackLang.HolProg 64 :=
.seq NamedBody757_48 NamedBody757_49

def NamedBody757_51 : StackLang.HolProg 64 :=
.seq NamedBody757_47 NamedBody757_50

def NamedBody757_52 : StackLang.HolProg 64 :=
.seq NamedBody757_46 NamedBody757_51

def NamedBody757_53 : StackLang.HolProg 64 :=
.seq NamedBody757_45 NamedBody757_52

def NamedBody757_54 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody757_55 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def NamedBody757_56 : StackLang.HolProg 64 :=
.seq NamedBody757_54 NamedBody757_55

def NamedBody757_57 : StackLang.HolProg 64 :=
.call (some (NamedBody757_53, 1, 757, 2)) (Sum.inl 69) (some (NamedBody757_56, 757, 3))

def NamedBody757_58 : StackLang.HolProg 64 :=
.seq NamedBody757_44 NamedBody757_57

def NamedBody757_59 : StackLang.HolProg 64 :=
.seq NamedBody757_43 NamedBody757_58

def NamedBody757_60 : StackLang.HolProg 64 :=
.seq NamedBody757_42 NamedBody757_59

def NamedBody757_61 : StackLang.HolProg 64 :=
.seq NamedBody757_13 NamedBody757_60

def NamedBody757_62 : StackLang.HolProg 64 :=
.seq NamedBody757_10 NamedBody757_61

def NamedBody757_63 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody757_64 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 576#64)

def NamedBody757_65 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody757_66 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody757_67 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 3375#64)

def NamedBody757_68 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody757_69 : StackLang.HolProg 64 :=
.seq NamedBody757_67 NamedBody757_68

def NamedBody757_70 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody757_71 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 2#64)

def NamedBody757_72 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 10

def NamedBody757_73 : StackLang.HolProg 64 :=
.seq NamedBody757_71 NamedBody757_72

def NamedBody757_74 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody757_75 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) NamedBody757_73 NamedBody757_74

def NamedBody757_76 : StackLang.HolProg 64 :=
.seq NamedBody757_70 NamedBody757_75

def NamedBody757_77 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def NamedBody757_78 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody757_79 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 757 5

def NamedBody757_80 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody757_81 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody757_82 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody757_83 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody757_84 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def NamedBody757_85 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def NamedBody757_86 : StackLang.HolProg 64 :=
.seq NamedBody757_84 NamedBody757_85

def NamedBody757_87 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def NamedBody757_88 : StackLang.HolProg 64 :=
.seq NamedBody757_86 NamedBody757_87

def NamedBody757_89 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody757_90 : StackLang.HolProg 64 :=
.seq NamedBody757_88 NamedBody757_89

def NamedBody757_91 : StackLang.HolProg 64 :=
.seq NamedBody757_83 NamedBody757_90

def NamedBody757_92 : StackLang.HolProg 64 :=
.seq NamedBody757_82 NamedBody757_91

def NamedBody757_93 : StackLang.HolProg 64 :=
.seq NamedBody757_81 NamedBody757_92

def NamedBody757_94 : StackLang.HolProg 64 :=
.seq NamedBody757_80 NamedBody757_93

def NamedBody757_95 : StackLang.HolProg 64 :=
.seq NamedBody757_79 NamedBody757_94

def NamedBody757_96 : StackLang.HolProg 64 :=
.seq NamedBody757_78 NamedBody757_95

def NamedBody757_97 : StackLang.HolProg 64 :=
.seq NamedBody757_77 NamedBody757_96

def NamedBody757_98 : StackLang.HolProg 64 :=
.seq NamedBody757_76 NamedBody757_97

def NamedBody757_99 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody757_100 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody757_101 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody757_102 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody757_103 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody757_104 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody757_105 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 1 10
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 10)))

def NamedBody757_106 : StackLang.HolProg 64 :=
.seq NamedBody757_104 NamedBody757_105

def NamedBody757_107 : StackLang.HolProg 64 :=
.seq NamedBody757_103 NamedBody757_106

def NamedBody757_108 : StackLang.HolProg 64 :=
.seq NamedBody757_102 NamedBody757_107

def NamedBody757_109 : StackLang.HolProg 64 :=
.seq NamedBody757_101 NamedBody757_108

def NamedBody757_110 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody757_111 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def NamedBody757_112 : StackLang.HolProg 64 :=
.seq NamedBody757_110 NamedBody757_111

def NamedBody757_113 : StackLang.HolProg 64 :=
.call (some (NamedBody757_109, 1, 757, 4)) (Sum.inl 68) (some (NamedBody757_112, 757, 5))

def NamedBody757_114 : StackLang.HolProg 64 :=
.seq NamedBody757_100 NamedBody757_113

def NamedBody757_115 : StackLang.HolProg 64 :=
.seq NamedBody757_99 NamedBody757_114

def NamedBody757_116 : StackLang.HolProg 64 :=
.seq NamedBody757_98 NamedBody757_115

def NamedBody757_117 : StackLang.HolProg 64 :=
.seq NamedBody757_69 NamedBody757_116

def NamedBody757_118 : StackLang.HolProg 64 :=
.seq NamedBody757_66 NamedBody757_117

def NamedBody757_119 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody757_120 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 10 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def NamedBody757_121 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 24#64))

def NamedBody757_122 : StackLang.HolProg 64 :=
.seq NamedBody757_120 NamedBody757_121

def NamedBody757_123 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody757_124 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 3376#64)

def NamedBody757_125 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody757_126 : StackLang.HolProg 64 :=
.seq NamedBody757_124 NamedBody757_125

def NamedBody757_127 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody757_128 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 2#64)

def NamedBody757_129 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 10

def NamedBody757_130 : StackLang.HolProg 64 :=
.seq NamedBody757_128 NamedBody757_129

def NamedBody757_131 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody757_132 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) NamedBody757_130 NamedBody757_131

def NamedBody757_133 : StackLang.HolProg 64 :=
.seq NamedBody757_127 NamedBody757_132

def NamedBody757_134 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def NamedBody757_135 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody757_136 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 757 7

def NamedBody757_137 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody757_138 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody757_139 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody757_140 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody757_141 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def NamedBody757_142 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def NamedBody757_143 : StackLang.HolProg 64 :=
.seq NamedBody757_141 NamedBody757_142

def NamedBody757_144 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def NamedBody757_145 : StackLang.HolProg 64 :=
.seq NamedBody757_143 NamedBody757_144

def NamedBody757_146 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody757_147 : StackLang.HolProg 64 :=
.seq NamedBody757_145 NamedBody757_146

def NamedBody757_148 : StackLang.HolProg 64 :=
.seq NamedBody757_140 NamedBody757_147

def NamedBody757_149 : StackLang.HolProg 64 :=
.seq NamedBody757_139 NamedBody757_148

def NamedBody757_150 : StackLang.HolProg 64 :=
.seq NamedBody757_138 NamedBody757_149

def NamedBody757_151 : StackLang.HolProg 64 :=
.seq NamedBody757_137 NamedBody757_150

def NamedBody757_152 : StackLang.HolProg 64 :=
.seq NamedBody757_136 NamedBody757_151

def NamedBody757_153 : StackLang.HolProg 64 :=
.seq NamedBody757_135 NamedBody757_152

def NamedBody757_154 : StackLang.HolProg 64 :=
.seq NamedBody757_134 NamedBody757_153

def NamedBody757_155 : StackLang.HolProg 64 :=
.seq NamedBody757_133 NamedBody757_154

def NamedBody757_156 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody757_157 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody757_158 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody757_159 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody757_160 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody757_161 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody757_162 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 11
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 24#64))

def NamedBody757_163 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody757_164 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody757_165 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 24#64))

def NamedBody757_166 : StackLang.HolProg 64 :=
.seq NamedBody757_164 NamedBody757_165

def NamedBody757_167 : StackLang.HolProg 64 :=
.seq NamedBody757_163 NamedBody757_166

def NamedBody757_168 : StackLang.HolProg 64 :=
.seq NamedBody757_162 NamedBody757_167

def NamedBody757_169 : StackLang.HolProg 64 :=
.seq NamedBody757_161 NamedBody757_168

def NamedBody757_170 : StackLang.HolProg 64 :=
.seq NamedBody757_160 NamedBody757_169

def NamedBody757_171 : StackLang.HolProg 64 :=
.seq NamedBody757_159 NamedBody757_170

def NamedBody757_172 : StackLang.HolProg 64 :=
.seq NamedBody757_158 NamedBody757_171

def NamedBody757_173 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 11
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 24#64))

def NamedBody757_174 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody757_175 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody757_176 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 24#64))

def NamedBody757_177 : StackLang.HolProg 64 :=
.seq NamedBody757_175 NamedBody757_176

def NamedBody757_178 : StackLang.HolProg 64 :=
.seq NamedBody757_174 NamedBody757_177

def NamedBody757_179 : StackLang.HolProg 64 :=
.seq NamedBody757_173 NamedBody757_178

def NamedBody757_180 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def NamedBody757_181 : StackLang.HolProg 64 :=
.seq NamedBody757_179 NamedBody757_180

def NamedBody757_182 : StackLang.HolProg 64 :=
.call (some (NamedBody757_172, 1, 757, 6)) (Sum.inl 756) (some (NamedBody757_181, 757, 7))

def NamedBody757_183 : StackLang.HolProg 64 :=
.seq NamedBody757_157 NamedBody757_182

def NamedBody757_184 : StackLang.HolProg 64 :=
.seq NamedBody757_156 NamedBody757_183

def NamedBody757_185 : StackLang.HolProg 64 :=
.seq NamedBody757_155 NamedBody757_184

def NamedBody757_186 : StackLang.HolProg 64 :=
.seq NamedBody757_126 NamedBody757_185

def NamedBody757_187 : StackLang.HolProg 64 :=
.seq NamedBody757_123 NamedBody757_186

def NamedBody757_188 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody757_189 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 10 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def NamedBody757_190 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 12 576#64)

def NamedBody757_191 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody757_192 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody757_193 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 3377#64)

def NamedBody757_194 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody757_195 : StackLang.HolProg 64 :=
.seq NamedBody757_193 NamedBody757_194

def NamedBody757_196 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody757_197 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 2#64)

def NamedBody757_198 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 10

def NamedBody757_199 : StackLang.HolProg 64 :=
.seq NamedBody757_197 NamedBody757_198

def NamedBody757_200 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody757_201 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) NamedBody757_199 NamedBody757_200

def NamedBody757_202 : StackLang.HolProg 64 :=
.seq NamedBody757_196 NamedBody757_201

def NamedBody757_203 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def NamedBody757_204 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody757_205 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 757 9

def NamedBody757_206 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody757_207 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody757_208 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody757_209 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody757_210 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def NamedBody757_211 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def NamedBody757_212 : StackLang.HolProg 64 :=
.seq NamedBody757_210 NamedBody757_211

def NamedBody757_213 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def NamedBody757_214 : StackLang.HolProg 64 :=
.seq NamedBody757_212 NamedBody757_213

def NamedBody757_215 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody757_216 : StackLang.HolProg 64 :=
.seq NamedBody757_214 NamedBody757_215

def NamedBody757_217 : StackLang.HolProg 64 :=
.seq NamedBody757_209 NamedBody757_216

def NamedBody757_218 : StackLang.HolProg 64 :=
.seq NamedBody757_208 NamedBody757_217

def NamedBody757_219 : StackLang.HolProg 64 :=
.seq NamedBody757_207 NamedBody757_218

def NamedBody757_220 : StackLang.HolProg 64 :=
.seq NamedBody757_206 NamedBody757_219

def NamedBody757_221 : StackLang.HolProg 64 :=
.seq NamedBody757_205 NamedBody757_220

def NamedBody757_222 : StackLang.HolProg 64 :=
.seq NamedBody757_204 NamedBody757_221

def NamedBody757_223 : StackLang.HolProg 64 :=
.seq NamedBody757_203 NamedBody757_222

def NamedBody757_224 : StackLang.HolProg 64 :=
.seq NamedBody757_202 NamedBody757_223

def NamedBody757_225 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody757_226 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody757_227 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody757_228 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody757_229 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody757_230 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody757_231 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 11 10
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 10)))

def NamedBody757_232 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 24#64))

def NamedBody757_233 : StackLang.HolProg 64 :=
.seq NamedBody757_231 NamedBody757_232

def NamedBody757_234 : StackLang.HolProg 64 :=
.seq NamedBody757_230 NamedBody757_233

def NamedBody757_235 : StackLang.HolProg 64 :=
.seq NamedBody757_229 NamedBody757_234

def NamedBody757_236 : StackLang.HolProg 64 :=
.seq NamedBody757_228 NamedBody757_235

def NamedBody757_237 : StackLang.HolProg 64 :=
.seq NamedBody757_227 NamedBody757_236

def NamedBody757_238 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 24#64))

def NamedBody757_239 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def NamedBody757_240 : StackLang.HolProg 64 :=
.seq NamedBody757_238 NamedBody757_239

def NamedBody757_241 : StackLang.HolProg 64 :=
.call (some (NamedBody757_237, 1, 757, 8)) (Sum.inl 79) (some (NamedBody757_240, 757, 9))

def NamedBody757_242 : StackLang.HolProg 64 :=
.seq NamedBody757_226 NamedBody757_241

def NamedBody757_243 : StackLang.HolProg 64 :=
.seq NamedBody757_225 NamedBody757_242

def NamedBody757_244 : StackLang.HolProg 64 :=
.seq NamedBody757_224 NamedBody757_243

def NamedBody757_245 : StackLang.HolProg 64 :=
.seq NamedBody757_195 NamedBody757_244

def NamedBody757_246 : StackLang.HolProg 64 :=
.seq NamedBody757_192 NamedBody757_245

def NamedBody757_247 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody757_248 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 10 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def NamedBody757_249 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 11
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 24#64))

def NamedBody757_250 : StackLang.HolProg 64 :=
.seq NamedBody757_248 NamedBody757_249

def NamedBody757_251 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody757_252 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 3378#64)

def NamedBody757_253 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody757_254 : StackLang.HolProg 64 :=
.seq NamedBody757_252 NamedBody757_253

def NamedBody757_255 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody757_256 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 2#64)

def NamedBody757_257 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 10

def NamedBody757_258 : StackLang.HolProg 64 :=
.seq NamedBody757_256 NamedBody757_257

def NamedBody757_259 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody757_260 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) NamedBody757_258 NamedBody757_259

def NamedBody757_261 : StackLang.HolProg 64 :=
.seq NamedBody757_255 NamedBody757_260

def NamedBody757_262 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def NamedBody757_263 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody757_264 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 757 11

def NamedBody757_265 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody757_266 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody757_267 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody757_268 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody757_269 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def NamedBody757_270 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def NamedBody757_271 : StackLang.HolProg 64 :=
.seq NamedBody757_269 NamedBody757_270

def NamedBody757_272 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def NamedBody757_273 : StackLang.HolProg 64 :=
.seq NamedBody757_271 NamedBody757_272

def NamedBody757_274 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody757_275 : StackLang.HolProg 64 :=
.seq NamedBody757_273 NamedBody757_274

def NamedBody757_276 : StackLang.HolProg 64 :=
.seq NamedBody757_268 NamedBody757_275

def NamedBody757_277 : StackLang.HolProg 64 :=
.seq NamedBody757_267 NamedBody757_276

def NamedBody757_278 : StackLang.HolProg 64 :=
.seq NamedBody757_266 NamedBody757_277

def NamedBody757_279 : StackLang.HolProg 64 :=
.seq NamedBody757_265 NamedBody757_278

def NamedBody757_280 : StackLang.HolProg 64 :=
.seq NamedBody757_264 NamedBody757_279

def NamedBody757_281 : StackLang.HolProg 64 :=
.seq NamedBody757_263 NamedBody757_280

def NamedBody757_282 : StackLang.HolProg 64 :=
.seq NamedBody757_262 NamedBody757_281

def NamedBody757_283 : StackLang.HolProg 64 :=
.seq NamedBody757_261 NamedBody757_282

def NamedBody757_284 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody757_285 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody757_286 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody757_287 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody757_288 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody757_289 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody757_290 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 32#64))

def NamedBody757_291 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 11
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 24#64))

def NamedBody757_292 : StackLang.HolProg 64 :=
.seq NamedBody757_290 NamedBody757_291

def NamedBody757_293 : StackLang.HolProg 64 :=
.seq NamedBody757_289 NamedBody757_292

def NamedBody757_294 : StackLang.HolProg 64 :=
.seq NamedBody757_288 NamedBody757_293

def NamedBody757_295 : StackLang.HolProg 64 :=
.seq NamedBody757_287 NamedBody757_294

def NamedBody757_296 : StackLang.HolProg 64 :=
.seq NamedBody757_286 NamedBody757_295

def NamedBody757_297 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 32#64))

def NamedBody757_298 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 11
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 24#64))

def NamedBody757_299 : StackLang.HolProg 64 :=
.seq NamedBody757_297 NamedBody757_298

def NamedBody757_300 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def NamedBody757_301 : StackLang.HolProg 64 :=
.seq NamedBody757_299 NamedBody757_300

def NamedBody757_302 : StackLang.HolProg 64 :=
.call (some (NamedBody757_296, 1, 757, 10)) (Sum.inl 70) (some (NamedBody757_301, 757, 11))

def NamedBody757_303 : StackLang.HolProg 64 :=
.seq NamedBody757_285 NamedBody757_302

def NamedBody757_304 : StackLang.HolProg 64 :=
.seq NamedBody757_284 NamedBody757_303

def NamedBody757_305 : StackLang.HolProg 64 :=
.seq NamedBody757_283 NamedBody757_304

def NamedBody757_306 : StackLang.HolProg 64 :=
.seq NamedBody757_254 NamedBody757_305

def NamedBody757_307 : StackLang.HolProg 64 :=
.seq NamedBody757_251 NamedBody757_306

def NamedBody757_308 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody757_309 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 10 11
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 11)))

def NamedBody757_310 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 40#64)))

def NamedBody757_311 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 1

def NamedBody757_312 : StackLang.HolProg 64 :=
.seq NamedBody757_310 NamedBody757_311

def NamedBody757_313 : StackLang.HolProg 64 :=
.seq NamedBody757_309 NamedBody757_312

def NamedBody757_314 : StackLang.HolProg 64 :=
.seq NamedBody757_308 NamedBody757_313

def NamedBody757_315 : StackLang.HolProg 64 :=
.seq NamedBody757_307 NamedBody757_314

def NamedBody757_316 : StackLang.HolProg 64 :=
.seq NamedBody757_250 NamedBody757_315

def NamedBody757_317 : StackLang.HolProg 64 :=
.seq NamedBody757_247 NamedBody757_316

def NamedBody757_318 : StackLang.HolProg 64 :=
.seq NamedBody757_246 NamedBody757_317

def NamedBody757_319 : StackLang.HolProg 64 :=
.seq NamedBody757_191 NamedBody757_318

def NamedBody757_320 : StackLang.HolProg 64 :=
.seq NamedBody757_190 NamedBody757_319

def NamedBody757_321 : StackLang.HolProg 64 :=
.seq NamedBody757_189 NamedBody757_320

def NamedBody757_322 : StackLang.HolProg 64 :=
.seq NamedBody757_188 NamedBody757_321

def NamedBody757_323 : StackLang.HolProg 64 :=
.seq NamedBody757_187 NamedBody757_322

def NamedBody757_324 : StackLang.HolProg 64 :=
.seq NamedBody757_122 NamedBody757_323

def NamedBody757_325 : StackLang.HolProg 64 :=
.seq NamedBody757_119 NamedBody757_324

def NamedBody757_326 : StackLang.HolProg 64 :=
.seq NamedBody757_118 NamedBody757_325

def NamedBody757_327 : StackLang.HolProg 64 :=
.seq NamedBody757_65 NamedBody757_326

def NamedBody757_328 : StackLang.HolProg 64 :=
.seq NamedBody757_64 NamedBody757_327

def NamedBody757_329 : StackLang.HolProg 64 :=
.seq NamedBody757_63 NamedBody757_328

def NamedBody757_330 : StackLang.HolProg 64 :=
.seq NamedBody757_62 NamedBody757_329

def NamedBody757_331 : StackLang.HolProg 64 :=
.seq NamedBody757_9 NamedBody757_330

def NamedBody757_332 : StackLang.HolProg 64 :=
.seq NamedBody757_6 NamedBody757_331

def Named757 : Nat × StackLang.HolProg 64 := (757, NamedBody757_332)
theorem Named757_eq : StackNames.progCompEntryHOL RiscVConfig.riscvNames Removed757 = Named757 := by
  kernel_rfl
#print axioms Named757_eq
end InitECandidate.Proofs.BackendStages
