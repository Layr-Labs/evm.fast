import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.BackendStages.Removed170
import Flapjack.Compiler.Backend.Backend
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
namespace InitECandidate.Proofs.BackendStages
def NamedBody170_0 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 32#64)))

def NamedBody170_1 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 2#64)

def NamedBody170_2 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 10

def NamedBody170_3 : StackLang.HolProg 64 :=
.seq NamedBody170_1 NamedBody170_2

def NamedBody170_4 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody170_5 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) NamedBody170_3 NamedBody170_4

def NamedBody170_6 : StackLang.HolProg 64 :=
.seq NamedBody170_0 NamedBody170_5

def NamedBody170_7 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 12 10
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 10)))

def NamedBody170_8 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 8#64)

def NamedBody170_9 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody170_10 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody170_11 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 20#64)

def NamedBody170_12 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 24#64))

def NamedBody170_13 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 11
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody170_14 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 12
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody170_15 : StackLang.HolProg 64 :=
.seq NamedBody170_13 NamedBody170_14

def NamedBody170_16 : StackLang.HolProg 64 :=
.seq NamedBody170_12 NamedBody170_15

def NamedBody170_17 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody170_18 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 190#64)

def NamedBody170_19 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody170_20 : StackLang.HolProg 64 :=
.seq NamedBody170_18 NamedBody170_19

def NamedBody170_21 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody170_22 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 2#64)

def NamedBody170_23 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 10

def NamedBody170_24 : StackLang.HolProg 64 :=
.seq NamedBody170_22 NamedBody170_23

def NamedBody170_25 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody170_26 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) NamedBody170_24 NamedBody170_25

def NamedBody170_27 : StackLang.HolProg 64 :=
.seq NamedBody170_21 NamedBody170_26

def NamedBody170_28 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def NamedBody170_29 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody170_30 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 170 3

def NamedBody170_31 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody170_32 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody170_33 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody170_34 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody170_35 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def NamedBody170_36 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def NamedBody170_37 : StackLang.HolProg 64 :=
.seq NamedBody170_35 NamedBody170_36

def NamedBody170_38 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def NamedBody170_39 : StackLang.HolProg 64 :=
.seq NamedBody170_37 NamedBody170_38

def NamedBody170_40 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody170_41 : StackLang.HolProg 64 :=
.seq NamedBody170_39 NamedBody170_40

def NamedBody170_42 : StackLang.HolProg 64 :=
.seq NamedBody170_34 NamedBody170_41

def NamedBody170_43 : StackLang.HolProg 64 :=
.seq NamedBody170_33 NamedBody170_42

def NamedBody170_44 : StackLang.HolProg 64 :=
.seq NamedBody170_32 NamedBody170_43

def NamedBody170_45 : StackLang.HolProg 64 :=
.seq NamedBody170_31 NamedBody170_44

def NamedBody170_46 : StackLang.HolProg 64 :=
.seq NamedBody170_30 NamedBody170_45

def NamedBody170_47 : StackLang.HolProg 64 :=
.seq NamedBody170_29 NamedBody170_46

def NamedBody170_48 : StackLang.HolProg 64 :=
.seq NamedBody170_28 NamedBody170_47

def NamedBody170_49 : StackLang.HolProg 64 :=
.seq NamedBody170_27 NamedBody170_48

def NamedBody170_50 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody170_51 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody170_52 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody170_53 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody170_54 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody170_55 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody170_56 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 11
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody170_57 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 12
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody170_58 : StackLang.HolProg 64 :=
.seq NamedBody170_56 NamedBody170_57

def NamedBody170_59 : StackLang.HolProg 64 :=
.seq NamedBody170_55 NamedBody170_58

def NamedBody170_60 : StackLang.HolProg 64 :=
.seq NamedBody170_54 NamedBody170_59

def NamedBody170_61 : StackLang.HolProg 64 :=
.seq NamedBody170_53 NamedBody170_60

def NamedBody170_62 : StackLang.HolProg 64 :=
.seq NamedBody170_52 NamedBody170_61

def NamedBody170_63 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 11
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody170_64 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 12
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody170_65 : StackLang.HolProg 64 :=
.seq NamedBody170_63 NamedBody170_64

def NamedBody170_66 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def NamedBody170_67 : StackLang.HolProg 64 :=
.seq NamedBody170_65 NamedBody170_66

def NamedBody170_68 : StackLang.HolProg 64 :=
.call (some (NamedBody170_62, 1, 170, 2)) (Sum.inl 159) (some (NamedBody170_67, 170, 3))

def NamedBody170_69 : StackLang.HolProg 64 :=
.seq NamedBody170_51 NamedBody170_68

def NamedBody170_70 : StackLang.HolProg 64 :=
.seq NamedBody170_50 NamedBody170_69

