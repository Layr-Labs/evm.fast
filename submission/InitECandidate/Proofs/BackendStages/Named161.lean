import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.BackendStages.Removed161
import Flapjack.Compiler.Backend.Backend
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
namespace InitECandidate.Proofs.BackendStages
def NamedBody161_0 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 64#64)))

def NamedBody161_1 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 2#64)

def NamedBody161_2 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 10

def NamedBody161_3 : StackLang.HolProg 64 :=
.seq NamedBody161_1 NamedBody161_2

def NamedBody161_4 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody161_5 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) NamedBody161_3 NamedBody161_4

def NamedBody161_6 : StackLang.HolProg 64 :=
.seq NamedBody161_0 NamedBody161_5

def NamedBody161_7 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 8 11
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 11)))

def NamedBody161_8 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 11 10
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 10)))

def NamedBody161_9 : StackLang.HolProg 64 :=
.seq NamedBody161_7 NamedBody161_8

def NamedBody161_10 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 0#64)

def NamedBody161_11 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody161_12 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 1#64)

def NamedBody161_13 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 48#64))

def NamedBody161_14 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 8
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 40#64))

def NamedBody161_15 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 11
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody161_16 : StackLang.HolProg 64 :=
.seq NamedBody161_14 NamedBody161_15

def NamedBody161_17 : StackLang.HolProg 64 :=
.seq NamedBody161_13 NamedBody161_16

def NamedBody161_18 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody161_19 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 148#64)

def NamedBody161_20 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody161_21 : StackLang.HolProg 64 :=
.seq NamedBody161_19 NamedBody161_20

def NamedBody161_22 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody161_23 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 2#64)

def NamedBody161_24 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 10

def NamedBody161_25 : StackLang.HolProg 64 :=
.seq NamedBody161_23 NamedBody161_24

def NamedBody161_26 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody161_27 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) NamedBody161_25 NamedBody161_26

def NamedBody161_28 : StackLang.HolProg 64 :=
.seq NamedBody161_22 NamedBody161_27

def NamedBody161_29 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def NamedBody161_30 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody161_31 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 161 3

def NamedBody161_32 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody161_33 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody161_34 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody161_35 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody161_36 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def NamedBody161_37 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def NamedBody161_38 : StackLang.HolProg 64 :=
.seq NamedBody161_36 NamedBody161_37

def NamedBody161_39 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def NamedBody161_40 : StackLang.HolProg 64 :=
.seq NamedBody161_38 NamedBody161_39

def NamedBody161_41 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody161_42 : StackLang.HolProg 64 :=
.seq NamedBody161_40 NamedBody161_41

def NamedBody161_43 : StackLang.HolProg 64 :=
.seq NamedBody161_35 NamedBody161_42

def NamedBody161_44 : StackLang.HolProg 64 :=
.seq NamedBody161_34 NamedBody161_43

def NamedBody161_45 : StackLang.HolProg 64 :=
.seq NamedBody161_33 NamedBody161_44

def NamedBody161_46 : StackLang.HolProg 64 :=
.seq NamedBody161_32 NamedBody161_45

def NamedBody161_47 : StackLang.HolProg 64 :=
.seq NamedBody161_31 NamedBody161_46

def NamedBody161_48 : StackLang.HolProg 64 :=
.seq NamedBody161_30 NamedBody161_47

def NamedBody161_49 : StackLang.HolProg 64 :=
.seq NamedBody161_29 NamedBody161_48

def NamedBody161_50 : StackLang.HolProg 64 :=
.seq NamedBody161_28 NamedBody161_49

def NamedBody161_51 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody161_52 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody161_53 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody161_54 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody161_55 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody161_56 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody161_57 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 48#64))

def NamedBody161_58 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 8
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 40#64))

def NamedBody161_59 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 11
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody161_60 : StackLang.HolProg 64 :=
.seq NamedBody161_58 NamedBody161_59

def NamedBody161_61 : StackLang.HolProg 64 :=
.seq NamedBody161_57 NamedBody161_60

def NamedBody161_62 : StackLang.HolProg 64 :=
.seq NamedBody161_56 NamedBody161_61

def NamedBody161_63 : StackLang.HolProg 64 :=
.seq NamedBody161_55 NamedBody161_62

def NamedBody161_64 : StackLang.HolProg 64 :=
.seq NamedBody161_54 NamedBody161_63

def NamedBody161_65 : StackLang.HolProg 64 :=
.seq NamedBody161_53 NamedBody161_64

def NamedBody161_66 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 48#64))

def NamedBody161_67 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 8
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 40#64))

def NamedBody161_68 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 11
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody161_69 : StackLang.HolProg 64 :=
.seq NamedBody161_67 NamedBody161_68

def NamedBody161_70 : StackLang.HolProg 64 :=
.seq NamedBody161_66 NamedBody161_69

def NamedBody161_71 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def NamedBody161_72 : StackLang.HolProg 64 :=
.seq NamedBody161_70 NamedBody161_71

def NamedBody161_73 : StackLang.HolProg 64 :=
.call (some (NamedBody161_65, 1, 161, 2)) (Sum.inl 159) (some (NamedBody161_72, 161, 3))

def NamedBody161_74 : StackLang.HolProg 64 :=
.seq NamedBody161_52 NamedBody161_73

def NamedBody161_75 : StackLang.HolProg 64 :=
.seq NamedBody161_51 NamedBody161_74

def NamedBody161_76 : StackLang.HolProg 64 :=
.seq NamedBody161_50 NamedBody161_75

def NamedBody161_77 : StackLang.HolProg 64 :=
.seq NamedBody161_21 NamedBody161_76

def NamedBody161_78 : StackLang.HolProg 64 :=
.seq NamedBody161_18 NamedBody161_77

def NamedBody161_79 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody161_80 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody161_81 : StackLang.HolProg 64 :=
.seq NamedBody161_79 NamedBody161_80

def NamedBody161_82 : StackLang.HolProg 64 :=
.seq NamedBody161_78 NamedBody161_81

def NamedBody161_83 : StackLang.HolProg 64 :=
.seq NamedBody161_17 NamedBody161_82

def NamedBody161_84 : StackLang.HolProg 64 :=
.seq NamedBody161_12 NamedBody161_83

def NamedBody161_85 : StackLang.HolProg 64 :=
.seq NamedBody161_11 NamedBody161_84

def NamedBody161_86 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody161_87 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody161_88 : StackLang.HolProg 64 :=
.seq NamedBody161_86 NamedBody161_87

def NamedBody161_89 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.equal) 8 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 10) NamedBody161_85 NamedBody161_88

def NamedBody161_90 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody161_91 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody161_92 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load8 7
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 11 0#64))

def NamedBody161_93 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody161_94 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 128#64)

def NamedBody161_95 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody161_96 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 0#64)

def NamedBody161_97 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody161_98 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 12 1#64)

def NamedBody161_99 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 13 1#64)

def NamedBody161_100 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody161_101 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 64#64)))

def NamedBody161_102 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 1

def NamedBody161_103 : StackLang.HolProg 64 :=
.seq NamedBody161_101 NamedBody161_102

def NamedBody161_104 : StackLang.HolProg 64 :=
.seq NamedBody161_100 NamedBody161_103

def NamedBody161_105 : StackLang.HolProg 64 :=
.seq NamedBody161_99 NamedBody161_104

def NamedBody161_106 : StackLang.HolProg 64 :=
.seq NamedBody161_98 NamedBody161_105

def NamedBody161_107 : StackLang.HolProg 64 :=
.seq NamedBody161_97 NamedBody161_106

def NamedBody161_108 : StackLang.HolProg 64 :=
.seq NamedBody161_96 NamedBody161_107

def NamedBody161_109 : StackLang.HolProg 64 :=
.seq NamedBody161_95 NamedBody161_108

def NamedBody161_110 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 11
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 24#64))

def NamedBody161_111 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 7 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 10) NamedBody161_109 NamedBody161_110

def NamedBody161_112 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody161_113 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody161_114 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 183#64)

def NamedBody161_115 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody161_116 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody161_117 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody161_118 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 12 7
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 18446744073709551488#64)))

def NamedBody161_119 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody161_120 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 10 8
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 18446744073709551615#64)))

def NamedBody161_121 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody161_122 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody161_123 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 3#64)

def NamedBody161_124 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 48#64))

def NamedBody161_125 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 12
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 40#64))

def NamedBody161_126 : StackLang.HolProg 64 :=
.seq NamedBody161_124 NamedBody161_125

def NamedBody161_127 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody161_128 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 149#64)

def NamedBody161_129 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody161_130 : StackLang.HolProg 64 :=
.seq NamedBody161_128 NamedBody161_129

def NamedBody161_131 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody161_132 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 2#64)

def NamedBody161_133 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 10

def NamedBody161_134 : StackLang.HolProg 64 :=
.seq NamedBody161_132 NamedBody161_133

def NamedBody161_135 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody161_136 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) NamedBody161_134 NamedBody161_135

def NamedBody161_137 : StackLang.HolProg 64 :=
.seq NamedBody161_131 NamedBody161_136

def NamedBody161_138 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def NamedBody161_139 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody161_140 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 161 5

def NamedBody161_141 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody161_142 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody161_143 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody161_144 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody161_145 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def NamedBody161_146 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def NamedBody161_147 : StackLang.HolProg 64 :=
.seq NamedBody161_145 NamedBody161_146

def NamedBody161_148 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def NamedBody161_149 : StackLang.HolProg 64 :=
.seq NamedBody161_147 NamedBody161_148

def NamedBody161_150 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody161_151 : StackLang.HolProg 64 :=
.seq NamedBody161_149 NamedBody161_150

def NamedBody161_152 : StackLang.HolProg 64 :=
.seq NamedBody161_144 NamedBody161_151

def NamedBody161_153 : StackLang.HolProg 64 :=
.seq NamedBody161_143 NamedBody161_152

def NamedBody161_154 : StackLang.HolProg 64 :=
.seq NamedBody161_142 NamedBody161_153

def NamedBody161_155 : StackLang.HolProg 64 :=
.seq NamedBody161_141 NamedBody161_154

def NamedBody161_156 : StackLang.HolProg 64 :=
.seq NamedBody161_140 NamedBody161_155

def NamedBody161_157 : StackLang.HolProg 64 :=
.seq NamedBody161_139 NamedBody161_156

def NamedBody161_158 : StackLang.HolProg 64 :=
.seq NamedBody161_138 NamedBody161_157

def NamedBody161_159 : StackLang.HolProg 64 :=
.seq NamedBody161_137 NamedBody161_158

def NamedBody161_160 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody161_161 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody161_162 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody161_163 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody161_164 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody161_165 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody161_166 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 12
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 40#64))

def NamedBody161_167 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 11
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 24#64))

def NamedBody161_168 : StackLang.HolProg 64 :=
.seq NamedBody161_166 NamedBody161_167

def NamedBody161_169 : StackLang.HolProg 64 :=
.seq NamedBody161_165 NamedBody161_168

def NamedBody161_170 : StackLang.HolProg 64 :=
.seq NamedBody161_164 NamedBody161_169

def NamedBody161_171 : StackLang.HolProg 64 :=
.seq NamedBody161_163 NamedBody161_170

def NamedBody161_172 : StackLang.HolProg 64 :=
.seq NamedBody161_162 NamedBody161_171

def NamedBody161_173 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 12
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 40#64))

def NamedBody161_174 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 11
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 24#64))

def NamedBody161_175 : StackLang.HolProg 64 :=
.seq NamedBody161_173 NamedBody161_174

def NamedBody161_176 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def NamedBody161_177 : StackLang.HolProg 64 :=
.seq NamedBody161_175 NamedBody161_176

def NamedBody161_178 : StackLang.HolProg 64 :=
.call (some (NamedBody161_172, 1, 161, 4)) (Sum.inl 159) (some (NamedBody161_177, 161, 5))

def NamedBody161_179 : StackLang.HolProg 64 :=
.seq NamedBody161_161 NamedBody161_178

def NamedBody161_180 : StackLang.HolProg 64 :=
.seq NamedBody161_160 NamedBody161_179

def NamedBody161_181 : StackLang.HolProg 64 :=
.seq NamedBody161_159 NamedBody161_180

def NamedBody161_182 : StackLang.HolProg 64 :=
.seq NamedBody161_130 NamedBody161_181

def NamedBody161_183 : StackLang.HolProg 64 :=
.seq NamedBody161_127 NamedBody161_182

def NamedBody161_184 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody161_185 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody161_186 : StackLang.HolProg 64 :=
.seq NamedBody161_184 NamedBody161_185

def NamedBody161_187 : StackLang.HolProg 64 :=
.seq NamedBody161_183 NamedBody161_186

