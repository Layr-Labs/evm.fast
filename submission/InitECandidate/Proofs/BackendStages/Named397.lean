import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.BackendStages.Removed397
import Flapjack.Compiler.Backend.Backend
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
namespace InitECandidate.Proofs.BackendStages
def NamedBody397_0 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 40#64)))

def NamedBody397_1 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 2#64)

def NamedBody397_2 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 10

def NamedBody397_3 : StackLang.HolProg 64 :=
.seq NamedBody397_1 NamedBody397_2

def NamedBody397_4 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody397_5 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) NamedBody397_3 NamedBody397_4

def NamedBody397_6 : StackLang.HolProg 64 :=
.seq NamedBody397_0 NamedBody397_5

def NamedBody397_7 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 32#64))

def NamedBody397_8 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 10
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 24#64))

def NamedBody397_9 : StackLang.HolProg 64 :=
.seq NamedBody397_7 NamedBody397_8

def NamedBody397_10 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody397_11 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1176#64)

def NamedBody397_12 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody397_13 : StackLang.HolProg 64 :=
.seq NamedBody397_11 NamedBody397_12

def NamedBody397_14 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody397_15 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 2#64)

def NamedBody397_16 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 10

def NamedBody397_17 : StackLang.HolProg 64 :=
.seq NamedBody397_15 NamedBody397_16

def NamedBody397_18 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody397_19 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) NamedBody397_17 NamedBody397_18

def NamedBody397_20 : StackLang.HolProg 64 :=
.seq NamedBody397_14 NamedBody397_19

def NamedBody397_21 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def NamedBody397_22 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody397_23 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 397 3

def NamedBody397_24 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody397_25 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody397_26 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody397_27 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody397_28 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def NamedBody397_29 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def NamedBody397_30 : StackLang.HolProg 64 :=
.seq NamedBody397_28 NamedBody397_29

def NamedBody397_31 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def NamedBody397_32 : StackLang.HolProg 64 :=
.seq NamedBody397_30 NamedBody397_31

def NamedBody397_33 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody397_34 : StackLang.HolProg 64 :=
.seq NamedBody397_32 NamedBody397_33

def NamedBody397_35 : StackLang.HolProg 64 :=
.seq NamedBody397_27 NamedBody397_34

def NamedBody397_36 : StackLang.HolProg 64 :=
.seq NamedBody397_26 NamedBody397_35

def NamedBody397_37 : StackLang.HolProg 64 :=
.seq NamedBody397_25 NamedBody397_36

def NamedBody397_38 : StackLang.HolProg 64 :=
.seq NamedBody397_24 NamedBody397_37

def NamedBody397_39 : StackLang.HolProg 64 :=
.seq NamedBody397_23 NamedBody397_38

def NamedBody397_40 : StackLang.HolProg 64 :=
.seq NamedBody397_22 NamedBody397_39

def NamedBody397_41 : StackLang.HolProg 64 :=
.seq NamedBody397_21 NamedBody397_40

def NamedBody397_42 : StackLang.HolProg 64 :=
.seq NamedBody397_20 NamedBody397_41

def NamedBody397_43 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody397_44 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody397_45 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody397_46 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody397_47 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody397_48 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody397_49 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 1 10
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 10)))

def NamedBody397_50 : StackLang.HolProg 64 :=
.seq NamedBody397_48 NamedBody397_49

def NamedBody397_51 : StackLang.HolProg 64 :=
.seq NamedBody397_47 NamedBody397_50

def NamedBody397_52 : StackLang.HolProg 64 :=
.seq NamedBody397_46 NamedBody397_51

def NamedBody397_53 : StackLang.HolProg 64 :=
.seq NamedBody397_45 NamedBody397_52

def NamedBody397_54 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody397_55 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def NamedBody397_56 : StackLang.HolProg 64 :=
.seq NamedBody397_54 NamedBody397_55

def NamedBody397_57 : StackLang.HolProg 64 :=
.call (some (NamedBody397_53, 1, 397, 2)) (Sum.inl 69) (some (NamedBody397_56, 397, 3))

def NamedBody397_58 : StackLang.HolProg 64 :=
.seq NamedBody397_44 NamedBody397_57

def NamedBody397_59 : StackLang.HolProg 64 :=
.seq NamedBody397_43 NamedBody397_58

