import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.BackendStages.Removed756
import Flapjack.Compiler.Backend.Backend
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
namespace InitECandidate.Proofs.BackendStages
def NamedBody756_0 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody756_1 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 2#64)

def NamedBody756_2 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 10

def NamedBody756_3 : StackLang.HolProg 64 :=
.seq NamedBody756_1 NamedBody756_2

def NamedBody756_4 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody756_5 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) NamedBody756_3 NamedBody756_4

def NamedBody756_6 : StackLang.HolProg 64 :=
.seq NamedBody756_0 NamedBody756_5

def NamedBody756_7 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody756_8 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 10
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody756_9 : StackLang.HolProg 64 :=
.seq NamedBody756_7 NamedBody756_8

def NamedBody756_10 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody756_11 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 3372#64)

def NamedBody756_12 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody756_13 : StackLang.HolProg 64 :=
.seq NamedBody756_11 NamedBody756_12

def NamedBody756_14 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody756_15 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 2#64)

def NamedBody756_16 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 10

def NamedBody756_17 : StackLang.HolProg 64 :=
.seq NamedBody756_15 NamedBody756_16

def NamedBody756_18 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody756_19 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) NamedBody756_17 NamedBody756_18

def NamedBody756_20 : StackLang.HolProg 64 :=
.seq NamedBody756_14 NamedBody756_19

def NamedBody756_21 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def NamedBody756_22 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody756_23 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 756 3

def NamedBody756_24 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody756_25 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody756_26 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody756_27 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody756_28 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def NamedBody756_29 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def NamedBody756_30 : StackLang.HolProg 64 :=
.seq NamedBody756_28 NamedBody756_29

def NamedBody756_31 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def NamedBody756_32 : StackLang.HolProg 64 :=
.seq NamedBody756_30 NamedBody756_31

def NamedBody756_33 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody756_34 : StackLang.HolProg 64 :=
.seq NamedBody756_32 NamedBody756_33

def NamedBody756_35 : StackLang.HolProg 64 :=
.seq NamedBody756_27 NamedBody756_34

def NamedBody756_36 : StackLang.HolProg 64 :=
.seq NamedBody756_26 NamedBody756_35

def NamedBody756_37 : StackLang.HolProg 64 :=
.seq NamedBody756_25 NamedBody756_36

def NamedBody756_38 : StackLang.HolProg 64 :=
.seq NamedBody756_24 NamedBody756_37

def NamedBody756_39 : StackLang.HolProg 64 :=
.seq NamedBody756_23 NamedBody756_38

def NamedBody756_40 : StackLang.HolProg 64 :=
.seq NamedBody756_22 NamedBody756_39

def NamedBody756_41 : StackLang.HolProg 64 :=
.seq NamedBody756_21 NamedBody756_40

def NamedBody756_42 : StackLang.HolProg 64 :=
.seq NamedBody756_20 NamedBody756_41

def NamedBody756_43 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody756_44 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody756_45 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody756_46 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody756_47 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody756_48 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody756_49 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody756_50 : StackLang.HolProg 64 :=
.seq NamedBody756_48 NamedBody756_49

def NamedBody756_51 : StackLang.HolProg 64 :=
.seq NamedBody756_47 NamedBody756_50

def NamedBody756_52 : StackLang.HolProg 64 :=
.seq NamedBody756_46 NamedBody756_51

def NamedBody756_53 : StackLang.HolProg 64 :=
.seq NamedBody756_45 NamedBody756_52

def NamedBody756_54 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody756_55 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def NamedBody756_56 : StackLang.HolProg 64 :=
.seq NamedBody756_54 NamedBody756_55

def NamedBody756_57 : StackLang.HolProg 64 :=
.call (some (NamedBody756_53, 1, 756, 2)) (Sum.inl 748) (some (NamedBody756_56, 756, 3))

def NamedBody756_58 : StackLang.HolProg 64 :=
.seq NamedBody756_44 NamedBody756_57

def NamedBody756_59 : StackLang.HolProg 64 :=
.seq NamedBody756_43 NamedBody756_58

def NamedBody756_60 : StackLang.HolProg 64 :=
.seq NamedBody756_42 NamedBody756_59

def NamedBody756_61 : StackLang.HolProg 64 :=
.seq NamedBody756_13 NamedBody756_60

def NamedBody756_62 : StackLang.HolProg 64 :=
.seq NamedBody756_10 NamedBody756_61

def NamedBody756_63 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody756_64 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody756_65 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 10 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 288#64)))

def NamedBody756_66 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody756_67 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody756_68 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 3373#64)

def NamedBody756_69 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody756_70 : StackLang.HolProg 64 :=
.seq NamedBody756_68 NamedBody756_69

def NamedBody756_71 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody756_72 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 2#64)

def NamedBody756_73 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 10

def NamedBody756_74 : StackLang.HolProg 64 :=
.seq NamedBody756_72 NamedBody756_73

def NamedBody756_75 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody756_76 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) NamedBody756_74 NamedBody756_75

