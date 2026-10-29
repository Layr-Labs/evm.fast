import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.BackendStages.Removed385
import Flapjack.Compiler.Backend.Backend
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
namespace InitECandidate.Proofs.BackendStages
def NamedBody385_0 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 48#64)))

def NamedBody385_1 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 2#64)

def NamedBody385_2 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 10

def NamedBody385_3 : StackLang.HolProg 64 :=
.seq NamedBody385_1 NamedBody385_2

def NamedBody385_4 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody385_5 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) NamedBody385_3 NamedBody385_4

def NamedBody385_6 : StackLang.HolProg 64 :=
.seq NamedBody385_0 NamedBody385_5

def NamedBody385_7 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 40#64))

def NamedBody385_8 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 10
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 32#64))

def NamedBody385_9 : StackLang.HolProg 64 :=
.seq NamedBody385_7 NamedBody385_8

def NamedBody385_10 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody385_11 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1133#64)

def NamedBody385_12 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody385_13 : StackLang.HolProg 64 :=
.seq NamedBody385_11 NamedBody385_12

def NamedBody385_14 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody385_15 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 2#64)

def NamedBody385_16 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 10

def NamedBody385_17 : StackLang.HolProg 64 :=
.seq NamedBody385_15 NamedBody385_16

def NamedBody385_18 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody385_19 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) NamedBody385_17 NamedBody385_18

def NamedBody385_20 : StackLang.HolProg 64 :=
.seq NamedBody385_14 NamedBody385_19

def NamedBody385_21 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def NamedBody385_22 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody385_23 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 385 3

def NamedBody385_24 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody385_25 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody385_26 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody385_27 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody385_28 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def NamedBody385_29 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def NamedBody385_30 : StackLang.HolProg 64 :=
.seq NamedBody385_28 NamedBody385_29

def NamedBody385_31 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def NamedBody385_32 : StackLang.HolProg 64 :=
.seq NamedBody385_30 NamedBody385_31

def NamedBody385_33 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody385_34 : StackLang.HolProg 64 :=
.seq NamedBody385_32 NamedBody385_33

def NamedBody385_35 : StackLang.HolProg 64 :=
.seq NamedBody385_27 NamedBody385_34

def NamedBody385_36 : StackLang.HolProg 64 :=
.seq NamedBody385_26 NamedBody385_35

def NamedBody385_37 : StackLang.HolProg 64 :=
.seq NamedBody385_25 NamedBody385_36

def NamedBody385_38 : StackLang.HolProg 64 :=
.seq NamedBody385_24 NamedBody385_37

def NamedBody385_39 : StackLang.HolProg 64 :=
.seq NamedBody385_23 NamedBody385_38

def NamedBody385_40 : StackLang.HolProg 64 :=
.seq NamedBody385_22 NamedBody385_39

def NamedBody385_41 : StackLang.HolProg 64 :=
.seq NamedBody385_21 NamedBody385_40

def NamedBody385_42 : StackLang.HolProg 64 :=
.seq NamedBody385_20 NamedBody385_41

def NamedBody385_43 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody385_44 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody385_45 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody385_46 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody385_47 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody385_48 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody385_49 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 1 10
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 10)))

def NamedBody385_50 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 13
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 32#64))

def NamedBody385_51 : StackLang.HolProg 64 :=
.seq NamedBody385_49 NamedBody385_50

def NamedBody385_52 : StackLang.HolProg 64 :=
.seq NamedBody385_48 NamedBody385_51

def NamedBody385_53 : StackLang.HolProg 64 :=
.seq NamedBody385_47 NamedBody385_52

def NamedBody385_54 : StackLang.HolProg 64 :=
.seq NamedBody385_46 NamedBody385_53

def NamedBody385_55 : StackLang.HolProg 64 :=
.seq NamedBody385_45 NamedBody385_54

def NamedBody385_56 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 13
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 32#64))

def NamedBody385_57 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def NamedBody385_58 : StackLang.HolProg 64 :=
.seq NamedBody385_56 NamedBody385_57

