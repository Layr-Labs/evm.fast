import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.BackendStages.Removed269
import Flapjack.Compiler.Backend.Backend
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
namespace InitECandidate.Proofs.BackendStages
def NamedBody269_0 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody269_1 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 2#64)

def NamedBody269_2 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 10

def NamedBody269_3 : StackLang.HolProg 64 :=
.seq NamedBody269_1 NamedBody269_2

def NamedBody269_4 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody269_5 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) NamedBody269_3 NamedBody269_4

def NamedBody269_6 : StackLang.HolProg 64 :=
.seq NamedBody269_0 NamedBody269_5

def NamedBody269_7 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody269_8 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsl 11 11
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 4#64)))

def NamedBody269_9 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody269_10 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 11 11
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 10)))

def NamedBody269_11 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 10
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 11 0#64))

def NamedBody269_12 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody269_13 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 11
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 11 8#64))

def NamedBody269_14 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody269_15 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 12
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody269_16 : StackLang.HolProg 64 :=
.seq NamedBody269_14 NamedBody269_15

def NamedBody269_17 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody269_18 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 655#64)

def NamedBody269_19 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody269_20 : StackLang.HolProg 64 :=
.seq NamedBody269_18 NamedBody269_19

def NamedBody269_21 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody269_22 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 2#64)

def NamedBody269_23 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 10

def NamedBody269_24 : StackLang.HolProg 64 :=
.seq NamedBody269_22 NamedBody269_23

def NamedBody269_25 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody269_26 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) NamedBody269_24 NamedBody269_25

def NamedBody269_27 : StackLang.HolProg 64 :=
.seq NamedBody269_21 NamedBody269_26

def NamedBody269_28 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def NamedBody269_29 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody269_30 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 269 3

def NamedBody269_31 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody269_32 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody269_33 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody269_34 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody269_35 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def NamedBody269_36 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def NamedBody269_37 : StackLang.HolProg 64 :=
.seq NamedBody269_35 NamedBody269_36

def NamedBody269_38 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def NamedBody269_39 : StackLang.HolProg 64 :=
.seq NamedBody269_37 NamedBody269_38

def NamedBody269_40 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody269_41 : StackLang.HolProg 64 :=
.seq NamedBody269_39 NamedBody269_40

def NamedBody269_42 : StackLang.HolProg 64 :=
.seq NamedBody269_34 NamedBody269_41

def NamedBody269_43 : StackLang.HolProg 64 :=
.seq NamedBody269_33 NamedBody269_42

def NamedBody269_44 : StackLang.HolProg 64 :=
.seq NamedBody269_32 NamedBody269_43

def NamedBody269_45 : StackLang.HolProg 64 :=
.seq NamedBody269_31 NamedBody269_44

def NamedBody269_46 : StackLang.HolProg 64 :=
.seq NamedBody269_30 NamedBody269_45

def NamedBody269_47 : StackLang.HolProg 64 :=
.seq NamedBody269_29 NamedBody269_46

def NamedBody269_48 : StackLang.HolProg 64 :=
.seq NamedBody269_28 NamedBody269_47

def NamedBody269_49 : StackLang.HolProg 64 :=
.seq NamedBody269_27 NamedBody269_48

def NamedBody269_50 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody269_51 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody269_52 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody269_53 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody269_54 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody269_55 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody269_56 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 13 10
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 10)))

def NamedBody269_57 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 5
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody269_58 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody269_59 : StackLang.HolProg 64 :=
.seq NamedBody269_57 NamedBody269_58

def NamedBody269_60 : StackLang.HolProg 64 :=
.seq NamedBody269_56 NamedBody269_59

def NamedBody269_61 : StackLang.HolProg 64 :=
.seq NamedBody269_55 NamedBody269_60

def NamedBody269_62 : StackLang.HolProg 64 :=
.seq NamedBody269_54 NamedBody269_61

def NamedBody269_63 : StackLang.HolProg 64 :=
.seq NamedBody269_53 NamedBody269_62

def NamedBody269_64 : StackLang.HolProg 64 :=
.seq NamedBody269_52 NamedBody269_63

def NamedBody269_65 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 5
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody269_66 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody269_67 : StackLang.HolProg 64 :=
.seq NamedBody269_65 NamedBody269_66

def NamedBody269_68 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def NamedBody269_69 : StackLang.HolProg 64 :=
.seq NamedBody269_67 NamedBody269_68

def NamedBody269_70 : StackLang.HolProg 64 :=
.call (some (NamedBody269_64, 1, 269, 2)) (Sum.inl 161) (some (NamedBody269_69, 269, 3))

def NamedBody269_71 : StackLang.HolProg 64 :=
.seq NamedBody269_51 NamedBody269_70

def NamedBody269_72 : StackLang.HolProg 64 :=
.seq NamedBody269_50 NamedBody269_71

