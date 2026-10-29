import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.BackendStages.Removed171
import Flapjack.Compiler.Backend.Backend
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
namespace InitECandidate.Proofs.BackendStages
def NamedBody171_0 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 32#64)))

def NamedBody171_1 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 2#64)

def NamedBody171_2 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 10

def NamedBody171_3 : StackLang.HolProg 64 :=
.seq NamedBody171_1 NamedBody171_2

def NamedBody171_4 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody171_5 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) NamedBody171_3 NamedBody171_4

def NamedBody171_6 : StackLang.HolProg 64 :=
.seq NamedBody171_0 NamedBody171_5

def NamedBody171_7 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody171_8 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 13 0#64)

def NamedBody171_9 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody171_10 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody171_11 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 13 1#64)

def NamedBody171_12 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody171_13 : StackLang.HolProg 64 :=
.seq NamedBody171_11 NamedBody171_12

def NamedBody171_14 : StackLang.HolProg 64 :=
.seq NamedBody171_10 NamedBody171_13

def NamedBody171_15 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody171_16 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 13 0#64)

def NamedBody171_17 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody171_18 : StackLang.HolProg 64 :=
.seq NamedBody171_16 NamedBody171_17

def NamedBody171_19 : StackLang.HolProg 64 :=
.seq NamedBody171_15 NamedBody171_18

def NamedBody171_20 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 13 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 11) NamedBody171_14 NamedBody171_19

def NamedBody171_21 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody171_22 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody171_23 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load8 10
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 10 0#64))

def NamedBody171_24 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody171_25 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 5 0#64)

def NamedBody171_26 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody171_27 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 1#64)

def NamedBody171_28 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody171_29 : StackLang.HolProg 64 :=
.seq NamedBody171_27 NamedBody171_28

def NamedBody171_30 : StackLang.HolProg 64 :=
.seq NamedBody171_26 NamedBody171_29

def NamedBody171_31 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody171_32 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 0#64)

def NamedBody171_33 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody171_34 : StackLang.HolProg 64 :=
.seq NamedBody171_32 NamedBody171_33

def NamedBody171_35 : StackLang.HolProg 64 :=
.seq NamedBody171_31 NamedBody171_34

def NamedBody171_36 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.equal) 10 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 5) NamedBody171_30 NamedBody171_35

def NamedBody171_37 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody171_38 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody171_39 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.and 10 10
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 13)))

def NamedBody171_40 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 21#64)

def NamedBody171_41 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 24#64))

def NamedBody171_42 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 11
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody171_43 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 12
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody171_44 : StackLang.HolProg 64 :=
.seq NamedBody171_42 NamedBody171_43

def NamedBody171_45 : StackLang.HolProg 64 :=
.seq NamedBody171_41 NamedBody171_44

def NamedBody171_46 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody171_47 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 192#64)

def NamedBody171_48 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody171_49 : StackLang.HolProg 64 :=
.seq NamedBody171_47 NamedBody171_48

def NamedBody171_50 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody171_51 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 2#64)

def NamedBody171_52 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 10

def NamedBody171_53 : StackLang.HolProg 64 :=
.seq NamedBody171_51 NamedBody171_52

def NamedBody171_54 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody171_55 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) NamedBody171_53 NamedBody171_54

def NamedBody171_56 : StackLang.HolProg 64 :=
.seq NamedBody171_50 NamedBody171_55

def NamedBody171_57 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def NamedBody171_58 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody171_59 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 171 3

def NamedBody171_60 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody171_61 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody171_62 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody171_63 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody171_64 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def NamedBody171_65 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def NamedBody171_66 : StackLang.HolProg 64 :=
.seq NamedBody171_64 NamedBody171_65

def NamedBody171_67 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def NamedBody171_68 : StackLang.HolProg 64 :=
.seq NamedBody171_66 NamedBody171_67

def NamedBody171_69 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody171_70 : StackLang.HolProg 64 :=
.seq NamedBody171_68 NamedBody171_69

def NamedBody171_71 : StackLang.HolProg 64 :=
.seq NamedBody171_63 NamedBody171_70

def NamedBody171_72 : StackLang.HolProg 64 :=
.seq NamedBody171_62 NamedBody171_71

def NamedBody171_73 : StackLang.HolProg 64 :=
.seq NamedBody171_61 NamedBody171_72

