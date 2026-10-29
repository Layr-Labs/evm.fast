import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.BackendStages.Removed329
import Flapjack.Compiler.Backend.Backend
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
namespace InitECandidate.Proofs.BackendStages
def NamedBody329_0 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 40#64)))

def NamedBody329_1 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 2#64)

def NamedBody329_2 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 10

def NamedBody329_3 : StackLang.HolProg 64 :=
.seq NamedBody329_1 NamedBody329_2

def NamedBody329_4 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody329_5 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) NamedBody329_3 NamedBody329_4

def NamedBody329_6 : StackLang.HolProg 64 :=
.seq NamedBody329_0 NamedBody329_5

def NamedBody329_7 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 13 10
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 10)))

def NamedBody329_8 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 0#64)

def NamedBody329_9 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody329_10 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody329_11 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 128#64)

def NamedBody329_12 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store8 10
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 11 0#64))

def NamedBody329_13 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 1#64)

def NamedBody329_14 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody329_15 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 40#64)))

def NamedBody329_16 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 1

def NamedBody329_17 : StackLang.HolProg 64 :=
.seq NamedBody329_15 NamedBody329_16

def NamedBody329_18 : StackLang.HolProg 64 :=
.seq NamedBody329_14 NamedBody329_17

def NamedBody329_19 : StackLang.HolProg 64 :=
.seq NamedBody329_13 NamedBody329_18

def NamedBody329_20 : StackLang.HolProg 64 :=
.seq NamedBody329_12 NamedBody329_19

def NamedBody329_21 : StackLang.HolProg 64 :=
.seq NamedBody329_11 NamedBody329_20

def NamedBody329_22 : StackLang.HolProg 64 :=
.seq NamedBody329_10 NamedBody329_21

def NamedBody329_23 : StackLang.HolProg 64 :=
.seq NamedBody329_9 NamedBody329_22

def NamedBody329_24 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 11
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 24#64))

def NamedBody329_25 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.equal) 13 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 10) NamedBody329_23 NamedBody329_24

def NamedBody329_26 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody329_27 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody329_28 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody329_29 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 10
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 13 0#64))

def NamedBody329_30 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 11 0#64)

def NamedBody329_31 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody329_32 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 10
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 24#64))

def NamedBody329_33 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 11 160#64)

def NamedBody329_34 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store8 11
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 10 0#64))

def NamedBody329_35 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody329_36 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 10 10
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 1#64)))

def NamedBody329_37 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody329_38 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 11
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 13 24#64))

def NamedBody329_39 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 12 32#64)

def NamedBody329_40 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody329_41 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody329_42 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 929#64)

def NamedBody329_43 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody329_44 : StackLang.HolProg 64 :=
.seq NamedBody329_42 NamedBody329_43

def NamedBody329_45 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody329_46 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 2#64)

def NamedBody329_47 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 10

def NamedBody329_48 : StackLang.HolProg 64 :=
.seq NamedBody329_46 NamedBody329_47

def NamedBody329_49 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody329_50 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) NamedBody329_48 NamedBody329_49

def NamedBody329_51 : StackLang.HolProg 64 :=
.seq NamedBody329_45 NamedBody329_50

def NamedBody329_52 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def NamedBody329_53 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody329_54 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 329 3

def NamedBody329_55 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody329_56 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody329_57 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody329_58 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody329_59 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def NamedBody329_60 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def NamedBody329_61 : StackLang.HolProg 64 :=
.seq NamedBody329_59 NamedBody329_60

def NamedBody329_62 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def NamedBody329_63 : StackLang.HolProg 64 :=
.seq NamedBody329_61 NamedBody329_62

def NamedBody329_64 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody329_65 : StackLang.HolProg 64 :=
.seq NamedBody329_63 NamedBody329_64

def NamedBody329_66 : StackLang.HolProg 64 :=
.seq NamedBody329_58 NamedBody329_65

def NamedBody329_67 : StackLang.HolProg 64 :=
.seq NamedBody329_57 NamedBody329_66