def NamedBody161_188 : StackLang.HolProg 64 :=
.seq NamedBody161_126 NamedBody161_187

def NamedBody161_189 : StackLang.HolProg 64 :=
.seq NamedBody161_123 NamedBody161_188

def NamedBody161_190 : StackLang.HolProg 64 :=
.seq NamedBody161_122 NamedBody161_189

def NamedBody161_191 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody161_192 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 48#64))

def NamedBody161_193 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 11
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 24#64))

def NamedBody161_194 : StackLang.HolProg 64 :=
.seq NamedBody161_192 NamedBody161_193

def NamedBody161_195 : StackLang.HolProg 64 :=
.seq NamedBody161_191 NamedBody161_194

def NamedBody161_196 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 10 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 12) NamedBody161_190 NamedBody161_195

def NamedBody161_197 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody161_198 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody161_199 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 1#64)

def NamedBody161_200 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody161_201 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody161_202 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 1 11
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 1#64)))

def NamedBody161_203 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load8 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 1 0#64))

def NamedBody161_204 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody161_205 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 128#64)

def NamedBody161_206 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody161_207 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 4#64)

def NamedBody161_208 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 12
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 40#64))

def NamedBody161_209 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 11
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 24#64))

def NamedBody161_210 : StackLang.HolProg 64 :=
.seq NamedBody161_208 NamedBody161_209

def NamedBody161_211 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody161_212 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 150#64)

def NamedBody161_213 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody161_214 : StackLang.HolProg 64 :=
.seq NamedBody161_212 NamedBody161_213

def NamedBody161_215 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody161_216 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 2#64)

def NamedBody161_217 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 10

def NamedBody161_218 : StackLang.HolProg 64 :=
.seq NamedBody161_216 NamedBody161_217

def NamedBody161_219 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody161_220 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) NamedBody161_218 NamedBody161_219

def NamedBody161_221 : StackLang.HolProg 64 :=
.seq NamedBody161_215 NamedBody161_220

def NamedBody161_222 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def NamedBody161_223 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody161_224 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 161 7

def NamedBody161_225 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody161_226 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody161_227 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody161_228 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody161_229 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def NamedBody161_230 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def NamedBody161_231 : StackLang.HolProg 64 :=
.seq NamedBody161_229 NamedBody161_230

def NamedBody161_232 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def NamedBody161_233 : StackLang.HolProg 64 :=
.seq NamedBody161_231 NamedBody161_232

def NamedBody161_234 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody161_235 : StackLang.HolProg 64 :=
.seq NamedBody161_233 NamedBody161_234

def NamedBody161_236 : StackLang.HolProg 64 :=
.seq NamedBody161_228 NamedBody161_235

def NamedBody161_237 : StackLang.HolProg 64 :=
.seq NamedBody161_227 NamedBody161_236

def NamedBody161_238 : StackLang.HolProg 64 :=
.seq NamedBody161_226 NamedBody161_237

def NamedBody161_239 : StackLang.HolProg 64 :=
.seq NamedBody161_225 NamedBody161_238

def NamedBody161_240 : StackLang.HolProg 64 :=
.seq NamedBody161_224 NamedBody161_239

def NamedBody161_241 : StackLang.HolProg 64 :=
.seq NamedBody161_223 NamedBody161_240

def NamedBody161_242 : StackLang.HolProg 64 :=
.seq NamedBody161_222 NamedBody161_241

def NamedBody161_243 : StackLang.HolProg 64 :=
.seq NamedBody161_221 NamedBody161_242

def NamedBody161_244 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody161_245 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody161_246 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody161_247 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody161_248 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody161_249 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody161_250 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 48#64))

def NamedBody161_251 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 12
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 40#64))

def NamedBody161_252 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 11
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 24#64))

def NamedBody161_253 : StackLang.HolProg 64 :=
.seq NamedBody161_251 NamedBody161_252

def NamedBody161_254 : StackLang.HolProg 64 :=
.seq NamedBody161_250 NamedBody161_253

def NamedBody161_255 : StackLang.HolProg 64 :=
.seq NamedBody161_249 NamedBody161_254

def NamedBody161_256 : StackLang.HolProg 64 :=
.seq NamedBody161_248 NamedBody161_255

def NamedBody161_257 : StackLang.HolProg 64 :=
.seq NamedBody161_247 NamedBody161_256

def NamedBody161_258 : StackLang.HolProg 64 :=
.seq NamedBody161_246 NamedBody161_257

def NamedBody161_259 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 48#64))

def NamedBody161_260 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 12
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 40#64))

def NamedBody161_261 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 11
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 24#64))

def NamedBody161_262 : StackLang.HolProg 64 :=
.seq NamedBody161_260 NamedBody161_261

def NamedBody161_263 : StackLang.HolProg 64 :=
.seq NamedBody161_259 NamedBody161_262

def NamedBody161_264 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def NamedBody161_265 : StackLang.HolProg 64 :=
.seq NamedBody161_263 NamedBody161_264

def NamedBody161_266 : StackLang.HolProg 64 :=
.call (some (NamedBody161_258, 1, 161, 6)) (Sum.inl 159) (some (NamedBody161_265, 161, 7))

def NamedBody161_267 : StackLang.HolProg 64 :=
.seq NamedBody161_245 NamedBody161_266

def NamedBody161_268 : StackLang.HolProg 64 :=
.seq NamedBody161_244 NamedBody161_267

def NamedBody161_269 : StackLang.HolProg 64 :=
.seq NamedBody161_243 NamedBody161_268

def NamedBody161_270 : StackLang.HolProg 64 :=
.seq NamedBody161_214 NamedBody161_269

def NamedBody161_271 : StackLang.HolProg 64 :=
.seq NamedBody161_211 NamedBody161_270

def NamedBody161_272 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody161_273 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody161_274 : StackLang.HolProg 64 :=
.seq NamedBody161_272 NamedBody161_273

def NamedBody161_275 : StackLang.HolProg 64 :=
.seq NamedBody161_271 NamedBody161_274

def NamedBody161_276 : StackLang.HolProg 64 :=
.seq NamedBody161_210 NamedBody161_275

def NamedBody161_277 : StackLang.HolProg 64 :=
.seq NamedBody161_207 NamedBody161_276

def NamedBody161_278 : StackLang.HolProg 64 :=
.seq NamedBody161_206 NamedBody161_277

def NamedBody161_279 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody161_280 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 48#64))

def NamedBody161_281 : StackLang.HolProg 64 :=
.seq NamedBody161_279 NamedBody161_280

def NamedBody161_282 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 1 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 10) NamedBody161_278 NamedBody161_281

def NamedBody161_283 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody161_284 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody161_285 : StackLang.HolProg 64 :=
.seq NamedBody161_283 NamedBody161_284

def NamedBody161_286 : StackLang.HolProg 64 :=
.seq NamedBody161_282 NamedBody161_285

def NamedBody161_287 : StackLang.HolProg 64 :=
.seq NamedBody161_205 NamedBody161_286

def NamedBody161_288 : StackLang.HolProg 64 :=
.seq NamedBody161_204 NamedBody161_287

def NamedBody161_289 : StackLang.HolProg 64 :=
.seq NamedBody161_203 NamedBody161_288

def NamedBody161_290 : StackLang.HolProg 64 :=
.seq NamedBody161_202 NamedBody161_289

def NamedBody161_291 : StackLang.HolProg 64 :=
.seq NamedBody161_201 NamedBody161_290

def NamedBody161_292 : StackLang.HolProg 64 :=
.seq NamedBody161_200 NamedBody161_291

def NamedBody161_293 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody161_294 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 48#64))

def NamedBody161_295 : StackLang.HolProg 64 :=
.seq NamedBody161_293 NamedBody161_294

def NamedBody161_296 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.equal) 12 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1) NamedBody161_292 NamedBody161_295

def NamedBody161_297 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody161_298 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 0#64)

def NamedBody161_299 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody161_300 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 11 11
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 1#64)))

def NamedBody161_301 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody161_302 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 13 12
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 1#64)))

def NamedBody161_303 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody161_304 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 64#64)))

def NamedBody161_305 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 1

def NamedBody161_306 : StackLang.HolProg 64 :=
.seq NamedBody161_304 NamedBody161_305

def NamedBody161_307 : StackLang.HolProg 64 :=
.seq NamedBody161_303 NamedBody161_306

def NamedBody161_308 : StackLang.HolProg 64 :=
.seq NamedBody161_302 NamedBody161_307

def NamedBody161_309 : StackLang.HolProg 64 :=
.seq NamedBody161_301 NamedBody161_308

def NamedBody161_310 : StackLang.HolProg 64 :=
.seq NamedBody161_300 NamedBody161_309

def NamedBody161_311 : StackLang.HolProg 64 :=
.seq NamedBody161_299 NamedBody161_310

def NamedBody161_312 : StackLang.HolProg 64 :=
.seq NamedBody161_298 NamedBody161_311

def NamedBody161_313 : StackLang.HolProg 64 :=
.seq NamedBody161_297 NamedBody161_312

def NamedBody161_314 : StackLang.HolProg 64 :=
.seq NamedBody161_296 NamedBody161_313

def NamedBody161_315 : StackLang.HolProg 64 :=
.seq NamedBody161_199 NamedBody161_314

def NamedBody161_316 : StackLang.HolProg 64 :=
.seq NamedBody161_198 NamedBody161_315

def NamedBody161_317 : StackLang.HolProg 64 :=
.seq NamedBody161_197 NamedBody161_316

def NamedBody161_318 : StackLang.HolProg 64 :=
.seq NamedBody161_196 NamedBody161_317

def NamedBody161_319 : StackLang.HolProg 64 :=
.seq NamedBody161_121 NamedBody161_318

def NamedBody161_320 : StackLang.HolProg 64 :=
.seq NamedBody161_120 NamedBody161_319

def NamedBody161_321 : StackLang.HolProg 64 :=
.seq NamedBody161_119 NamedBody161_320

def NamedBody161_322 : StackLang.HolProg 64 :=
.seq NamedBody161_118 NamedBody161_321

def NamedBody161_323 : StackLang.HolProg 64 :=
.seq NamedBody161_117 NamedBody161_322

def NamedBody161_324 : StackLang.HolProg 64 :=
.seq NamedBody161_116 NamedBody161_323

def NamedBody161_325 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 56#64))

def NamedBody161_326 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 6 7
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 7)))

def NamedBody161_327 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 5 8
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 8)))

def NamedBody161_328 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 24#64))

def NamedBody161_329 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 32#64))

def NamedBody161_330 : StackLang.HolProg 64 :=
.seq NamedBody161_328 NamedBody161_329

def NamedBody161_331 : StackLang.HolProg 64 :=
.seq NamedBody161_327 NamedBody161_330

def NamedBody161_332 : StackLang.HolProg 64 :=
.seq NamedBody161_326 NamedBody161_331

def NamedBody161_333 : StackLang.HolProg 64 :=
.seq NamedBody161_325 NamedBody161_332

def NamedBody161_334 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.notLower) 10 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 7) NamedBody161_324 NamedBody161_333

def NamedBody161_335 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody161_336 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody161_337 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 191#64)

def NamedBody161_338 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody161_339 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody161_340 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody161_341 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 11 6
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 18446744073709551433#64)))

def NamedBody161_342 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody161_343 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 1 5
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 18446744073709551615#64)))

def NamedBody161_344 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody161_345 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody161_346 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 3#64)

def NamedBody161_347 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 56#64))

def NamedBody161_348 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 48#64))

def NamedBody161_349 : StackLang.HolProg 64 :=
.seq NamedBody161_347 NamedBody161_348

def NamedBody161_350 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 11
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 56#64))

def NamedBody161_351 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 5
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 24#64))

def NamedBody161_352 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 32#64))

def NamedBody161_353 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 40#64))

def NamedBody161_354 : StackLang.HolProg 64 :=
.seq NamedBody161_352 NamedBody161_353

def NamedBody161_355 : StackLang.HolProg 64 :=
.seq NamedBody161_351 NamedBody161_354

def NamedBody161_356 : StackLang.HolProg 64 :=
.seq NamedBody161_350 NamedBody161_355

def NamedBody161_357 : StackLang.HolProg 64 :=
.seq NamedBody161_349 NamedBody161_356

def NamedBody161_358 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody161_359 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 151#64)

def NamedBody161_360 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody161_361 : StackLang.HolProg 64 :=
.seq NamedBody161_359 NamedBody161_360

def NamedBody161_362 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody161_363 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 2#64)

def NamedBody161_364 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 10

def NamedBody161_365 : StackLang.HolProg 64 :=
.seq NamedBody161_363 NamedBody161_364

