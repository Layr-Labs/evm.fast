import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.BackendStages.Removed160
import Flapjack.Compiler.Backend.Backend
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
namespace InitECandidate.Proofs.BackendStages
def NamedBody160_0 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 32#64)))

def NamedBody160_1 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 2#64)

def NamedBody160_2 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 10

def NamedBody160_3 : StackLang.HolProg 64 :=
.seq NamedBody160_1 NamedBody160_2

def NamedBody160_4 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody160_5 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) NamedBody160_3 NamedBody160_4

def NamedBody160_6 : StackLang.HolProg 64 :=
.seq NamedBody160_0 NamedBody160_5

def NamedBody160_7 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody160_8 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 12 1#64)

def NamedBody160_9 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody160_10 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody160_11 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 13 1#64)

def NamedBody160_12 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody160_13 : StackLang.HolProg 64 :=
.seq NamedBody160_11 NamedBody160_12

def NamedBody160_14 : StackLang.HolProg 64 :=
.seq NamedBody160_10 NamedBody160_13

def NamedBody160_15 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody160_16 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 13 0#64)

def NamedBody160_17 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody160_18 : StackLang.HolProg 64 :=
.seq NamedBody160_16 NamedBody160_17

def NamedBody160_19 : StackLang.HolProg 64 :=
.seq NamedBody160_15 NamedBody160_18

def NamedBody160_20 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 12 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 11) NamedBody160_14 NamedBody160_19

def NamedBody160_21 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody160_22 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 12 10
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 10)))

def NamedBody160_23 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load8 10
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 12 0#64))

def NamedBody160_24 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody160_25 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 5 0#64)

def NamedBody160_26 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody160_27 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 1#64)

def NamedBody160_28 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody160_29 : StackLang.HolProg 64 :=
.seq NamedBody160_27 NamedBody160_28

def NamedBody160_30 : StackLang.HolProg 64 :=
.seq NamedBody160_26 NamedBody160_29

def NamedBody160_31 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody160_32 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 0#64)

def NamedBody160_33 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody160_34 : StackLang.HolProg 64 :=
.seq NamedBody160_32 NamedBody160_33

def NamedBody160_35 : StackLang.HolProg 64 :=
.seq NamedBody160_31 NamedBody160_34

def NamedBody160_36 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.equal) 10 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 5) NamedBody160_30 NamedBody160_35

def NamedBody160_37 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody160_38 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody160_39 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.and 10 10
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 13)))

def NamedBody160_40 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 2#64)

def NamedBody160_41 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 24#64))

def NamedBody160_42 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 11
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody160_43 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 12
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody160_44 : StackLang.HolProg 64 :=
.seq NamedBody160_42 NamedBody160_43

def NamedBody160_45 : StackLang.HolProg 64 :=
.seq NamedBody160_41 NamedBody160_44

def NamedBody160_46 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody160_47 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 147#64)

def NamedBody160_48 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody160_49 : StackLang.HolProg 64 :=
.seq NamedBody160_47 NamedBody160_48

def NamedBody160_50 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody160_51 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 2#64)

def NamedBody160_52 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 10

def NamedBody160_53 : StackLang.HolProg 64 :=
.seq NamedBody160_51 NamedBody160_52

def NamedBody160_54 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody160_55 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) NamedBody160_53 NamedBody160_54

def NamedBody160_56 : StackLang.HolProg 64 :=
.seq NamedBody160_50 NamedBody160_55

def NamedBody160_57 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def NamedBody160_58 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody160_59 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 160 3

def NamedBody160_60 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody160_61 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody160_62 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody160_63 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody160_64 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def NamedBody160_65 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def NamedBody160_66 : StackLang.HolProg 64 :=
.seq NamedBody160_64 NamedBody160_65

def NamedBody160_67 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def NamedBody160_68 : StackLang.HolProg 64 :=
.seq NamedBody160_66 NamedBody160_67

def NamedBody160_69 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody160_70 : StackLang.HolProg 64 :=
.seq NamedBody160_68 NamedBody160_69

def NamedBody160_71 : StackLang.HolProg 64 :=
.seq NamedBody160_63 NamedBody160_70

def NamedBody160_72 : StackLang.HolProg 64 :=
.seq NamedBody160_62 NamedBody160_71

def NamedBody160_73 : StackLang.HolProg 64 :=
.seq NamedBody160_61 NamedBody160_72

def NamedBody160_74 : StackLang.HolProg 64 :=
.seq NamedBody160_60 NamedBody160_73

