import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.BackendStages.Removed249
import Flapjack.Compiler.Backend.Backend
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
namespace InitECandidate.Proofs.BackendStages
def NamedBody249_0 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 16#64)))

def NamedBody249_1 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 2#64)

def NamedBody249_2 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 10

def NamedBody249_3 : StackLang.HolProg 64 :=
.seq NamedBody249_1 NamedBody249_2

def NamedBody249_4 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody249_5 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) NamedBody249_3 NamedBody249_4

def NamedBody249_6 : StackLang.HolProg 64 :=
.seq NamedBody249_0 NamedBody249_5

def NamedBody249_7 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody249_8 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody249_9 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 506#64)

def NamedBody249_10 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody249_11 : StackLang.HolProg 64 :=
.seq NamedBody249_9 NamedBody249_10

def NamedBody249_12 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody249_13 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 2#64)

def NamedBody249_14 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 10

def NamedBody249_15 : StackLang.HolProg 64 :=
.seq NamedBody249_13 NamedBody249_14

def NamedBody249_16 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody249_17 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) NamedBody249_15 NamedBody249_16

def NamedBody249_18 : StackLang.HolProg 64 :=
.seq NamedBody249_12 NamedBody249_17

def NamedBody249_19 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def NamedBody249_20 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody249_21 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 249 3

def NamedBody249_22 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody249_23 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody249_24 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody249_25 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody249_26 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def NamedBody249_27 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def NamedBody249_28 : StackLang.HolProg 64 :=
.seq NamedBody249_26 NamedBody249_27

def NamedBody249_29 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def NamedBody249_30 : StackLang.HolProg 64 :=
.seq NamedBody249_28 NamedBody249_29

def NamedBody249_31 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody249_32 : StackLang.HolProg 64 :=
.seq NamedBody249_30 NamedBody249_31

def NamedBody249_33 : StackLang.HolProg 64 :=
.seq NamedBody249_25 NamedBody249_32

def NamedBody249_34 : StackLang.HolProg 64 :=
.seq NamedBody249_24 NamedBody249_33

def NamedBody249_35 : StackLang.HolProg 64 :=
.seq NamedBody249_23 NamedBody249_34

def NamedBody249_36 : StackLang.HolProg 64 :=
.seq NamedBody249_22 NamedBody249_35

def NamedBody249_37 : StackLang.HolProg 64 :=
.seq NamedBody249_21 NamedBody249_36

def NamedBody249_38 : StackLang.HolProg 64 :=
.seq NamedBody249_20 NamedBody249_37

def NamedBody249_39 : StackLang.HolProg 64 :=
.seq NamedBody249_19 NamedBody249_38

def NamedBody249_40 : StackLang.HolProg 64 :=
.seq NamedBody249_18 NamedBody249_39

def NamedBody249_41 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody249_42 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody249_43 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody249_44 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody249_45 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody249_46 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody249_47 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody249_48 : StackLang.HolProg 64 :=
.seq NamedBody249_46 NamedBody249_47

def NamedBody249_49 : StackLang.HolProg 64 :=
.seq NamedBody249_45 NamedBody249_48

def NamedBody249_50 : StackLang.HolProg 64 :=
.seq NamedBody249_44 NamedBody249_49

def NamedBody249_51 : StackLang.HolProg 64 :=
.seq NamedBody249_43 NamedBody249_50

def NamedBody249_52 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody249_53 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def NamedBody249_54 : StackLang.HolProg 64 :=
.seq NamedBody249_52 NamedBody249_53

def NamedBody249_55 : StackLang.HolProg 64 :=
.call (some (NamedBody249_51, 1, 249, 2)) (Sum.inl 248) (some (NamedBody249_54, 249, 3))

def NamedBody249_56 : StackLang.HolProg 64 :=
.seq NamedBody249_42 NamedBody249_55

def NamedBody249_57 : StackLang.HolProg 64 :=
.seq NamedBody249_41 NamedBody249_56

def NamedBody249_58 : StackLang.HolProg 64 :=
.seq NamedBody249_40 NamedBody249_57

def NamedBody249_59 : StackLang.HolProg 64 :=
.seq NamedBody249_11 NamedBody249_58

def NamedBody249_60 : StackLang.HolProg 64 :=
.seq NamedBody249_8 NamedBody249_59

def NamedBody249_61 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody249_62 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody249_63 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody249_64 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 507#64)

def NamedBody249_65 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody249_66 : StackLang.HolProg 64 :=
.seq NamedBody249_64 NamedBody249_65

def NamedBody249_67 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody249_68 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 2#64)

def NamedBody249_69 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 10

def NamedBody249_70 : StackLang.HolProg 64 :=
.seq NamedBody249_68 NamedBody249_69

def NamedBody249_71 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody249_72 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) NamedBody249_70 NamedBody249_71

def NamedBody249_73 : StackLang.HolProg 64 :=
.seq NamedBody249_67 NamedBody249_72

def NamedBody249_74 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def NamedBody249_75 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody249_76 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 249 5

def NamedBody249_77 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody249_78 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody249_79 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody249_80 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody249_81 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def NamedBody249_82 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def NamedBody249_83 : StackLang.HolProg 64 :=
.seq NamedBody249_81 NamedBody249_82