def NamedBody397_60 : StackLang.HolProg 64 :=
.seq NamedBody397_42 NamedBody397_59

def NamedBody397_61 : StackLang.HolProg 64 :=
.seq NamedBody397_13 NamedBody397_60

def NamedBody397_62 : StackLang.HolProg 64 :=
.seq NamedBody397_10 NamedBody397_61

def NamedBody397_63 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody397_64 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 32#64)

def NamedBody397_65 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody397_66 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody397_67 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1177#64)

def NamedBody397_68 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody397_69 : StackLang.HolProg 64 :=
.seq NamedBody397_67 NamedBody397_68

def NamedBody397_70 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody397_71 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 2#64)

def NamedBody397_72 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 10

def NamedBody397_73 : StackLang.HolProg 64 :=
.seq NamedBody397_71 NamedBody397_72

def NamedBody397_74 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody397_75 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) NamedBody397_73 NamedBody397_74

def NamedBody397_76 : StackLang.HolProg 64 :=
.seq NamedBody397_70 NamedBody397_75

def NamedBody397_77 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def NamedBody397_78 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody397_79 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 397 5

def NamedBody397_80 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody397_81 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody397_82 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody397_83 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody397_84 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def NamedBody397_85 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def NamedBody397_86 : StackLang.HolProg 64 :=
.seq NamedBody397_84 NamedBody397_85

def NamedBody397_87 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def NamedBody397_88 : StackLang.HolProg 64 :=
.seq NamedBody397_86 NamedBody397_87

def NamedBody397_89 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody397_90 : StackLang.HolProg 64 :=
.seq NamedBody397_88 NamedBody397_89

def NamedBody397_91 : StackLang.HolProg 64 :=
.seq NamedBody397_83 NamedBody397_90

def NamedBody397_92 : StackLang.HolProg 64 :=
.seq NamedBody397_82 NamedBody397_91

def NamedBody397_93 : StackLang.HolProg 64 :=
.seq NamedBody397_81 NamedBody397_92

def NamedBody397_94 : StackLang.HolProg 64 :=
.seq NamedBody397_80 NamedBody397_93

def NamedBody397_95 : StackLang.HolProg 64 :=
.seq NamedBody397_79 NamedBody397_94

def NamedBody397_96 : StackLang.HolProg 64 :=
.seq NamedBody397_78 NamedBody397_95

def NamedBody397_97 : StackLang.HolProg 64 :=
.seq NamedBody397_77 NamedBody397_96

def NamedBody397_98 : StackLang.HolProg 64 :=
.seq NamedBody397_76 NamedBody397_97

def NamedBody397_99 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody397_100 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody397_101 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody397_102 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody397_103 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody397_104 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody397_105 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 12 10
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 10)))

def NamedBody397_106 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 24#64))

def NamedBody397_107 : StackLang.HolProg 64 :=
.seq NamedBody397_105 NamedBody397_106

def NamedBody397_108 : StackLang.HolProg 64 :=
.seq NamedBody397_104 NamedBody397_107

def NamedBody397_109 : StackLang.HolProg 64 :=
.seq NamedBody397_103 NamedBody397_108

def NamedBody397_110 : StackLang.HolProg 64 :=
.seq NamedBody397_102 NamedBody397_109

def NamedBody397_111 : StackLang.HolProg 64 :=
.seq NamedBody397_101 NamedBody397_110

def NamedBody397_112 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 24#64))

def NamedBody397_113 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def NamedBody397_114 : StackLang.HolProg 64 :=
.seq NamedBody397_112 NamedBody397_113

def NamedBody397_115 : StackLang.HolProg 64 :=
.call (some (NamedBody397_111, 1, 397, 4)) (Sum.inl 68) (some (NamedBody397_114, 397, 5))

def NamedBody397_116 : StackLang.HolProg 64 :=
.seq NamedBody397_100 NamedBody397_115

def NamedBody397_117 : StackLang.HolProg 64 :=
.seq NamedBody397_99 NamedBody397_116

def NamedBody397_118 : StackLang.HolProg 64 :=
.seq NamedBody397_98 NamedBody397_117

def NamedBody397_119 : StackLang.HolProg 64 :=
.seq NamedBody397_69 NamedBody397_118

def NamedBody397_120 : StackLang.HolProg 64 :=
.seq NamedBody397_66 NamedBody397_119