def NamedBody161_366 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody161_367 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) NamedBody161_365 NamedBody161_366

def NamedBody161_368 : StackLang.HolProg 64 :=
.seq NamedBody161_362 NamedBody161_367

def NamedBody161_369 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def NamedBody161_370 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody161_371 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 161 9

def NamedBody161_372 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody161_373 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody161_374 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody161_375 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody161_376 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def NamedBody161_377 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def NamedBody161_378 : StackLang.HolProg 64 :=
.seq NamedBody161_376 NamedBody161_377

def NamedBody161_379 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def NamedBody161_380 : StackLang.HolProg 64 :=
.seq NamedBody161_378 NamedBody161_379

def NamedBody161_381 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody161_382 : StackLang.HolProg 64 :=
.seq NamedBody161_380 NamedBody161_381

def NamedBody161_383 : StackLang.HolProg 64 :=
.seq NamedBody161_375 NamedBody161_382

def NamedBody161_384 : StackLang.HolProg 64 :=
.seq NamedBody161_374 NamedBody161_383

def NamedBody161_385 : StackLang.HolProg 64 :=
.seq NamedBody161_373 NamedBody161_384

def NamedBody161_386 : StackLang.HolProg 64 :=
.seq NamedBody161_372 NamedBody161_385

def NamedBody161_387 : StackLang.HolProg 64 :=
.seq NamedBody161_371 NamedBody161_386

def NamedBody161_388 : StackLang.HolProg 64 :=
.seq NamedBody161_370 NamedBody161_387

def NamedBody161_389 : StackLang.HolProg 64 :=
.seq NamedBody161_369 NamedBody161_388

def NamedBody161_390 : StackLang.HolProg 64 :=
.seq NamedBody161_368 NamedBody161_389

def NamedBody161_391 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody161_392 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody161_393 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody161_394 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody161_395 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody161_396 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody161_397 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 11
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 56#64))

def NamedBody161_398 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 40#64))

def NamedBody161_399 : StackLang.HolProg 64 :=
.seq NamedBody161_397 NamedBody161_398

def NamedBody161_400 : StackLang.HolProg 64 :=
.seq NamedBody161_396 NamedBody161_399

def NamedBody161_401 : StackLang.HolProg 64 :=
.seq NamedBody161_395 NamedBody161_400

def NamedBody161_402 : StackLang.HolProg 64 :=
.seq NamedBody161_394 NamedBody161_401

def NamedBody161_403 : StackLang.HolProg 64 :=
.seq NamedBody161_393 NamedBody161_402

def NamedBody161_404 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 11
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 56#64))

def NamedBody161_405 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 40#64))

def NamedBody161_406 : StackLang.HolProg 64 :=
.seq NamedBody161_404 NamedBody161_405

def NamedBody161_407 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def NamedBody161_408 : StackLang.HolProg 64 :=
.seq NamedBody161_406 NamedBody161_407

def NamedBody161_409 : StackLang.HolProg 64 :=
.call (some (NamedBody161_403, 1, 161, 8)) (Sum.inl 159) (some (NamedBody161_408, 161, 9))

def NamedBody161_410 : StackLang.HolProg 64 :=
.seq NamedBody161_392 NamedBody161_409

def NamedBody161_411 : StackLang.HolProg 64 :=
.seq NamedBody161_391 NamedBody161_410

def NamedBody161_412 : StackLang.HolProg 64 :=
.seq NamedBody161_390 NamedBody161_411

def NamedBody161_413 : StackLang.HolProg 64 :=
.seq NamedBody161_361 NamedBody161_412

def NamedBody161_414 : StackLang.HolProg 64 :=
.seq NamedBody161_358 NamedBody161_413

def NamedBody161_415 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody161_416 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody161_417 : StackLang.HolProg 64 :=
.seq NamedBody161_415 NamedBody161_416

def NamedBody161_418 : StackLang.HolProg 64 :=
.seq NamedBody161_414 NamedBody161_417

def NamedBody161_419 : StackLang.HolProg 64 :=
.seq NamedBody161_357 NamedBody161_418

def NamedBody161_420 : StackLang.HolProg 64 :=
.seq NamedBody161_346 NamedBody161_419

def NamedBody161_421 : StackLang.HolProg 64 :=
.seq NamedBody161_345 NamedBody161_420

def NamedBody161_422 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody161_423 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 56#64))

def NamedBody161_424 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 48#64))

def NamedBody161_425 : StackLang.HolProg 64 :=
.seq NamedBody161_423 NamedBody161_424

def NamedBody161_426 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 5
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 24#64))

def NamedBody161_427 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 32#64))

def NamedBody161_428 : StackLang.HolProg 64 :=
.seq NamedBody161_426 NamedBody161_427

def NamedBody161_429 : StackLang.HolProg 64 :=
.seq NamedBody161_425 NamedBody161_428

def NamedBody161_430 : StackLang.HolProg 64 :=
.seq NamedBody161_422 NamedBody161_429

def NamedBody161_431 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 1 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 11) NamedBody161_421 NamedBody161_430

def NamedBody161_432 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody161_433 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody161_434 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 10 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 1#64)))

def NamedBody161_435 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 11
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 40#64))

def NamedBody161_436 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody161_437 : StackLang.HolProg 64 :=
.seq NamedBody161_435 NamedBody161_436

def NamedBody161_438 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody161_439 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 152#64)

def NamedBody161_440 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody161_441 : StackLang.HolProg 64 :=
.seq NamedBody161_439 NamedBody161_440

def NamedBody161_442 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody161_443 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 2#64)

def NamedBody161_444 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 10

def NamedBody161_445 : StackLang.HolProg 64 :=
.seq NamedBody161_443 NamedBody161_444

def NamedBody161_446 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody161_447 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) NamedBody161_445 NamedBody161_446

def NamedBody161_448 : StackLang.HolProg 64 :=
.seq NamedBody161_442 NamedBody161_447

def NamedBody161_449 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def NamedBody161_450 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody161_451 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 161 11

def NamedBody161_452 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody161_453 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody161_454 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody161_455 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody161_456 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def NamedBody161_457 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def NamedBody161_458 : StackLang.HolProg 64 :=
.seq NamedBody161_456 NamedBody161_457

def NamedBody161_459 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def NamedBody161_460 : StackLang.HolProg 64 :=
.seq NamedBody161_458 NamedBody161_459

def NamedBody161_461 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody161_462 : StackLang.HolProg 64 :=
.seq NamedBody161_460 NamedBody161_461

def NamedBody161_463 : StackLang.HolProg 64 :=
.seq NamedBody161_455 NamedBody161_462

def NamedBody161_464 : StackLang.HolProg 64 :=
.seq NamedBody161_454 NamedBody161_463

def NamedBody161_465 : StackLang.HolProg 64 :=
.seq NamedBody161_453 NamedBody161_464

def NamedBody161_466 : StackLang.HolProg 64 :=
.seq NamedBody161_452 NamedBody161_465

def NamedBody161_467 : StackLang.HolProg 64 :=
.seq NamedBody161_451 NamedBody161_466

def NamedBody161_468 : StackLang.HolProg 64 :=
.seq NamedBody161_450 NamedBody161_467

def NamedBody161_469 : StackLang.HolProg 64 :=
.seq NamedBody161_449 NamedBody161_468

def NamedBody161_470 : StackLang.HolProg 64 :=
.seq NamedBody161_448 NamedBody161_469

def NamedBody161_471 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody161_472 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody161_473 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody161_474 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody161_475 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody161_476 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody161_477 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 12 10
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 10)))

def NamedBody161_478 : StackLang.HolProg 64 :=
.seq NamedBody161_476 NamedBody161_477

def NamedBody161_479 : StackLang.HolProg 64 :=
.seq NamedBody161_475 NamedBody161_478

def NamedBody161_480 : StackLang.HolProg 64 :=
.seq NamedBody161_474 NamedBody161_479

def NamedBody161_481 : StackLang.HolProg 64 :=
.seq NamedBody161_473 NamedBody161_480

def NamedBody161_482 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody161_483 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def NamedBody161_484 : StackLang.HolProg 64 :=
.seq NamedBody161_482 NamedBody161_483

def NamedBody161_485 : StackLang.HolProg 64 :=
.call (some (NamedBody161_481, 1, 161, 10)) (Sum.inl 160) (some (NamedBody161_484, 161, 11))

def NamedBody161_486 : StackLang.HolProg 64 :=
.seq NamedBody161_472 NamedBody161_485

def NamedBody161_487 : StackLang.HolProg 64 :=
.seq NamedBody161_471 NamedBody161_486

def NamedBody161_488 : StackLang.HolProg 64 :=
.seq NamedBody161_470 NamedBody161_487

def NamedBody161_489 : StackLang.HolProg 64 :=
.seq NamedBody161_441 NamedBody161_488

def NamedBody161_490 : StackLang.HolProg 64 :=
.seq NamedBody161_438 NamedBody161_489

def NamedBody161_491 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody161_492 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 55#64)

def NamedBody161_493 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody161_494 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody161_495 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 5#64)

def NamedBody161_496 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody161_497 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody161_498 : StackLang.HolProg 64 :=
.seq NamedBody161_496 NamedBody161_497

def NamedBody161_499 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 12
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody161_500 : StackLang.HolProg 64 :=
.seq NamedBody161_498 NamedBody161_499

def NamedBody161_501 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody161_502 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 153#64)

def NamedBody161_503 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody161_504 : StackLang.HolProg 64 :=
.seq NamedBody161_502 NamedBody161_503

def NamedBody161_505 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody161_506 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 2#64)

def NamedBody161_507 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 10

def NamedBody161_508 : StackLang.HolProg 64 :=
.seq NamedBody161_506 NamedBody161_507

def NamedBody161_509 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody161_510 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) NamedBody161_508 NamedBody161_509

def NamedBody161_511 : StackLang.HolProg 64 :=
.seq NamedBody161_505 NamedBody161_510

def NamedBody161_512 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def NamedBody161_513 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody161_514 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 161 13

def NamedBody161_515 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody161_516 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody161_517 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody161_518 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody161_519 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def NamedBody161_520 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def NamedBody161_521 : StackLang.HolProg 64 :=
.seq NamedBody161_519 NamedBody161_520

def NamedBody161_522 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def NamedBody161_523 : StackLang.HolProg 64 :=
.seq NamedBody161_521 NamedBody161_522

def NamedBody161_524 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody161_525 : StackLang.HolProg 64 :=
.seq NamedBody161_523 NamedBody161_524

def NamedBody161_526 : StackLang.HolProg 64 :=
.seq NamedBody161_518 NamedBody161_525

def NamedBody161_527 : StackLang.HolProg 64 :=
.seq NamedBody161_517 NamedBody161_526

def NamedBody161_528 : StackLang.HolProg 64 :=
.seq NamedBody161_516 NamedBody161_527

def NamedBody161_529 : StackLang.HolProg 64 :=
.seq NamedBody161_515 NamedBody161_528

def NamedBody161_530 : StackLang.HolProg 64 :=
.seq NamedBody161_514 NamedBody161_529

def NamedBody161_531 : StackLang.HolProg 64 :=
.seq NamedBody161_513 NamedBody161_530

def NamedBody161_532 : StackLang.HolProg 64 :=
.seq NamedBody161_512 NamedBody161_531

def NamedBody161_533 : StackLang.HolProg 64 :=
.seq NamedBody161_511 NamedBody161_532

def NamedBody161_534 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody161_535 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody161_536 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody161_537 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody161_538 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody161_539 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody161_540 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 13
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 40#64))

def NamedBody161_541 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 24#64))

def NamedBody161_542 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 12
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody161_543 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody161_544 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody161_545 : StackLang.HolProg 64 :=
.seq NamedBody161_543 NamedBody161_544

def NamedBody161_546 : StackLang.HolProg 64 :=
.seq NamedBody161_542 NamedBody161_545

def NamedBody161_547 : StackLang.HolProg 64 :=
.seq NamedBody161_541 NamedBody161_546

def NamedBody161_548 : StackLang.HolProg 64 :=
.seq NamedBody161_540 NamedBody161_547

def NamedBody161_549 : StackLang.HolProg 64 :=
.seq NamedBody161_539 NamedBody161_548

def NamedBody161_550 : StackLang.HolProg 64 :=
.seq NamedBody161_538 NamedBody161_549

def NamedBody161_551 : StackLang.HolProg 64 :=
.seq NamedBody161_537 NamedBody161_550

def NamedBody161_552 : StackLang.HolProg 64 :=
.seq NamedBody161_536 NamedBody161_551

def NamedBody161_553 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 13
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 40#64))