def NamedBody171_74 : StackLang.HolProg 64 :=
.seq NamedBody171_60 NamedBody171_73

def NamedBody171_75 : StackLang.HolProg 64 :=
.seq NamedBody171_59 NamedBody171_74

def NamedBody171_76 : StackLang.HolProg 64 :=
.seq NamedBody171_58 NamedBody171_75

def NamedBody171_77 : StackLang.HolProg 64 :=
.seq NamedBody171_57 NamedBody171_76

def NamedBody171_78 : StackLang.HolProg 64 :=
.seq NamedBody171_56 NamedBody171_77

def NamedBody171_79 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody171_80 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody171_81 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody171_82 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody171_83 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody171_84 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody171_85 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 11
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody171_86 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 12
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody171_87 : StackLang.HolProg 64 :=
.seq NamedBody171_85 NamedBody171_86

def NamedBody171_88 : StackLang.HolProg 64 :=
.seq NamedBody171_84 NamedBody171_87

def NamedBody171_89 : StackLang.HolProg 64 :=
.seq NamedBody171_83 NamedBody171_88

def NamedBody171_90 : StackLang.HolProg 64 :=
.seq NamedBody171_82 NamedBody171_89

def NamedBody171_91 : StackLang.HolProg 64 :=
.seq NamedBody171_81 NamedBody171_90

def NamedBody171_92 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 11
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody171_93 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 12
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody171_94 : StackLang.HolProg 64 :=
.seq NamedBody171_92 NamedBody171_93

def NamedBody171_95 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def NamedBody171_96 : StackLang.HolProg 64 :=
.seq NamedBody171_94 NamedBody171_95

def NamedBody171_97 : StackLang.HolProg 64 :=
.call (some (NamedBody171_91, 1, 171, 2)) (Sum.inl 159) (some (NamedBody171_96, 171, 3))

def NamedBody171_98 : StackLang.HolProg 64 :=
.seq NamedBody171_80 NamedBody171_97

def NamedBody171_99 : StackLang.HolProg 64 :=
.seq NamedBody171_79 NamedBody171_98

def NamedBody171_100 : StackLang.HolProg 64 :=
.seq NamedBody171_78 NamedBody171_99

def NamedBody171_101 : StackLang.HolProg 64 :=
.seq NamedBody171_49 NamedBody171_100

def NamedBody171_102 : StackLang.HolProg 64 :=
.seq NamedBody171_46 NamedBody171_101

def NamedBody171_103 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody171_104 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody171_105 : StackLang.HolProg 64 :=
.seq NamedBody171_103 NamedBody171_104

def NamedBody171_106 : StackLang.HolProg 64 :=
.seq NamedBody171_102 NamedBody171_105

def NamedBody171_107 : StackLang.HolProg 64 :=
.seq NamedBody171_45 NamedBody171_106

def NamedBody171_108 : StackLang.HolProg 64 :=
.seq NamedBody171_40 NamedBody171_107

def NamedBody171_109 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 24#64))

def NamedBody171_110 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.notEqual) 10 (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 0#64) NamedBody171_108 NamedBody171_109

def NamedBody171_111 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody171_112 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody171_113 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 0#64)

def NamedBody171_114 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody171_115 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 1#64)

def NamedBody171_116 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody171_117 : StackLang.HolProg 64 :=
.seq NamedBody171_115 NamedBody171_116

def NamedBody171_118 : StackLang.HolProg 64 :=
.seq NamedBody171_114 NamedBody171_117

def NamedBody171_119 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody171_120 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 0#64)

def NamedBody171_121 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody171_122 : StackLang.HolProg 64 :=
.seq NamedBody171_120 NamedBody171_121

def NamedBody171_123 : StackLang.HolProg 64 :=
.seq NamedBody171_119 NamedBody171_122

def NamedBody171_124 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.notEqual) 12 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1) NamedBody171_118 NamedBody171_123

def NamedBody171_125 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody171_126 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody171_127 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody171_128 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 1#64)

def NamedBody171_129 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody171_130 : StackLang.HolProg 64 :=
.seq NamedBody171_128 NamedBody171_129

def NamedBody171_131 : StackLang.HolProg 64 :=
.seq NamedBody171_127 NamedBody171_130

def NamedBody171_132 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody171_133 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 0#64)

def NamedBody171_134 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody171_135 : StackLang.HolProg 64 :=
.seq NamedBody171_133 NamedBody171_134