def NamedBody397_121 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody397_122 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 10 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def NamedBody397_123 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 11 20#64)

def NamedBody397_124 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 12
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 24#64))

def NamedBody397_125 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody397_126 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1178#64)

def NamedBody397_127 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody397_128 : StackLang.HolProg 64 :=
.seq NamedBody397_126 NamedBody397_127

def NamedBody397_129 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody397_130 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 2#64)

def NamedBody397_131 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 10

def NamedBody397_132 : StackLang.HolProg 64 :=
.seq NamedBody397_130 NamedBody397_131

def NamedBody397_133 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody397_134 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) NamedBody397_132 NamedBody397_133

def NamedBody397_135 : StackLang.HolProg 64 :=
.seq NamedBody397_129 NamedBody397_134

def NamedBody397_136 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def NamedBody397_137 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody397_138 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 397 7

def NamedBody397_139 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody397_140 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody397_141 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody397_142 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody397_143 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def NamedBody397_144 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def NamedBody397_145 : StackLang.HolProg 64 :=
.seq NamedBody397_143 NamedBody397_144

def NamedBody397_146 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def NamedBody397_147 : StackLang.HolProg 64 :=
.seq NamedBody397_145 NamedBody397_146

def NamedBody397_148 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody397_149 : StackLang.HolProg 64 :=
.seq NamedBody397_147 NamedBody397_148

def NamedBody397_150 : StackLang.HolProg 64 :=
.seq NamedBody397_142 NamedBody397_149

def NamedBody397_151 : StackLang.HolProg 64 :=
.seq NamedBody397_141 NamedBody397_150

def NamedBody397_152 : StackLang.HolProg 64 :=
.seq NamedBody397_140 NamedBody397_151

def NamedBody397_153 : StackLang.HolProg 64 :=
.seq NamedBody397_139 NamedBody397_152

def NamedBody397_154 : StackLang.HolProg 64 :=
.seq NamedBody397_138 NamedBody397_153

def NamedBody397_155 : StackLang.HolProg 64 :=
.seq NamedBody397_137 NamedBody397_154

def NamedBody397_156 : StackLang.HolProg 64 :=
.seq NamedBody397_136 NamedBody397_155

def NamedBody397_157 : StackLang.HolProg 64 :=
.seq NamedBody397_135 NamedBody397_156

def NamedBody397_158 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody397_159 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody397_160 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody397_161 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody397_162 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody397_163 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody397_164 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 11
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 24#64))

def NamedBody397_165 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody397_166 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 24#64))

def NamedBody397_167 : StackLang.HolProg 64 :=
.seq NamedBody397_165 NamedBody397_166

def NamedBody397_168 : StackLang.HolProg 64 :=
.seq NamedBody397_164 NamedBody397_167

def NamedBody397_169 : StackLang.HolProg 64 :=
.seq NamedBody397_163 NamedBody397_168

def NamedBody397_170 : StackLang.HolProg 64 :=
.seq NamedBody397_162 NamedBody397_169

def NamedBody397_171 : StackLang.HolProg 64 :=
.seq NamedBody397_161 NamedBody397_170

def NamedBody397_172 : StackLang.HolProg 64 :=
.seq NamedBody397_160 NamedBody397_171

def NamedBody397_173 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 11
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 24#64))

def NamedBody397_174 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody397_175 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 24#64))

def NamedBody397_176 : StackLang.HolProg 64 :=
.seq NamedBody397_174 NamedBody397_175

def NamedBody397_177 : StackLang.HolProg 64 :=
.seq NamedBody397_173 NamedBody397_176

def NamedBody397_178 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def NamedBody397_179 : StackLang.HolProg 64 :=
.seq NamedBody397_177 NamedBody397_178

def NamedBody397_180 : StackLang.HolProg 64 :=
.call (some (NamedBody397_172, 1, 397, 6)) (Sum.inl 158) (some (NamedBody397_179, 397, 7))

def NamedBody397_181 : StackLang.HolProg 64 :=
.seq NamedBody397_159 NamedBody397_180

def NamedBody397_182 : StackLang.HolProg 64 :=
.seq NamedBody397_158 NamedBody397_181

def NamedBody397_183 : StackLang.HolProg 64 :=
.seq NamedBody397_157 NamedBody397_182

def NamedBody397_184 : StackLang.HolProg 64 :=
.seq NamedBody397_128 NamedBody397_183