def NamedBody161_554 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 24#64))

def NamedBody161_555 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 12
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody161_556 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody161_557 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody161_558 : StackLang.HolProg 64 :=
.seq NamedBody161_556 NamedBody161_557

def NamedBody161_559 : StackLang.HolProg 64 :=
.seq NamedBody161_555 NamedBody161_558

def NamedBody161_560 : StackLang.HolProg 64 :=
.seq NamedBody161_554 NamedBody161_559

def NamedBody161_561 : StackLang.HolProg 64 :=
.seq NamedBody161_553 NamedBody161_560

def NamedBody161_562 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def NamedBody161_563 : StackLang.HolProg 64 :=
.seq NamedBody161_561 NamedBody161_562

def NamedBody161_564 : StackLang.HolProg 64 :=
.call (some (NamedBody161_552, 1, 161, 12)) (Sum.inl 159) (some (NamedBody161_563, 161, 13))

def NamedBody161_565 : StackLang.HolProg 64 :=
.seq NamedBody161_535 NamedBody161_564

def NamedBody161_566 : StackLang.HolProg 64 :=
.seq NamedBody161_534 NamedBody161_565

def NamedBody161_567 : StackLang.HolProg 64 :=
.seq NamedBody161_533 NamedBody161_566

def NamedBody161_568 : StackLang.HolProg 64 :=
.seq NamedBody161_504 NamedBody161_567

def NamedBody161_569 : StackLang.HolProg 64 :=
.seq NamedBody161_501 NamedBody161_568

def NamedBody161_570 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody161_571 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody161_572 : StackLang.HolProg 64 :=
.seq NamedBody161_570 NamedBody161_571

def NamedBody161_573 : StackLang.HolProg 64 :=
.seq NamedBody161_569 NamedBody161_572

def NamedBody161_574 : StackLang.HolProg 64 :=
.seq NamedBody161_500 NamedBody161_573

def NamedBody161_575 : StackLang.HolProg 64 :=
.seq NamedBody161_495 NamedBody161_574

def NamedBody161_576 : StackLang.HolProg 64 :=
.seq NamedBody161_494 NamedBody161_575

def NamedBody161_577 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody161_578 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 13
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 40#64))

def NamedBody161_579 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 24#64))

def NamedBody161_580 : StackLang.HolProg 64 :=
.seq NamedBody161_578 NamedBody161_579

def NamedBody161_581 : StackLang.HolProg 64 :=
.seq NamedBody161_577 NamedBody161_580

def NamedBody161_582 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.notLower) 1 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 12) NamedBody161_576 NamedBody161_581

def NamedBody161_583 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody161_584 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody161_585 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 1 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 18446744073709551615#64)))

def NamedBody161_586 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody161_587 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 1 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 13)))

def NamedBody161_588 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody161_589 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody161_590 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 3#64)

def NamedBody161_591 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 13
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 40#64))

def NamedBody161_592 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 12
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 24#64))

def NamedBody161_593 : StackLang.HolProg 64 :=
.seq NamedBody161_591 NamedBody161_592

def NamedBody161_594 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody161_595 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 154#64)

def NamedBody161_596 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody161_597 : StackLang.HolProg 64 :=
.seq NamedBody161_595 NamedBody161_596

def NamedBody161_598 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody161_599 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 2#64)

def NamedBody161_600 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 10

def NamedBody161_601 : StackLang.HolProg 64 :=
.seq NamedBody161_599 NamedBody161_600

def NamedBody161_602 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody161_603 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) NamedBody161_601 NamedBody161_602

def NamedBody161_604 : StackLang.HolProg 64 :=
.seq NamedBody161_598 NamedBody161_603

def NamedBody161_605 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def NamedBody161_606 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody161_607 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 161 15

def NamedBody161_608 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody161_609 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody161_610 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody161_611 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody161_612 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def NamedBody161_613 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def NamedBody161_614 : StackLang.HolProg 64 :=
.seq NamedBody161_612 NamedBody161_613

def NamedBody161_615 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def NamedBody161_616 : StackLang.HolProg 64 :=
.seq NamedBody161_614 NamedBody161_615

def NamedBody161_617 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody161_618 : StackLang.HolProg 64 :=
.seq NamedBody161_616 NamedBody161_617

def NamedBody161_619 : StackLang.HolProg 64 :=
.seq NamedBody161_611 NamedBody161_618

def NamedBody161_620 : StackLang.HolProg 64 :=
.seq NamedBody161_610 NamedBody161_619

def NamedBody161_621 : StackLang.HolProg 64 :=
.seq NamedBody161_609 NamedBody161_620

def NamedBody161_622 : StackLang.HolProg 64 :=
.seq NamedBody161_608 NamedBody161_621

def NamedBody161_623 : StackLang.HolProg 64 :=
.seq NamedBody161_607 NamedBody161_622

def NamedBody161_624 : StackLang.HolProg 64 :=
.seq NamedBody161_606 NamedBody161_623

def NamedBody161_625 : StackLang.HolProg 64 :=
.seq NamedBody161_605 NamedBody161_624

def NamedBody161_626 : StackLang.HolProg 64 :=
.seq NamedBody161_604 NamedBody161_625

def NamedBody161_627 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody161_628 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody161_629 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody161_630 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody161_631 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody161_632 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody161_633 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 48#64))

def NamedBody161_634 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 13
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 40#64))

def NamedBody161_635 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 12
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 24#64))

def NamedBody161_636 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 11
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody161_637 : StackLang.HolProg 64 :=
.seq NamedBody161_635 NamedBody161_636

def NamedBody161_638 : StackLang.HolProg 64 :=
.seq NamedBody161_634 NamedBody161_637

def NamedBody161_639 : StackLang.HolProg 64 :=
.seq NamedBody161_633 NamedBody161_638

def NamedBody161_640 : StackLang.HolProg 64 :=
.seq NamedBody161_632 NamedBody161_639

def NamedBody161_641 : StackLang.HolProg 64 :=
.seq NamedBody161_631 NamedBody161_640

def NamedBody161_642 : StackLang.HolProg 64 :=
.seq NamedBody161_630 NamedBody161_641

def NamedBody161_643 : StackLang.HolProg 64 :=
.seq NamedBody161_629 NamedBody161_642

def NamedBody161_644 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 48#64))

def NamedBody161_645 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 13
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 40#64))

def NamedBody161_646 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 12
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 24#64))

def NamedBody161_647 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 11
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody161_648 : StackLang.HolProg 64 :=
.seq NamedBody161_646 NamedBody161_647

def NamedBody161_649 : StackLang.HolProg 64 :=
.seq NamedBody161_645 NamedBody161_648

def NamedBody161_650 : StackLang.HolProg 64 :=
.seq NamedBody161_644 NamedBody161_649

def NamedBody161_651 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def NamedBody161_652 : StackLang.HolProg 64 :=
.seq NamedBody161_650 NamedBody161_651

def NamedBody161_653 : StackLang.HolProg 64 :=
.call (some (NamedBody161_643, 1, 161, 14)) (Sum.inl 159) (some (NamedBody161_652, 161, 15))

def NamedBody161_654 : StackLang.HolProg 64 :=
.seq NamedBody161_628 NamedBody161_653

def NamedBody161_655 : StackLang.HolProg 64 :=
.seq NamedBody161_627 NamedBody161_654

def NamedBody161_656 : StackLang.HolProg 64 :=
.seq NamedBody161_626 NamedBody161_655

def NamedBody161_657 : StackLang.HolProg 64 :=
.seq NamedBody161_597 NamedBody161_656

def NamedBody161_658 : StackLang.HolProg 64 :=
.seq NamedBody161_594 NamedBody161_657

def NamedBody161_659 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody161_660 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody161_661 : StackLang.HolProg 64 :=
.seq NamedBody161_659 NamedBody161_660

def NamedBody161_662 : StackLang.HolProg 64 :=
.seq NamedBody161_658 NamedBody161_661

def NamedBody161_663 : StackLang.HolProg 64 :=
.seq NamedBody161_593 NamedBody161_662

def NamedBody161_664 : StackLang.HolProg 64 :=
.seq NamedBody161_590 NamedBody161_663

def NamedBody161_665 : StackLang.HolProg 64 :=
.seq NamedBody161_589 NamedBody161_664

def NamedBody161_666 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody161_667 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 48#64))

def NamedBody161_668 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 11
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody161_669 : StackLang.HolProg 64 :=
.seq NamedBody161_667 NamedBody161_668

def NamedBody161_670 : StackLang.HolProg 64 :=
.seq NamedBody161_666 NamedBody161_669

def NamedBody161_671 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 1 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 12) NamedBody161_665 NamedBody161_670

def NamedBody161_672 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody161_673 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 0#64)

def NamedBody161_674 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody161_675 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 11 13
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 11)))

def NamedBody161_676 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 11 11
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 1#64)))

def NamedBody161_677 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody161_678 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 13 12
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 13)))

def NamedBody161_679 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 13 13
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 1#64)))

def NamedBody161_680 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody161_681 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 64#64)))

def NamedBody161_682 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 1

def NamedBody161_683 : StackLang.HolProg 64 :=
.seq NamedBody161_681 NamedBody161_682

def NamedBody161_684 : StackLang.HolProg 64 :=
.seq NamedBody161_680 NamedBody161_683

def NamedBody161_685 : StackLang.HolProg 64 :=
.seq NamedBody161_679 NamedBody161_684

def NamedBody161_686 : StackLang.HolProg 64 :=
.seq NamedBody161_678 NamedBody161_685

def NamedBody161_687 : StackLang.HolProg 64 :=
.seq NamedBody161_677 NamedBody161_686

def NamedBody161_688 : StackLang.HolProg 64 :=
.seq NamedBody161_676 NamedBody161_687

def NamedBody161_689 : StackLang.HolProg 64 :=
.seq NamedBody161_675 NamedBody161_688

def NamedBody161_690 : StackLang.HolProg 64 :=
.seq NamedBody161_674 NamedBody161_689

def NamedBody161_691 : StackLang.HolProg 64 :=
.seq NamedBody161_673 NamedBody161_690

def NamedBody161_692 : StackLang.HolProg 64 :=
.seq NamedBody161_672 NamedBody161_691

def NamedBody161_693 : StackLang.HolProg 64 :=
.seq NamedBody161_671 NamedBody161_692

def NamedBody161_694 : StackLang.HolProg 64 :=
.seq NamedBody161_588 NamedBody161_693

def NamedBody161_695 : StackLang.HolProg 64 :=
.seq NamedBody161_587 NamedBody161_694

def NamedBody161_696 : StackLang.HolProg 64 :=
.seq NamedBody161_586 NamedBody161_695

def NamedBody161_697 : StackLang.HolProg 64 :=
.seq NamedBody161_585 NamedBody161_696

def NamedBody161_698 : StackLang.HolProg 64 :=
.seq NamedBody161_584 NamedBody161_697

def NamedBody161_699 : StackLang.HolProg 64 :=
.seq NamedBody161_583 NamedBody161_698

def NamedBody161_700 : StackLang.HolProg 64 :=
.seq NamedBody161_582 NamedBody161_699

def NamedBody161_701 : StackLang.HolProg 64 :=
.seq NamedBody161_493 NamedBody161_700

def NamedBody161_702 : StackLang.HolProg 64 :=
.seq NamedBody161_492 NamedBody161_701

def NamedBody161_703 : StackLang.HolProg 64 :=
.seq NamedBody161_491 NamedBody161_702

def NamedBody161_704 : StackLang.HolProg 64 :=
.seq NamedBody161_490 NamedBody161_703

def NamedBody161_705 : StackLang.HolProg 64 :=
.seq NamedBody161_437 NamedBody161_704

def NamedBody161_706 : StackLang.HolProg 64 :=
.seq NamedBody161_434 NamedBody161_705

def NamedBody161_707 : StackLang.HolProg 64 :=
.seq NamedBody161_433 NamedBody161_706

def NamedBody161_708 : StackLang.HolProg 64 :=
.seq NamedBody161_432 NamedBody161_707

def NamedBody161_709 : StackLang.HolProg 64 :=
.seq NamedBody161_431 NamedBody161_708

def NamedBody161_710 : StackLang.HolProg 64 :=
.seq NamedBody161_344 NamedBody161_709

def NamedBody161_711 : StackLang.HolProg 64 :=
.seq NamedBody161_343 NamedBody161_710

def NamedBody161_712 : StackLang.HolProg 64 :=
.seq NamedBody161_342 NamedBody161_711

def NamedBody161_713 : StackLang.HolProg 64 :=
.seq NamedBody161_341 NamedBody161_712

def NamedBody161_714 : StackLang.HolProg 64 :=
.seq NamedBody161_340 NamedBody161_713

