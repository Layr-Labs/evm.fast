import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.BackendStages.Removed340
import Flapjack.Compiler.Backend.Backend
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
namespace InitECandidate.Proofs.BackendStages
def NamedBody340_0 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 16#64)))

def NamedBody340_1 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 2#64)

def NamedBody340_2 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 10

def NamedBody340_3 : StackLang.HolProg 64 :=
.seq NamedBody340_1 NamedBody340_2

def NamedBody340_4 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody340_5 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) NamedBody340_3 NamedBody340_4

def NamedBody340_6 : StackLang.HolProg 64 :=
.seq NamedBody340_0 NamedBody340_5

def NamedBody340_7 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody340_8 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsl 11 11
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 4#64)))

def NamedBody340_9 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody340_10 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 11 11
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 10)))

def NamedBody340_11 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 10
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 11 0#64))

def NamedBody340_12 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody340_13 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 11
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 11 8#64))

def NamedBody340_14 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody340_15 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody340_16 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 974#64)

def NamedBody340_17 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody340_18 : StackLang.HolProg 64 :=
.seq NamedBody340_16 NamedBody340_17

def NamedBody340_19 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody340_20 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 2#64)

def NamedBody340_21 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 10

def NamedBody340_22 : StackLang.HolProg 64 :=
.seq NamedBody340_20 NamedBody340_21

def NamedBody340_23 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody340_24 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) NamedBody340_22 NamedBody340_23

def NamedBody340_25 : StackLang.HolProg 64 :=
.seq NamedBody340_19 NamedBody340_24

def NamedBody340_26 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def NamedBody340_27 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody340_28 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 340 3

def NamedBody340_29 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody340_30 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody340_31 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody340_32 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody340_33 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def NamedBody340_34 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def NamedBody340_35 : StackLang.HolProg 64 :=
.seq NamedBody340_33 NamedBody340_34

def NamedBody340_36 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def NamedBody340_37 : StackLang.HolProg 64 :=
.seq NamedBody340_35 NamedBody340_36

def NamedBody340_38 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody340_39 : StackLang.HolProg 64 :=
.seq NamedBody340_37 NamedBody340_38

def NamedBody340_40 : StackLang.HolProg 64 :=
.seq NamedBody340_32 NamedBody340_39

def NamedBody340_41 : StackLang.HolProg 64 :=
.seq NamedBody340_31 NamedBody340_40

def NamedBody340_42 : StackLang.HolProg 64 :=
.seq NamedBody340_30 NamedBody340_41

def NamedBody340_43 : StackLang.HolProg 64 :=
.seq NamedBody340_29 NamedBody340_42

def NamedBody340_44 : StackLang.HolProg 64 :=
.seq NamedBody340_28 NamedBody340_43

def NamedBody340_45 : StackLang.HolProg 64 :=
.seq NamedBody340_27 NamedBody340_44

def NamedBody340_46 : StackLang.HolProg 64 :=
.seq NamedBody340_26 NamedBody340_45

def NamedBody340_47 : StackLang.HolProg 64 :=
.seq NamedBody340_25 NamedBody340_46

def NamedBody340_48 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody340_49 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody340_50 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody340_51 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody340_52 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody340_53 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody340_54 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 1 10
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 10)))

def NamedBody340_55 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 13
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody340_56 : StackLang.HolProg 64 :=
.seq NamedBody340_54 NamedBody340_55

def NamedBody340_57 : StackLang.HolProg 64 :=
.seq NamedBody340_53 NamedBody340_56

def NamedBody340_58 : StackLang.HolProg 64 :=
.seq NamedBody340_52 NamedBody340_57

def NamedBody340_59 : StackLang.HolProg 64 :=
.seq NamedBody340_51 NamedBody340_58

def NamedBody340_60 : StackLang.HolProg 64 :=
.seq NamedBody340_50 NamedBody340_59