def NamedBody171_136 : StackLang.HolProg 64 :=
.seq NamedBody171_132 NamedBody171_135

def NamedBody171_137 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 12 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 11) NamedBody171_131 NamedBody171_136

def NamedBody171_138 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody171_139 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody171_140 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.and 1 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 10)))

def NamedBody171_141 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 22#64)

def NamedBody171_142 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody171_143 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody171_144 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 193#64)

def NamedBody171_145 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody171_146 : StackLang.HolProg 64 :=
.seq NamedBody171_144 NamedBody171_145

def NamedBody171_147 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody171_148 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 2#64)

def NamedBody171_149 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 10

def NamedBody171_150 : StackLang.HolProg 64 :=
.seq NamedBody171_148 NamedBody171_149

def NamedBody171_151 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody171_152 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) NamedBody171_150 NamedBody171_151

def NamedBody171_153 : StackLang.HolProg 64 :=
.seq NamedBody171_147 NamedBody171_152

def NamedBody171_154 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def NamedBody171_155 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody171_156 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 171 5

def NamedBody171_157 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody171_158 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody171_159 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody171_160 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody171_161 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def NamedBody171_162 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def NamedBody171_163 : StackLang.HolProg 64 :=
.seq NamedBody171_161 NamedBody171_162

def NamedBody171_164 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def NamedBody171_165 : StackLang.HolProg 64 :=
.seq NamedBody171_163 NamedBody171_164

def NamedBody171_166 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody171_167 : StackLang.HolProg 64 :=
.seq NamedBody171_165 NamedBody171_166

def NamedBody171_168 : StackLang.HolProg 64 :=
.seq NamedBody171_160 NamedBody171_167

def NamedBody171_169 : StackLang.HolProg 64 :=
.seq NamedBody171_159 NamedBody171_168

def NamedBody171_170 : StackLang.HolProg 64 :=
.seq NamedBody171_158 NamedBody171_169

def NamedBody171_171 : StackLang.HolProg 64 :=
.seq NamedBody171_157 NamedBody171_170

def NamedBody171_172 : StackLang.HolProg 64 :=
.seq NamedBody171_156 NamedBody171_171

def NamedBody171_173 : StackLang.HolProg 64 :=
.seq NamedBody171_155 NamedBody171_172

def NamedBody171_174 : StackLang.HolProg 64 :=
.seq NamedBody171_154 NamedBody171_173

def NamedBody171_175 : StackLang.HolProg 64 :=
.seq NamedBody171_153 NamedBody171_174

def NamedBody171_176 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody171_177 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody171_178 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody171_179 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody171_180 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody171_181 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody171_182 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 24#64))

def NamedBody171_183 : StackLang.HolProg 64 :=
.seq NamedBody171_181 NamedBody171_182

def NamedBody171_184 : StackLang.HolProg 64 :=
.seq NamedBody171_180 NamedBody171_183

def NamedBody171_185 : StackLang.HolProg 64 :=
.seq NamedBody171_179 NamedBody171_184

def NamedBody171_186 : StackLang.HolProg 64 :=
.seq NamedBody171_178 NamedBody171_185

def NamedBody171_187 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 24#64))

def NamedBody171_188 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def NamedBody171_189 : StackLang.HolProg 64 :=
.seq NamedBody171_187 NamedBody171_188

def NamedBody171_190 : StackLang.HolProg 64 :=
.call (some (NamedBody171_186, 1, 171, 4)) (Sum.inl 159) (some (NamedBody171_189, 171, 5))

def NamedBody171_191 : StackLang.HolProg 64 :=
.seq NamedBody171_177 NamedBody171_190

def NamedBody171_192 : StackLang.HolProg 64 :=
.seq NamedBody171_176 NamedBody171_191

def NamedBody171_193 : StackLang.HolProg 64 :=
.seq NamedBody171_175 NamedBody171_192

def NamedBody171_194 : StackLang.HolProg 64 :=
.seq NamedBody171_146 NamedBody171_193

def NamedBody171_195 : StackLang.HolProg 64 :=
.seq NamedBody171_143 NamedBody171_194

def NamedBody171_196 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody171_197 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody171_198 : StackLang.HolProg 64 :=
.seq NamedBody171_196 NamedBody171_197

def NamedBody171_199 : StackLang.HolProg 64 :=
.seq NamedBody171_195 NamedBody171_198

