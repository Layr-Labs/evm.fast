import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.BackendStages.Removed407
import Flapjack.Compiler.Backend.Backend
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
namespace InitECandidate.Proofs.BackendStages
def NamedBody407_0 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 16#64)))

def NamedBody407_1 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 2#64)

def NamedBody407_2 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 10

def NamedBody407_3 : StackLang.HolProg 64 :=
.seq NamedBody407_1 NamedBody407_2

def NamedBody407_4 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody407_5 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) NamedBody407_3 NamedBody407_4

def NamedBody407_6 : StackLang.HolProg 64 :=
.seq NamedBody407_0 NamedBody407_5

def NamedBody407_7 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody407_8 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody407_9 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1211#64)

def NamedBody407_10 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody407_11 : StackLang.HolProg 64 :=
.seq NamedBody407_9 NamedBody407_10

def NamedBody407_12 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody407_13 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 2#64)

def NamedBody407_14 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 10

def NamedBody407_15 : StackLang.HolProg 64 :=
.seq NamedBody407_13 NamedBody407_14

def NamedBody407_16 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody407_17 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) NamedBody407_15 NamedBody407_16

def NamedBody407_18 : StackLang.HolProg 64 :=
.seq NamedBody407_12 NamedBody407_17

def NamedBody407_19 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def NamedBody407_20 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody407_21 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 407 3

def NamedBody407_22 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody407_23 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody407_24 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody407_25 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody407_26 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def NamedBody407_27 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def NamedBody407_28 : StackLang.HolProg 64 :=
.seq NamedBody407_26 NamedBody407_27

def NamedBody407_29 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def NamedBody407_30 : StackLang.HolProg 64 :=
.seq NamedBody407_28 NamedBody407_29

def NamedBody407_31 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody407_32 : StackLang.HolProg 64 :=
.seq NamedBody407_30 NamedBody407_31

def NamedBody407_33 : StackLang.HolProg 64 :=
.seq NamedBody407_25 NamedBody407_32

def NamedBody407_34 : StackLang.HolProg 64 :=
.seq NamedBody407_24 NamedBody407_33

def NamedBody407_35 : StackLang.HolProg 64 :=
.seq NamedBody407_23 NamedBody407_34

def NamedBody407_36 : StackLang.HolProg 64 :=
.seq NamedBody407_22 NamedBody407_35

def NamedBody407_37 : StackLang.HolProg 64 :=
.seq NamedBody407_21 NamedBody407_36

def NamedBody407_38 : StackLang.HolProg 64 :=
.seq NamedBody407_20 NamedBody407_37

def NamedBody407_39 : StackLang.HolProg 64 :=
.seq NamedBody407_19 NamedBody407_38

def NamedBody407_40 : StackLang.HolProg 64 :=
.seq NamedBody407_18 NamedBody407_39

def NamedBody407_41 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody407_42 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody407_43 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody407_44 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody407_45 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody407_46 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody407_47 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 11 10
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 10)))

def NamedBody407_48 : StackLang.HolProg 64 :=
.seq NamedBody407_46 NamedBody407_47

def NamedBody407_49 : StackLang.HolProg 64 :=
.seq NamedBody407_45 NamedBody407_48

def NamedBody407_50 : StackLang.HolProg 64 :=
.seq NamedBody407_44 NamedBody407_49

def NamedBody407_51 : StackLang.HolProg 64 :=
.seq NamedBody407_43 NamedBody407_50

def NamedBody407_52 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody407_53 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def NamedBody407_54 : StackLang.HolProg 64 :=
.seq NamedBody407_52 NamedBody407_53

def NamedBody407_55 : StackLang.HolProg 64 :=
.call (some (NamedBody407_51, 1, 407, 2)) (Sum.inl 406) (some (NamedBody407_54, 407, 3))

def NamedBody407_56 : StackLang.HolProg 64 :=
.seq NamedBody407_42 NamedBody407_55

def NamedBody407_57 : StackLang.HolProg 64 :=
.seq NamedBody407_41 NamedBody407_56

def NamedBody407_58 : StackLang.HolProg 64 :=
.seq NamedBody407_40 NamedBody407_57

def NamedBody407_59 : StackLang.HolProg 64 :=
.seq NamedBody407_11 NamedBody407_58

def NamedBody407_60 : StackLang.HolProg 64 :=
.seq NamedBody407_8 NamedBody407_59

def NamedBody407_61 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody407_62 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody407_63 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 1#64)

def NamedBody407_64 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody407_65 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody407_66 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody407_67 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1212#64)

def NamedBody407_68 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody407_69 : StackLang.HolProg 64 :=
.seq NamedBody407_67 NamedBody407_68

def NamedBody407_70 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody407_71 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 2#64)

def NamedBody407_72 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 10

def NamedBody407_73 : StackLang.HolProg 64 :=
.seq NamedBody407_71 NamedBody407_72

def NamedBody407_74 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody407_75 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) NamedBody407_73 NamedBody407_74

def NamedBody407_76 : StackLang.HolProg 64 :=
.seq NamedBody407_70 NamedBody407_75

def NamedBody407_77 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def NamedBody407_78 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody407_79 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 407 5

def NamedBody407_80 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody407_81 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody407_82 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody407_83 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody407_84 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def NamedBody407_85 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def NamedBody407_86 : StackLang.HolProg 64 :=
.seq NamedBody407_84 NamedBody407_85