def NamedBody161_715 : StackLang.HolProg 64 :=
.seq NamedBody161_339 NamedBody161_714

def NamedBody161_716 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody161_717 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.notLower) 1 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 6) NamedBody161_715 NamedBody161_716

def NamedBody161_718 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody161_719 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody161_720 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 247#64)

def NamedBody161_721 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody161_722 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody161_723 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody161_724 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 11 6
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 18446744073709551424#64)))

def NamedBody161_725 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody161_726 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 1 5
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 18446744073709551615#64)))

def NamedBody161_727 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody161_728 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody161_729 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 3#64)

def NamedBody161_730 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 56#64))

def NamedBody161_731 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 48#64))

def NamedBody161_732 : StackLang.HolProg 64 :=
.seq NamedBody161_730 NamedBody161_731

def NamedBody161_733 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 11
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 56#64))

def NamedBody161_734 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 32#64))

def NamedBody161_735 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 40#64))

def NamedBody161_736 : StackLang.HolProg 64 :=
.seq NamedBody161_734 NamedBody161_735

def NamedBody161_737 : StackLang.HolProg 64 :=
.seq NamedBody161_733 NamedBody161_736

def NamedBody161_738 : StackLang.HolProg 64 :=
.seq NamedBody161_732 NamedBody161_737

def NamedBody161_739 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody161_740 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 155#64)

def NamedBody161_741 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody161_742 : StackLang.HolProg 64 :=
.seq NamedBody161_740 NamedBody161_741

def NamedBody161_743 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody161_744 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 2#64)

def NamedBody161_745 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 10

def NamedBody161_746 : StackLang.HolProg 64 :=
.seq NamedBody161_744 NamedBody161_745

def NamedBody161_747 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody161_748 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) NamedBody161_746 NamedBody161_747

def NamedBody161_749 : StackLang.HolProg 64 :=
.seq NamedBody161_743 NamedBody161_748

def NamedBody161_750 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def NamedBody161_751 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody161_752 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 161 17

def NamedBody161_753 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody161_754 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody161_755 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody161_756 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody161_757 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def NamedBody161_758 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def NamedBody161_759 : StackLang.HolProg 64 :=
.seq NamedBody161_757 NamedBody161_758

def NamedBody161_760 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def NamedBody161_761 : StackLang.HolProg 64 :=
.seq NamedBody161_759 NamedBody161_760

def NamedBody161_762 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody161_763 : StackLang.HolProg 64 :=
.seq NamedBody161_761 NamedBody161_762

def NamedBody161_764 : StackLang.HolProg 64 :=
.seq NamedBody161_756 NamedBody161_763

def NamedBody161_765 : StackLang.HolProg 64 :=
.seq NamedBody161_755 NamedBody161_764

def NamedBody161_766 : StackLang.HolProg 64 :=
.seq NamedBody161_754 NamedBody161_765

def NamedBody161_767 : StackLang.HolProg 64 :=
.seq NamedBody161_753 NamedBody161_766

def NamedBody161_768 : StackLang.HolProg 64 :=
.seq NamedBody161_752 NamedBody161_767

def NamedBody161_769 : StackLang.HolProg 64 :=
.seq NamedBody161_751 NamedBody161_768

def NamedBody161_770 : StackLang.HolProg 64 :=
.seq NamedBody161_750 NamedBody161_769

def NamedBody161_771 : StackLang.HolProg 64 :=
.seq NamedBody161_749 NamedBody161_770

def NamedBody161_772 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody161_773 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody161_774 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody161_775 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody161_776 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody161_777 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody161_778 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 11
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 56#64))

def NamedBody161_779 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 40#64))

def NamedBody161_780 : StackLang.HolProg 64 :=
.seq NamedBody161_778 NamedBody161_779

def NamedBody161_781 : StackLang.HolProg 64 :=
.seq NamedBody161_777 NamedBody161_780

def NamedBody161_782 : StackLang.HolProg 64 :=
.seq NamedBody161_776 NamedBody161_781

def NamedBody161_783 : StackLang.HolProg 64 :=
.seq NamedBody161_775 NamedBody161_782

def NamedBody161_784 : StackLang.HolProg 64 :=
.seq NamedBody161_774 NamedBody161_783

def NamedBody161_785 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 11
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 56#64))

def NamedBody161_786 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 40#64))

def NamedBody161_787 : StackLang.HolProg 64 :=
.seq NamedBody161_785 NamedBody161_786

def NamedBody161_788 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def NamedBody161_789 : StackLang.HolProg 64 :=
.seq NamedBody161_787 NamedBody161_788

def NamedBody161_790 : StackLang.HolProg 64 :=
.call (some (NamedBody161_784, 1, 161, 16)) (Sum.inl 159) (some (NamedBody161_789, 161, 17))

def NamedBody161_791 : StackLang.HolProg 64 :=
.seq NamedBody161_773 NamedBody161_790

def NamedBody161_792 : StackLang.HolProg 64 :=
.seq NamedBody161_772 NamedBody161_791

def NamedBody161_793 : StackLang.HolProg 64 :=
.seq NamedBody161_771 NamedBody161_792

def NamedBody161_794 : StackLang.HolProg 64 :=
.seq NamedBody161_742 NamedBody161_793

def NamedBody161_795 : StackLang.HolProg 64 :=
.seq NamedBody161_739 NamedBody161_794

def NamedBody161_796 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody161_797 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody161_798 : StackLang.HolProg 64 :=
.seq NamedBody161_796 NamedBody161_797

def NamedBody161_799 : StackLang.HolProg 64 :=
.seq NamedBody161_795 NamedBody161_798

def NamedBody161_800 : StackLang.HolProg 64 :=
.seq NamedBody161_738 NamedBody161_799

def NamedBody161_801 : StackLang.HolProg 64 :=
.seq NamedBody161_729 NamedBody161_800

def NamedBody161_802 : StackLang.HolProg 64 :=
.seq NamedBody161_728 NamedBody161_801

def NamedBody161_803 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody161_804 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 56#64))

def NamedBody161_805 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 48#64))

def NamedBody161_806 : StackLang.HolProg 64 :=
.seq NamedBody161_804 NamedBody161_805

def NamedBody161_807 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 32#64))

def NamedBody161_808 : StackLang.HolProg 64 :=
.seq NamedBody161_806 NamedBody161_807

def NamedBody161_809 : StackLang.HolProg 64 :=
.seq NamedBody161_803 NamedBody161_808

def NamedBody161_810 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 1 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 11) NamedBody161_802 NamedBody161_809

def NamedBody161_811 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody161_812 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody161_813 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 10 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 1#64)))

def NamedBody161_814 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 11
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 40#64))

def NamedBody161_815 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 24#64))

def NamedBody161_816 : StackLang.HolProg 64 :=
.seq NamedBody161_814 NamedBody161_815

def NamedBody161_817 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody161_818 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 156#64)

def NamedBody161_819 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody161_820 : StackLang.HolProg 64 :=
.seq NamedBody161_818 NamedBody161_819

def NamedBody161_821 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody161_822 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 2#64)

def NamedBody161_823 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 10

def NamedBody161_824 : StackLang.HolProg 64 :=
.seq NamedBody161_822 NamedBody161_823

def NamedBody161_825 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody161_826 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) NamedBody161_824 NamedBody161_825

def NamedBody161_827 : StackLang.HolProg 64 :=
.seq NamedBody161_821 NamedBody161_826

def NamedBody161_828 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def NamedBody161_829 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody161_830 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 161 19

def NamedBody161_831 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody161_832 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody161_833 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody161_834 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody161_835 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def NamedBody161_836 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def NamedBody161_837 : StackLang.HolProg 64 :=
.seq NamedBody161_835 NamedBody161_836

def NamedBody161_838 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def NamedBody161_839 : StackLang.HolProg 64 :=
.seq NamedBody161_837 NamedBody161_838

def NamedBody161_840 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody161_841 : StackLang.HolProg 64 :=
.seq NamedBody161_839 NamedBody161_840

def NamedBody161_842 : StackLang.HolProg 64 :=
.seq NamedBody161_834 NamedBody161_841

def NamedBody161_843 : StackLang.HolProg 64 :=
.seq NamedBody161_833 NamedBody161_842

def NamedBody161_844 : StackLang.HolProg 64 :=
.seq NamedBody161_832 NamedBody161_843

def NamedBody161_845 : StackLang.HolProg 64 :=
.seq NamedBody161_831 NamedBody161_844

def NamedBody161_846 : StackLang.HolProg 64 :=
.seq NamedBody161_830 NamedBody161_845

def NamedBody161_847 : StackLang.HolProg 64 :=
.seq NamedBody161_829 NamedBody161_846

def NamedBody161_848 : StackLang.HolProg 64 :=
.seq NamedBody161_828 NamedBody161_847

def NamedBody161_849 : StackLang.HolProg 64 :=
.seq NamedBody161_827 NamedBody161_848

def NamedBody161_850 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody161_851 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody161_852 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody161_853 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody161_854 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody161_855 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody161_856 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 7
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 48#64))

def NamedBody161_857 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 12
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 40#64))

def NamedBody161_858 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 24#64))

def NamedBody161_859 : StackLang.HolProg 64 :=
.seq NamedBody161_857 NamedBody161_858

def NamedBody161_860 : StackLang.HolProg 64 :=
.seq NamedBody161_856 NamedBody161_859

def NamedBody161_861 : StackLang.HolProg 64 :=
.seq NamedBody161_855 NamedBody161_860

def NamedBody161_862 : StackLang.HolProg 64 :=
.seq NamedBody161_854 NamedBody161_861

def NamedBody161_863 : StackLang.HolProg 64 :=
.seq NamedBody161_853 NamedBody161_862

def NamedBody161_864 : StackLang.HolProg 64 :=
.seq NamedBody161_852 NamedBody161_863

def NamedBody161_865 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 7
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 48#64))

def NamedBody161_866 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 12
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 40#64))

def NamedBody161_867 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 24#64))

def NamedBody161_868 : StackLang.HolProg 64 :=
.seq NamedBody161_866 NamedBody161_867

def NamedBody161_869 : StackLang.HolProg 64 :=
.seq NamedBody161_865 NamedBody161_868

def NamedBody161_870 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def NamedBody161_871 : StackLang.HolProg 64 :=
.seq NamedBody161_869 NamedBody161_870

def NamedBody161_872 : StackLang.HolProg 64 :=
.call (some (NamedBody161_864, 1, 161, 18)) (Sum.inl 167) (some (NamedBody161_871, 161, 19))

def NamedBody161_873 : StackLang.HolProg 64 :=
.seq NamedBody161_851 NamedBody161_872

def NamedBody161_874 : StackLang.HolProg 64 :=
.seq NamedBody161_850 NamedBody161_873

def NamedBody161_875 : StackLang.HolProg 64 :=
.seq NamedBody161_849 NamedBody161_874

def NamedBody161_876 : StackLang.HolProg 64 :=
.seq NamedBody161_820 NamedBody161_875

def NamedBody161_877 : StackLang.HolProg 64 :=
.seq NamedBody161_817 NamedBody161_876

def NamedBody161_878 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody161_879 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 1#64)

def NamedBody161_880 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody161_881 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 11 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 1#64)))

def NamedBody161_882 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody161_883 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 13 12
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 1#64)))

def NamedBody161_884 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody161_885 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 64#64)))

def NamedBody161_886 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 7

def NamedBody161_887 : StackLang.HolProg 64 :=
.seq NamedBody161_885 NamedBody161_886

def NamedBody161_888 : StackLang.HolProg 64 :=
.seq NamedBody161_884 NamedBody161_887

def NamedBody161_889 : StackLang.HolProg 64 :=
.seq NamedBody161_883 NamedBody161_888

def NamedBody161_890 : StackLang.HolProg 64 :=
.seq NamedBody161_882 NamedBody161_889

def NamedBody161_891 : StackLang.HolProg 64 :=
.seq NamedBody161_881 NamedBody161_890

def NamedBody161_892 : StackLang.HolProg 64 :=
.seq NamedBody161_880 NamedBody161_891

def NamedBody161_893 : StackLang.HolProg 64 :=
.seq NamedBody161_879 NamedBody161_892

def NamedBody161_894 : StackLang.HolProg 64 :=
.seq NamedBody161_878 NamedBody161_893

def NamedBody161_895 : StackLang.HolProg 64 :=
.seq NamedBody161_877 NamedBody161_894

def NamedBody161_896 : StackLang.HolProg 64 :=
.seq NamedBody161_816 NamedBody161_895

def NamedBody161_897 : StackLang.HolProg 64 :=
.seq NamedBody161_813 NamedBody161_896