def NamedBody329_68 : StackLang.HolProg 64 :=
.seq NamedBody329_56 NamedBody329_67

def NamedBody329_69 : StackLang.HolProg 64 :=
.seq NamedBody329_55 NamedBody329_68

def NamedBody329_70 : StackLang.HolProg 64 :=
.seq NamedBody329_54 NamedBody329_69

def NamedBody329_71 : StackLang.HolProg 64 :=
.seq NamedBody329_53 NamedBody329_70

def NamedBody329_72 : StackLang.HolProg 64 :=
.seq NamedBody329_52 NamedBody329_71

def NamedBody329_73 : StackLang.HolProg 64 :=
.seq NamedBody329_51 NamedBody329_72

def NamedBody329_74 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody329_75 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody329_76 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody329_77 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody329_78 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody329_79 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody329_80 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody329_81 : StackLang.HolProg 64 :=
.seq NamedBody329_79 NamedBody329_80

def NamedBody329_82 : StackLang.HolProg 64 :=
.seq NamedBody329_78 NamedBody329_81

def NamedBody329_83 : StackLang.HolProg 64 :=
.seq NamedBody329_77 NamedBody329_82

def NamedBody329_84 : StackLang.HolProg 64 :=
.seq NamedBody329_76 NamedBody329_83

def NamedBody329_85 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody329_86 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def NamedBody329_87 : StackLang.HolProg 64 :=
.seq NamedBody329_85 NamedBody329_86

def NamedBody329_88 : StackLang.HolProg 64 :=
.call (some (NamedBody329_84, 1, 329, 2)) (Sum.inl 77) (some (NamedBody329_87, 329, 3))

def NamedBody329_89 : StackLang.HolProg 64 :=
.seq NamedBody329_75 NamedBody329_88

def NamedBody329_90 : StackLang.HolProg 64 :=
.seq NamedBody329_74 NamedBody329_89

def NamedBody329_91 : StackLang.HolProg 64 :=
.seq NamedBody329_73 NamedBody329_90

def NamedBody329_92 : StackLang.HolProg 64 :=
.seq NamedBody329_44 NamedBody329_91

def NamedBody329_93 : StackLang.HolProg 64 :=
.seq NamedBody329_41 NamedBody329_92

def NamedBody329_94 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody329_95 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 33#64)

def NamedBody329_96 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody329_97 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 40#64)))

def NamedBody329_98 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 1

def NamedBody329_99 : StackLang.HolProg 64 :=
.seq NamedBody329_97 NamedBody329_98

def NamedBody329_100 : StackLang.HolProg 64 :=
.seq NamedBody329_96 NamedBody329_99

def NamedBody329_101 : StackLang.HolProg 64 :=
.seq NamedBody329_95 NamedBody329_100

def NamedBody329_102 : StackLang.HolProg 64 :=
.seq NamedBody329_94 NamedBody329_101

def NamedBody329_103 : StackLang.HolProg 64 :=
.seq NamedBody329_93 NamedBody329_102

def NamedBody329_104 : StackLang.HolProg 64 :=
.seq NamedBody329_40 NamedBody329_103

def NamedBody329_105 : StackLang.HolProg 64 :=
.seq NamedBody329_39 NamedBody329_104

def NamedBody329_106 : StackLang.HolProg 64 :=
.seq NamedBody329_38 NamedBody329_105

def NamedBody329_107 : StackLang.HolProg 64 :=
.seq NamedBody329_37 NamedBody329_106

def NamedBody329_108 : StackLang.HolProg 64 :=
.seq NamedBody329_36 NamedBody329_107

def NamedBody329_109 : StackLang.HolProg 64 :=
.seq NamedBody329_35 NamedBody329_108

def NamedBody329_110 : StackLang.HolProg 64 :=
.seq NamedBody329_34 NamedBody329_109

def NamedBody329_111 : StackLang.HolProg 64 :=
.seq NamedBody329_33 NamedBody329_110

def NamedBody329_112 : StackLang.HolProg 64 :=
.seq NamedBody329_32 NamedBody329_111