def NamedBody160_75 : StackLang.HolProg 64 :=
.seq NamedBody160_59 NamedBody160_74

def NamedBody160_76 : StackLang.HolProg 64 :=
.seq NamedBody160_58 NamedBody160_75

def NamedBody160_77 : StackLang.HolProg 64 :=
.seq NamedBody160_57 NamedBody160_76

def NamedBody160_78 : StackLang.HolProg 64 :=
.seq NamedBody160_56 NamedBody160_77

def NamedBody160_79 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody160_80 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody160_81 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody160_82 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody160_83 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody160_84 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody160_85 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 24#64))

def NamedBody160_86 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 11
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody160_87 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 12
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody160_88 : StackLang.HolProg 64 :=
.seq NamedBody160_86 NamedBody160_87

def NamedBody160_89 : StackLang.HolProg 64 :=
.seq NamedBody160_85 NamedBody160_88

def NamedBody160_90 : StackLang.HolProg 64 :=
.seq NamedBody160_84 NamedBody160_89

def NamedBody160_91 : StackLang.HolProg 64 :=
.seq NamedBody160_83 NamedBody160_90

def NamedBody160_92 : StackLang.HolProg 64 :=
.seq NamedBody160_82 NamedBody160_91

def NamedBody160_93 : StackLang.HolProg 64 :=
.seq NamedBody160_81 NamedBody160_92

def NamedBody160_94 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 24#64))

def NamedBody160_95 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 11
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody160_96 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 12
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody160_97 : StackLang.HolProg 64 :=
.seq NamedBody160_95 NamedBody160_96

def NamedBody160_98 : StackLang.HolProg 64 :=
.seq NamedBody160_94 NamedBody160_97

def NamedBody160_99 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def NamedBody160_100 : StackLang.HolProg 64 :=
.seq NamedBody160_98 NamedBody160_99

def NamedBody160_101 : StackLang.HolProg 64 :=
.call (some (NamedBody160_93, 1, 160, 2)) (Sum.inl 159) (some (NamedBody160_100, 160, 3))

def NamedBody160_102 : StackLang.HolProg 64 :=
.seq NamedBody160_80 NamedBody160_101

def NamedBody160_103 : StackLang.HolProg 64 :=
.seq NamedBody160_79 NamedBody160_102

def NamedBody160_104 : StackLang.HolProg 64 :=
.seq NamedBody160_78 NamedBody160_103

def NamedBody160_105 : StackLang.HolProg 64 :=
.seq NamedBody160_49 NamedBody160_104

def NamedBody160_106 : StackLang.HolProg 64 :=
.seq NamedBody160_46 NamedBody160_105

def NamedBody160_107 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody160_108 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody160_109 : StackLang.HolProg 64 :=
.seq NamedBody160_107 NamedBody160_108

def NamedBody160_110 : StackLang.HolProg 64 :=
.seq NamedBody160_106 NamedBody160_109

def NamedBody160_111 : StackLang.HolProg 64 :=
.seq NamedBody160_45 NamedBody160_110

def NamedBody160_112 : StackLang.HolProg 64 :=
.seq NamedBody160_40 NamedBody160_111

def NamedBody160_113 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody160_114 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.notEqual) 10 (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 0#64) NamedBody160_112 NamedBody160_113

def NamedBody160_115 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody160_116 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 0#64)

def NamedBody160_117 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 13 0#64)

def NamedBody160_118 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody160_119 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody160_120 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody160_121 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody160_122 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody160_123 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 5 13
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 12)))

def NamedBody160_124 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load8 5
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 5 0#64))

def NamedBody160_125 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody160_126 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsl 10 10
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 8#64)))

def NamedBody160_127 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 10 5
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 10)))

def NamedBody160_128 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody160_129 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 13 13
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 1#64)))

def NamedBody160_130 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody160_131 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.continue 0

def NamedBody160_132 : StackLang.HolProg 64 :=
.seq NamedBody160_130 NamedBody160_131

def NamedBody160_133 : StackLang.HolProg 64 :=
.seq NamedBody160_129 NamedBody160_132

def NamedBody160_134 : StackLang.HolProg 64 :=
.seq NamedBody160_128 NamedBody160_133

def NamedBody160_135 : StackLang.HolProg 64 :=
.seq NamedBody160_127 NamedBody160_134

def NamedBody160_136 : StackLang.HolProg 64 :=
.seq NamedBody160_126 NamedBody160_135

def NamedBody160_137 : StackLang.HolProg 64 :=
.seq NamedBody160_125 NamedBody160_136

