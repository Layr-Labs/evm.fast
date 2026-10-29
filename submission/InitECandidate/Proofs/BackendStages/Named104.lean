import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.BackendStages.Removed104
import Flapjack.Compiler.Backend.Backend
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
namespace InitECandidate.Proofs.BackendStages
def NamedBody104_0 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody104_1 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 2#64)

def NamedBody104_2 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 10

def NamedBody104_3 : StackLang.HolProg 64 :=
.seq NamedBody104_1 NamedBody104_2

def NamedBody104_4 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody104_5 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) NamedBody104_3 NamedBody104_4

def NamedBody104_6 : StackLang.HolProg 64 :=
.seq NamedBody104_0 NamedBody104_5

def NamedBody104_7 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 6 10
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 10)))

def NamedBody104_8 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 256#64)

def NamedBody104_9 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody104_10 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 0#64)

def NamedBody104_11 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody104_12 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody104_13 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 1

def NamedBody104_14 : StackLang.HolProg 64 :=
.seq NamedBody104_12 NamedBody104_13

def NamedBody104_15 : StackLang.HolProg 64 :=
.seq NamedBody104_11 NamedBody104_14

def NamedBody104_16 : StackLang.HolProg 64 :=
.seq NamedBody104_10 NamedBody104_15

def NamedBody104_17 : StackLang.HolProg 64 :=
.seq NamedBody104_9 NamedBody104_16

def NamedBody104_18 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody104_19 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.notLower) 5 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 10) NamedBody104_17 NamedBody104_18

def NamedBody104_20 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody104_21 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody104_22 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 10 6
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 6)))

def NamedBody104_23 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 6 5
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 5)))

def NamedBody104_24 : StackLang.HolProg 64 :=
.seq NamedBody104_22 NamedBody104_23

def NamedBody104_25 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 5 6
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 6#64)))

def NamedBody104_26 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody104_27 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 6
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody104_28 : StackLang.HolProg 64 :=
.seq NamedBody104_26 NamedBody104_27

def NamedBody104_29 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody104_30 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 44#64)

def NamedBody104_31 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody104_32 : StackLang.HolProg 64 :=
.seq NamedBody104_30 NamedBody104_31

def NamedBody104_33 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody104_34 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 2#64)

def NamedBody104_35 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 10

def NamedBody104_36 : StackLang.HolProg 64 :=
.seq NamedBody104_34 NamedBody104_35

def NamedBody104_37 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody104_38 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) NamedBody104_36 NamedBody104_37

def NamedBody104_39 : StackLang.HolProg 64 :=
.seq NamedBody104_33 NamedBody104_38

def NamedBody104_40 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def NamedBody104_41 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody104_42 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 104 3

def NamedBody104_43 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody104_44 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody104_45 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody104_46 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody104_47 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def NamedBody104_48 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def NamedBody104_49 : StackLang.HolProg 64 :=
.seq NamedBody104_47 NamedBody104_48

def NamedBody104_50 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def NamedBody104_51 : StackLang.HolProg 64 :=
.seq NamedBody104_49 NamedBody104_50

def NamedBody104_52 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody104_53 : StackLang.HolProg 64 :=
.seq NamedBody104_51 NamedBody104_52

def NamedBody104_54 : StackLang.HolProg 64 :=
.seq NamedBody104_46 NamedBody104_53

def NamedBody104_55 : StackLang.HolProg 64 :=
.seq NamedBody104_45 NamedBody104_54

def NamedBody104_56 : StackLang.HolProg 64 :=
.seq NamedBody104_44 NamedBody104_55

def NamedBody104_57 : StackLang.HolProg 64 :=
.seq NamedBody104_43 NamedBody104_56

def NamedBody104_58 : StackLang.HolProg 64 :=
.seq NamedBody104_42 NamedBody104_57

def NamedBody104_59 : StackLang.HolProg 64 :=
.seq NamedBody104_41 NamedBody104_58

def NamedBody104_60 : StackLang.HolProg 64 :=
.seq NamedBody104_40 NamedBody104_59

def NamedBody104_61 : StackLang.HolProg 64 :=
.seq NamedBody104_39 NamedBody104_60

def NamedBody104_62 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody104_63 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody104_64 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody104_65 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody104_66 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody104_67 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody104_68 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 1 10
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 10)))

def NamedBody104_69 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 12
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody104_70 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 11
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody104_71 : StackLang.HolProg 64 :=
.seq NamedBody104_69 NamedBody104_70