def NamedBody756_77 : StackLang.HolProg 64 :=
.seq NamedBody756_71 NamedBody756_76

def NamedBody756_78 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def NamedBody756_79 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody756_80 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 756 5

def NamedBody756_81 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody756_82 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody756_83 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody756_84 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody756_85 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def NamedBody756_86 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def NamedBody756_87 : StackLang.HolProg 64 :=
.seq NamedBody756_85 NamedBody756_86

def NamedBody756_88 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def NamedBody756_89 : StackLang.HolProg 64 :=
.seq NamedBody756_87 NamedBody756_88

def NamedBody756_90 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody756_91 : StackLang.HolProg 64 :=
.seq NamedBody756_89 NamedBody756_90

def NamedBody756_92 : StackLang.HolProg 64 :=
.seq NamedBody756_84 NamedBody756_91

def NamedBody756_93 : StackLang.HolProg 64 :=
.seq NamedBody756_83 NamedBody756_92

def NamedBody756_94 : StackLang.HolProg 64 :=
.seq NamedBody756_82 NamedBody756_93

def NamedBody756_95 : StackLang.HolProg 64 :=
.seq NamedBody756_81 NamedBody756_94

def NamedBody756_96 : StackLang.HolProg 64 :=
.seq NamedBody756_80 NamedBody756_95

def NamedBody756_97 : StackLang.HolProg 64 :=
.seq NamedBody756_79 NamedBody756_96

def NamedBody756_98 : StackLang.HolProg 64 :=
.seq NamedBody756_78 NamedBody756_97

def NamedBody756_99 : StackLang.HolProg 64 :=
.seq NamedBody756_77 NamedBody756_98

def NamedBody756_100 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody756_101 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody756_102 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody756_103 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody756_104 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody756_105 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody756_106 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody756_107 : StackLang.HolProg 64 :=
.seq NamedBody756_105 NamedBody756_106

def NamedBody756_108 : StackLang.HolProg 64 :=
.seq NamedBody756_104 NamedBody756_107

def NamedBody756_109 : StackLang.HolProg 64 :=
.seq NamedBody756_103 NamedBody756_108

def NamedBody756_110 : StackLang.HolProg 64 :=
.seq NamedBody756_102 NamedBody756_109

def NamedBody756_111 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody756_112 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def NamedBody756_113 : StackLang.HolProg 64 :=
.seq NamedBody756_111 NamedBody756_112

def NamedBody756_114 : StackLang.HolProg 64 :=
.call (some (NamedBody756_110, 1, 756, 4)) (Sum.inl 747) (some (NamedBody756_113, 756, 5))

def NamedBody756_115 : StackLang.HolProg 64 :=
.seq NamedBody756_101 NamedBody756_114

def NamedBody756_116 : StackLang.HolProg 64 :=
.seq NamedBody756_100 NamedBody756_115

def NamedBody756_117 : StackLang.HolProg 64 :=
.seq NamedBody756_99 NamedBody756_116

def NamedBody756_118 : StackLang.HolProg 64 :=
.seq NamedBody756_70 NamedBody756_117

def NamedBody756_119 : StackLang.HolProg 64 :=
.seq NamedBody756_67 NamedBody756_118

def NamedBody756_120 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody756_121 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 0#64)

def NamedBody756_122 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody756_123 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody756_124 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 1

def NamedBody756_125 : StackLang.HolProg 64 :=
.seq NamedBody756_123 NamedBody756_124

def NamedBody756_126 : StackLang.HolProg 64 :=
.seq NamedBody756_122 NamedBody756_125

def NamedBody756_127 : StackLang.HolProg 64 :=
.seq NamedBody756_121 NamedBody756_126

def NamedBody756_128 : StackLang.HolProg 64 :=
.seq NamedBody756_120 NamedBody756_127

def NamedBody756_129 : StackLang.HolProg 64 :=
.seq NamedBody756_119 NamedBody756_128

def NamedBody756_130 : StackLang.HolProg 64 :=
.seq NamedBody756_66 NamedBody756_129

def NamedBody756_131 : StackLang.HolProg 64 :=
.seq NamedBody756_65 NamedBody756_130

def NamedBody756_132 : StackLang.HolProg 64 :=
.seq NamedBody756_64 NamedBody756_131

def NamedBody756_133 : StackLang.HolProg 64 :=
.seq NamedBody756_63 NamedBody756_132

def NamedBody756_134 : StackLang.HolProg 64 :=
.seq NamedBody756_62 NamedBody756_133

def NamedBody756_135 : StackLang.HolProg 64 :=
.seq NamedBody756_9 NamedBody756_134

def NamedBody756_136 : StackLang.HolProg 64 :=
.seq NamedBody756_6 NamedBody756_135

def Named756 : Nat × StackLang.HolProg 64 := (756, NamedBody756_136)
theorem Named756_eq : StackNames.progCompEntryHOL RiscVConfig.riscvNames Removed756 = Named756 := by
  kernel_rfl
#print axioms Named756_eq
end InitECandidate.Proofs.BackendStages