def NamedBody160_138 : StackLang.HolProg 64 :=
.seq NamedBody160_124 NamedBody160_137

def NamedBody160_139 : StackLang.HolProg 64 :=
.seq NamedBody160_123 NamedBody160_138

def NamedBody160_140 : StackLang.HolProg 64 :=
.seq NamedBody160_122 NamedBody160_139

def NamedBody160_141 : StackLang.HolProg 64 :=
.seq NamedBody160_121 NamedBody160_140

def NamedBody160_142 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody160_143 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.break 0

def NamedBody160_144 : StackLang.HolProg 64 :=
.seq NamedBody160_142 NamedBody160_143

def NamedBody160_145 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 13 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 11) NamedBody160_141 NamedBody160_144

def NamedBody160_146 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody160_147 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody160_148 : StackLang.HolProg 64 :=
.seq NamedBody160_146 NamedBody160_147

def NamedBody160_149 : StackLang.HolProg 64 :=
.seq NamedBody160_145 NamedBody160_148

def NamedBody160_150 : StackLang.HolProg 64 :=
.seq NamedBody160_120 NamedBody160_149

def NamedBody160_151 : StackLang.HolProg 64 :=
.loop NamedBody160_150

def NamedBody160_152 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody160_153 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody160_154 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 32#64)))

def NamedBody160_155 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 1

def NamedBody160_156 : StackLang.HolProg 64 :=
.seq NamedBody160_154 NamedBody160_155

def NamedBody160_157 : StackLang.HolProg 64 :=
.seq NamedBody160_153 NamedBody160_156

def NamedBody160_158 : StackLang.HolProg 64 :=
.seq NamedBody160_152 NamedBody160_157

def NamedBody160_159 : StackLang.HolProg 64 :=
.seq NamedBody160_151 NamedBody160_158

def NamedBody160_160 : StackLang.HolProg 64 :=
.seq NamedBody160_119 NamedBody160_159

def NamedBody160_161 : StackLang.HolProg 64 :=
.seq NamedBody160_118 NamedBody160_160

def NamedBody160_162 : StackLang.HolProg 64 :=
.seq NamedBody160_117 NamedBody160_161

def NamedBody160_163 : StackLang.HolProg 64 :=
.seq NamedBody160_116 NamedBody160_162

def NamedBody160_164 : StackLang.HolProg 64 :=
.seq NamedBody160_115 NamedBody160_163

def NamedBody160_165 : StackLang.HolProg 64 :=
.seq NamedBody160_114 NamedBody160_164

def NamedBody160_166 : StackLang.HolProg 64 :=
.seq NamedBody160_39 NamedBody160_165

def NamedBody160_167 : StackLang.HolProg 64 :=
.seq NamedBody160_38 NamedBody160_166

def NamedBody160_168 : StackLang.HolProg 64 :=
.seq NamedBody160_37 NamedBody160_167

def NamedBody160_169 : StackLang.HolProg 64 :=
.seq NamedBody160_36 NamedBody160_168

def NamedBody160_170 : StackLang.HolProg 64 :=
.seq NamedBody160_25 NamedBody160_169

def NamedBody160_171 : StackLang.HolProg 64 :=
.seq NamedBody160_24 NamedBody160_170

def NamedBody160_172 : StackLang.HolProg 64 :=
.seq NamedBody160_23 NamedBody160_171

def NamedBody160_173 : StackLang.HolProg 64 :=
.seq NamedBody160_22 NamedBody160_172

def NamedBody160_174 : StackLang.HolProg 64 :=
.seq NamedBody160_21 NamedBody160_173

def NamedBody160_175 : StackLang.HolProg 64 :=
.seq NamedBody160_20 NamedBody160_174

def NamedBody160_176 : StackLang.HolProg 64 :=
.seq NamedBody160_9 NamedBody160_175

def NamedBody160_177 : StackLang.HolProg 64 :=
.seq NamedBody160_8 NamedBody160_176

def NamedBody160_178 : StackLang.HolProg 64 :=
.seq NamedBody160_7 NamedBody160_177

def NamedBody160_179 : StackLang.HolProg 64 :=
.seq NamedBody160_6 NamedBody160_178

def Named160 : Nat × StackLang.HolProg 64 := (160, NamedBody160_179)
theorem Named160_eq : StackNames.progCompEntryHOL RiscVConfig.riscvNames Removed160 = Named160 := by
  kernel_rfl
#print axioms Named160_eq
end InitECandidate.Proofs.BackendStages