def NamedBody161_898 : StackLang.HolProg 64 :=
.seq NamedBody161_812 NamedBody161_897

def NamedBody161_899 : StackLang.HolProg 64 :=
.seq NamedBody161_811 NamedBody161_898

def NamedBody161_900 : StackLang.HolProg 64 :=
.seq NamedBody161_810 NamedBody161_899

def NamedBody161_901 : StackLang.HolProg 64 :=
.seq NamedBody161_727 NamedBody161_900

def NamedBody161_902 : StackLang.HolProg 64 :=
.seq NamedBody161_726 NamedBody161_901

def NamedBody161_903 : StackLang.HolProg 64 :=
.seq NamedBody161_725 NamedBody161_902

def NamedBody161_904 : StackLang.HolProg 64 :=
.seq NamedBody161_724 NamedBody161_903

def NamedBody161_905 : StackLang.HolProg 64 :=
.seq NamedBody161_723 NamedBody161_904

def NamedBody161_906 : StackLang.HolProg 64 :=
.seq NamedBody161_722 NamedBody161_905

def NamedBody161_907 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody161_908 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.notLower) 1 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 6) NamedBody161_906 NamedBody161_907

def NamedBody161_909 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody161_910 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody161_911 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody161_912 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 11 6
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 18446744073709551369#64)))

def NamedBody161_913 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody161_914 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 1 5
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 18446744073709551615#64)))

def NamedBody161_915 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody161_916 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody161_917 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 3#64)

def NamedBody161_918 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 11
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 48#64))

def NamedBody161_919 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 5
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 40#64))

def NamedBody161_920 : StackLang.HolProg 64 :=
.seq NamedBody161_918 NamedBody161_919

def NamedBody161_921 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody161_922 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 157#64)

def NamedBody161_923 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody161_924 : StackLang.HolProg 64 :=
.seq NamedBody161_922 NamedBody161_923

def NamedBody161_925 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody161_926 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 2#64)

def NamedBody161_927 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 10

def NamedBody161_928 : StackLang.HolProg 64 :=
.seq NamedBody161_926 NamedBody161_927

def NamedBody161_929 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody161_930 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) NamedBody161_928 NamedBody161_929

def NamedBody161_931 : StackLang.HolProg 64 :=
.seq NamedBody161_925 NamedBody161_930

def NamedBody161_932 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def NamedBody161_933 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody161_934 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 161 21

def NamedBody161_935 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody161_936 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody161_937 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody161_938 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody161_939 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def NamedBody161_940 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def NamedBody161_941 : StackLang.HolProg 64 :=
.seq NamedBody161_939 NamedBody161_940

def NamedBody161_942 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def NamedBody161_943 : StackLang.HolProg 64 :=
.seq NamedBody161_941 NamedBody161_942

def NamedBody161_944 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody161_945 : StackLang.HolProg 64 :=
.seq NamedBody161_943 NamedBody161_944

def NamedBody161_946 : StackLang.HolProg 64 :=
.seq NamedBody161_938 NamedBody161_945

def NamedBody161_947 : StackLang.HolProg 64 :=
.seq NamedBody161_937 NamedBody161_946

def NamedBody161_948 : StackLang.HolProg 64 :=
.seq NamedBody161_936 NamedBody161_947

def NamedBody161_949 : StackLang.HolProg 64 :=
.seq NamedBody161_935 NamedBody161_948

def NamedBody161_950 : StackLang.HolProg 64 :=
.seq NamedBody161_934 NamedBody161_949

def NamedBody161_951 : StackLang.HolProg 64 :=
.seq NamedBody161_933 NamedBody161_950

def NamedBody161_952 : StackLang.HolProg 64 :=
.seq NamedBody161_932 NamedBody161_951

def NamedBody161_953 : StackLang.HolProg 64 :=
.seq NamedBody161_931 NamedBody161_952

def NamedBody161_954 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody161_955 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody161_956 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody161_957 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody161_958 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody161_959 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody161_960 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 11
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 48#64))

def NamedBody161_961 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 32#64))

def NamedBody161_962 : StackLang.HolProg 64 :=
.seq NamedBody161_960 NamedBody161_961

def NamedBody161_963 : StackLang.HolProg 64 :=
.seq NamedBody161_959 NamedBody161_962

def NamedBody161_964 : StackLang.HolProg 64 :=
.seq NamedBody161_958 NamedBody161_963

def NamedBody161_965 : StackLang.HolProg 64 :=
.seq NamedBody161_957 NamedBody161_964

def NamedBody161_966 : StackLang.HolProg 64 :=
.seq NamedBody161_956 NamedBody161_965

def NamedBody161_967 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 11
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 48#64))

def NamedBody161_968 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 32#64))

def NamedBody161_969 : StackLang.HolProg 64 :=
.seq NamedBody161_967 NamedBody161_968

def NamedBody161_970 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def NamedBody161_971 : StackLang.HolProg 64 :=
.seq NamedBody161_969 NamedBody161_970

def NamedBody161_972 : StackLang.HolProg 64 :=
.call (some (NamedBody161_966, 1, 161, 20)) (Sum.inl 159) (some (NamedBody161_971, 161, 21))

def NamedBody161_973 : StackLang.HolProg 64 :=
.seq NamedBody161_955 NamedBody161_972

def NamedBody161_974 : StackLang.HolProg 64 :=
.seq NamedBody161_954 NamedBody161_973

def NamedBody161_975 : StackLang.HolProg 64 :=
.seq NamedBody161_953 NamedBody161_974

def NamedBody161_976 : StackLang.HolProg 64 :=
.seq NamedBody161_924 NamedBody161_975

def NamedBody161_977 : StackLang.HolProg 64 :=
.seq NamedBody161_921 NamedBody161_976

def NamedBody161_978 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody161_979 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody161_980 : StackLang.HolProg 64 :=
.seq NamedBody161_978 NamedBody161_979

def NamedBody161_981 : StackLang.HolProg 64 :=
.seq NamedBody161_977 NamedBody161_980

def NamedBody161_982 : StackLang.HolProg 64 :=
.seq NamedBody161_920 NamedBody161_981

def NamedBody161_983 : StackLang.HolProg 64 :=
.seq NamedBody161_917 NamedBody161_982

def NamedBody161_984 : StackLang.HolProg 64 :=
.seq NamedBody161_916 NamedBody161_983

def NamedBody161_985 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody161_986 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 5
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 40#64))

def NamedBody161_987 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 32#64))

def NamedBody161_988 : StackLang.HolProg 64 :=
.seq NamedBody161_986 NamedBody161_987

def NamedBody161_989 : StackLang.HolProg 64 :=
.seq NamedBody161_985 NamedBody161_988

def NamedBody161_990 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 1 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 11) NamedBody161_984 NamedBody161_989

def NamedBody161_991 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody161_992 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody161_993 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 10 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 1#64)))

def NamedBody161_994 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 11
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 48#64))

def NamedBody161_995 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 32#64))

def NamedBody161_996 : StackLang.HolProg 64 :=
.seq NamedBody161_994 NamedBody161_995

def NamedBody161_997 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody161_998 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 158#64)

def NamedBody161_999 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody161_1000 : StackLang.HolProg 64 :=
.seq NamedBody161_998 NamedBody161_999

def NamedBody161_1001 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody161_1002 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 2#64)

def NamedBody161_1003 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 10

def NamedBody161_1004 : StackLang.HolProg 64 :=
.seq NamedBody161_1002 NamedBody161_1003

def NamedBody161_1005 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody161_1006 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) NamedBody161_1004 NamedBody161_1005

def NamedBody161_1007 : StackLang.HolProg 64 :=
.seq NamedBody161_1001 NamedBody161_1006

def NamedBody161_1008 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def NamedBody161_1009 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody161_1010 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 161 23

def NamedBody161_1011 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody161_1012 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody161_1013 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody161_1014 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody161_1015 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def NamedBody161_1016 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def NamedBody161_1017 : StackLang.HolProg 64 :=
.seq NamedBody161_1015 NamedBody161_1016

def NamedBody161_1018 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def NamedBody161_1019 : StackLang.HolProg 64 :=
.seq NamedBody161_1017 NamedBody161_1018

def NamedBody161_1020 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody161_1021 : StackLang.HolProg 64 :=
.seq NamedBody161_1019 NamedBody161_1020

def NamedBody161_1022 : StackLang.HolProg 64 :=
.seq NamedBody161_1014 NamedBody161_1021

def NamedBody161_1023 : StackLang.HolProg 64 :=
.seq NamedBody161_1013 NamedBody161_1022

def NamedBody161_1024 : StackLang.HolProg 64 :=
.seq NamedBody161_1012 NamedBody161_1023

def NamedBody161_1025 : StackLang.HolProg 64 :=
.seq NamedBody161_1011 NamedBody161_1024

def NamedBody161_1026 : StackLang.HolProg 64 :=
.seq NamedBody161_1010 NamedBody161_1025

def NamedBody161_1027 : StackLang.HolProg 64 :=
.seq NamedBody161_1009 NamedBody161_1026

def NamedBody161_1028 : StackLang.HolProg 64 :=
.seq NamedBody161_1008 NamedBody161_1027

def NamedBody161_1029 : StackLang.HolProg 64 :=
.seq NamedBody161_1007 NamedBody161_1028

def NamedBody161_1030 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody161_1031 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody161_1032 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody161_1033 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody161_1034 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody161_1035 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody161_1036 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 11 10
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 10)))

def NamedBody161_1037 : StackLang.HolProg 64 :=
.seq NamedBody161_1035 NamedBody161_1036

def NamedBody161_1038 : StackLang.HolProg 64 :=
.seq NamedBody161_1034 NamedBody161_1037

def NamedBody161_1039 : StackLang.HolProg 64 :=
.seq NamedBody161_1033 NamedBody161_1038

def NamedBody161_1040 : StackLang.HolProg 64 :=
.seq NamedBody161_1032 NamedBody161_1039

def NamedBody161_1041 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody161_1042 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def NamedBody161_1043 : StackLang.HolProg 64 :=
.seq NamedBody161_1041 NamedBody161_1042

def NamedBody161_1044 : StackLang.HolProg 64 :=
.call (some (NamedBody161_1040, 1, 161, 22)) (Sum.inl 160) (some (NamedBody161_1043, 161, 23))

def NamedBody161_1045 : StackLang.HolProg 64 :=
.seq NamedBody161_1031 NamedBody161_1044

def NamedBody161_1046 : StackLang.HolProg 64 :=
.seq NamedBody161_1030 NamedBody161_1045

def NamedBody161_1047 : StackLang.HolProg 64 :=
.seq NamedBody161_1029 NamedBody161_1046

def NamedBody161_1048 : StackLang.HolProg 64 :=
.seq NamedBody161_1000 NamedBody161_1047

def NamedBody161_1049 : StackLang.HolProg 64 :=
.seq NamedBody161_997 NamedBody161_1048

def NamedBody161_1050 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody161_1051 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 55#64)

def NamedBody161_1052 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody161_1053 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody161_1054 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 5#64)

def NamedBody161_1055 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 32#64))

def NamedBody161_1056 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 24#64))

def NamedBody161_1057 : StackLang.HolProg 64 :=
.seq NamedBody161_1055 NamedBody161_1056

def NamedBody161_1058 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 11
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 32#64))

def NamedBody161_1059 : StackLang.HolProg 64 :=
.seq NamedBody161_1057 NamedBody161_1058

def NamedBody161_1060 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody161_1061 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 159#64)

def NamedBody161_1062 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody161_1063 : StackLang.HolProg 64 :=
.seq NamedBody161_1061 NamedBody161_1062

def NamedBody161_1064 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody161_1065 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 2#64)

def NamedBody161_1066 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 10

def NamedBody161_1067 : StackLang.HolProg 64 :=
.seq NamedBody161_1065 NamedBody161_1066

def NamedBody161_1068 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody161_1069 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) NamedBody161_1067 NamedBody161_1068

def NamedBody161_1070 : StackLang.HolProg 64 :=
.seq NamedBody161_1064 NamedBody161_1069

def NamedBody161_1071 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def NamedBody161_1072 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody161_1073 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 161 25

def NamedBody161_1074 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody161_1075 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody161_1076 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody161_1077 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody161_1078 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def NamedBody161_1079 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def NamedBody161_1080 : StackLang.HolProg 64 :=
.seq NamedBody161_1078 NamedBody161_1079

def NamedBody161_1081 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def NamedBody161_1082 : StackLang.HolProg 64 :=
.seq NamedBody161_1080 NamedBody161_1081

def NamedBody161_1083 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody161_1084 : StackLang.HolProg 64 :=
.seq NamedBody161_1082 NamedBody161_1083