def NamedBody385_59 : StackLang.HolProg 64 :=
.call (some (NamedBody385_55, 1, 385, 2)) (Sum.inl 384) (some (NamedBody385_58, 385, 3))

def NamedBody385_60 : StackLang.HolProg 64 :=
.seq NamedBody385_44 NamedBody385_59

def NamedBody385_61 : StackLang.HolProg 64 :=
.seq NamedBody385_43 NamedBody385_60

def NamedBody385_62 : StackLang.HolProg 64 :=
.seq NamedBody385_42 NamedBody385_61

def NamedBody385_63 : StackLang.HolProg 64 :=
.seq NamedBody385_13 NamedBody385_62

def NamedBody385_64 : StackLang.HolProg 64 :=
.seq NamedBody385_10 NamedBody385_63

def NamedBody385_65 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody385_66 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody385_67 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 6
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 13 144#64))

def NamedBody385_68 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 4294967295#64)

def NamedBody385_69 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody385_70 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody385_71 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 66#64)

def NamedBody385_72 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody385_73 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 10
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551480#64))

def NamedBody385_74 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 6#64)

def NamedBody385_75 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody385_76 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def NamedBody385_77 : StackLang.HolProg 64 :=
.seq NamedBody385_75 NamedBody385_76

def NamedBody385_78 : StackLang.HolProg 64 :=
.seq NamedBody385_74 NamedBody385_77

def NamedBody385_79 : StackLang.HolProg 64 :=
.seq NamedBody385_73 NamedBody385_78

def NamedBody385_80 : StackLang.HolProg 64 :=
.seq NamedBody385_72 NamedBody385_79

def NamedBody385_81 : StackLang.HolProg 64 :=
.seq NamedBody385_71 NamedBody385_80

def NamedBody385_82 : StackLang.HolProg 64 :=
.seq NamedBody385_70 NamedBody385_81

def NamedBody385_83 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody385_84 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 10 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 6) NamedBody385_82 NamedBody385_83

def NamedBody385_85 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody385_86 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody385_87 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 7 11
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 11)))

def NamedBody385_88 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 10 7
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def NamedBody385_89 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody385_90 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 60#64)

def NamedBody385_91 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody385_92 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 10
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551480#64))

def NamedBody385_93 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 6#64)

def NamedBody385_94 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody385_95 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def NamedBody385_96 : StackLang.HolProg 64 :=
.seq NamedBody385_94 NamedBody385_95

def NamedBody385_97 : StackLang.HolProg 64 :=
.seq NamedBody385_93 NamedBody385_96

def NamedBody385_98 : StackLang.HolProg 64 :=
.seq NamedBody385_92 NamedBody385_97

def NamedBody385_99 : StackLang.HolProg 64 :=
.seq NamedBody385_91 NamedBody385_98

def NamedBody385_100 : StackLang.HolProg 64 :=
.seq NamedBody385_90 NamedBody385_99

def NamedBody385_101 : StackLang.HolProg 64 :=
.seq NamedBody385_89 NamedBody385_100

def NamedBody385_102 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody385_103 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 6 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 10) NamedBody385_101 NamedBody385_102

def NamedBody385_104 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody385_105 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody385_106 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 5 12
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 12)))

def NamedBody385_107 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody385_108 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 61#64)

def NamedBody385_109 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody385_110 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 10
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551480#64))

def NamedBody385_111 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 6#64)

def NamedBody385_112 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody385_113 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def NamedBody385_114 : StackLang.HolProg 64 :=
.seq NamedBody385_112 NamedBody385_113

def NamedBody385_115 : StackLang.HolProg 64 :=
.seq NamedBody385_111 NamedBody385_114

def NamedBody385_116 : StackLang.HolProg 64 :=
.seq NamedBody385_110 NamedBody385_115

def NamedBody385_117 : StackLang.HolProg 64 :=
.seq NamedBody385_109 NamedBody385_116

def NamedBody385_118 : StackLang.HolProg 64 :=
.seq NamedBody385_108 NamedBody385_117

def NamedBody385_119 : StackLang.HolProg 64 :=
.seq NamedBody385_107 NamedBody385_118

