import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.BackendStages.Removed179
import Flapjack.Compiler.Backend.Backend
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
namespace InitECandidate.Proofs.BackendStages
def NamedBody179_0 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody179_1 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 2#64)

def NamedBody179_2 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 10

def NamedBody179_3 : StackLang.HolProg 64 :=
.seq NamedBody179_1 NamedBody179_2

def NamedBody179_4 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody179_5 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) NamedBody179_3 NamedBody179_4

def NamedBody179_6 : StackLang.HolProg 64 :=
.seq NamedBody179_0 NamedBody179_5

def NamedBody179_7 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody179_8 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 12 1#64)

def NamedBody179_9 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody179_10 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 12 1#64)

def NamedBody179_11 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody179_12 : StackLang.HolProg 64 :=
.seq NamedBody179_10 NamedBody179_11

def NamedBody179_13 : StackLang.HolProg 64 :=
.seq NamedBody179_9 NamedBody179_12

def NamedBody179_14 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody179_15 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 12 0#64)

def NamedBody179_16 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody179_17 : StackLang.HolProg 64 :=
.seq NamedBody179_15 NamedBody179_16

def NamedBody179_18 : StackLang.HolProg 64 :=
.seq NamedBody179_14 NamedBody179_17

def NamedBody179_19 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.equal) 11 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 12) NamedBody179_13 NamedBody179_18

def NamedBody179_20 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody179_21 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody179_22 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 13 128#64)

def NamedBody179_23 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody179_24 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 1#64)

def NamedBody179_25 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody179_26 : StackLang.HolProg 64 :=
.seq NamedBody179_24 NamedBody179_25

def NamedBody179_27 : StackLang.HolProg 64 :=
.seq NamedBody179_23 NamedBody179_26

def NamedBody179_28 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody179_29 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 0#64)

def NamedBody179_30 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody179_31 : StackLang.HolProg 64 :=
.seq NamedBody179_29 NamedBody179_30

def NamedBody179_32 : StackLang.HolProg 64 :=
.seq NamedBody179_28 NamedBody179_31

def NamedBody179_33 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 10 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 13) NamedBody179_27 NamedBody179_32

def NamedBody179_34 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody179_35 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody179_36 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.and 10 10
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 12)))

def NamedBody179_37 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 1#64)

def NamedBody179_38 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody179_39 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody179_40 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 1

def NamedBody179_41 : StackLang.HolProg 64 :=
.seq NamedBody179_39 NamedBody179_40

def NamedBody179_42 : StackLang.HolProg 64 :=
.seq NamedBody179_38 NamedBody179_41

def NamedBody179_43 : StackLang.HolProg 64 :=
.seq NamedBody179_37 NamedBody179_42

def NamedBody179_44 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody179_45 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.notEqual) 10 (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 0#64) NamedBody179_43 NamedBody179_44

def NamedBody179_46 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody179_47 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 10 11
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 11)))

def NamedBody179_48 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody179_49 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 11
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody179_50 : StackLang.HolProg 64 :=
.seq NamedBody179_48 NamedBody179_49

def NamedBody179_51 : StackLang.HolProg 64 :=
.seq NamedBody179_47 NamedBody179_50

def NamedBody179_52 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody179_53 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 201#64)

def NamedBody179_54 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody179_55 : StackLang.HolProg 64 :=
.seq NamedBody179_53 NamedBody179_54

def NamedBody179_56 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody179_57 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 2#64)

def NamedBody179_58 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 10

def NamedBody179_59 : StackLang.HolProg 64 :=
.seq NamedBody179_57 NamedBody179_58

def NamedBody179_60 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody179_61 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) NamedBody179_59 NamedBody179_60

def NamedBody179_62 : StackLang.HolProg 64 :=
.seq NamedBody179_56 NamedBody179_61

def NamedBody179_63 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def NamedBody179_64 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody179_65 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 179 3

def NamedBody179_66 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody179_67 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody179_68 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody179_69 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody179_70 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def NamedBody179_71 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def NamedBody179_72 : StackLang.HolProg 64 :=
.seq NamedBody179_70 NamedBody179_71

def NamedBody179_73 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def NamedBody179_74 : StackLang.HolProg 64 :=
.seq NamedBody179_72 NamedBody179_73

def NamedBody179_75 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody179_76 : StackLang.HolProg 64 :=
.seq NamedBody179_74 NamedBody179_75

def NamedBody179_77 : StackLang.HolProg 64 :=
.seq NamedBody179_69 NamedBody179_76

def NamedBody179_78 : StackLang.HolProg 64 :=
.seq NamedBody179_68 NamedBody179_77

def NamedBody179_79 : StackLang.HolProg 64 :=
.seq NamedBody179_67 NamedBody179_78

def NamedBody179_80 : StackLang.HolProg 64 :=
.seq NamedBody179_66 NamedBody179_79

def NamedBody179_81 : StackLang.HolProg 64 :=
.seq NamedBody179_65 NamedBody179_80

def NamedBody179_82 : StackLang.HolProg 64 :=
.seq NamedBody179_64 NamedBody179_81