def NamedBody340_61 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 13
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody340_62 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def NamedBody340_63 : StackLang.HolProg 64 :=
.seq NamedBody340_61 NamedBody340_62

def NamedBody340_64 : StackLang.HolProg 64 :=
.call (some (NamedBody340_60, 1, 340, 2)) (Sum.inl 161) (some (NamedBody340_63, 340, 3))

def NamedBody340_65 : StackLang.HolProg 64 :=
.seq NamedBody340_49 NamedBody340_64

def NamedBody340_66 : StackLang.HolProg 64 :=
.seq NamedBody340_48 NamedBody340_65

def NamedBody340_67 : StackLang.HolProg 64 :=
.seq NamedBody340_47 NamedBody340_66

def NamedBody340_68 : StackLang.HolProg 64 :=
.seq NamedBody340_18 NamedBody340_67

def NamedBody340_69 : StackLang.HolProg 64 :=
.seq NamedBody340_15 NamedBody340_68

def NamedBody340_70 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody340_71 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody340_72 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 0#64)

def NamedBody340_73 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody340_74 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 17#64)

def NamedBody340_75 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody340_76 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551480#64))

def NamedBody340_77 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 6#64)

def NamedBody340_78 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody340_79 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def NamedBody340_80 : StackLang.HolProg 64 :=
.seq NamedBody340_78 NamedBody340_79

def NamedBody340_81 : StackLang.HolProg 64 :=
.seq NamedBody340_77 NamedBody340_80

def NamedBody340_82 : StackLang.HolProg 64 :=
.seq NamedBody340_76 NamedBody340_81

def NamedBody340_83 : StackLang.HolProg 64 :=
.seq NamedBody340_75 NamedBody340_82

def NamedBody340_84 : StackLang.HolProg 64 :=
.seq NamedBody340_74 NamedBody340_83

def NamedBody340_85 : StackLang.HolProg 64 :=
.seq NamedBody340_73 NamedBody340_84

def NamedBody340_86 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody340_87 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.notEqual) 1 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 10) NamedBody340_85 NamedBody340_86

def NamedBody340_88 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody340_89 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody340_90 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody340_91 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 0#64)

def NamedBody340_92 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody340_93 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 0#64)

def NamedBody340_94 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody340_95 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 16#64)))

def NamedBody340_96 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 13

def NamedBody340_97 : StackLang.HolProg 64 :=
.seq NamedBody340_95 NamedBody340_96

def NamedBody340_98 : StackLang.HolProg 64 :=
.seq NamedBody340_94 NamedBody340_97

def NamedBody340_99 : StackLang.HolProg 64 :=
.seq NamedBody340_93 NamedBody340_98

def NamedBody340_100 : StackLang.HolProg 64 :=
.seq NamedBody340_92 NamedBody340_99

def NamedBody340_101 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody340_102 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.equal) 12 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1) NamedBody340_100 NamedBody340_101

def NamedBody340_103 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody340_104 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody340_105 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody340_106 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 20#64)

def NamedBody340_107 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody340_108 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 17#64)

def NamedBody340_109 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody340_110 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551480#64))

def NamedBody340_111 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 6#64)

def NamedBody340_112 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody340_113 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def NamedBody340_114 : StackLang.HolProg 64 :=
.seq NamedBody340_112 NamedBody340_113

def NamedBody340_115 : StackLang.HolProg 64 :=
.seq NamedBody340_111 NamedBody340_114

def NamedBody340_116 : StackLang.HolProg 64 :=
.seq NamedBody340_110 NamedBody340_115

def NamedBody340_117 : StackLang.HolProg 64 :=
.seq NamedBody340_109 NamedBody340_116

def NamedBody340_118 : StackLang.HolProg 64 :=
.seq NamedBody340_108 NamedBody340_117

def NamedBody340_119 : StackLang.HolProg 64 :=
.seq NamedBody340_107 NamedBody340_118