def NamedBody385_120 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody385_121 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 6 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 5) NamedBody385_119 NamedBody385_120

def NamedBody385_122 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody385_123 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody385_124 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody385_125 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 10
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 13 152#64))

def NamedBody385_126 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 11 0#64)

def NamedBody385_127 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody385_128 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 131072#64)

def NamedBody385_129 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody385_130 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 11
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 13 200#64))

def NamedBody385_131 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody385_132 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 62#64)

def NamedBody385_133 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody385_134 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 10
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551480#64))

def NamedBody385_135 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 6#64)

def NamedBody385_136 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody385_137 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def NamedBody385_138 : StackLang.HolProg 64 :=
.seq NamedBody385_136 NamedBody385_137

def NamedBody385_139 : StackLang.HolProg 64 :=
.seq NamedBody385_135 NamedBody385_138

def NamedBody385_140 : StackLang.HolProg 64 :=
.seq NamedBody385_134 NamedBody385_139

def NamedBody385_141 : StackLang.HolProg 64 :=
.seq NamedBody385_133 NamedBody385_140

def NamedBody385_142 : StackLang.HolProg 64 :=
.seq NamedBody385_132 NamedBody385_141

def NamedBody385_143 : StackLang.HolProg 64 :=
.seq NamedBody385_131 NamedBody385_142

def NamedBody385_144 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody385_145 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 10 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 11) NamedBody385_143 NamedBody385_144

def NamedBody385_146 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody385_147 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody385_148 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody385_149 : StackLang.HolProg 64 :=
.seq NamedBody385_147 NamedBody385_148

def NamedBody385_150 : StackLang.HolProg 64 :=
.seq NamedBody385_146 NamedBody385_149

def NamedBody385_151 : StackLang.HolProg 64 :=
.seq NamedBody385_145 NamedBody385_150

def NamedBody385_152 : StackLang.HolProg 64 :=
.seq NamedBody385_130 NamedBody385_151

def NamedBody385_153 : StackLang.HolProg 64 :=
.seq NamedBody385_129 NamedBody385_152

def NamedBody385_154 : StackLang.HolProg 64 :=
.seq NamedBody385_128 NamedBody385_153

def NamedBody385_155 : StackLang.HolProg 64 :=
.seq NamedBody385_127 NamedBody385_154

def NamedBody385_156 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody385_157 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody385_158 : StackLang.HolProg 64 :=
.seq NamedBody385_156 NamedBody385_157

def NamedBody385_159 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.equal) 10 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 11) NamedBody385_155 NamedBody385_158

def NamedBody385_160 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody385_161 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 16777216#64)

def NamedBody385_162 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody385_163 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody385_164 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 63#64)

def NamedBody385_165 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody385_166 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 10
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551480#64))

def NamedBody385_167 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 6#64)

def NamedBody385_168 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody385_169 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def NamedBody385_170 : StackLang.HolProg 64 :=
.seq NamedBody385_168 NamedBody385_169

def NamedBody385_171 : StackLang.HolProg 64 :=
.seq NamedBody385_167 NamedBody385_170

def NamedBody385_172 : StackLang.HolProg 64 :=
.seq NamedBody385_166 NamedBody385_171

def NamedBody385_173 : StackLang.HolProg 64 :=
.seq NamedBody385_165 NamedBody385_172

def NamedBody385_174 : StackLang.HolProg 64 :=
.seq NamedBody385_164 NamedBody385_173

def NamedBody385_175 : StackLang.HolProg 64 :=
.seq NamedBody385_163 NamedBody385_174

def NamedBody385_176 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody385_177 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 10 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1) NamedBody385_175 NamedBody385_176

def NamedBody385_178 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody385_179 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody385_180 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 16777216#64)

def NamedBody385_181 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody385_182 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody385_183 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 64#64)

def NamedBody385_184 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody385_185 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 10
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551480#64))

def NamedBody385_186 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 6#64)

def NamedBody385_187 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody385_188 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def NamedBody385_189 : StackLang.HolProg 64 :=
.seq NamedBody385_187 NamedBody385_188