def NamedBody329_113 : StackLang.HolProg 64 :=
.seq NamedBody329_31 NamedBody329_112

def NamedBody329_114 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 32#64))

def NamedBody329_115 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.equal) 10 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 11) NamedBody329_113 NamedBody329_114

def NamedBody329_116 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody329_117 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody329_118 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody329_119 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 13 8#64))

def NamedBody329_120 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 0#64)

def NamedBody329_121 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody329_122 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 13#64)

def NamedBody329_123 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 13
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody329_124 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody329_125 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 930#64)

def NamedBody329_126 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody329_127 : StackLang.HolProg 64 :=
.seq NamedBody329_125 NamedBody329_126

def NamedBody329_128 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody329_129 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 2#64)

def NamedBody329_130 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 10

def NamedBody329_131 : StackLang.HolProg 64 :=
.seq NamedBody329_129 NamedBody329_130

def NamedBody329_132 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody329_133 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) NamedBody329_131 NamedBody329_132

def NamedBody329_134 : StackLang.HolProg 64 :=
.seq NamedBody329_128 NamedBody329_133

def NamedBody329_135 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def NamedBody329_136 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody329_137 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 329 5

def NamedBody329_138 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody329_139 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody329_140 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody329_141 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody329_142 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def NamedBody329_143 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def NamedBody329_144 : StackLang.HolProg 64 :=
.seq NamedBody329_142 NamedBody329_143

def NamedBody329_145 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def NamedBody329_146 : StackLang.HolProg 64 :=
.seq NamedBody329_144 NamedBody329_145

def NamedBody329_147 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody329_148 : StackLang.HolProg 64 :=
.seq NamedBody329_146 NamedBody329_147

def NamedBody329_149 : StackLang.HolProg 64 :=
.seq NamedBody329_141 NamedBody329_148

def NamedBody329_150 : StackLang.HolProg 64 :=
.seq NamedBody329_140 NamedBody329_149

def NamedBody329_151 : StackLang.HolProg 64 :=
.seq NamedBody329_139 NamedBody329_150

def NamedBody329_152 : StackLang.HolProg 64 :=
.seq NamedBody329_138 NamedBody329_151

def NamedBody329_153 : StackLang.HolProg 64 :=
.seq NamedBody329_137 NamedBody329_152

def NamedBody329_154 : StackLang.HolProg 64 :=
.seq NamedBody329_136 NamedBody329_153

def NamedBody329_155 : StackLang.HolProg 64 :=
.seq NamedBody329_135 NamedBody329_154

def NamedBody329_156 : StackLang.HolProg 64 :=
.seq NamedBody329_134 NamedBody329_155

def NamedBody329_157 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody329_158 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody329_159 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody329_160 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody329_161 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody329_162 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody329_163 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 13
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody329_164 : StackLang.HolProg 64 :=
.seq NamedBody329_162 NamedBody329_163

def NamedBody329_165 : StackLang.HolProg 64 :=
.seq NamedBody329_161 NamedBody329_164

def NamedBody329_166 : StackLang.HolProg 64 :=
.seq NamedBody329_160 NamedBody329_165

def NamedBody329_167 : StackLang.HolProg 64 :=
.seq NamedBody329_159 NamedBody329_166

def NamedBody329_168 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 13
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody329_169 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def NamedBody329_170 : StackLang.HolProg 64 :=
.seq NamedBody329_168 NamedBody329_169

def NamedBody329_171 : StackLang.HolProg 64 :=
.call (some (NamedBody329_167, 1, 329, 4)) (Sum.inl 286) (some (NamedBody329_170, 329, 5))

def NamedBody329_172 : StackLang.HolProg 64 :=
.seq NamedBody329_158 NamedBody329_171

def NamedBody329_173 : StackLang.HolProg 64 :=
.seq NamedBody329_157 NamedBody329_172

def NamedBody329_174 : StackLang.HolProg 64 :=
.seq NamedBody329_156 NamedBody329_173

def NamedBody329_175 : StackLang.HolProg 64 :=
.seq NamedBody329_127 NamedBody329_174