def NamedBody269_73 : StackLang.HolProg 64 :=
.seq NamedBody269_49 NamedBody269_72

def NamedBody269_74 : StackLang.HolProg 64 :=
.seq NamedBody269_20 NamedBody269_73

def NamedBody269_75 : StackLang.HolProg 64 :=
.seq NamedBody269_17 NamedBody269_74

def NamedBody269_76 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody269_77 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody269_78 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 0#64)

def NamedBody269_79 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody269_80 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 1#64)

def NamedBody269_81 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody269_82 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 10
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551480#64))

def NamedBody269_83 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 3#64)

def NamedBody269_84 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody269_85 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def NamedBody269_86 : StackLang.HolProg 64 :=
.seq NamedBody269_84 NamedBody269_85

def NamedBody269_87 : StackLang.HolProg 64 :=
.seq NamedBody269_83 NamedBody269_86

def NamedBody269_88 : StackLang.HolProg 64 :=
.seq NamedBody269_82 NamedBody269_87

def NamedBody269_89 : StackLang.HolProg 64 :=
.seq NamedBody269_81 NamedBody269_88

def NamedBody269_90 : StackLang.HolProg 64 :=
.seq NamedBody269_80 NamedBody269_89

def NamedBody269_91 : StackLang.HolProg 64 :=
.seq NamedBody269_79 NamedBody269_90

def NamedBody269_92 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody269_93 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.notEqual) 13 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 10) NamedBody269_91 NamedBody269_92

def NamedBody269_94 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody269_95 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody269_96 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody269_97 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 0#64)

def NamedBody269_98 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody269_99 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody269_100 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load8 10
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 11 0#64))

def NamedBody269_101 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody269_102 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 13 0#64)

def NamedBody269_103 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody269_104 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 2#64)

def NamedBody269_105 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody269_106 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 10
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551480#64))

def NamedBody269_107 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 3#64)

def NamedBody269_108 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody269_109 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def NamedBody269_110 : StackLang.HolProg 64 :=
.seq NamedBody269_108 NamedBody269_109

def NamedBody269_111 : StackLang.HolProg 64 :=
.seq NamedBody269_107 NamedBody269_110

def NamedBody269_112 : StackLang.HolProg 64 :=
.seq NamedBody269_106 NamedBody269_111

def NamedBody269_113 : StackLang.HolProg 64 :=
.seq NamedBody269_105 NamedBody269_112

def NamedBody269_114 : StackLang.HolProg 64 :=
.seq NamedBody269_104 NamedBody269_113

def NamedBody269_115 : StackLang.HolProg 64 :=
.seq NamedBody269_103 NamedBody269_114

def NamedBody269_116 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody269_117 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.equal) 10 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 13) NamedBody269_115 NamedBody269_116

def NamedBody269_118 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody269_119 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody269_120 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody269_121 : StackLang.HolProg 64 :=
.seq NamedBody269_119 NamedBody269_120

def NamedBody269_122 : StackLang.HolProg 64 :=
.seq NamedBody269_118 NamedBody269_121

def NamedBody269_123 : StackLang.HolProg 64 :=
.seq NamedBody269_117 NamedBody269_122

def NamedBody269_124 : StackLang.HolProg 64 :=
.seq NamedBody269_102 NamedBody269_123

def NamedBody269_125 : StackLang.HolProg 64 :=
.seq NamedBody269_101 NamedBody269_124

def NamedBody269_126 : StackLang.HolProg 64 :=
.seq NamedBody269_100 NamedBody269_125

def NamedBody269_127 : StackLang.HolProg 64 :=
.seq NamedBody269_99 NamedBody269_126

def NamedBody269_128 : StackLang.HolProg 64 :=
.seq NamedBody269_98 NamedBody269_127

def NamedBody269_129 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody269_130 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody269_131 : StackLang.HolProg 64 :=
.seq NamedBody269_129 NamedBody269_130

def NamedBody269_132 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.notEqual) 12 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 10) NamedBody269_128 NamedBody269_131

def NamedBody269_133 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody269_134 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody269_135 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 0#64)

def NamedBody269_136 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody269_137 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody269_138 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody269_139 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 3#64)

def NamedBody269_140 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody269_141 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551480#64))

def NamedBody269_142 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 3#64)

def NamedBody269_143 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody269_144 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def NamedBody269_145 : StackLang.HolProg 64 :=
.seq NamedBody269_143 NamedBody269_144

def NamedBody269_146 : StackLang.HolProg 64 :=
.seq NamedBody269_142 NamedBody269_145

def NamedBody269_147 : StackLang.HolProg 64 :=
.seq NamedBody269_141 NamedBody269_146

def NamedBody269_148 : StackLang.HolProg 64 :=
.seq NamedBody269_140 NamedBody269_147