def NamedBody385_190 : StackLang.HolProg 64 :=
.seq NamedBody385_186 NamedBody385_189

def NamedBody385_191 : StackLang.HolProg 64 :=
.seq NamedBody385_185 NamedBody385_190

def NamedBody385_192 : StackLang.HolProg 64 :=
.seq NamedBody385_184 NamedBody385_191

def NamedBody385_193 : StackLang.HolProg 64 :=
.seq NamedBody385_183 NamedBody385_192

def NamedBody385_194 : StackLang.HolProg 64 :=
.seq NamedBody385_182 NamedBody385_193

def NamedBody385_195 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody385_196 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 10 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 5) NamedBody385_194 NamedBody385_195

def NamedBody385_197 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody385_198 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody385_199 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody385_200 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 10
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 13 16#64))

def NamedBody385_201 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody385_202 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 11
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 13 24#64))

def NamedBody385_203 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody385_204 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 12
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 13 32#64))

def NamedBody385_205 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody385_206 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 13
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 13 40#64))

def NamedBody385_207 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 7
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 32#64))

def NamedBody385_208 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 24#64))

def NamedBody385_209 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 5
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody385_210 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 10
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody385_211 : StackLang.HolProg 64 :=
.seq NamedBody385_209 NamedBody385_210

def NamedBody385_212 : StackLang.HolProg 64 :=
.seq NamedBody385_208 NamedBody385_211

def NamedBody385_213 : StackLang.HolProg 64 :=
.seq NamedBody385_207 NamedBody385_212

def NamedBody385_214 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody385_215 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1134#64)

def NamedBody385_216 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody385_217 : StackLang.HolProg 64 :=
.seq NamedBody385_215 NamedBody385_216

def NamedBody385_218 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody385_219 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 2#64)

def NamedBody385_220 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 10

def NamedBody385_221 : StackLang.HolProg 64 :=
.seq NamedBody385_219 NamedBody385_220

def NamedBody385_222 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody385_223 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) NamedBody385_221 NamedBody385_222

def NamedBody385_224 : StackLang.HolProg 64 :=
.seq NamedBody385_218 NamedBody385_223

def NamedBody385_225 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def NamedBody385_226 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody385_227 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 385 5

def NamedBody385_228 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody385_229 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody385_230 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody385_231 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody385_232 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def NamedBody385_233 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def NamedBody385_234 : StackLang.HolProg 64 :=
.seq NamedBody385_232 NamedBody385_233

def NamedBody385_235 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def NamedBody385_236 : StackLang.HolProg 64 :=
.seq NamedBody385_234 NamedBody385_235

def NamedBody385_237 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody385_238 : StackLang.HolProg 64 :=
.seq NamedBody385_236 NamedBody385_237

def NamedBody385_239 : StackLang.HolProg 64 :=
.seq NamedBody385_231 NamedBody385_238

def NamedBody385_240 : StackLang.HolProg 64 :=
.seq NamedBody385_230 NamedBody385_239

def NamedBody385_241 : StackLang.HolProg 64 :=
.seq NamedBody385_229 NamedBody385_240

def NamedBody385_242 : StackLang.HolProg 64 :=
.seq NamedBody385_228 NamedBody385_241

def NamedBody385_243 : StackLang.HolProg 64 :=
.seq NamedBody385_227 NamedBody385_242

def NamedBody385_244 : StackLang.HolProg 64 :=
.seq NamedBody385_226 NamedBody385_243

def NamedBody385_245 : StackLang.HolProg 64 :=
.seq NamedBody385_225 NamedBody385_244

def NamedBody385_246 : StackLang.HolProg 64 :=
.seq NamedBody385_224 NamedBody385_245

def NamedBody385_247 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody385_248 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody385_249 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody385_250 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody385_251 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody385_252 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody385_253 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 13 10
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 10)))

def NamedBody385_254 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 5
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 40#64))

def NamedBody385_255 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 11
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 32#64))

def NamedBody385_256 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 6
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 24#64))