def NamedBody170_71 : StackLang.HolProg 64 :=
.seq NamedBody170_49 NamedBody170_70

def NamedBody170_72 : StackLang.HolProg 64 :=
.seq NamedBody170_20 NamedBody170_71

def NamedBody170_73 : StackLang.HolProg 64 :=
.seq NamedBody170_17 NamedBody170_72

def NamedBody170_74 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody170_75 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody170_76 : StackLang.HolProg 64 :=
.seq NamedBody170_74 NamedBody170_75

def NamedBody170_77 : StackLang.HolProg 64 :=
.seq NamedBody170_73 NamedBody170_76

def NamedBody170_78 : StackLang.HolProg 64 :=
.seq NamedBody170_16 NamedBody170_77

def NamedBody170_79 : StackLang.HolProg 64 :=
.seq NamedBody170_11 NamedBody170_78

def NamedBody170_80 : StackLang.HolProg 64 :=
.seq NamedBody170_10 NamedBody170_79

def NamedBody170_81 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody170_82 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 24#64))

def NamedBody170_83 : StackLang.HolProg 64 :=
.seq NamedBody170_81 NamedBody170_82

def NamedBody170_84 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 10 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 11) NamedBody170_80 NamedBody170_83

def NamedBody170_85 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody170_86 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 0#64)

def NamedBody170_87 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody170_88 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody170_89 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 1#64)

def NamedBody170_90 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody170_91 : StackLang.HolProg 64 :=
.seq NamedBody170_89 NamedBody170_90

def NamedBody170_92 : StackLang.HolProg 64 :=
.seq NamedBody170_88 NamedBody170_91

def NamedBody170_93 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody170_94 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 0#64)

def NamedBody170_95 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody170_96 : StackLang.HolProg 64 :=
.seq NamedBody170_94 NamedBody170_95

def NamedBody170_97 : StackLang.HolProg 64 :=
.seq NamedBody170_93 NamedBody170_96

def NamedBody170_98 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 1 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 11) NamedBody170_92 NamedBody170_97

def NamedBody170_99 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody170_100 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody170_101 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load8 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 12 0#64))

def NamedBody170_102 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody170_103 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 13 0#64)

def NamedBody170_104 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody170_105 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 1#64)

def NamedBody170_106 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody170_107 : StackLang.HolProg 64 :=
.seq NamedBody170_105 NamedBody170_106

def NamedBody170_108 : StackLang.HolProg 64 :=
.seq NamedBody170_104 NamedBody170_107

def NamedBody170_109 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody170_110 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 0#64)

def NamedBody170_111 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody170_112 : StackLang.HolProg 64 :=
.seq NamedBody170_110 NamedBody170_111

def NamedBody170_113 : StackLang.HolProg 64 :=
.seq NamedBody170_109 NamedBody170_112

def NamedBody170_114 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.equal) 1 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 13) NamedBody170_108 NamedBody170_113

def NamedBody170_115 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody170_116 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody170_117 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.and 1 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 10)))

def NamedBody170_118 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 21#64)

def NamedBody170_119 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 11
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody170_120 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 12
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody170_121 : StackLang.HolProg 64 :=
.seq NamedBody170_119 NamedBody170_120

def NamedBody170_122 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody170_123 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 191#64)

def NamedBody170_124 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody170_125 : StackLang.HolProg 64 :=
.seq NamedBody170_123 NamedBody170_124

def NamedBody170_126 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody170_127 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 2#64)

def NamedBody170_128 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 10

def NamedBody170_129 : StackLang.HolProg 64 :=
.seq NamedBody170_127 NamedBody170_128

def NamedBody170_130 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody170_131 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) NamedBody170_129 NamedBody170_130

def NamedBody170_132 : StackLang.HolProg 64 :=
.seq NamedBody170_126 NamedBody170_131

def NamedBody170_133 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def NamedBody170_134 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody170_135 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 170 5

def NamedBody170_136 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody170_137 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody170_138 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody170_139 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody170_140 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def NamedBody170_141 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def NamedBody170_142 : StackLang.HolProg 64 :=
.seq NamedBody170_140 NamedBody170_141

def NamedBody170_143 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def NamedBody170_144 : StackLang.HolProg 64 :=
.seq NamedBody170_142 NamedBody170_143

def NamedBody170_145 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody170_146 : StackLang.HolProg 64 :=
.seq NamedBody170_144 NamedBody170_145

def NamedBody170_147 : StackLang.HolProg 64 :=
.seq NamedBody170_139 NamedBody170_146

def NamedBody170_148 : StackLang.HolProg 64 :=
.seq NamedBody170_138 NamedBody170_147

def NamedBody170_149 : StackLang.HolProg 64 :=
.seq NamedBody170_137 NamedBody170_148