def NamedBody161_1085 : StackLang.HolProg 64 :=
.seq NamedBody161_1077 NamedBody161_1084

def NamedBody161_1086 : StackLang.HolProg 64 :=
.seq NamedBody161_1076 NamedBody161_1085

def NamedBody161_1087 : StackLang.HolProg 64 :=
.seq NamedBody161_1075 NamedBody161_1086

def NamedBody161_1088 : StackLang.HolProg 64 :=
.seq NamedBody161_1074 NamedBody161_1087

def NamedBody161_1089 : StackLang.HolProg 64 :=
.seq NamedBody161_1073 NamedBody161_1088

def NamedBody161_1090 : StackLang.HolProg 64 :=
.seq NamedBody161_1072 NamedBody161_1089

def NamedBody161_1091 : StackLang.HolProg 64 :=
.seq NamedBody161_1071 NamedBody161_1090

def NamedBody161_1092 : StackLang.HolProg 64 :=
.seq NamedBody161_1070 NamedBody161_1091

def NamedBody161_1093 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody161_1094 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody161_1095 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody161_1096 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody161_1097 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody161_1098 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody161_1099 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 48#64))

def NamedBody161_1100 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 12
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 40#64))

def NamedBody161_1101 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 11
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 32#64))

def NamedBody161_1102 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 24#64))

def NamedBody161_1103 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 32#64))

def NamedBody161_1104 : StackLang.HolProg 64 :=
.seq NamedBody161_1102 NamedBody161_1103

def NamedBody161_1105 : StackLang.HolProg 64 :=
.seq NamedBody161_1101 NamedBody161_1104

def NamedBody161_1106 : StackLang.HolProg 64 :=
.seq NamedBody161_1100 NamedBody161_1105

def NamedBody161_1107 : StackLang.HolProg 64 :=
.seq NamedBody161_1099 NamedBody161_1106

def NamedBody161_1108 : StackLang.HolProg 64 :=
.seq NamedBody161_1098 NamedBody161_1107

def NamedBody161_1109 : StackLang.HolProg 64 :=
.seq NamedBody161_1097 NamedBody161_1108

def NamedBody161_1110 : StackLang.HolProg 64 :=
.seq NamedBody161_1096 NamedBody161_1109

def NamedBody161_1111 : StackLang.HolProg 64 :=
.seq NamedBody161_1095 NamedBody161_1110

def NamedBody161_1112 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 48#64))

def NamedBody161_1113 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 12
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 40#64))

def NamedBody161_1114 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 11
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 32#64))

def NamedBody161_1115 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 24#64))

def NamedBody161_1116 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 32#64))

def NamedBody161_1117 : StackLang.HolProg 64 :=
.seq NamedBody161_1115 NamedBody161_1116

def NamedBody161_1118 : StackLang.HolProg 64 :=
.seq NamedBody161_1114 NamedBody161_1117

def NamedBody161_1119 : StackLang.HolProg 64 :=
.seq NamedBody161_1113 NamedBody161_1118

def NamedBody161_1120 : StackLang.HolProg 64 :=
.seq NamedBody161_1112 NamedBody161_1119

def NamedBody161_1121 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def NamedBody161_1122 : StackLang.HolProg 64 :=
.seq NamedBody161_1120 NamedBody161_1121

def NamedBody161_1123 : StackLang.HolProg 64 :=
.call (some (NamedBody161_1111, 1, 161, 24)) (Sum.inl 159) (some (NamedBody161_1122, 161, 25))

def NamedBody161_1124 : StackLang.HolProg 64 :=
.seq NamedBody161_1094 NamedBody161_1123

def NamedBody161_1125 : StackLang.HolProg 64 :=
.seq NamedBody161_1093 NamedBody161_1124

def NamedBody161_1126 : StackLang.HolProg 64 :=
.seq NamedBody161_1092 NamedBody161_1125

def NamedBody161_1127 : StackLang.HolProg 64 :=
.seq NamedBody161_1063 NamedBody161_1126

def NamedBody161_1128 : StackLang.HolProg 64 :=
.seq NamedBody161_1060 NamedBody161_1127

def NamedBody161_1129 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody161_1130 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody161_1131 : StackLang.HolProg 64 :=
.seq NamedBody161_1129 NamedBody161_1130

def NamedBody161_1132 : StackLang.HolProg 64 :=
.seq NamedBody161_1128 NamedBody161_1131

def NamedBody161_1133 : StackLang.HolProg 64 :=
.seq NamedBody161_1059 NamedBody161_1132

def NamedBody161_1134 : StackLang.HolProg 64 :=
.seq NamedBody161_1054 NamedBody161_1133

def NamedBody161_1135 : StackLang.HolProg 64 :=
.seq NamedBody161_1053 NamedBody161_1134

def NamedBody161_1136 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody161_1137 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 48#64))

def NamedBody161_1138 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 12
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 40#64))

def NamedBody161_1139 : StackLang.HolProg 64 :=
.seq NamedBody161_1137 NamedBody161_1138

def NamedBody161_1140 : StackLang.HolProg 64 :=
.seq NamedBody161_1136 NamedBody161_1139

def NamedBody161_1141 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.notLower) 1 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 11) NamedBody161_1135 NamedBody161_1140

def NamedBody161_1142 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody161_1143 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody161_1144 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 10 12
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 18446744073709551615#64)))

def NamedBody161_1145 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody161_1146 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 10 10
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def NamedBody161_1147 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody161_1148 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody161_1149 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 3#64)

def NamedBody161_1150 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 48#64))

def NamedBody161_1151 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 11
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 40#64))

def NamedBody161_1152 : StackLang.HolProg 64 :=
.seq NamedBody161_1150 NamedBody161_1151

def NamedBody161_1153 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody161_1154 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 160#64)

def NamedBody161_1155 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody161_1156 : StackLang.HolProg 64 :=
.seq NamedBody161_1154 NamedBody161_1155

def NamedBody161_1157 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody161_1158 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 2#64)

def NamedBody161_1159 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 10

def NamedBody161_1160 : StackLang.HolProg 64 :=
.seq NamedBody161_1158 NamedBody161_1159

def NamedBody161_1161 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody161_1162 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) NamedBody161_1160 NamedBody161_1161

def NamedBody161_1163 : StackLang.HolProg 64 :=
.seq NamedBody161_1157 NamedBody161_1162

def NamedBody161_1164 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def NamedBody161_1165 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody161_1166 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 161 27

def NamedBody161_1167 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody161_1168 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody161_1169 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody161_1170 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody161_1171 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def NamedBody161_1172 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def NamedBody161_1173 : StackLang.HolProg 64 :=
.seq NamedBody161_1171 NamedBody161_1172

def NamedBody161_1174 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def NamedBody161_1175 : StackLang.HolProg 64 :=
.seq NamedBody161_1173 NamedBody161_1174

def NamedBody161_1176 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody161_1177 : StackLang.HolProg 64 :=
.seq NamedBody161_1175 NamedBody161_1176

def NamedBody161_1178 : StackLang.HolProg 64 :=
.seq NamedBody161_1170 NamedBody161_1177

def NamedBody161_1179 : StackLang.HolProg 64 :=
.seq NamedBody161_1169 NamedBody161_1178

def NamedBody161_1180 : StackLang.HolProg 64 :=
.seq NamedBody161_1168 NamedBody161_1179

def NamedBody161_1181 : StackLang.HolProg 64 :=
.seq NamedBody161_1167 NamedBody161_1180

def NamedBody161_1182 : StackLang.HolProg 64 :=
.seq NamedBody161_1166 NamedBody161_1181

def NamedBody161_1183 : StackLang.HolProg 64 :=
.seq NamedBody161_1165 NamedBody161_1182

def NamedBody161_1184 : StackLang.HolProg 64 :=
.seq NamedBody161_1164 NamedBody161_1183

def NamedBody161_1185 : StackLang.HolProg 64 :=
.seq NamedBody161_1163 NamedBody161_1184

def NamedBody161_1186 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody161_1187 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody161_1188 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody161_1189 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody161_1190 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody161_1191 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody161_1192 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 48#64))

def NamedBody161_1193 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 11
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 40#64))

def NamedBody161_1194 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 12
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 32#64))

def NamedBody161_1195 : StackLang.HolProg 64 :=
.seq NamedBody161_1193 NamedBody161_1194

def NamedBody161_1196 : StackLang.HolProg 64 :=
.seq NamedBody161_1192 NamedBody161_1195

def NamedBody161_1197 : StackLang.HolProg 64 :=
.seq NamedBody161_1191 NamedBody161_1196

def NamedBody161_1198 : StackLang.HolProg 64 :=
.seq NamedBody161_1190 NamedBody161_1197

def NamedBody161_1199 : StackLang.HolProg 64 :=
.seq NamedBody161_1189 NamedBody161_1198

def NamedBody161_1200 : StackLang.HolProg 64 :=
.seq NamedBody161_1188 NamedBody161_1199

def NamedBody161_1201 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 48#64))

def NamedBody161_1202 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 11
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 40#64))

def NamedBody161_1203 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 12
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 32#64))

def NamedBody161_1204 : StackLang.HolProg 64 :=
.seq NamedBody161_1202 NamedBody161_1203

def NamedBody161_1205 : StackLang.HolProg 64 :=
.seq NamedBody161_1201 NamedBody161_1204

def NamedBody161_1206 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def NamedBody161_1207 : StackLang.HolProg 64 :=
.seq NamedBody161_1205 NamedBody161_1206

def NamedBody161_1208 : StackLang.HolProg 64 :=
.call (some (NamedBody161_1200, 1, 161, 26)) (Sum.inl 159) (some (NamedBody161_1207, 161, 27))

def NamedBody161_1209 : StackLang.HolProg 64 :=
.seq NamedBody161_1187 NamedBody161_1208

def NamedBody161_1210 : StackLang.HolProg 64 :=
.seq NamedBody161_1186 NamedBody161_1209

def NamedBody161_1211 : StackLang.HolProg 64 :=
.seq NamedBody161_1185 NamedBody161_1210

def NamedBody161_1212 : StackLang.HolProg 64 :=
.seq NamedBody161_1156 NamedBody161_1211

def NamedBody161_1213 : StackLang.HolProg 64 :=
.seq NamedBody161_1153 NamedBody161_1212

def NamedBody161_1214 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody161_1215 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody161_1216 : StackLang.HolProg 64 :=
.seq NamedBody161_1214 NamedBody161_1215

def NamedBody161_1217 : StackLang.HolProg 64 :=
.seq NamedBody161_1213 NamedBody161_1216

def NamedBody161_1218 : StackLang.HolProg 64 :=
.seq NamedBody161_1152 NamedBody161_1217

def NamedBody161_1219 : StackLang.HolProg 64 :=
.seq NamedBody161_1149 NamedBody161_1218

def NamedBody161_1220 : StackLang.HolProg 64 :=
.seq NamedBody161_1148 NamedBody161_1219

def NamedBody161_1221 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody161_1222 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 12
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 32#64))

def NamedBody161_1223 : StackLang.HolProg 64 :=
.seq NamedBody161_1221 NamedBody161_1222

def NamedBody161_1224 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 10 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 11) NamedBody161_1220 NamedBody161_1223

def NamedBody161_1225 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody161_1226 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody161_1227 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 10 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 12)))

def NamedBody161_1228 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 10 10
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 1#64)))

def NamedBody161_1229 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 48#64))

def NamedBody161_1230 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 11
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 40#64))

def NamedBody161_1231 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 12
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 32#64))

def NamedBody161_1232 : StackLang.HolProg 64 :=
.seq NamedBody161_1230 NamedBody161_1231

def NamedBody161_1233 : StackLang.HolProg 64 :=
.seq NamedBody161_1229 NamedBody161_1232

def NamedBody161_1234 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody161_1235 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 161#64)

def NamedBody161_1236 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody161_1237 : StackLang.HolProg 64 :=
.seq NamedBody161_1235 NamedBody161_1236

def NamedBody161_1238 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody161_1239 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 2#64)

def NamedBody161_1240 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 10

def NamedBody161_1241 : StackLang.HolProg 64 :=
.seq NamedBody161_1239 NamedBody161_1240

def NamedBody161_1242 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody161_1243 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) NamedBody161_1241 NamedBody161_1242

def NamedBody161_1244 : StackLang.HolProg 64 :=
.seq NamedBody161_1238 NamedBody161_1243

def NamedBody161_1245 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def NamedBody161_1246 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody161_1247 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 161 29

def NamedBody161_1248 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody161_1249 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody161_1250 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody161_1251 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody161_1252 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def NamedBody161_1253 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def NamedBody161_1254 : StackLang.HolProg 64 :=
.seq NamedBody161_1252 NamedBody161_1253