def NamedBody385_257 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 12
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody385_258 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody385_259 : StackLang.HolProg 64 :=
.seq NamedBody385_257 NamedBody385_258

def NamedBody385_260 : StackLang.HolProg 64 :=
.seq NamedBody385_256 NamedBody385_259

def NamedBody385_261 : StackLang.HolProg 64 :=
.seq NamedBody385_255 NamedBody385_260

def NamedBody385_262 : StackLang.HolProg 64 :=
.seq NamedBody385_254 NamedBody385_261

def NamedBody385_263 : StackLang.HolProg 64 :=
.seq NamedBody385_253 NamedBody385_262

def NamedBody385_264 : StackLang.HolProg 64 :=
.seq NamedBody385_252 NamedBody385_263

def NamedBody385_265 : StackLang.HolProg 64 :=
.seq NamedBody385_251 NamedBody385_264

def NamedBody385_266 : StackLang.HolProg 64 :=
.seq NamedBody385_250 NamedBody385_265

def NamedBody385_267 : StackLang.HolProg 64 :=
.seq NamedBody385_249 NamedBody385_266

def NamedBody385_268 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 5
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 40#64))

def NamedBody385_269 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 11
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 32#64))

def NamedBody385_270 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 6
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 24#64))

def NamedBody385_271 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 12
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody385_272 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody385_273 : StackLang.HolProg 64 :=
.seq NamedBody385_271 NamedBody385_272

def NamedBody385_274 : StackLang.HolProg 64 :=
.seq NamedBody385_270 NamedBody385_273

def NamedBody385_275 : StackLang.HolProg 64 :=
.seq NamedBody385_269 NamedBody385_274

def NamedBody385_276 : StackLang.HolProg 64 :=
.seq NamedBody385_268 NamedBody385_275

def NamedBody385_277 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def NamedBody385_278 : StackLang.HolProg 64 :=
.seq NamedBody385_276 NamedBody385_277

def NamedBody385_279 : StackLang.HolProg 64 :=
.call (some (NamedBody385_267, 1, 385, 4)) (Sum.inl 101) (some (NamedBody385_278, 385, 5))

def NamedBody385_280 : StackLang.HolProg 64 :=
.seq NamedBody385_248 NamedBody385_279

def NamedBody385_281 : StackLang.HolProg 64 :=
.seq NamedBody385_247 NamedBody385_280

def NamedBody385_282 : StackLang.HolProg 64 :=
.seq NamedBody385_246 NamedBody385_281

def NamedBody385_283 : StackLang.HolProg 64 :=
.seq NamedBody385_217 NamedBody385_282

def NamedBody385_284 : StackLang.HolProg 64 :=
.seq NamedBody385_214 NamedBody385_283

def NamedBody385_285 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody385_286 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody385_287 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 0#64)

def NamedBody385_288 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody385_289 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 65#64)

def NamedBody385_290 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody385_291 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 10
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551480#64))

def NamedBody385_292 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 6#64)

def NamedBody385_293 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody385_294 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def NamedBody385_295 : StackLang.HolProg 64 :=
.seq NamedBody385_293 NamedBody385_294

def NamedBody385_296 : StackLang.HolProg 64 :=
.seq NamedBody385_292 NamedBody385_295

def NamedBody385_297 : StackLang.HolProg 64 :=
.seq NamedBody385_291 NamedBody385_296

def NamedBody385_298 : StackLang.HolProg 64 :=
.seq NamedBody385_290 NamedBody385_297

def NamedBody385_299 : StackLang.HolProg 64 :=
.seq NamedBody385_289 NamedBody385_298

def NamedBody385_300 : StackLang.HolProg 64 :=
.seq NamedBody385_288 NamedBody385_299

def NamedBody385_301 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody385_302 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.equal) 13 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 10) NamedBody385_300 NamedBody385_301

def NamedBody385_303 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody385_304 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody385_305 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody385_306 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 18446744073709551615#64)

def NamedBody385_307 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody385_308 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 65#64)

def NamedBody385_309 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody385_310 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551480#64))

def NamedBody385_311 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 6#64)