def NamedBody171_200 : StackLang.HolProg 64 :=
.seq NamedBody171_142 NamedBody171_199

def NamedBody171_201 : StackLang.HolProg 64 :=
.seq NamedBody171_141 NamedBody171_200

def NamedBody171_202 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 24#64))

def NamedBody171_203 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.notEqual) 1 (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 0#64) NamedBody171_201 NamedBody171_202

def NamedBody171_204 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody171_205 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 0#64)

def NamedBody171_206 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody171_207 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 32#64)))

def NamedBody171_208 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 1

def NamedBody171_209 : StackLang.HolProg 64 :=
.seq NamedBody171_207 NamedBody171_208

def NamedBody171_210 : StackLang.HolProg 64 :=
.seq NamedBody171_206 NamedBody171_209

def NamedBody171_211 : StackLang.HolProg 64 :=
.seq NamedBody171_205 NamedBody171_210

def NamedBody171_212 : StackLang.HolProg 64 :=
.seq NamedBody171_204 NamedBody171_211

def NamedBody171_213 : StackLang.HolProg 64 :=
.seq NamedBody171_203 NamedBody171_212

def NamedBody171_214 : StackLang.HolProg 64 :=
.seq NamedBody171_140 NamedBody171_213

def NamedBody171_215 : StackLang.HolProg 64 :=
.seq NamedBody171_139 NamedBody171_214

def NamedBody171_216 : StackLang.HolProg 64 :=
.seq NamedBody171_138 NamedBody171_215

def NamedBody171_217 : StackLang.HolProg 64 :=
.seq NamedBody171_137 NamedBody171_216

def NamedBody171_218 : StackLang.HolProg 64 :=
.seq NamedBody171_126 NamedBody171_217

def NamedBody171_219 : StackLang.HolProg 64 :=
.seq NamedBody171_125 NamedBody171_218

def NamedBody171_220 : StackLang.HolProg 64 :=
.seq NamedBody171_124 NamedBody171_219

def NamedBody171_221 : StackLang.HolProg 64 :=
.seq NamedBody171_113 NamedBody171_220

def NamedBody171_222 : StackLang.HolProg 64 :=
.seq NamedBody171_112 NamedBody171_221

def NamedBody171_223 : StackLang.HolProg 64 :=
.seq NamedBody171_111 NamedBody171_222

def NamedBody171_224 : StackLang.HolProg 64 :=
.seq NamedBody171_110 NamedBody171_223

def NamedBody171_225 : StackLang.HolProg 64 :=
.seq NamedBody171_39 NamedBody171_224

def NamedBody171_226 : StackLang.HolProg 64 :=
.seq NamedBody171_38 NamedBody171_225

def NamedBody171_227 : StackLang.HolProg 64 :=
.seq NamedBody171_37 NamedBody171_226

def NamedBody171_228 : StackLang.HolProg 64 :=
.seq NamedBody171_36 NamedBody171_227

def NamedBody171_229 : StackLang.HolProg 64 :=
.seq NamedBody171_25 NamedBody171_228

def NamedBody171_230 : StackLang.HolProg 64 :=
.seq NamedBody171_24 NamedBody171_229

def NamedBody171_231 : StackLang.HolProg 64 :=
.seq NamedBody171_23 NamedBody171_230

def NamedBody171_232 : StackLang.HolProg 64 :=
.seq NamedBody171_22 NamedBody171_231

def NamedBody171_233 : StackLang.HolProg 64 :=
.seq NamedBody171_21 NamedBody171_232

def NamedBody171_234 : StackLang.HolProg 64 :=
.seq NamedBody171_20 NamedBody171_233

def NamedBody171_235 : StackLang.HolProg 64 :=
.seq NamedBody171_9 NamedBody171_234

def NamedBody171_236 : StackLang.HolProg 64 :=
.seq NamedBody171_8 NamedBody171_235

def NamedBody171_237 : StackLang.HolProg 64 :=
.seq NamedBody171_7 NamedBody171_236

def NamedBody171_238 : StackLang.HolProg 64 :=
.seq NamedBody171_6 NamedBody171_237

def Named171 : Nat × StackLang.HolProg 64 := (171, NamedBody171_238)
theorem Named171_eq : StackNames.progCompEntryHOL RiscVConfig.riscvNames Removed171 = Named171 := by
  kernel_rfl
#print axioms Named171_eq
end InitECandidate.Proofs.BackendStages