def NamedBody249_84 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def NamedBody249_85 : StackLang.HolProg 64 :=
.seq NamedBody249_83 NamedBody249_84

def NamedBody249_86 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody249_87 : StackLang.HolProg 64 :=
.seq NamedBody249_85 NamedBody249_86

def NamedBody249_88 : StackLang.HolProg 64 :=
.seq NamedBody249_80 NamedBody249_87

def NamedBody249_89 : StackLang.HolProg 64 :=
.seq NamedBody249_79 NamedBody249_88

def NamedBody249_90 : StackLang.HolProg 64 :=
.seq NamedBody249_78 NamedBody249_89

def NamedBody249_91 : StackLang.HolProg 64 :=
.seq NamedBody249_77 NamedBody249_90

def NamedBody249_92 : StackLang.HolProg 64 :=
.seq NamedBody249_76 NamedBody249_91

def NamedBody249_93 : StackLang.HolProg 64 :=
.seq NamedBody249_75 NamedBody249_92

def NamedBody249_94 : StackLang.HolProg 64 :=
.seq NamedBody249_74 NamedBody249_93

def NamedBody249_95 : StackLang.HolProg 64 :=
.seq NamedBody249_73 NamedBody249_94

def NamedBody249_96 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody249_97 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody249_98 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody249_99 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody249_100 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody249_101 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody249_102 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 12 10
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 10)))

def NamedBody249_103 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody249_104 : StackLang.HolProg 64 :=
.seq NamedBody249_102 NamedBody249_103

def NamedBody249_105 : StackLang.HolProg 64 :=
.seq NamedBody249_101 NamedBody249_104

def NamedBody249_106 : StackLang.HolProg 64 :=
.seq NamedBody249_100 NamedBody249_105

def NamedBody249_107 : StackLang.HolProg 64 :=
.seq NamedBody249_99 NamedBody249_106

def NamedBody249_108 : StackLang.HolProg 64 :=
.seq NamedBody249_98 NamedBody249_107

def NamedBody249_109 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody249_110 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def NamedBody249_111 : StackLang.HolProg 64 :=
.seq NamedBody249_109 NamedBody249_110

def NamedBody249_112 : StackLang.HolProg 64 :=
.call (some (NamedBody249_108, 1, 249, 4)) (Sum.inl 90) (some (NamedBody249_111, 249, 5))

def NamedBody249_113 : StackLang.HolProg 64 :=
.seq NamedBody249_97 NamedBody249_112

def NamedBody249_114 : StackLang.HolProg 64 :=
.seq NamedBody249_96 NamedBody249_113

def NamedBody249_115 : StackLang.HolProg 64 :=
.seq NamedBody249_95 NamedBody249_114

def NamedBody249_116 : StackLang.HolProg 64 :=
.seq NamedBody249_66 NamedBody249_115

def NamedBody249_117 : StackLang.HolProg 64 :=
.seq NamedBody249_63 NamedBody249_116

def NamedBody249_118 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody249_119 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 10 12
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 12)))

def NamedBody249_120 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody249_121 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody249_122 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 120#64)))

def NamedBody249_123 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 2#64)

def NamedBody249_124 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 10

def NamedBody249_125 : StackLang.HolProg 64 :=
.seq NamedBody249_123 NamedBody249_124

def NamedBody249_126 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody249_127 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) NamedBody249_125 NamedBody249_126

def NamedBody249_128 : StackLang.HolProg 64 :=
.seq NamedBody249_122 NamedBody249_127

def NamedBody249_129 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.rawCall 256

def NamedBody249_130 : StackLang.HolProg 64 :=
.seq NamedBody249_128 NamedBody249_129

def NamedBody249_131 : StackLang.HolProg 64 :=
.seq NamedBody249_121 NamedBody249_130

def NamedBody249_132 : StackLang.HolProg 64 :=
.seq NamedBody249_120 NamedBody249_131

def NamedBody249_133 : StackLang.HolProg 64 :=
.seq NamedBody249_119 NamedBody249_132

def NamedBody249_134 : StackLang.HolProg 64 :=
.seq NamedBody249_118 NamedBody249_133

def NamedBody249_135 : StackLang.HolProg 64 :=
.seq NamedBody249_117 NamedBody249_134

def NamedBody249_136 : StackLang.HolProg 64 :=
.seq NamedBody249_62 NamedBody249_135

def NamedBody249_137 : StackLang.HolProg 64 :=
.seq NamedBody249_61 NamedBody249_136

def NamedBody249_138 : StackLang.HolProg 64 :=
.seq NamedBody249_60 NamedBody249_137

def NamedBody249_139 : StackLang.HolProg 64 :=
.seq NamedBody249_7 NamedBody249_138

def NamedBody249_140 : StackLang.HolProg 64 :=
.seq NamedBody249_6 NamedBody249_139

def Named249 : Nat × StackLang.HolProg 64 := (249, NamedBody249_140)
theorem Named249_eq : StackNames.progCompEntryHOL RiscVConfig.riscvNames Removed249 = Named249 := by
  kernel_rfl
#print axioms Named249_eq
end InitECandidate.Proofs.BackendStages