def NamedBody385_312 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody385_313 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def NamedBody385_314 : StackLang.HolProg 64 :=
.seq NamedBody385_312 NamedBody385_313

def NamedBody385_315 : StackLang.HolProg 64 :=
.seq NamedBody385_311 NamedBody385_314

def NamedBody385_316 : StackLang.HolProg 64 :=
.seq NamedBody385_310 NamedBody385_315

def NamedBody385_317 : StackLang.HolProg 64 :=
.seq NamedBody385_309 NamedBody385_316

def NamedBody385_318 : StackLang.HolProg 64 :=
.seq NamedBody385_308 NamedBody385_317

def NamedBody385_319 : StackLang.HolProg 64 :=
.seq NamedBody385_307 NamedBody385_318

def NamedBody385_320 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody385_321 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.equal) 1 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 10) NamedBody385_319 NamedBody385_320

def NamedBody385_322 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody385_323 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody385_324 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 10 6
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 6)))

def NamedBody385_325 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 48#64)))

def NamedBody385_326 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 5

def NamedBody385_327 : StackLang.HolProg 64 :=
.seq NamedBody385_325 NamedBody385_326

def NamedBody385_328 : StackLang.HolProg 64 :=
.seq NamedBody385_324 NamedBody385_327

def NamedBody385_329 : StackLang.HolProg 64 :=
.seq NamedBody385_323 NamedBody385_328

def NamedBody385_330 : StackLang.HolProg 64 :=
.seq NamedBody385_322 NamedBody385_329

def NamedBody385_331 : StackLang.HolProg 64 :=
.seq NamedBody385_321 NamedBody385_330

def NamedBody385_332 : StackLang.HolProg 64 :=
.seq NamedBody385_306 NamedBody385_331

def NamedBody385_333 : StackLang.HolProg 64 :=
.seq NamedBody385_305 NamedBody385_332

def NamedBody385_334 : StackLang.HolProg 64 :=
.seq NamedBody385_304 NamedBody385_333

def NamedBody385_335 : StackLang.HolProg 64 :=
.seq NamedBody385_303 NamedBody385_334

def NamedBody385_336 : StackLang.HolProg 64 :=
.seq NamedBody385_302 NamedBody385_335

def NamedBody385_337 : StackLang.HolProg 64 :=
.seq NamedBody385_287 NamedBody385_336

def NamedBody385_338 : StackLang.HolProg 64 :=
.seq NamedBody385_286 NamedBody385_337

def NamedBody385_339 : StackLang.HolProg 64 :=
.seq NamedBody385_285 NamedBody385_338

def NamedBody385_340 : StackLang.HolProg 64 :=
.seq NamedBody385_284 NamedBody385_339

def NamedBody385_341 : StackLang.HolProg 64 :=
.seq NamedBody385_213 NamedBody385_340

def NamedBody385_342 : StackLang.HolProg 64 :=
.seq NamedBody385_206 NamedBody385_341

def NamedBody385_343 : StackLang.HolProg 64 :=
.seq NamedBody385_205 NamedBody385_342

def NamedBody385_344 : StackLang.HolProg 64 :=
.seq NamedBody385_204 NamedBody385_343

def NamedBody385_345 : StackLang.HolProg 64 :=
.seq NamedBody385_203 NamedBody385_344

def NamedBody385_346 : StackLang.HolProg 64 :=
.seq NamedBody385_202 NamedBody385_345

def NamedBody385_347 : StackLang.HolProg 64 :=
.seq NamedBody385_201 NamedBody385_346

def NamedBody385_348 : StackLang.HolProg 64 :=
.seq NamedBody385_200 NamedBody385_347

def NamedBody385_349 : StackLang.HolProg 64 :=
.seq NamedBody385_199 NamedBody385_348

def NamedBody385_350 : StackLang.HolProg 64 :=
.seq NamedBody385_198 NamedBody385_349

def NamedBody385_351 : StackLang.HolProg 64 :=
.seq NamedBody385_197 NamedBody385_350

def NamedBody385_352 : StackLang.HolProg 64 :=
.seq NamedBody385_196 NamedBody385_351