def NamedBody179_83 : StackLang.HolProg 64 :=
.seq NamedBody179_63 NamedBody179_82

def NamedBody179_84 : StackLang.HolProg 64 :=
.seq NamedBody179_62 NamedBody179_83

def NamedBody179_85 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody179_86 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody179_87 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody179_88 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody179_89 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody179_90 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody179_91 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 11 10
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 10)))

def NamedBody179_92 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 12
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody179_93 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody179_94 : StackLang.HolProg 64 :=
.seq NamedBody179_92 NamedBody179_93

def NamedBody179_95 : StackLang.HolProg 64 :=
.seq NamedBody179_91 NamedBody179_94

def NamedBody179_96 : StackLang.HolProg 64 :=
.seq NamedBody179_90 NamedBody179_95

def NamedBody179_97 : StackLang.HolProg 64 :=
.seq NamedBody179_89 NamedBody179_96

def NamedBody179_98 : StackLang.HolProg 64 :=
.seq NamedBody179_88 NamedBody179_97

def NamedBody179_99 : StackLang.HolProg 64 :=
.seq NamedBody179_87 NamedBody179_98

def NamedBody179_100 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 12
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody179_101 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody179_102 : StackLang.HolProg 64 :=
.seq NamedBody179_100 NamedBody179_101

def NamedBody179_103 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def NamedBody179_104 : StackLang.HolProg 64 :=
.seq NamedBody179_102 NamedBody179_103

def NamedBody179_105 : StackLang.HolProg 64 :=
.call (some (NamedBody179_99, 1, 179, 2)) (Sum.inl 175) (some (NamedBody179_104, 179, 3))

def NamedBody179_106 : StackLang.HolProg 64 :=
.seq NamedBody179_86 NamedBody179_105

def NamedBody179_107 : StackLang.HolProg 64 :=
.seq NamedBody179_85 NamedBody179_106

def NamedBody179_108 : StackLang.HolProg 64 :=
.seq NamedBody179_84 NamedBody179_107

def NamedBody179_109 : StackLang.HolProg 64 :=
.seq NamedBody179_55 NamedBody179_108

def NamedBody179_110 : StackLang.HolProg 64 :=
.seq NamedBody179_52 NamedBody179_109

def NamedBody179_111 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody179_112 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody179_113 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 10 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 11)))

def NamedBody179_114 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody179_115 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody179_116 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 12

def NamedBody179_117 : StackLang.HolProg 64 :=
.seq NamedBody179_115 NamedBody179_116

def NamedBody179_118 : StackLang.HolProg 64 :=
.seq NamedBody179_114 NamedBody179_117

def NamedBody179_119 : StackLang.HolProg 64 :=
.seq NamedBody179_113 NamedBody179_118

def NamedBody179_120 : StackLang.HolProg 64 :=
.seq NamedBody179_112 NamedBody179_119

def NamedBody179_121 : StackLang.HolProg 64 :=
.seq NamedBody179_111 NamedBody179_120

def NamedBody179_122 : StackLang.HolProg 64 :=
.seq NamedBody179_110 NamedBody179_121

def NamedBody179_123 : StackLang.HolProg 64 :=
.seq NamedBody179_51 NamedBody179_122

def NamedBody179_124 : StackLang.HolProg 64 :=
.seq NamedBody179_46 NamedBody179_123

def NamedBody179_125 : StackLang.HolProg 64 :=
.seq NamedBody179_45 NamedBody179_124

def NamedBody179_126 : StackLang.HolProg 64 :=
.seq NamedBody179_36 NamedBody179_125

def NamedBody179_127 : StackLang.HolProg 64 :=
.seq NamedBody179_35 NamedBody179_126

def NamedBody179_128 : StackLang.HolProg 64 :=
.seq NamedBody179_34 NamedBody179_127

def NamedBody179_129 : StackLang.HolProg 64 :=
.seq NamedBody179_33 NamedBody179_128

def NamedBody179_130 : StackLang.HolProg 64 :=
.seq NamedBody179_22 NamedBody179_129

def NamedBody179_131 : StackLang.HolProg 64 :=
.seq NamedBody179_21 NamedBody179_130

def NamedBody179_132 : StackLang.HolProg 64 :=
.seq NamedBody179_20 NamedBody179_131

def NamedBody179_133 : StackLang.HolProg 64 :=
.seq NamedBody179_19 NamedBody179_132

def NamedBody179_134 : StackLang.HolProg 64 :=
.seq NamedBody179_8 NamedBody179_133

def NamedBody179_135 : StackLang.HolProg 64 :=
.seq NamedBody179_7 NamedBody179_134

def NamedBody179_136 : StackLang.HolProg 64 :=
.seq NamedBody179_6 NamedBody179_135

def Named179 : Nat × StackLang.HolProg 64 := (179, NamedBody179_136)
theorem Named179_eq : StackNames.progCompEntryHOL RiscVConfig.riscvNames Removed179 = Named179 := by
  kernel_rfl
#print axioms Named179_eq
end InitECandidate.Proofs.BackendStages