def NamedBody161_1255 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def NamedBody161_1256 : StackLang.HolProg 64 :=
.seq NamedBody161_1254 NamedBody161_1255

def NamedBody161_1257 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody161_1258 : StackLang.HolProg 64 :=
.seq NamedBody161_1256 NamedBody161_1257

def NamedBody161_1259 : StackLang.HolProg 64 :=
.seq NamedBody161_1251 NamedBody161_1258

def NamedBody161_1260 : StackLang.HolProg 64 :=
.seq NamedBody161_1250 NamedBody161_1259

def NamedBody161_1261 : StackLang.HolProg 64 :=
.seq NamedBody161_1249 NamedBody161_1260

def NamedBody161_1262 : StackLang.HolProg 64 :=
.seq NamedBody161_1248 NamedBody161_1261

def NamedBody161_1263 : StackLang.HolProg 64 :=
.seq NamedBody161_1247 NamedBody161_1262

def NamedBody161_1264 : StackLang.HolProg 64 :=
.seq NamedBody161_1246 NamedBody161_1263

def NamedBody161_1265 : StackLang.HolProg 64 :=
.seq NamedBody161_1245 NamedBody161_1264

def NamedBody161_1266 : StackLang.HolProg 64 :=
.seq NamedBody161_1244 NamedBody161_1265

def NamedBody161_1267 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody161_1268 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody161_1269 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody161_1270 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody161_1271 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody161_1272 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody161_1273 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 5
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 56#64))

def NamedBody161_1274 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 48#64))

def NamedBody161_1275 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 12
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 40#64))

def NamedBody161_1276 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 11
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 32#64))

def NamedBody161_1277 : StackLang.HolProg 64 :=
.seq NamedBody161_1275 NamedBody161_1276

def NamedBody161_1278 : StackLang.HolProg 64 :=
.seq NamedBody161_1274 NamedBody161_1277

def NamedBody161_1279 : StackLang.HolProg 64 :=
.seq NamedBody161_1273 NamedBody161_1278

def NamedBody161_1280 : StackLang.HolProg 64 :=
.seq NamedBody161_1272 NamedBody161_1279

def NamedBody161_1281 : StackLang.HolProg 64 :=
.seq NamedBody161_1271 NamedBody161_1280

def NamedBody161_1282 : StackLang.HolProg 64 :=
.seq NamedBody161_1270 NamedBody161_1281

def NamedBody161_1283 : StackLang.HolProg 64 :=
.seq NamedBody161_1269 NamedBody161_1282

def NamedBody161_1284 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 5
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 56#64))

def NamedBody161_1285 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 48#64))

def NamedBody161_1286 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 12
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 40#64))

def NamedBody161_1287 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 11
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 32#64))

def NamedBody161_1288 : StackLang.HolProg 64 :=
.seq NamedBody161_1286 NamedBody161_1287

def NamedBody161_1289 : StackLang.HolProg 64 :=
.seq NamedBody161_1285 NamedBody161_1288

def NamedBody161_1290 : StackLang.HolProg 64 :=
.seq NamedBody161_1284 NamedBody161_1289

def NamedBody161_1291 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def NamedBody161_1292 : StackLang.HolProg 64 :=
.seq NamedBody161_1290 NamedBody161_1291

def NamedBody161_1293 : StackLang.HolProg 64 :=
.call (some (NamedBody161_1283, 1, 161, 28)) (Sum.inl 167) (some (NamedBody161_1292, 161, 29))

def NamedBody161_1294 : StackLang.HolProg 64 :=
.seq NamedBody161_1268 NamedBody161_1293

def NamedBody161_1295 : StackLang.HolProg 64 :=
.seq NamedBody161_1267 NamedBody161_1294

def NamedBody161_1296 : StackLang.HolProg 64 :=
.seq NamedBody161_1266 NamedBody161_1295

def NamedBody161_1297 : StackLang.HolProg 64 :=
.seq NamedBody161_1237 NamedBody161_1296

def NamedBody161_1298 : StackLang.HolProg 64 :=
.seq NamedBody161_1234 NamedBody161_1297

def NamedBody161_1299 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody161_1300 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 1#64)

def NamedBody161_1301 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody161_1302 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 11 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 11)))

def NamedBody161_1303 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 11 11
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 1#64)))

def NamedBody161_1304 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody161_1305 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 1 12
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def NamedBody161_1306 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 13 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 1#64)))

def NamedBody161_1307 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody161_1308 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 64#64)))

def NamedBody161_1309 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 5

def NamedBody161_1310 : StackLang.HolProg 64 :=
.seq NamedBody161_1308 NamedBody161_1309

def NamedBody161_1311 : StackLang.HolProg 64 :=
.seq NamedBody161_1307 NamedBody161_1310

def NamedBody161_1312 : StackLang.HolProg 64 :=
.seq NamedBody161_1306 NamedBody161_1311

def NamedBody161_1313 : StackLang.HolProg 64 :=
.seq NamedBody161_1305 NamedBody161_1312

def NamedBody161_1314 : StackLang.HolProg 64 :=
.seq NamedBody161_1304 NamedBody161_1313

def NamedBody161_1315 : StackLang.HolProg 64 :=
.seq NamedBody161_1303 NamedBody161_1314

def NamedBody161_1316 : StackLang.HolProg 64 :=
.seq NamedBody161_1302 NamedBody161_1315

def NamedBody161_1317 : StackLang.HolProg 64 :=
.seq NamedBody161_1301 NamedBody161_1316

def NamedBody161_1318 : StackLang.HolProg 64 :=
.seq NamedBody161_1300 NamedBody161_1317

def NamedBody161_1319 : StackLang.HolProg 64 :=
.seq NamedBody161_1299 NamedBody161_1318

def NamedBody161_1320 : StackLang.HolProg 64 :=
.seq NamedBody161_1298 NamedBody161_1319

def NamedBody161_1321 : StackLang.HolProg 64 :=
.seq NamedBody161_1233 NamedBody161_1320

def NamedBody161_1322 : StackLang.HolProg 64 :=
.seq NamedBody161_1228 NamedBody161_1321

def NamedBody161_1323 : StackLang.HolProg 64 :=
.seq NamedBody161_1227 NamedBody161_1322

def NamedBody161_1324 : StackLang.HolProg 64 :=
.seq NamedBody161_1226 NamedBody161_1323

def NamedBody161_1325 : StackLang.HolProg 64 :=
.seq NamedBody161_1225 NamedBody161_1324

def NamedBody161_1326 : StackLang.HolProg 64 :=
.seq NamedBody161_1224 NamedBody161_1325

def NamedBody161_1327 : StackLang.HolProg 64 :=
.seq NamedBody161_1147 NamedBody161_1326

def NamedBody161_1328 : StackLang.HolProg 64 :=
.seq NamedBody161_1146 NamedBody161_1327

def NamedBody161_1329 : StackLang.HolProg 64 :=
.seq NamedBody161_1145 NamedBody161_1328

def NamedBody161_1330 : StackLang.HolProg 64 :=
.seq NamedBody161_1144 NamedBody161_1329

def NamedBody161_1331 : StackLang.HolProg 64 :=
.seq NamedBody161_1143 NamedBody161_1330

def NamedBody161_1332 : StackLang.HolProg 64 :=
.seq NamedBody161_1142 NamedBody161_1331

def NamedBody161_1333 : StackLang.HolProg 64 :=
.seq NamedBody161_1141 NamedBody161_1332

def NamedBody161_1334 : StackLang.HolProg 64 :=
.seq NamedBody161_1052 NamedBody161_1333

def NamedBody161_1335 : StackLang.HolProg 64 :=
.seq NamedBody161_1051 NamedBody161_1334

def NamedBody161_1336 : StackLang.HolProg 64 :=
.seq NamedBody161_1050 NamedBody161_1335

def NamedBody161_1337 : StackLang.HolProg 64 :=
.seq NamedBody161_1049 NamedBody161_1336

def NamedBody161_1338 : StackLang.HolProg 64 :=
.seq NamedBody161_996 NamedBody161_1337

def NamedBody161_1339 : StackLang.HolProg 64 :=
.seq NamedBody161_993 NamedBody161_1338

def NamedBody161_1340 : StackLang.HolProg 64 :=
.seq NamedBody161_992 NamedBody161_1339

def NamedBody161_1341 : StackLang.HolProg 64 :=
.seq NamedBody161_991 NamedBody161_1340

def NamedBody161_1342 : StackLang.HolProg 64 :=
.seq NamedBody161_990 NamedBody161_1341

def NamedBody161_1343 : StackLang.HolProg 64 :=
.seq NamedBody161_915 NamedBody161_1342

def NamedBody161_1344 : StackLang.HolProg 64 :=
.seq NamedBody161_914 NamedBody161_1343

def NamedBody161_1345 : StackLang.HolProg 64 :=
.seq NamedBody161_913 NamedBody161_1344

def NamedBody161_1346 : StackLang.HolProg 64 :=
.seq NamedBody161_912 NamedBody161_1345

def NamedBody161_1347 : StackLang.HolProg 64 :=
.seq NamedBody161_911 NamedBody161_1346

def NamedBody161_1348 : StackLang.HolProg 64 :=
.seq NamedBody161_910 NamedBody161_1347

def NamedBody161_1349 : StackLang.HolProg 64 :=
.seq NamedBody161_909 NamedBody161_1348

def NamedBody161_1350 : StackLang.HolProg 64 :=
.seq NamedBody161_908 NamedBody161_1349

def NamedBody161_1351 : StackLang.HolProg 64 :=
.seq NamedBody161_721 NamedBody161_1350

def NamedBody161_1352 : StackLang.HolProg 64 :=
.seq NamedBody161_720 NamedBody161_1351

def NamedBody161_1353 : StackLang.HolProg 64 :=
.seq NamedBody161_719 NamedBody161_1352

def NamedBody161_1354 : StackLang.HolProg 64 :=
.seq NamedBody161_718 NamedBody161_1353

def NamedBody161_1355 : StackLang.HolProg 64 :=
.seq NamedBody161_717 NamedBody161_1354

def NamedBody161_1356 : StackLang.HolProg 64 :=
.seq NamedBody161_338 NamedBody161_1355

def NamedBody161_1357 : StackLang.HolProg 64 :=
.seq NamedBody161_337 NamedBody161_1356

def NamedBody161_1358 : StackLang.HolProg 64 :=
.seq NamedBody161_336 NamedBody161_1357

def NamedBody161_1359 : StackLang.HolProg 64 :=
.seq NamedBody161_335 NamedBody161_1358

def NamedBody161_1360 : StackLang.HolProg 64 :=
.seq NamedBody161_334 NamedBody161_1359

def NamedBody161_1361 : StackLang.HolProg 64 :=
.seq NamedBody161_115 NamedBody161_1360

def NamedBody161_1362 : StackLang.HolProg 64 :=
.seq NamedBody161_114 NamedBody161_1361

def NamedBody161_1363 : StackLang.HolProg 64 :=
.seq NamedBody161_113 NamedBody161_1362

def NamedBody161_1364 : StackLang.HolProg 64 :=
.seq NamedBody161_112 NamedBody161_1363

def NamedBody161_1365 : StackLang.HolProg 64 :=
.seq NamedBody161_111 NamedBody161_1364

def NamedBody161_1366 : StackLang.HolProg 64 :=
.seq NamedBody161_94 NamedBody161_1365

def NamedBody161_1367 : StackLang.HolProg 64 :=
.seq NamedBody161_93 NamedBody161_1366

def NamedBody161_1368 : StackLang.HolProg 64 :=
.seq NamedBody161_92 NamedBody161_1367

def NamedBody161_1369 : StackLang.HolProg 64 :=
.seq NamedBody161_91 NamedBody161_1368

def NamedBody161_1370 : StackLang.HolProg 64 :=
.seq NamedBody161_90 NamedBody161_1369

def NamedBody161_1371 : StackLang.HolProg 64 :=
.seq NamedBody161_89 NamedBody161_1370

def NamedBody161_1372 : StackLang.HolProg 64 :=
.seq NamedBody161_10 NamedBody161_1371

def NamedBody161_1373 : StackLang.HolProg 64 :=
.seq NamedBody161_9 NamedBody161_1372

def NamedBody161_1374 : StackLang.HolProg 64 :=
.seq NamedBody161_6 NamedBody161_1373

def Named161 : Nat × StackLang.HolProg 64 := (161, NamedBody161_1374)
theorem Named161_eq : StackNames.progCompEntryHOL RiscVConfig.riscvNames Removed161 = Named161 := by
  kernel_rfl
#print axioms Named161_eq
end InitECandidate.Proofs.BackendStages