def NamedBody385_353 : StackLang.HolProg 64 :=
.seq NamedBody385_181 NamedBody385_352

def NamedBody385_354 : StackLang.HolProg 64 :=
.seq NamedBody385_180 NamedBody385_353

def NamedBody385_355 : StackLang.HolProg 64 :=
.seq NamedBody385_179 NamedBody385_354

def NamedBody385_356 : StackLang.HolProg 64 :=
.seq NamedBody385_178 NamedBody385_355

def NamedBody385_357 : StackLang.HolProg 64 :=
.seq NamedBody385_177 NamedBody385_356

def NamedBody385_358 : StackLang.HolProg 64 :=
.seq NamedBody385_162 NamedBody385_357

def NamedBody385_359 : StackLang.HolProg 64 :=
.seq NamedBody385_161 NamedBody385_358

def NamedBody385_360 : StackLang.HolProg 64 :=
.seq NamedBody385_160 NamedBody385_359

def NamedBody385_361 : StackLang.HolProg 64 :=
.seq NamedBody385_159 NamedBody385_360

def NamedBody385_362 : StackLang.HolProg 64 :=
.seq NamedBody385_126 NamedBody385_361

def NamedBody385_363 : StackLang.HolProg 64 :=
.seq NamedBody385_125 NamedBody385_362

def NamedBody385_364 : StackLang.HolProg 64 :=
.seq NamedBody385_124 NamedBody385_363

def NamedBody385_365 : StackLang.HolProg 64 :=
.seq NamedBody385_123 NamedBody385_364

def NamedBody385_366 : StackLang.HolProg 64 :=
.seq NamedBody385_122 NamedBody385_365

def NamedBody385_367 : StackLang.HolProg 64 :=
.seq NamedBody385_121 NamedBody385_366

def NamedBody385_368 : StackLang.HolProg 64 :=
.seq NamedBody385_106 NamedBody385_367

def NamedBody385_369 : StackLang.HolProg 64 :=
.seq NamedBody385_105 NamedBody385_368

def NamedBody385_370 : StackLang.HolProg 64 :=
.seq NamedBody385_104 NamedBody385_369

def NamedBody385_371 : StackLang.HolProg 64 :=
.seq NamedBody385_103 NamedBody385_370

def NamedBody385_372 : StackLang.HolProg 64 :=
.seq NamedBody385_88 NamedBody385_371

def NamedBody385_373 : StackLang.HolProg 64 :=
.seq NamedBody385_87 NamedBody385_372

def NamedBody385_374 : StackLang.HolProg 64 :=
.seq NamedBody385_86 NamedBody385_373

def NamedBody385_375 : StackLang.HolProg 64 :=
.seq NamedBody385_85 NamedBody385_374

def NamedBody385_376 : StackLang.HolProg 64 :=
.seq NamedBody385_84 NamedBody385_375

def NamedBody385_377 : StackLang.HolProg 64 :=
.seq NamedBody385_69 NamedBody385_376

def NamedBody385_378 : StackLang.HolProg 64 :=
.seq NamedBody385_68 NamedBody385_377

def NamedBody385_379 : StackLang.HolProg 64 :=
.seq NamedBody385_67 NamedBody385_378

def NamedBody385_380 : StackLang.HolProg 64 :=
.seq NamedBody385_66 NamedBody385_379

def NamedBody385_381 : StackLang.HolProg 64 :=
.seq NamedBody385_65 NamedBody385_380

def NamedBody385_382 : StackLang.HolProg 64 :=
.seq NamedBody385_64 NamedBody385_381

def NamedBody385_383 : StackLang.HolProg 64 :=
.seq NamedBody385_9 NamedBody385_382

def NamedBody385_384 : StackLang.HolProg 64 :=
.seq NamedBody385_6 NamedBody385_383

def Named385 : Nat × StackLang.HolProg 64 := (385, NamedBody385_384)
theorem Named385_eq : StackNames.progCompEntryHOL RiscVConfig.riscvNames Removed385 = Named385 := by
  kernel_rfl
#print axioms Named385_eq
end InitECandidate.Proofs.BackendStages