def NamedBody397_185 : StackLang.HolProg 64 :=
.seq NamedBody397_125 NamedBody397_184

def NamedBody397_186 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody397_187 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551592#64))

def NamedBody397_188 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsl 1 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 1#64)))

def NamedBody397_189 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 1 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 26)))

def NamedBody397_190 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 1 18446744073709551448#64))

def NamedBody397_191 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 10
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 1 24#64))

def NamedBody397_192 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody397_193 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody397_194 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1179#64)

def NamedBody397_195 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody397_196 : StackLang.HolProg 64 :=
.seq NamedBody397_194 NamedBody397_195

def NamedBody397_197 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody397_198 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 2#64)

def NamedBody397_199 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 10

def NamedBody397_200 : StackLang.HolProg 64 :=
.seq NamedBody397_198 NamedBody397_199

def NamedBody397_201 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody397_202 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) NamedBody397_200 NamedBody397_201

def NamedBody397_203 : StackLang.HolProg 64 :=
.seq NamedBody397_197 NamedBody397_202

def NamedBody397_204 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def NamedBody397_205 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody397_206 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 397 9

def NamedBody397_207 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody397_208 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody397_209 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody397_210 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody397_211 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def NamedBody397_212 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def NamedBody397_213 : StackLang.HolProg 64 :=
.seq NamedBody397_211 NamedBody397_212

def NamedBody397_214 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def NamedBody397_215 : StackLang.HolProg 64 :=
.seq NamedBody397_213 NamedBody397_214

def NamedBody397_216 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody397_217 : StackLang.HolProg 64 :=
.seq NamedBody397_215 NamedBody397_216

def NamedBody397_218 : StackLang.HolProg 64 :=
.seq NamedBody397_210 NamedBody397_217

def NamedBody397_219 : StackLang.HolProg 64 :=
.seq NamedBody397_209 NamedBody397_218

def NamedBody397_220 : StackLang.HolProg 64 :=
.seq NamedBody397_208 NamedBody397_219

def NamedBody397_221 : StackLang.HolProg 64 :=
.seq NamedBody397_207 NamedBody397_220

def NamedBody397_222 : StackLang.HolProg 64 :=
.seq NamedBody397_206 NamedBody397_221

def NamedBody397_223 : StackLang.HolProg 64 :=
.seq NamedBody397_205 NamedBody397_222

def NamedBody397_224 : StackLang.HolProg 64 :=
.seq NamedBody397_204 NamedBody397_223

def NamedBody397_225 : StackLang.HolProg 64 :=
.seq NamedBody397_203 NamedBody397_224

def NamedBody397_226 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody397_227 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody397_228 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody397_229 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody397_230 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody397_231 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody397_232 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 13 10
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 10)))

def NamedBody397_233 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 24#64))

def NamedBody397_234 : StackLang.HolProg 64 :=
.seq NamedBody397_232 NamedBody397_233

def NamedBody397_235 : StackLang.HolProg 64 :=
.seq NamedBody397_231 NamedBody397_234

def NamedBody397_236 : StackLang.HolProg 64 :=
.seq NamedBody397_230 NamedBody397_235

def NamedBody397_237 : StackLang.HolProg 64 :=
.seq NamedBody397_229 NamedBody397_236

def NamedBody397_238 : StackLang.HolProg 64 :=
.seq NamedBody397_228 NamedBody397_237

def NamedBody397_239 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 24#64))

def NamedBody397_240 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def NamedBody397_241 : StackLang.HolProg 64 :=
.seq NamedBody397_239 NamedBody397_240

def NamedBody397_242 : StackLang.HolProg 64 :=
.call (some (NamedBody397_238, 1, 397, 8)) (Sum.inl 307) (some (NamedBody397_241, 397, 9))

def NamedBody397_243 : StackLang.HolProg 64 :=
.seq NamedBody397_227 NamedBody397_242

def NamedBody397_244 : StackLang.HolProg 64 :=
.seq NamedBody397_226 NamedBody397_243

def NamedBody397_245 : StackLang.HolProg 64 :=
.seq NamedBody397_225 NamedBody397_244

def NamedBody397_246 : StackLang.HolProg 64 :=
.seq NamedBody397_196 NamedBody397_245

def NamedBody397_247 : StackLang.HolProg 64 :=
.seq NamedBody397_193 NamedBody397_246