def NamedBody269_149 : StackLang.HolProg 64 :=
.seq NamedBody269_139 NamedBody269_148

def NamedBody269_150 : StackLang.HolProg 64 :=
.seq NamedBody269_138 NamedBody269_149

def NamedBody269_151 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody269_152 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 1 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 12) NamedBody269_150 NamedBody269_151

def NamedBody269_153 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody269_154 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody269_155 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody269_156 : StackLang.HolProg 64 :=
.seq NamedBody269_154 NamedBody269_155

def NamedBody269_157 : StackLang.HolProg 64 :=
.seq NamedBody269_153 NamedBody269_156

def NamedBody269_158 : StackLang.HolProg 64 :=
.seq NamedBody269_152 NamedBody269_157

def NamedBody269_159 : StackLang.HolProg 64 :=
.seq NamedBody269_137 NamedBody269_158

def NamedBody269_160 : StackLang.HolProg 64 :=
.seq NamedBody269_136 NamedBody269_159

def NamedBody269_161 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody269_162 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody269_163 : StackLang.HolProg 64 :=
.seq NamedBody269_161 NamedBody269_162

def NamedBody269_164 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.notEqual) 1 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 10) NamedBody269_160 NamedBody269_163

def NamedBody269_165 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody269_166 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 10 11
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 11)))

def NamedBody269_167 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 11 12
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 12)))

def NamedBody269_168 : StackLang.HolProg 64 :=
.seq NamedBody269_166 NamedBody269_167

def NamedBody269_169 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody269_170 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 5

def NamedBody269_171 : StackLang.HolProg 64 :=
.seq NamedBody269_169 NamedBody269_170

def NamedBody269_172 : StackLang.HolProg 64 :=
.seq NamedBody269_168 NamedBody269_171

def NamedBody269_173 : StackLang.HolProg 64 :=
.seq NamedBody269_165 NamedBody269_172

def NamedBody269_174 : StackLang.HolProg 64 :=
.seq NamedBody269_164 NamedBody269_173

def NamedBody269_175 : StackLang.HolProg 64 :=
.seq NamedBody269_135 NamedBody269_174

def NamedBody269_176 : StackLang.HolProg 64 :=
.seq NamedBody269_134 NamedBody269_175

def NamedBody269_177 : StackLang.HolProg 64 :=
.seq NamedBody269_133 NamedBody269_176

def NamedBody269_178 : StackLang.HolProg 64 :=
.seq NamedBody269_132 NamedBody269_177

def NamedBody269_179 : StackLang.HolProg 64 :=
.seq NamedBody269_97 NamedBody269_178

def NamedBody269_180 : StackLang.HolProg 64 :=
.seq NamedBody269_96 NamedBody269_179

def NamedBody269_181 : StackLang.HolProg 64 :=
.seq NamedBody269_95 NamedBody269_180

def NamedBody269_182 : StackLang.HolProg 64 :=
.seq NamedBody269_94 NamedBody269_181

def NamedBody269_183 : StackLang.HolProg 64 :=
.seq NamedBody269_93 NamedBody269_182

def NamedBody269_184 : StackLang.HolProg 64 :=
.seq NamedBody269_78 NamedBody269_183

def NamedBody269_185 : StackLang.HolProg 64 :=
.seq NamedBody269_77 NamedBody269_184

def NamedBody269_186 : StackLang.HolProg 64 :=
.seq NamedBody269_76 NamedBody269_185

def NamedBody269_187 : StackLang.HolProg 64 :=
.seq NamedBody269_75 NamedBody269_186

def NamedBody269_188 : StackLang.HolProg 64 :=
.seq NamedBody269_16 NamedBody269_187

def NamedBody269_189 : StackLang.HolProg 64 :=
.seq NamedBody269_13 NamedBody269_188

def NamedBody269_190 : StackLang.HolProg 64 :=
.seq NamedBody269_12 NamedBody269_189

def NamedBody269_191 : StackLang.HolProg 64 :=
.seq NamedBody269_11 NamedBody269_190

def NamedBody269_192 : StackLang.HolProg 64 :=
.seq NamedBody269_10 NamedBody269_191

def NamedBody269_193 : StackLang.HolProg 64 :=
.seq NamedBody269_9 NamedBody269_192

def NamedBody269_194 : StackLang.HolProg 64 :=
.seq NamedBody269_8 NamedBody269_193

def NamedBody269_195 : StackLang.HolProg 64 :=
.seq NamedBody269_7 NamedBody269_194

def NamedBody269_196 : StackLang.HolProg 64 :=
.seq NamedBody269_6 NamedBody269_195

def Named269 : Nat × StackLang.HolProg 64 := (269, NamedBody269_196)
theorem Named269_eq : StackNames.progCompEntryHOL RiscVConfig.riscvNames Removed269 = Named269 := by
  kernel_rfl
#print axioms Named269_eq
end InitECandidate.Proofs.BackendStages
