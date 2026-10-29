import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.BackendStages.Removed335
import Flapjack.Compiler.Backend.Backend
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
namespace InitECandidate.Proofs.BackendStages
def NamedBody335_0 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody335_1 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 2#64)

def NamedBody335_2 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 10

def NamedBody335_3 : StackLang.HolProg 64 :=
.seq NamedBody335_1 NamedBody335_2

def NamedBody335_4 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody335_5 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) NamedBody335_3 NamedBody335_4

def NamedBody335_6 : StackLang.HolProg 64 :=
.seq NamedBody335_0 NamedBody335_5

def NamedBody335_7 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody335_8 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsl 11 11
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 4#64)))

def NamedBody335_9 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody335_10 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 11 11
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 10)))

def NamedBody335_11 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 10
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 11 0#64))

def NamedBody335_12 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody335_13 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 11
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 11 8#64))

def NamedBody335_14 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody335_15 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 12
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody335_16 : StackLang.HolProg 64 :=
.seq NamedBody335_14 NamedBody335_15

def NamedBody335_17 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody335_18 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 969#64)

def NamedBody335_19 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody335_20 : StackLang.HolProg 64 :=
.seq NamedBody335_18 NamedBody335_19

def NamedBody335_21 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody335_22 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 2#64)

def NamedBody335_23 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 10

def NamedBody335_24 : StackLang.HolProg 64 :=
.seq NamedBody335_22 NamedBody335_23

def NamedBody335_25 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody335_26 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) NamedBody335_24 NamedBody335_25

def NamedBody335_27 : StackLang.HolProg 64 :=
.seq NamedBody335_21 NamedBody335_26

def NamedBody335_28 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def NamedBody335_29 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody335_30 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 335 3

def NamedBody335_31 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody335_32 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody335_33 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody335_34 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody335_35 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def NamedBody335_36 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def NamedBody335_37 : StackLang.HolProg 64 :=
.seq NamedBody335_35 NamedBody335_36

def NamedBody335_38 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def NamedBody335_39 : StackLang.HolProg 64 :=
.seq NamedBody335_37 NamedBody335_38

def NamedBody335_40 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody335_41 : StackLang.HolProg 64 :=
.seq NamedBody335_39 NamedBody335_40

def NamedBody335_42 : StackLang.HolProg 64 :=
.seq NamedBody335_34 NamedBody335_41

def NamedBody335_43 : StackLang.HolProg 64 :=
.seq NamedBody335_33 NamedBody335_42

def NamedBody335_44 : StackLang.HolProg 64 :=
.seq NamedBody335_32 NamedBody335_43

def NamedBody335_45 : StackLang.HolProg 64 :=
.seq NamedBody335_31 NamedBody335_44

def NamedBody335_46 : StackLang.HolProg 64 :=
.seq NamedBody335_30 NamedBody335_45

def NamedBody335_47 : StackLang.HolProg 64 :=
.seq NamedBody335_29 NamedBody335_46

def NamedBody335_48 : StackLang.HolProg 64 :=
.seq NamedBody335_28 NamedBody335_47

def NamedBody335_49 : StackLang.HolProg 64 :=
.seq NamedBody335_27 NamedBody335_48

def NamedBody335_50 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody335_51 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody335_52 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody335_53 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody335_54 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody335_55 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody335_56 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 13 10
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 10)))

def NamedBody335_57 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 5
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody335_58 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody335_59 : StackLang.HolProg 64 :=
.seq NamedBody335_57 NamedBody335_58

def NamedBody335_60 : StackLang.HolProg 64 :=
.seq NamedBody335_56 NamedBody335_59

def NamedBody335_61 : StackLang.HolProg 64 :=
.seq NamedBody335_55 NamedBody335_60

def NamedBody335_62 : StackLang.HolProg 64 :=
.seq NamedBody335_54 NamedBody335_61

def NamedBody335_63 : StackLang.HolProg 64 :=
.seq NamedBody335_53 NamedBody335_62

def NamedBody335_64 : StackLang.HolProg 64 :=
.seq NamedBody335_52 NamedBody335_63

def NamedBody335_65 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 5
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody335_66 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody335_67 : StackLang.HolProg 64 :=
.seq NamedBody335_65 NamedBody335_66

def NamedBody335_68 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def NamedBody335_69 : StackLang.HolProg 64 :=
.seq NamedBody335_67 NamedBody335_68

def NamedBody335_70 : StackLang.HolProg 64 :=
.call (some (NamedBody335_64, 1, 335, 2)) (Sum.inl 161) (some (NamedBody335_69, 335, 3))

def NamedBody335_71 : StackLang.HolProg 64 :=
.seq NamedBody335_51 NamedBody335_70

def NamedBody335_72 : StackLang.HolProg 64 :=
.seq NamedBody335_50 NamedBody335_71