def NamedBody397_248 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody397_249 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 10 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def NamedBody397_250 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 12
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 24#64))

def NamedBody397_251 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 13
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody397_252 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 11
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody397_253 : StackLang.HolProg 64 :=
.seq NamedBody397_251 NamedBody397_252

def NamedBody397_254 : StackLang.HolProg 64 :=
.seq NamedBody397_250 NamedBody397_253

def NamedBody397_255 : StackLang.HolProg 64 :=
.seq NamedBody397_249 NamedBody397_254

def NamedBody397_256 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody397_257 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1180#64)

def NamedBody397_258 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody397_259 : StackLang.HolProg 64 :=
.seq NamedBody397_257 NamedBody397_258

def NamedBody397_260 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody397_261 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 2#64)

def NamedBody397_262 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 10

def NamedBody397_263 : StackLang.HolProg 64 :=
.seq NamedBody397_261 NamedBody397_262

def NamedBody397_264 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody397_265 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) NamedBody397_263 NamedBody397_264

def NamedBody397_266 : StackLang.HolProg 64 :=
.seq NamedBody397_260 NamedBody397_265

def NamedBody397_267 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def NamedBody397_268 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody397_269 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 397 11

def NamedBody397_270 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody397_271 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody397_272 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody397_273 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody397_274 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def NamedBody397_275 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def NamedBody397_276 : StackLang.HolProg 64 :=
.seq NamedBody397_274 NamedBody397_275

def NamedBody397_277 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def NamedBody397_278 : StackLang.HolProg 64 :=
.seq NamedBody397_276 NamedBody397_277

def NamedBody397_279 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody397_280 : StackLang.HolProg 64 :=
.seq NamedBody397_278 NamedBody397_279

def NamedBody397_281 : StackLang.HolProg 64 :=
.seq NamedBody397_273 NamedBody397_280

def NamedBody397_282 : StackLang.HolProg 64 :=
.seq NamedBody397_272 NamedBody397_281

def NamedBody397_283 : StackLang.HolProg 64 :=
.seq NamedBody397_271 NamedBody397_282

def NamedBody397_284 : StackLang.HolProg 64 :=
.seq NamedBody397_270 NamedBody397_283

def NamedBody397_285 : StackLang.HolProg 64 :=
.seq NamedBody397_269 NamedBody397_284

def NamedBody397_286 : StackLang.HolProg 64 :=
.seq NamedBody397_268 NamedBody397_285

def NamedBody397_287 : StackLang.HolProg 64 :=
.seq NamedBody397_267 NamedBody397_286

def NamedBody397_288 : StackLang.HolProg 64 :=
.seq NamedBody397_266 NamedBody397_287

def NamedBody397_289 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody397_290 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody397_291 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody397_292 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody397_293 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody397_294 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody397_295 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 32#64))

def NamedBody397_296 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 12
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 24#64))

def NamedBody397_297 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 13
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody397_298 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 11
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody397_299 : StackLang.HolProg 64 :=
.seq NamedBody397_297 NamedBody397_298

def NamedBody397_300 : StackLang.HolProg 64 :=
.seq NamedBody397_296 NamedBody397_299

def NamedBody397_301 : StackLang.HolProg 64 :=
.seq NamedBody397_295 NamedBody397_300

def NamedBody397_302 : StackLang.HolProg 64 :=
.seq NamedBody397_294 NamedBody397_301

def NamedBody397_303 : StackLang.HolProg 64 :=
.seq NamedBody397_293 NamedBody397_302

def NamedBody397_304 : StackLang.HolProg 64 :=
.seq NamedBody397_292 NamedBody397_303

def NamedBody397_305 : StackLang.HolProg 64 :=
.seq NamedBody397_291 NamedBody397_304

def NamedBody397_306 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 32#64))

def NamedBody397_307 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 12
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 24#64))

def NamedBody397_308 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 13
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody397_309 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 11
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody397_310 : StackLang.HolProg 64 :=
.seq NamedBody397_308 NamedBody397_309

def NamedBody397_311 : StackLang.HolProg 64 :=
.seq NamedBody397_307 NamedBody397_310

def NamedBody397_312 : StackLang.HolProg 64 :=
.seq NamedBody397_306 NamedBody397_311

def NamedBody397_313 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def NamedBody397_314 : StackLang.HolProg 64 :=
.seq NamedBody397_312 NamedBody397_313