def NamedBody170_150 : StackLang.HolProg 64 :=
.seq NamedBody170_136 NamedBody170_149

def NamedBody170_151 : StackLang.HolProg 64 :=
.seq NamedBody170_135 NamedBody170_150

def NamedBody170_152 : StackLang.HolProg 64 :=
.seq NamedBody170_134 NamedBody170_151

def NamedBody170_153 : StackLang.HolProg 64 :=
.seq NamedBody170_133 NamedBody170_152

def NamedBody170_154 : StackLang.HolProg 64 :=
.seq NamedBody170_132 NamedBody170_153

def NamedBody170_155 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody170_156 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody170_157 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody170_158 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody170_159 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody170_160 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody170_161 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 24#64))

def NamedBody170_162 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 11
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody170_163 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 12
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody170_164 : StackLang.HolProg 64 :=
.seq NamedBody170_162 NamedBody170_163

def NamedBody170_165 : StackLang.HolProg 64 :=
.seq NamedBody170_161 NamedBody170_164

def NamedBody170_166 : StackLang.HolProg 64 :=
.seq NamedBody170_160 NamedBody170_165

def NamedBody170_167 : StackLang.HolProg 64 :=
.seq NamedBody170_159 NamedBody170_166

def NamedBody170_168 : StackLang.HolProg 64 :=
.seq NamedBody170_158 NamedBody170_167

def NamedBody170_169 : StackLang.HolProg 64 :=
.seq NamedBody170_157 NamedBody170_168

def NamedBody170_170 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 24#64))

def NamedBody170_171 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 11
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody170_172 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 12
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody170_173 : StackLang.HolProg 64 :=
.seq NamedBody170_171 NamedBody170_172

def NamedBody170_174 : StackLang.HolProg 64 :=
.seq NamedBody170_170 NamedBody170_173

def NamedBody170_175 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def NamedBody170_176 : StackLang.HolProg 64 :=
.seq NamedBody170_174 NamedBody170_175

def NamedBody170_177 : StackLang.HolProg 64 :=
.call (some (NamedBody170_169, 1, 170, 4)) (Sum.inl 159) (some (NamedBody170_176, 170, 5))

def NamedBody170_178 : StackLang.HolProg 64 :=
.seq NamedBody170_156 NamedBody170_177

def NamedBody170_179 : StackLang.HolProg 64 :=
.seq NamedBody170_155 NamedBody170_178

def NamedBody170_180 : StackLang.HolProg 64 :=
.seq NamedBody170_154 NamedBody170_179

def NamedBody170_181 : StackLang.HolProg 64 :=
.seq NamedBody170_125 NamedBody170_180

def NamedBody170_182 : StackLang.HolProg 64 :=
.seq NamedBody170_122 NamedBody170_181

def NamedBody170_183 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody170_184 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody170_185 : StackLang.HolProg 64 :=
.seq NamedBody170_183 NamedBody170_184

def NamedBody170_186 : StackLang.HolProg 64 :=
.seq NamedBody170_182 NamedBody170_185

def NamedBody170_187 : StackLang.HolProg 64 :=
.seq NamedBody170_121 NamedBody170_186

def NamedBody170_188 : StackLang.HolProg 64 :=
.seq NamedBody170_118 NamedBody170_187

def NamedBody170_189 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 24#64))

def NamedBody170_190 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.notEqual) 1 (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 0#64) NamedBody170_188 NamedBody170_189

def NamedBody170_191 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody170_192 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 0#64)

def NamedBody170_193 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 13 0#64)

def NamedBody170_194 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody170_195 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody170_196 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody170_197 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody170_198 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody170_199 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 5 13
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 12)))

def NamedBody170_200 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load8 5
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 5 0#64))

def NamedBody170_201 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody170_202 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsl 10 10
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 8#64)))

def NamedBody170_203 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 10 5
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 10)))

def NamedBody170_204 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody170_205 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 13 13
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 1#64)))

def NamedBody170_206 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody170_207 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.continue 0

def NamedBody170_208 : StackLang.HolProg 64 :=
.seq NamedBody170_206 NamedBody170_207

def NamedBody170_209 : StackLang.HolProg 64 :=
.seq NamedBody170_205 NamedBody170_208

def NamedBody170_210 : StackLang.HolProg 64 :=
.seq NamedBody170_204 NamedBody170_209

def NamedBody170_211 : StackLang.HolProg 64 :=
.seq NamedBody170_203 NamedBody170_210

def NamedBody170_212 : StackLang.HolProg 64 :=
.seq NamedBody170_202 NamedBody170_211

def NamedBody170_213 : StackLang.HolProg 64 :=
.seq NamedBody170_201 NamedBody170_212

def NamedBody170_214 : StackLang.HolProg 64 :=
.seq NamedBody170_200 NamedBody170_213