def NamedBody335_73 : StackLang.HolProg 64 :=
.seq NamedBody335_49 NamedBody335_72

def NamedBody335_74 : StackLang.HolProg 64 :=
.seq NamedBody335_20 NamedBody335_73

def NamedBody335_75 : StackLang.HolProg 64 :=
.seq NamedBody335_17 NamedBody335_74

def NamedBody335_76 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody335_77 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody335_78 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 0#64)

def NamedBody335_79 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody335_80 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 10#64)

def NamedBody335_81 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody335_82 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 10
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551480#64))

def NamedBody335_83 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 6#64)

def NamedBody335_84 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody335_85 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def NamedBody335_86 : StackLang.HolProg 64 :=
.seq NamedBody335_84 NamedBody335_85

def NamedBody335_87 : StackLang.HolProg 64 :=
.seq NamedBody335_83 NamedBody335_86

def NamedBody335_88 : StackLang.HolProg 64 :=
.seq NamedBody335_82 NamedBody335_87

def NamedBody335_89 : StackLang.HolProg 64 :=
.seq NamedBody335_81 NamedBody335_88

def NamedBody335_90 : StackLang.HolProg 64 :=
.seq NamedBody335_80 NamedBody335_89

def NamedBody335_91 : StackLang.HolProg 64 :=
.seq NamedBody335_79 NamedBody335_90

def NamedBody335_92 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody335_93 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.notEqual) 13 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 10) NamedBody335_91 NamedBody335_92

def NamedBody335_94 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody335_95 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody335_96 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 0#64)

def NamedBody335_97 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody335_98 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody335_99 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody335_100 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load8 10
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 11 0#64))

def NamedBody335_101 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody335_102 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 13 0#64)

def NamedBody335_103 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody335_104 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 11#64)

def NamedBody335_105 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody335_106 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 10
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551480#64))

def NamedBody335_107 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 6#64)

def NamedBody335_108 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody335_109 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def NamedBody335_110 : StackLang.HolProg 64 :=
.seq NamedBody335_108 NamedBody335_109

def NamedBody335_111 : StackLang.HolProg 64 :=
.seq NamedBody335_107 NamedBody335_110

def NamedBody335_112 : StackLang.HolProg 64 :=
.seq NamedBody335_106 NamedBody335_111

def NamedBody335_113 : StackLang.HolProg 64 :=
.seq NamedBody335_105 NamedBody335_112

def NamedBody335_114 : StackLang.HolProg 64 :=
.seq NamedBody335_104 NamedBody335_113

def NamedBody335_115 : StackLang.HolProg 64 :=
.seq NamedBody335_103 NamedBody335_114

def NamedBody335_116 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody335_117 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.equal) 10 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 13) NamedBody335_115 NamedBody335_116

def NamedBody335_118 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody335_119 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody335_120 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody335_121 : StackLang.HolProg 64 :=
.seq NamedBody335_119 NamedBody335_120

def NamedBody335_122 : StackLang.HolProg 64 :=
.seq NamedBody335_118 NamedBody335_121

def NamedBody335_123 : StackLang.HolProg 64 :=
.seq NamedBody335_117 NamedBody335_122

def NamedBody335_124 : StackLang.HolProg 64 :=
.seq NamedBody335_102 NamedBody335_123

def NamedBody335_125 : StackLang.HolProg 64 :=
.seq NamedBody335_101 NamedBody335_124

def NamedBody335_126 : StackLang.HolProg 64 :=
.seq NamedBody335_100 NamedBody335_125

def NamedBody335_127 : StackLang.HolProg 64 :=
.seq NamedBody335_99 NamedBody335_126

def NamedBody335_128 : StackLang.HolProg 64 :=
.seq NamedBody335_98 NamedBody335_127

def NamedBody335_129 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody335_130 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody335_131 : StackLang.HolProg 64 :=
.seq NamedBody335_129 NamedBody335_130

def NamedBody335_132 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 10 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 12) NamedBody335_128 NamedBody335_131

def NamedBody335_133 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody335_134 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody335_135 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 0#64)

def NamedBody335_136 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody335_137 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody335_138 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody335_139 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 12#64)

def NamedBody335_140 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody335_141 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551480#64))

def NamedBody335_142 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 6#64)

def NamedBody335_143 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody335_144 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def NamedBody335_145 : StackLang.HolProg 64 :=
.seq NamedBody335_143 NamedBody335_144

def NamedBody335_146 : StackLang.HolProg 64 :=
.seq NamedBody335_142 NamedBody335_145

def NamedBody335_147 : StackLang.HolProg 64 :=
.seq NamedBody335_141 NamedBody335_146

def NamedBody335_148 : StackLang.HolProg 64 :=
.seq NamedBody335_140 NamedBody335_147