def NamedBody104_72 : StackLang.HolProg 64 :=
.seq NamedBody104_68 NamedBody104_71

def NamedBody104_73 : StackLang.HolProg 64 :=
.seq NamedBody104_67 NamedBody104_72

def NamedBody104_74 : StackLang.HolProg 64 :=
.seq NamedBody104_66 NamedBody104_73

def NamedBody104_75 : StackLang.HolProg 64 :=
.seq NamedBody104_65 NamedBody104_74

def NamedBody104_76 : StackLang.HolProg 64 :=
.seq NamedBody104_64 NamedBody104_75

def NamedBody104_77 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 12
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody104_78 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 11
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody104_79 : StackLang.HolProg 64 :=
.seq NamedBody104_77 NamedBody104_78

def NamedBody104_80 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def NamedBody104_81 : StackLang.HolProg 64 :=
.seq NamedBody104_79 NamedBody104_80

def NamedBody104_82 : StackLang.HolProg 64 :=
.call (some (NamedBody104_76, 1, 104, 2)) (Sum.inl 103) (some (NamedBody104_81, 104, 3))

def NamedBody104_83 : StackLang.HolProg 64 :=
.seq NamedBody104_63 NamedBody104_82

def NamedBody104_84 : StackLang.HolProg 64 :=
.seq NamedBody104_62 NamedBody104_83

def NamedBody104_85 : StackLang.HolProg 64 :=
.seq NamedBody104_61 NamedBody104_84

def NamedBody104_86 : StackLang.HolProg 64 :=
.seq NamedBody104_32 NamedBody104_85

def NamedBody104_87 : StackLang.HolProg 64 :=
.seq NamedBody104_29 NamedBody104_86

def NamedBody104_88 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody104_89 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody104_90 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.and 13 11
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 63#64)))

def NamedBody104_91 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody104_92 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 1 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 13)))

def NamedBody104_93 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.and 10 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 1#64)))

def NamedBody104_94 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody104_95 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody104_96 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 12

def NamedBody104_97 : StackLang.HolProg 64 :=
.seq NamedBody104_95 NamedBody104_96

def NamedBody104_98 : StackLang.HolProg 64 :=
.seq NamedBody104_94 NamedBody104_97

def NamedBody104_99 : StackLang.HolProg 64 :=
.seq NamedBody104_93 NamedBody104_98

def NamedBody104_100 : StackLang.HolProg 64 :=
.seq NamedBody104_92 NamedBody104_99

def NamedBody104_101 : StackLang.HolProg 64 :=
.seq NamedBody104_91 NamedBody104_100

def NamedBody104_102 : StackLang.HolProg 64 :=
.seq NamedBody104_90 NamedBody104_101

def NamedBody104_103 : StackLang.HolProg 64 :=
.seq NamedBody104_89 NamedBody104_102

def NamedBody104_104 : StackLang.HolProg 64 :=
.seq NamedBody104_88 NamedBody104_103

def NamedBody104_105 : StackLang.HolProg 64 :=
.seq NamedBody104_87 NamedBody104_104

def NamedBody104_106 : StackLang.HolProg 64 :=
.seq NamedBody104_28 NamedBody104_105

def NamedBody104_107 : StackLang.HolProg 64 :=
.seq NamedBody104_25 NamedBody104_106

def NamedBody104_108 : StackLang.HolProg 64 :=
.seq NamedBody104_24 NamedBody104_107

def NamedBody104_109 : StackLang.HolProg 64 :=
.seq NamedBody104_21 NamedBody104_108

def NamedBody104_110 : StackLang.HolProg 64 :=
.seq NamedBody104_20 NamedBody104_109

def NamedBody104_111 : StackLang.HolProg 64 :=
.seq NamedBody104_19 NamedBody104_110

def NamedBody104_112 : StackLang.HolProg 64 :=
.seq NamedBody104_8 NamedBody104_111

def NamedBody104_113 : StackLang.HolProg 64 :=
.seq NamedBody104_7 NamedBody104_112

def NamedBody104_114 : StackLang.HolProg 64 :=
.seq NamedBody104_6 NamedBody104_113

def Named104 : Nat × StackLang.HolProg 64 := (104, NamedBody104_114)
theorem Named104_eq : StackNames.progCompEntryHOL RiscVConfig.riscvNames Removed104 = Named104 := by
  kernel_rfl
#print axioms Named104_eq
end InitECandidate.Proofs.BackendStages