def NamedBody329_176 : StackLang.HolProg 64 :=
.seq NamedBody329_124 NamedBody329_175

def NamedBody329_177 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody329_178 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody329_179 : StackLang.HolProg 64 :=
.seq NamedBody329_177 NamedBody329_178

def NamedBody329_180 : StackLang.HolProg 64 :=
.seq NamedBody329_176 NamedBody329_179

def NamedBody329_181 : StackLang.HolProg 64 :=
.seq NamedBody329_123 NamedBody329_180

def NamedBody329_182 : StackLang.HolProg 64 :=
.seq NamedBody329_122 NamedBody329_181

def NamedBody329_183 : StackLang.HolProg 64 :=
.seq NamedBody329_121 NamedBody329_182

def NamedBody329_184 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody329_185 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody329_186 : StackLang.HolProg 64 :=
.seq NamedBody329_184 NamedBody329_185

def NamedBody329_187 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.equal) 1 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 10) NamedBody329_183 NamedBody329_186

def NamedBody329_188 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody329_189 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody329_190 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 11
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 13 8#64))

def NamedBody329_191 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody329_192 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 12
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 13 16#64))

def NamedBody329_193 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody329_194 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 32#64)

def NamedBody329_195 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody329_196 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 10
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 24#64))

def NamedBody329_197 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 32#64))

def NamedBody329_198 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody329_199 : StackLang.HolProg 64 :=
.seq NamedBody329_197 NamedBody329_198

def NamedBody329_200 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 12
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody329_201 : StackLang.HolProg 64 :=
.seq NamedBody329_199 NamedBody329_200

def NamedBody329_202 : StackLang.HolProg 64 :=
.seq NamedBody329_196 NamedBody329_201

def NamedBody329_203 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody329_204 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 931#64)

def NamedBody329_205 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody329_206 : StackLang.HolProg 64 :=
.seq NamedBody329_204 NamedBody329_205

def NamedBody329_207 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody329_208 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 2#64)

def NamedBody329_209 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 10

def NamedBody329_210 : StackLang.HolProg 64 :=
.seq NamedBody329_208 NamedBody329_209

def NamedBody329_211 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody329_212 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) NamedBody329_210 NamedBody329_211

def NamedBody329_213 : StackLang.HolProg 64 :=
.seq NamedBody329_207 NamedBody329_212

def NamedBody329_214 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def NamedBody329_215 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody329_216 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 329 7

def NamedBody329_217 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody329_218 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody329_219 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody329_220 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody329_221 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def NamedBody329_222 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def NamedBody329_223 : StackLang.HolProg 64 :=
.seq NamedBody329_221 NamedBody329_222

def NamedBody329_224 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def NamedBody329_225 : StackLang.HolProg 64 :=
.seq NamedBody329_223 NamedBody329_224

def NamedBody329_226 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody329_227 : StackLang.HolProg 64 :=
.seq NamedBody329_225 NamedBody329_226

def NamedBody329_228 : StackLang.HolProg 64 :=
.seq NamedBody329_220 NamedBody329_227

def NamedBody329_229 : StackLang.HolProg 64 :=
.seq NamedBody329_219 NamedBody329_228

def NamedBody329_230 : StackLang.HolProg 64 :=
.seq NamedBody329_218 NamedBody329_229

def NamedBody329_231 : StackLang.HolProg 64 :=
.seq NamedBody329_217 NamedBody329_230

def NamedBody329_232 : StackLang.HolProg 64 :=
.seq NamedBody329_216 NamedBody329_231

def NamedBody329_233 : StackLang.HolProg 64 :=
.seq NamedBody329_215 NamedBody329_232

def NamedBody329_234 : StackLang.HolProg 64 :=
.seq NamedBody329_214 NamedBody329_233

def NamedBody329_235 : StackLang.HolProg 64 :=
.seq NamedBody329_213 NamedBody329_234