def NamedBody170_215 : StackLang.HolProg 64 :=
.seq NamedBody170_199 NamedBody170_214

def NamedBody170_216 : StackLang.HolProg 64 :=
.seq NamedBody170_198 NamedBody170_215

def NamedBody170_217 : StackLang.HolProg 64 :=
.seq NamedBody170_197 NamedBody170_216

def NamedBody170_218 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody170_219 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.break 0

def NamedBody170_220 : StackLang.HolProg 64 :=
.seq NamedBody170_218 NamedBody170_219

def NamedBody170_221 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 13 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 11) NamedBody170_217 NamedBody170_220

def NamedBody170_222 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody170_223 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody170_224 : StackLang.HolProg 64 :=
.seq NamedBody170_222 NamedBody170_223

def NamedBody170_225 : StackLang.HolProg 64 :=
.seq NamedBody170_221 NamedBody170_224

def NamedBody170_226 : StackLang.HolProg 64 :=
.seq NamedBody170_196 NamedBody170_225

def NamedBody170_227 : StackLang.HolProg 64 :=
.loop NamedBody170_226

def NamedBody170_228 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody170_229 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody170_230 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 32#64)))

def NamedBody170_231 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 1

def NamedBody170_232 : StackLang.HolProg 64 :=
.seq NamedBody170_230 NamedBody170_231

def NamedBody170_233 : StackLang.HolProg 64 :=
.seq NamedBody170_229 NamedBody170_232

def NamedBody170_234 : StackLang.HolProg 64 :=
.seq NamedBody170_228 NamedBody170_233

def NamedBody170_235 : StackLang.HolProg 64 :=
.seq NamedBody170_227 NamedBody170_234

def NamedBody170_236 : StackLang.HolProg 64 :=
.seq NamedBody170_195 NamedBody170_235

def NamedBody170_237 : StackLang.HolProg 64 :=
.seq NamedBody170_194 NamedBody170_236

def NamedBody170_238 : StackLang.HolProg 64 :=
.seq NamedBody170_193 NamedBody170_237

def NamedBody170_239 : StackLang.HolProg 64 :=
.seq NamedBody170_192 NamedBody170_238

def NamedBody170_240 : StackLang.HolProg 64 :=
.seq NamedBody170_191 NamedBody170_239

def NamedBody170_241 : StackLang.HolProg 64 :=
.seq NamedBody170_190 NamedBody170_240

def NamedBody170_242 : StackLang.HolProg 64 :=
.seq NamedBody170_117 NamedBody170_241

def NamedBody170_243 : StackLang.HolProg 64 :=
.seq NamedBody170_116 NamedBody170_242

def NamedBody170_244 : StackLang.HolProg 64 :=
.seq NamedBody170_115 NamedBody170_243

def NamedBody170_245 : StackLang.HolProg 64 :=
.seq NamedBody170_114 NamedBody170_244

def NamedBody170_246 : StackLang.HolProg 64 :=
.seq NamedBody170_103 NamedBody170_245

def NamedBody170_247 : StackLang.HolProg 64 :=
.seq NamedBody170_102 NamedBody170_246

def NamedBody170_248 : StackLang.HolProg 64 :=
.seq NamedBody170_101 NamedBody170_247

def NamedBody170_249 : StackLang.HolProg 64 :=
.seq NamedBody170_100 NamedBody170_248

def NamedBody170_250 : StackLang.HolProg 64 :=
.seq NamedBody170_99 NamedBody170_249

def NamedBody170_251 : StackLang.HolProg 64 :=
.seq NamedBody170_98 NamedBody170_250

def NamedBody170_252 : StackLang.HolProg 64 :=
.seq NamedBody170_87 NamedBody170_251

def NamedBody170_253 : StackLang.HolProg 64 :=
.seq NamedBody170_86 NamedBody170_252

def NamedBody170_254 : StackLang.HolProg 64 :=
.seq NamedBody170_85 NamedBody170_253

def NamedBody170_255 : StackLang.HolProg 64 :=
.seq NamedBody170_84 NamedBody170_254

def NamedBody170_256 : StackLang.HolProg 64 :=
.seq NamedBody170_9 NamedBody170_255

def NamedBody170_257 : StackLang.HolProg 64 :=
.seq NamedBody170_8 NamedBody170_256

def NamedBody170_258 : StackLang.HolProg 64 :=
.seq NamedBody170_7 NamedBody170_257

def NamedBody170_259 : StackLang.HolProg 64 :=
.seq NamedBody170_6 NamedBody170_258

def Named170 : Nat × StackLang.HolProg 64 := (170, NamedBody170_259)
theorem Named170_eq : StackNames.progCompEntryHOL RiscVConfig.riscvNames Removed170 = Named170 := by
  kernel_rfl
#print axioms Named170_eq
end InitECandidate.Proofs.BackendStages