def NamedBody340_120 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody340_121 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.notEqual) 12 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1) NamedBody340_119 NamedBody340_120

def NamedBody340_122 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody340_123 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody340_124 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 10 11
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 11)))

def NamedBody340_125 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 16#64)))

def NamedBody340_126 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 13

def NamedBody340_127 : StackLang.HolProg 64 :=
.seq NamedBody340_125 NamedBody340_126

def NamedBody340_128 : StackLang.HolProg 64 :=
.seq NamedBody340_124 NamedBody340_127

def NamedBody340_129 : StackLang.HolProg 64 :=
.seq NamedBody340_123 NamedBody340_128

def NamedBody340_130 : StackLang.HolProg 64 :=
.seq NamedBody340_122 NamedBody340_129

def NamedBody340_131 : StackLang.HolProg 64 :=
.seq NamedBody340_121 NamedBody340_130

def NamedBody340_132 : StackLang.HolProg 64 :=
.seq NamedBody340_106 NamedBody340_131

def NamedBody340_133 : StackLang.HolProg 64 :=
.seq NamedBody340_105 NamedBody340_132

def NamedBody340_134 : StackLang.HolProg 64 :=
.seq NamedBody340_104 NamedBody340_133

def NamedBody340_135 : StackLang.HolProg 64 :=
.seq NamedBody340_103 NamedBody340_134

def NamedBody340_136 : StackLang.HolProg 64 :=
.seq NamedBody340_102 NamedBody340_135

def NamedBody340_137 : StackLang.HolProg 64 :=
.seq NamedBody340_91 NamedBody340_136

def NamedBody340_138 : StackLang.HolProg 64 :=
.seq NamedBody340_90 NamedBody340_137

def NamedBody340_139 : StackLang.HolProg 64 :=
.seq NamedBody340_89 NamedBody340_138

def NamedBody340_140 : StackLang.HolProg 64 :=
.seq NamedBody340_88 NamedBody340_139

def NamedBody340_141 : StackLang.HolProg 64 :=
.seq NamedBody340_87 NamedBody340_140

def NamedBody340_142 : StackLang.HolProg 64 :=
.seq NamedBody340_72 NamedBody340_141

def NamedBody340_143 : StackLang.HolProg 64 :=
.seq NamedBody340_71 NamedBody340_142

def NamedBody340_144 : StackLang.HolProg 64 :=
.seq NamedBody340_70 NamedBody340_143

def NamedBody340_145 : StackLang.HolProg 64 :=
.seq NamedBody340_69 NamedBody340_144

def NamedBody340_146 : StackLang.HolProg 64 :=
.seq NamedBody340_14 NamedBody340_145

def NamedBody340_147 : StackLang.HolProg 64 :=
.seq NamedBody340_13 NamedBody340_146

def NamedBody340_148 : StackLang.HolProg 64 :=
.seq NamedBody340_12 NamedBody340_147

def NamedBody340_149 : StackLang.HolProg 64 :=
.seq NamedBody340_11 NamedBody340_148

def NamedBody340_150 : StackLang.HolProg 64 :=
.seq NamedBody340_10 NamedBody340_149

def NamedBody340_151 : StackLang.HolProg 64 :=
.seq NamedBody340_9 NamedBody340_150

def NamedBody340_152 : StackLang.HolProg 64 :=
.seq NamedBody340_8 NamedBody340_151

def NamedBody340_153 : StackLang.HolProg 64 :=
.seq NamedBody340_7 NamedBody340_152

def NamedBody340_154 : StackLang.HolProg 64 :=
.seq NamedBody340_6 NamedBody340_153

def Named340 : Nat × StackLang.HolProg 64 := (340, NamedBody340_154)
theorem Named340_eq : StackNames.progCompEntryHOL RiscVConfig.riscvNames Removed340 = Named340 := by
  kernel_rfl
#print axioms Named340_eq
end InitECandidate.Proofs.BackendStages