def NamedBody407_87 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def NamedBody407_88 : StackLang.HolProg 64 :=
.seq NamedBody407_86 NamedBody407_87

def NamedBody407_89 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody407_90 : StackLang.HolProg 64 :=
.seq NamedBody407_88 NamedBody407_89

def NamedBody407_91 : StackLang.HolProg 64 :=
.seq NamedBody407_83 NamedBody407_90

def NamedBody407_92 : StackLang.HolProg 64 :=
.seq NamedBody407_82 NamedBody407_91

def NamedBody407_93 : StackLang.HolProg 64 :=
.seq NamedBody407_81 NamedBody407_92

def NamedBody407_94 : StackLang.HolProg 64 :=
.seq NamedBody407_80 NamedBody407_93

def NamedBody407_95 : StackLang.HolProg 64 :=
.seq NamedBody407_79 NamedBody407_94

def NamedBody407_96 : StackLang.HolProg 64 :=
.seq NamedBody407_78 NamedBody407_95

def NamedBody407_97 : StackLang.HolProg 64 :=
.seq NamedBody407_77 NamedBody407_96

def NamedBody407_98 : StackLang.HolProg 64 :=
.seq NamedBody407_76 NamedBody407_97

def NamedBody407_99 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody407_100 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody407_101 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody407_102 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody407_103 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody407_104 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody407_105 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 11 10
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 10)))

def NamedBody407_106 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody407_107 : StackLang.HolProg 64 :=
.seq NamedBody407_105 NamedBody407_106

def NamedBody407_108 : StackLang.HolProg 64 :=
.seq NamedBody407_104 NamedBody407_107

def NamedBody407_109 : StackLang.HolProg 64 :=
.seq NamedBody407_103 NamedBody407_108

def NamedBody407_110 : StackLang.HolProg 64 :=
.seq NamedBody407_102 NamedBody407_109

def NamedBody407_111 : StackLang.HolProg 64 :=
.seq NamedBody407_101 NamedBody407_110

def NamedBody407_112 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody407_113 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def NamedBody407_114 : StackLang.HolProg 64 :=
.seq NamedBody407_112 NamedBody407_113

def NamedBody407_115 : StackLang.HolProg 64 :=
.call (some (NamedBody407_111, 1, 407, 4)) (Sum.inl 394) (some (NamedBody407_114, 407, 5))

def NamedBody407_116 : StackLang.HolProg 64 :=
.seq NamedBody407_100 NamedBody407_115

def NamedBody407_117 : StackLang.HolProg 64 :=
.seq NamedBody407_99 NamedBody407_116

def NamedBody407_118 : StackLang.HolProg 64 :=
.seq NamedBody407_98 NamedBody407_117

def NamedBody407_119 : StackLang.HolProg 64 :=
.seq NamedBody407_69 NamedBody407_118

def NamedBody407_120 : StackLang.HolProg 64 :=
.seq NamedBody407_66 NamedBody407_119

def NamedBody407_121 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody407_122 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody407_123 : StackLang.HolProg 64 :=
.seq NamedBody407_121 NamedBody407_122

def NamedBody407_124 : StackLang.HolProg 64 :=
.seq NamedBody407_120 NamedBody407_123

def NamedBody407_125 : StackLang.HolProg 64 :=
.seq NamedBody407_65 NamedBody407_124

def NamedBody407_126 : StackLang.HolProg 64 :=
.seq NamedBody407_64 NamedBody407_125

def NamedBody407_127 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody407_128 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody407_129 : StackLang.HolProg 64 :=
.seq NamedBody407_127 NamedBody407_128

def NamedBody407_130 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.equal) 11 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1) NamedBody407_126 NamedBody407_129

def NamedBody407_131 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody407_132 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 10 11
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 11)))

def NamedBody407_133 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 16#64)))

def NamedBody407_134 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 1

def NamedBody407_135 : StackLang.HolProg 64 :=
.seq NamedBody407_133 NamedBody407_134

def NamedBody407_136 : StackLang.HolProg 64 :=
.seq NamedBody407_132 NamedBody407_135

def NamedBody407_137 : StackLang.HolProg 64 :=
.seq NamedBody407_131 NamedBody407_136

def NamedBody407_138 : StackLang.HolProg 64 :=
.seq NamedBody407_130 NamedBody407_137

def NamedBody407_139 : StackLang.HolProg 64 :=
.seq NamedBody407_63 NamedBody407_138

def NamedBody407_140 : StackLang.HolProg 64 :=
.seq NamedBody407_62 NamedBody407_139

def NamedBody407_141 : StackLang.HolProg 64 :=
.seq NamedBody407_61 NamedBody407_140

def NamedBody407_142 : StackLang.HolProg 64 :=
.seq NamedBody407_60 NamedBody407_141

def NamedBody407_143 : StackLang.HolProg 64 :=
.seq NamedBody407_7 NamedBody407_142

def NamedBody407_144 : StackLang.HolProg 64 :=
.seq NamedBody407_6 NamedBody407_143

def Named407 : Nat × StackLang.HolProg 64 := (407, NamedBody407_144)
theorem Named407_eq : StackNames.progCompEntryHOL RiscVConfig.riscvNames Removed407 = Named407 := by
  kernel_rfl
#print axioms Named407_eq
end InitECandidate.Proofs.BackendStages