def NamedBody329_236 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody329_237 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody329_238 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody329_239 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody329_240 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody329_241 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody329_242 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody329_243 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 11
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody329_244 : StackLang.HolProg 64 :=
.seq NamedBody329_242 NamedBody329_243

def NamedBody329_245 : StackLang.HolProg 64 :=
.seq NamedBody329_241 NamedBody329_244

def NamedBody329_246 : StackLang.HolProg 64 :=
.seq NamedBody329_240 NamedBody329_245

def NamedBody329_247 : StackLang.HolProg 64 :=
.seq NamedBody329_239 NamedBody329_246

def NamedBody329_248 : StackLang.HolProg 64 :=
.seq NamedBody329_238 NamedBody329_247

def NamedBody329_249 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody329_250 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 11
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody329_251 : StackLang.HolProg 64 :=
.seq NamedBody329_249 NamedBody329_250

def NamedBody329_252 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def NamedBody329_253 : StackLang.HolProg 64 :=
.seq NamedBody329_251 NamedBody329_252

def NamedBody329_254 : StackLang.HolProg 64 :=
.call (some (NamedBody329_248, 1, 329, 6)) (Sum.inl 77) (some (NamedBody329_253, 329, 7))

def NamedBody329_255 : StackLang.HolProg 64 :=
.seq NamedBody329_237 NamedBody329_254

def NamedBody329_256 : StackLang.HolProg 64 :=
.seq NamedBody329_236 NamedBody329_255

def NamedBody329_257 : StackLang.HolProg 64 :=
.seq NamedBody329_235 NamedBody329_256

def NamedBody329_258 : StackLang.HolProg 64 :=
.seq NamedBody329_206 NamedBody329_257

def NamedBody329_259 : StackLang.HolProg 64 :=
.seq NamedBody329_203 NamedBody329_258

def NamedBody329_260 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody329_261 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 10 11
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 11)))

def NamedBody329_262 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 40#64)))

def NamedBody329_263 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 1

def NamedBody329_264 : StackLang.HolProg 64 :=
.seq NamedBody329_262 NamedBody329_263

def NamedBody329_265 : StackLang.HolProg 64 :=
.seq NamedBody329_261 NamedBody329_264

def NamedBody329_266 : StackLang.HolProg 64 :=
.seq NamedBody329_260 NamedBody329_265

def NamedBody329_267 : StackLang.HolProg 64 :=
.seq NamedBody329_259 NamedBody329_266

def NamedBody329_268 : StackLang.HolProg 64 :=
.seq NamedBody329_202 NamedBody329_267

def NamedBody329_269 : StackLang.HolProg 64 :=
.seq NamedBody329_195 NamedBody329_268

def NamedBody329_270 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody329_271 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 12 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1) NamedBody329_269 NamedBody329_270

def NamedBody329_272 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody329_273 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody329_274 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 10 13
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 13)))

def NamedBody329_275 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody329_276 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 932#64)

def NamedBody329_277 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody329_278 : StackLang.HolProg 64 :=
.seq NamedBody329_276 NamedBody329_277

def NamedBody329_279 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody329_280 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 2#64)

def NamedBody329_281 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 10

def NamedBody329_282 : StackLang.HolProg 64 :=
.seq NamedBody329_280 NamedBody329_281

def NamedBody329_283 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody329_284 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) NamedBody329_282 NamedBody329_283

def NamedBody329_285 : StackLang.HolProg 64 :=
.seq NamedBody329_279 NamedBody329_284

def NamedBody329_286 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def NamedBody329_287 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody329_288 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 329 9

def NamedBody329_289 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody329_290 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody329_291 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody329_292 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody329_293 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def NamedBody329_294 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def NamedBody329_295 : StackLang.HolProg 64 :=
.seq NamedBody329_293 NamedBody329_294

def NamedBody329_296 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def NamedBody329_297 : StackLang.HolProg 64 :=
.seq NamedBody329_295 NamedBody329_296

def NamedBody329_298 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody329_299 : StackLang.HolProg 64 :=
.seq NamedBody329_297 NamedBody329_298