def NamedBody397_315 : StackLang.HolProg 64 :=
.call (some (NamedBody397_305, 1, 397, 10)) (Sum.inl 70) (some (NamedBody397_314, 397, 11))

def NamedBody397_316 : StackLang.HolProg 64 :=
.seq NamedBody397_290 NamedBody397_315

def NamedBody397_317 : StackLang.HolProg 64 :=
.seq NamedBody397_289 NamedBody397_316

def NamedBody397_318 : StackLang.HolProg 64 :=
.seq NamedBody397_288 NamedBody397_317

def NamedBody397_319 : StackLang.HolProg 64 :=
.seq NamedBody397_259 NamedBody397_318

def NamedBody397_320 : StackLang.HolProg 64 :=
.seq NamedBody397_256 NamedBody397_319

def NamedBody397_321 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody397_322 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 10 13
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 13)))

def NamedBody397_323 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 40#64)))

def NamedBody397_324 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 1

def NamedBody397_325 : StackLang.HolProg 64 :=
.seq NamedBody397_323 NamedBody397_324

def NamedBody397_326 : StackLang.HolProg 64 :=
.seq NamedBody397_322 NamedBody397_325

def NamedBody397_327 : StackLang.HolProg 64 :=
.seq NamedBody397_321 NamedBody397_326

def NamedBody397_328 : StackLang.HolProg 64 :=
.seq NamedBody397_320 NamedBody397_327

def NamedBody397_329 : StackLang.HolProg 64 :=
.seq NamedBody397_255 NamedBody397_328

def NamedBody397_330 : StackLang.HolProg 64 :=
.seq NamedBody397_248 NamedBody397_329

def NamedBody397_331 : StackLang.HolProg 64 :=
.seq NamedBody397_247 NamedBody397_330

def NamedBody397_332 : StackLang.HolProg 64 :=
.seq NamedBody397_192 NamedBody397_331

def NamedBody397_333 : StackLang.HolProg 64 :=
.seq NamedBody397_191 NamedBody397_332

def NamedBody397_334 : StackLang.HolProg 64 :=
.seq NamedBody397_190 NamedBody397_333

def NamedBody397_335 : StackLang.HolProg 64 :=
.seq NamedBody397_189 NamedBody397_334

def NamedBody397_336 : StackLang.HolProg 64 :=
.seq NamedBody397_188 NamedBody397_335

def NamedBody397_337 : StackLang.HolProg 64 :=
.seq NamedBody397_187 NamedBody397_336

def NamedBody397_338 : StackLang.HolProg 64 :=
.seq NamedBody397_186 NamedBody397_337

def NamedBody397_339 : StackLang.HolProg 64 :=
.seq NamedBody397_185 NamedBody397_338

def NamedBody397_340 : StackLang.HolProg 64 :=
.seq NamedBody397_124 NamedBody397_339

def NamedBody397_341 : StackLang.HolProg 64 :=
.seq NamedBody397_123 NamedBody397_340

def NamedBody397_342 : StackLang.HolProg 64 :=
.seq NamedBody397_122 NamedBody397_341

def NamedBody397_343 : StackLang.HolProg 64 :=
.seq NamedBody397_121 NamedBody397_342

def NamedBody397_344 : StackLang.HolProg 64 :=
.seq NamedBody397_120 NamedBody397_343

def NamedBody397_345 : StackLang.HolProg 64 :=
.seq NamedBody397_65 NamedBody397_344

def NamedBody397_346 : StackLang.HolProg 64 :=
.seq NamedBody397_64 NamedBody397_345

def NamedBody397_347 : StackLang.HolProg 64 :=
.seq NamedBody397_63 NamedBody397_346

def NamedBody397_348 : StackLang.HolProg 64 :=
.seq NamedBody397_62 NamedBody397_347

def NamedBody397_349 : StackLang.HolProg 64 :=
.seq NamedBody397_9 NamedBody397_348

def NamedBody397_350 : StackLang.HolProg 64 :=
.seq NamedBody397_6 NamedBody397_349

def Named397 : Nat × StackLang.HolProg 64 := (397, NamedBody397_350)
theorem Named397_eq : StackNames.progCompEntryHOL RiscVConfig.riscvNames Removed397 = Named397 := by
  kernel_rfl
#print axioms Named397_eq
end InitECandidate.Proofs.BackendStages