def NamedBody335_149 : StackLang.HolProg 64 :=
.seq NamedBody335_139 NamedBody335_148

def NamedBody335_150 : StackLang.HolProg 64 :=
.seq NamedBody335_138 NamedBody335_149

def NamedBody335_151 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody335_152 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 1 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 12) NamedBody335_150 NamedBody335_151

def NamedBody335_153 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody335_154 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody335_155 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody335_156 : StackLang.HolProg 64 :=
.seq NamedBody335_154 NamedBody335_155

def NamedBody335_157 : StackLang.HolProg 64 :=
.seq NamedBody335_153 NamedBody335_156

def NamedBody335_158 : StackLang.HolProg 64 :=
.seq NamedBody335_152 NamedBody335_157

def NamedBody335_159 : StackLang.HolProg 64 :=
.seq NamedBody335_137 NamedBody335_158

def NamedBody335_160 : StackLang.HolProg 64 :=
.seq NamedBody335_136 NamedBody335_159

def NamedBody335_161 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody335_162 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody335_163 : StackLang.HolProg 64 :=
.seq NamedBody335_161 NamedBody335_162

def NamedBody335_164 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.notEqual) 1 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 10) NamedBody335_160 NamedBody335_163

def NamedBody335_165 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody335_166 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 10 11
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 11)))

def NamedBody335_167 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 11 12
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 12)))

def NamedBody335_168 : StackLang.HolProg 64 :=
.seq NamedBody335_166 NamedBody335_167

def NamedBody335_169 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody335_170 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 5

def NamedBody335_171 : StackLang.HolProg 64 :=
.seq NamedBody335_169 NamedBody335_170

def NamedBody335_172 : StackLang.HolProg 64 :=
.seq NamedBody335_168 NamedBody335_171

def NamedBody335_173 : StackLang.HolProg 64 :=
.seq NamedBody335_165 NamedBody335_172

def NamedBody335_174 : StackLang.HolProg 64 :=
.seq NamedBody335_164 NamedBody335_173

def NamedBody335_175 : StackLang.HolProg 64 :=
.seq NamedBody335_135 NamedBody335_174

def NamedBody335_176 : StackLang.HolProg 64 :=
.seq NamedBody335_134 NamedBody335_175

def NamedBody335_177 : StackLang.HolProg 64 :=
.seq NamedBody335_133 NamedBody335_176

def NamedBody335_178 : StackLang.HolProg 64 :=
.seq NamedBody335_132 NamedBody335_177

def NamedBody335_179 : StackLang.HolProg 64 :=
.seq NamedBody335_97 NamedBody335_178

def NamedBody335_180 : StackLang.HolProg 64 :=
.seq NamedBody335_96 NamedBody335_179

def NamedBody335_181 : StackLang.HolProg 64 :=
.seq NamedBody335_95 NamedBody335_180

def NamedBody335_182 : StackLang.HolProg 64 :=
.seq NamedBody335_94 NamedBody335_181

def NamedBody335_183 : StackLang.HolProg 64 :=
.seq NamedBody335_93 NamedBody335_182

def NamedBody335_184 : StackLang.HolProg 64 :=
.seq NamedBody335_78 NamedBody335_183

def NamedBody335_185 : StackLang.HolProg 64 :=
.seq NamedBody335_77 NamedBody335_184

def NamedBody335_186 : StackLang.HolProg 64 :=
.seq NamedBody335_76 NamedBody335_185

def NamedBody335_187 : StackLang.HolProg 64 :=
.seq NamedBody335_75 NamedBody335_186

def NamedBody335_188 : StackLang.HolProg 64 :=
.seq NamedBody335_16 NamedBody335_187

def NamedBody335_189 : StackLang.HolProg 64 :=
.seq NamedBody335_13 NamedBody335_188

def NamedBody335_190 : StackLang.HolProg 64 :=
.seq NamedBody335_12 NamedBody335_189

def NamedBody335_191 : StackLang.HolProg 64 :=
.seq NamedBody335_11 NamedBody335_190

def NamedBody335_192 : StackLang.HolProg 64 :=
.seq NamedBody335_10 NamedBody335_191

def NamedBody335_193 : StackLang.HolProg 64 :=
.seq NamedBody335_9 NamedBody335_192

def NamedBody335_194 : StackLang.HolProg 64 :=
.seq NamedBody335_8 NamedBody335_193

def NamedBody335_195 : StackLang.HolProg 64 :=
.seq NamedBody335_7 NamedBody335_194

def NamedBody335_196 : StackLang.HolProg 64 :=
.seq NamedBody335_6 NamedBody335_195

def Named335 : Nat × StackLang.HolProg 64 := (335, NamedBody335_196)
theorem Named335_eq : StackNames.progCompEntryHOL RiscVConfig.riscvNames Removed335 = Named335 := by
  kernel_rfl
#print axioms Named335_eq
end InitECandidate.Proofs.BackendStages