def NamedBody329_300 : StackLang.HolProg 64 :=
.seq NamedBody329_292 NamedBody329_299

def NamedBody329_301 : StackLang.HolProg 64 :=
.seq NamedBody329_291 NamedBody329_300

def NamedBody329_302 : StackLang.HolProg 64 :=
.seq NamedBody329_290 NamedBody329_301

def NamedBody329_303 : StackLang.HolProg 64 :=
.seq NamedBody329_289 NamedBody329_302

def NamedBody329_304 : StackLang.HolProg 64 :=
.seq NamedBody329_288 NamedBody329_303

def NamedBody329_305 : StackLang.HolProg 64 :=
.seq NamedBody329_287 NamedBody329_304

def NamedBody329_306 : StackLang.HolProg 64 :=
.seq NamedBody329_286 NamedBody329_305

def NamedBody329_307 : StackLang.HolProg 64 :=
.seq NamedBody329_285 NamedBody329_306

def NamedBody329_308 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody329_309 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody329_310 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody329_311 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody329_312 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody329_313 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody329_314 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 11 10
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 10)))

def NamedBody329_315 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 24#64))

def NamedBody329_316 : StackLang.HolProg 64 :=
.seq NamedBody329_314 NamedBody329_315

def NamedBody329_317 : StackLang.HolProg 64 :=
.seq NamedBody329_313 NamedBody329_316

def NamedBody329_318 : StackLang.HolProg 64 :=
.seq NamedBody329_312 NamedBody329_317

def NamedBody329_319 : StackLang.HolProg 64 :=
.seq NamedBody329_311 NamedBody329_318

def NamedBody329_320 : StackLang.HolProg 64 :=
.seq NamedBody329_310 NamedBody329_319

def NamedBody329_321 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 24#64))

def NamedBody329_322 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def NamedBody329_323 : StackLang.HolProg 64 :=
.seq NamedBody329_321 NamedBody329_322

def NamedBody329_324 : StackLang.HolProg 64 :=
.call (some (NamedBody329_320, 1, 329, 8)) (Sum.inl 328) (some (NamedBody329_323, 329, 9))

def NamedBody329_325 : StackLang.HolProg 64 :=
.seq NamedBody329_309 NamedBody329_324

def NamedBody329_326 : StackLang.HolProg 64 :=
.seq NamedBody329_308 NamedBody329_325

def NamedBody329_327 : StackLang.HolProg 64 :=
.seq NamedBody329_307 NamedBody329_326

def NamedBody329_328 : StackLang.HolProg 64 :=
.seq NamedBody329_278 NamedBody329_327

def NamedBody329_329 : StackLang.HolProg 64 :=
.seq NamedBody329_275 NamedBody329_328

def NamedBody329_330 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody329_331 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody329_332 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 160#64)

def NamedBody329_333 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store8 10
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 1 0#64))

def NamedBody329_334 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody329_335 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 10 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 1#64)))

def NamedBody329_336 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody329_337 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 12 32#64)

def NamedBody329_338 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody329_339 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody329_340 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 933#64)

def NamedBody329_341 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody329_342 : StackLang.HolProg 64 :=
.seq NamedBody329_340 NamedBody329_341

def NamedBody329_343 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody329_344 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 2#64)

def NamedBody329_345 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 10

def NamedBody329_346 : StackLang.HolProg 64 :=
.seq NamedBody329_344 NamedBody329_345

def NamedBody329_347 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody329_348 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) NamedBody329_346 NamedBody329_347

def NamedBody329_349 : StackLang.HolProg 64 :=
.seq NamedBody329_343 NamedBody329_348

def NamedBody329_350 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def NamedBody329_351 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody329_352 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 329 11

def NamedBody329_353 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody329_354 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody329_355 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody329_356 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody329_357 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def NamedBody329_358 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def NamedBody329_359 : StackLang.HolProg 64 :=
.seq NamedBody329_357 NamedBody329_358

def NamedBody329_360 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def NamedBody329_361 : StackLang.HolProg 64 :=
.seq NamedBody329_359 NamedBody329_360

def NamedBody329_362 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody329_363 : StackLang.HolProg 64 :=
.seq NamedBody329_361 NamedBody329_362

def NamedBody329_364 : StackLang.HolProg 64 :=
.seq NamedBody329_356 NamedBody329_363

def NamedBody329_365 : StackLang.HolProg 64 :=
.seq NamedBody329_355 NamedBody329_364

def NamedBody329_366 : StackLang.HolProg 64 :=
.seq NamedBody329_354 NamedBody329_365

def NamedBody329_367 : StackLang.HolProg 64 :=
.seq NamedBody329_353 NamedBody329_366

def NamedBody329_368 : StackLang.HolProg 64 :=
.seq NamedBody329_352 NamedBody329_367

def NamedBody329_369 : StackLang.HolProg 64 :=
.seq NamedBody329_351 NamedBody329_368

def NamedBody329_370 : StackLang.HolProg 64 :=
.seq NamedBody329_350 NamedBody329_369

def NamedBody329_371 : StackLang.HolProg 64 :=
.seq NamedBody329_349 NamedBody329_370

def NamedBody329_372 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody329_373 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody329_374 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody329_375 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody329_376 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody329_377 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody329_378 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 32#64))

def NamedBody329_379 : StackLang.HolProg 64 :=
.seq NamedBody329_377 NamedBody329_378

def NamedBody329_380 : StackLang.HolProg 64 :=
.seq NamedBody329_376 NamedBody329_379

def NamedBody329_381 : StackLang.HolProg 64 :=
.seq NamedBody329_375 NamedBody329_380

def NamedBody329_382 : StackLang.HolProg 64 :=
.seq NamedBody329_374 NamedBody329_381

def NamedBody329_383 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 32#64))

def NamedBody329_384 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def NamedBody329_385 : StackLang.HolProg 64 :=
.seq NamedBody329_383 NamedBody329_384

def NamedBody329_386 : StackLang.HolProg 64 :=
.call (some (NamedBody329_382, 1, 329, 10)) (Sum.inl 77) (some (NamedBody329_385, 329, 11))

def NamedBody329_387 : StackLang.HolProg 64 :=
.seq NamedBody329_373 NamedBody329_386

def NamedBody329_388 : StackLang.HolProg 64 :=
.seq NamedBody329_372 NamedBody329_387

def NamedBody329_389 : StackLang.HolProg 64 :=
.seq NamedBody329_371 NamedBody329_388

def NamedBody329_390 : StackLang.HolProg 64 :=
.seq NamedBody329_342 NamedBody329_389

def NamedBody329_391 : StackLang.HolProg 64 :=
.seq NamedBody329_339 NamedBody329_390

def NamedBody329_392 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody329_393 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 33#64)

def NamedBody329_394 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody329_395 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 40#64)))

def NamedBody329_396 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 1

def NamedBody329_397 : StackLang.HolProg 64 :=
.seq NamedBody329_395 NamedBody329_396

def NamedBody329_398 : StackLang.HolProg 64 :=
.seq NamedBody329_394 NamedBody329_397

def NamedBody329_399 : StackLang.HolProg 64 :=
.seq NamedBody329_393 NamedBody329_398

def NamedBody329_400 : StackLang.HolProg 64 :=
.seq NamedBody329_392 NamedBody329_399

def NamedBody329_401 : StackLang.HolProg 64 :=
.seq NamedBody329_391 NamedBody329_400

def NamedBody329_402 : StackLang.HolProg 64 :=
.seq NamedBody329_338 NamedBody329_401

def NamedBody329_403 : StackLang.HolProg 64 :=
.seq NamedBody329_337 NamedBody329_402

def NamedBody329_404 : StackLang.HolProg 64 :=
.seq NamedBody329_336 NamedBody329_403

def NamedBody329_405 : StackLang.HolProg 64 :=
.seq NamedBody329_335 NamedBody329_404

def NamedBody329_406 : StackLang.HolProg 64 :=
.seq NamedBody329_334 NamedBody329_405

def NamedBody329_407 : StackLang.HolProg 64 :=
.seq NamedBody329_333 NamedBody329_406

def NamedBody329_408 : StackLang.HolProg 64 :=
.seq NamedBody329_332 NamedBody329_407

def NamedBody329_409 : StackLang.HolProg 64 :=
.seq NamedBody329_331 NamedBody329_408

def NamedBody329_410 : StackLang.HolProg 64 :=
.seq NamedBody329_330 NamedBody329_409

def NamedBody329_411 : StackLang.HolProg 64 :=
.seq NamedBody329_329 NamedBody329_410

def NamedBody329_412 : StackLang.HolProg 64 :=
.seq NamedBody329_274 NamedBody329_411

def NamedBody329_413 : StackLang.HolProg 64 :=
.seq NamedBody329_273 NamedBody329_412

def NamedBody329_414 : StackLang.HolProg 64 :=
.seq NamedBody329_272 NamedBody329_413

def NamedBody329_415 : StackLang.HolProg 64 :=
.seq NamedBody329_271 NamedBody329_414

def NamedBody329_416 : StackLang.HolProg 64 :=
.seq NamedBody329_194 NamedBody329_415

def NamedBody329_417 : StackLang.HolProg 64 :=
.seq NamedBody329_193 NamedBody329_416

def NamedBody329_418 : StackLang.HolProg 64 :=
.seq NamedBody329_192 NamedBody329_417

def NamedBody329_419 : StackLang.HolProg 64 :=
.seq NamedBody329_191 NamedBody329_418

def NamedBody329_420 : StackLang.HolProg 64 :=
.seq NamedBody329_190 NamedBody329_419

def NamedBody329_421 : StackLang.HolProg 64 :=
.seq NamedBody329_189 NamedBody329_420

def NamedBody329_422 : StackLang.HolProg 64 :=
.seq NamedBody329_188 NamedBody329_421

def NamedBody329_423 : StackLang.HolProg 64 :=
.seq NamedBody329_187 NamedBody329_422

def NamedBody329_424 : StackLang.HolProg 64 :=
.seq NamedBody329_120 NamedBody329_423

def NamedBody329_425 : StackLang.HolProg 64 :=
.seq NamedBody329_119 NamedBody329_424

def NamedBody329_426 : StackLang.HolProg 64 :=
.seq NamedBody329_118 NamedBody329_425

def NamedBody329_427 : StackLang.HolProg 64 :=
.seq NamedBody329_117 NamedBody329_426

def NamedBody329_428 : StackLang.HolProg 64 :=
.seq NamedBody329_116 NamedBody329_427

def NamedBody329_429 : StackLang.HolProg 64 :=
.seq NamedBody329_115 NamedBody329_428

def NamedBody329_430 : StackLang.HolProg 64 :=
.seq NamedBody329_30 NamedBody329_429

def NamedBody329_431 : StackLang.HolProg 64 :=
.seq NamedBody329_29 NamedBody329_430

def NamedBody329_432 : StackLang.HolProg 64 :=
.seq NamedBody329_28 NamedBody329_431

def NamedBody329_433 : StackLang.HolProg 64 :=
.seq NamedBody329_27 NamedBody329_432

def NamedBody329_434 : StackLang.HolProg 64 :=
.seq NamedBody329_26 NamedBody329_433

def NamedBody329_435 : StackLang.HolProg 64 :=
.seq NamedBody329_25 NamedBody329_434

def NamedBody329_436 : StackLang.HolProg 64 :=
.seq NamedBody329_8 NamedBody329_435

def NamedBody329_437 : StackLang.HolProg 64 :=
.seq NamedBody329_7 NamedBody329_436

def NamedBody329_438 : StackLang.HolProg 64 :=
.seq NamedBody329_6 NamedBody329_437

def Named329 : Nat × StackLang.HolProg 64 := (329, NamedBody329_438)
theorem Named329_eq : StackNames.progCompEntryHOL RiscVConfig.riscvNames Removed329 = Named329 := by
  kernel_rfl
#print axioms Named329_eq
end InitECandidate.Proofs.BackendStages
