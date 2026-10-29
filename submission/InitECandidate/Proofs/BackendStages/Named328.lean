import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.BackendStages.Removed328
import Flapjack.Compiler.Backend.Backend
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
namespace InitECandidate.Proofs.BackendStages
def NamedBody328_0 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 32#64)))

def NamedBody328_1 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 2#64)

def NamedBody328_2 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 10

def NamedBody328_3 : StackLang.HolProg 64 :=
.seq NamedBody328_1 NamedBody328_2

def NamedBody328_4 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody328_5 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) NamedBody328_3 NamedBody328_4

def NamedBody328_6 : StackLang.HolProg 64 :=
.seq NamedBody328_0 NamedBody328_5

def NamedBody328_7 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 11 10
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 10)))

def NamedBody328_8 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 10
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 11 24#64))

def NamedBody328_9 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody328_10 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 12 0#64)

def NamedBody328_11 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody328_12 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody328_13 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 32#64)))

def NamedBody328_14 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 1

def NamedBody328_15 : StackLang.HolProg 64 :=
.seq NamedBody328_13 NamedBody328_14

def NamedBody328_16 : StackLang.HolProg 64 :=
.seq NamedBody328_12 NamedBody328_15

def NamedBody328_17 : StackLang.HolProg 64 :=
.seq NamedBody328_11 NamedBody328_16

def NamedBody328_18 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody328_19 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.notEqual) 10 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 12) NamedBody328_17 NamedBody328_18

def NamedBody328_20 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody328_21 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody328_22 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody328_23 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 10
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 11 8#64))

def NamedBody328_24 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 12 0#64)

def NamedBody328_25 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody328_26 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 13#64)

def NamedBody328_27 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 24#64))

def NamedBody328_28 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 11
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody328_29 : StackLang.HolProg 64 :=
.seq NamedBody328_27 NamedBody328_28

def NamedBody328_30 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody328_31 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 926#64)

def NamedBody328_32 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody328_33 : StackLang.HolProg 64 :=
.seq NamedBody328_31 NamedBody328_32

def NamedBody328_34 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody328_35 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 2#64)

def NamedBody328_36 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 10

def NamedBody328_37 : StackLang.HolProg 64 :=
.seq NamedBody328_35 NamedBody328_36

def NamedBody328_38 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody328_39 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) NamedBody328_37 NamedBody328_38

def NamedBody328_40 : StackLang.HolProg 64 :=
.seq NamedBody328_34 NamedBody328_39

def NamedBody328_41 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def NamedBody328_42 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody328_43 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 328 3

def NamedBody328_44 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody328_45 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody328_46 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody328_47 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody328_48 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def NamedBody328_49 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def NamedBody328_50 : StackLang.HolProg 64 :=
.seq NamedBody328_48 NamedBody328_49

def NamedBody328_51 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def NamedBody328_52 : StackLang.HolProg 64 :=
.seq NamedBody328_50 NamedBody328_51

def NamedBody328_53 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody328_54 : StackLang.HolProg 64 :=
.seq NamedBody328_52 NamedBody328_53

def NamedBody328_55 : StackLang.HolProg 64 :=
.seq NamedBody328_47 NamedBody328_54

def NamedBody328_56 : StackLang.HolProg 64 :=
.seq NamedBody328_46 NamedBody328_55

def NamedBody328_57 : StackLang.HolProg 64 :=
.seq NamedBody328_45 NamedBody328_56

def NamedBody328_58 : StackLang.HolProg 64 :=
.seq NamedBody328_44 NamedBody328_57

def NamedBody328_59 : StackLang.HolProg 64 :=
.seq NamedBody328_43 NamedBody328_58

def NamedBody328_60 : StackLang.HolProg 64 :=
.seq NamedBody328_42 NamedBody328_59

def NamedBody328_61 : StackLang.HolProg 64 :=
.seq NamedBody328_41 NamedBody328_60

def NamedBody328_62 : StackLang.HolProg 64 :=
.seq NamedBody328_40 NamedBody328_61

def NamedBody328_63 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody328_64 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody328_65 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody328_66 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody328_67 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody328_68 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody328_69 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody328_70 : StackLang.HolProg 64 :=
.seq NamedBody328_68 NamedBody328_69

def NamedBody328_71 : StackLang.HolProg 64 :=
.seq NamedBody328_67 NamedBody328_70

def NamedBody328_72 : StackLang.HolProg 64 :=
.seq NamedBody328_66 NamedBody328_71

def NamedBody328_73 : StackLang.HolProg 64 :=
.seq NamedBody328_65 NamedBody328_72

def NamedBody328_74 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody328_75 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def NamedBody328_76 : StackLang.HolProg 64 :=
.seq NamedBody328_74 NamedBody328_75

def NamedBody328_77 : StackLang.HolProg 64 :=
.call (some (NamedBody328_73, 1, 328, 2)) (Sum.inl 286) (some (NamedBody328_76, 328, 3))

def NamedBody328_78 : StackLang.HolProg 64 :=
.seq NamedBody328_64 NamedBody328_77

def NamedBody328_79 : StackLang.HolProg 64 :=
.seq NamedBody328_63 NamedBody328_78

def NamedBody328_80 : StackLang.HolProg 64 :=
.seq NamedBody328_62 NamedBody328_79

def NamedBody328_81 : StackLang.HolProg 64 :=
.seq NamedBody328_33 NamedBody328_80

def NamedBody328_82 : StackLang.HolProg 64 :=
.seq NamedBody328_30 NamedBody328_81

def NamedBody328_83 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody328_84 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody328_85 : StackLang.HolProg 64 :=
.seq NamedBody328_83 NamedBody328_84

def NamedBody328_86 : StackLang.HolProg 64 :=
.seq NamedBody328_82 NamedBody328_85

def NamedBody328_87 : StackLang.HolProg 64 :=
.seq NamedBody328_29 NamedBody328_86

def NamedBody328_88 : StackLang.HolProg 64 :=
.seq NamedBody328_26 NamedBody328_87

def NamedBody328_89 : StackLang.HolProg 64 :=
.seq NamedBody328_25 NamedBody328_88

def NamedBody328_90 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody328_91 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 24#64))

def NamedBody328_92 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 11
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody328_93 : StackLang.HolProg 64 :=
.seq NamedBody328_91 NamedBody328_92

def NamedBody328_94 : StackLang.HolProg 64 :=
.seq NamedBody328_90 NamedBody328_93

def NamedBody328_95 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.equal) 10 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 12) NamedBody328_89 NamedBody328_94

def NamedBody328_96 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody328_97 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 32#64)

def NamedBody328_98 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody328_99 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody328_100 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 927#64)

def NamedBody328_101 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody328_102 : StackLang.HolProg 64 :=
.seq NamedBody328_100 NamedBody328_101

def NamedBody328_103 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody328_104 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 2#64)

def NamedBody328_105 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 10

def NamedBody328_106 : StackLang.HolProg 64 :=
.seq NamedBody328_104 NamedBody328_105

def NamedBody328_107 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody328_108 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) NamedBody328_106 NamedBody328_107

def NamedBody328_109 : StackLang.HolProg 64 :=
.seq NamedBody328_103 NamedBody328_108

def NamedBody328_110 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def NamedBody328_111 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody328_112 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 328 5

def NamedBody328_113 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody328_114 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody328_115 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody328_116 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody328_117 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def NamedBody328_118 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def NamedBody328_119 : StackLang.HolProg 64 :=
.seq NamedBody328_117 NamedBody328_118

def NamedBody328_120 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def NamedBody328_121 : StackLang.HolProg 64 :=
.seq NamedBody328_119 NamedBody328_120

def NamedBody328_122 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody328_123 : StackLang.HolProg 64 :=
.seq NamedBody328_121 NamedBody328_122

def NamedBody328_124 : StackLang.HolProg 64 :=
.seq NamedBody328_116 NamedBody328_123

def NamedBody328_125 : StackLang.HolProg 64 :=
.seq NamedBody328_115 NamedBody328_124

def NamedBody328_126 : StackLang.HolProg 64 :=
.seq NamedBody328_114 NamedBody328_125

def NamedBody328_127 : StackLang.HolProg 64 :=
.seq NamedBody328_113 NamedBody328_126

def NamedBody328_128 : StackLang.HolProg 64 :=
.seq NamedBody328_112 NamedBody328_127

def NamedBody328_129 : StackLang.HolProg 64 :=
.seq NamedBody328_111 NamedBody328_128

def NamedBody328_130 : StackLang.HolProg 64 :=
.seq NamedBody328_110 NamedBody328_129

def NamedBody328_131 : StackLang.HolProg 64 :=
.seq NamedBody328_109 NamedBody328_130

def NamedBody328_132 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody328_133 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody328_134 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody328_135 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody328_136 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody328_137 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody328_138 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 12 10
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 10)))

def NamedBody328_139 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody328_140 : StackLang.HolProg 64 :=
.seq NamedBody328_138 NamedBody328_139

def NamedBody328_141 : StackLang.HolProg 64 :=
.seq NamedBody328_137 NamedBody328_140

def NamedBody328_142 : StackLang.HolProg 64 :=
.seq NamedBody328_136 NamedBody328_141

def NamedBody328_143 : StackLang.HolProg 64 :=
.seq NamedBody328_135 NamedBody328_142

def NamedBody328_144 : StackLang.HolProg 64 :=
.seq NamedBody328_134 NamedBody328_143

def NamedBody328_145 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody328_146 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def NamedBody328_147 : StackLang.HolProg 64 :=
.seq NamedBody328_145 NamedBody328_146

def NamedBody328_148 : StackLang.HolProg 64 :=
.call (some (NamedBody328_144, 1, 328, 4)) (Sum.inl 68) (some (NamedBody328_147, 328, 5))

def NamedBody328_149 : StackLang.HolProg 64 :=
.seq NamedBody328_133 NamedBody328_148

def NamedBody328_150 : StackLang.HolProg 64 :=
.seq NamedBody328_132 NamedBody328_149

def NamedBody328_151 : StackLang.HolProg 64 :=
.seq NamedBody328_131 NamedBody328_150

def NamedBody328_152 : StackLang.HolProg 64 :=
.seq NamedBody328_102 NamedBody328_151

def NamedBody328_153 : StackLang.HolProg 64 :=
.seq NamedBody328_99 NamedBody328_152

def NamedBody328_154 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody328_155 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody328_156 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 10
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 1 8#64))

def NamedBody328_157 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody328_158 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 11
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 1 16#64))

def NamedBody328_159 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 12
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody328_160 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody328_161 : StackLang.HolProg 64 :=
.seq NamedBody328_159 NamedBody328_160

def NamedBody328_162 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody328_163 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 928#64)

def NamedBody328_164 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody328_165 : StackLang.HolProg 64 :=
.seq NamedBody328_163 NamedBody328_164

def NamedBody328_166 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody328_167 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 2#64)

def NamedBody328_168 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 10

def NamedBody328_169 : StackLang.HolProg 64 :=
.seq NamedBody328_167 NamedBody328_168

def NamedBody328_170 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody328_171 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) NamedBody328_169 NamedBody328_170

def NamedBody328_172 : StackLang.HolProg 64 :=
.seq NamedBody328_166 NamedBody328_171

def NamedBody328_173 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def NamedBody328_174 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody328_175 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 328 7

def NamedBody328_176 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody328_177 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody328_178 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody328_179 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody328_180 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def NamedBody328_181 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def NamedBody328_182 : StackLang.HolProg 64 :=
.seq NamedBody328_180 NamedBody328_181

def NamedBody328_183 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def NamedBody328_184 : StackLang.HolProg 64 :=
.seq NamedBody328_182 NamedBody328_183

def NamedBody328_185 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody328_186 : StackLang.HolProg 64 :=
.seq NamedBody328_184 NamedBody328_185

def NamedBody328_187 : StackLang.HolProg 64 :=
.seq NamedBody328_179 NamedBody328_186

def NamedBody328_188 : StackLang.HolProg 64 :=
.seq NamedBody328_178 NamedBody328_187

def NamedBody328_189 : StackLang.HolProg 64 :=
.seq NamedBody328_177 NamedBody328_188

def NamedBody328_190 : StackLang.HolProg 64 :=
.seq NamedBody328_176 NamedBody328_189

def NamedBody328_191 : StackLang.HolProg 64 :=
.seq NamedBody328_175 NamedBody328_190

def NamedBody328_192 : StackLang.HolProg 64 :=
.seq NamedBody328_174 NamedBody328_191

def NamedBody328_193 : StackLang.HolProg 64 :=
.seq NamedBody328_173 NamedBody328_192

def NamedBody328_194 : StackLang.HolProg 64 :=
.seq NamedBody328_172 NamedBody328_193

def NamedBody328_195 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody328_196 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody328_197 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody328_198 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody328_199 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody328_200 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody328_201 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 12
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 24#64))

def NamedBody328_202 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody328_203 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 11
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody328_204 : StackLang.HolProg 64 :=
.seq NamedBody328_202 NamedBody328_203

def NamedBody328_205 : StackLang.HolProg 64 :=
.seq NamedBody328_201 NamedBody328_204

def NamedBody328_206 : StackLang.HolProg 64 :=
.seq NamedBody328_200 NamedBody328_205

def NamedBody328_207 : StackLang.HolProg 64 :=
.seq NamedBody328_199 NamedBody328_206

def NamedBody328_208 : StackLang.HolProg 64 :=
.seq NamedBody328_198 NamedBody328_207

def NamedBody328_209 : StackLang.HolProg 64 :=
.seq NamedBody328_197 NamedBody328_208

def NamedBody328_210 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 12
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 24#64))

def NamedBody328_211 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody328_212 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 11
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody328_213 : StackLang.HolProg 64 :=
.seq NamedBody328_211 NamedBody328_212

def NamedBody328_214 : StackLang.HolProg 64 :=
.seq NamedBody328_210 NamedBody328_213

def NamedBody328_215 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def NamedBody328_216 : StackLang.HolProg 64 :=
.seq NamedBody328_214 NamedBody328_215

def NamedBody328_217 : StackLang.HolProg 64 :=
.call (some (NamedBody328_209, 1, 328, 6)) (Sum.inl 158) (some (NamedBody328_216, 328, 7))

def NamedBody328_218 : StackLang.HolProg 64 :=
.seq NamedBody328_196 NamedBody328_217

def NamedBody328_219 : StackLang.HolProg 64 :=
.seq NamedBody328_195 NamedBody328_218

def NamedBody328_220 : StackLang.HolProg 64 :=
.seq NamedBody328_194 NamedBody328_219

def NamedBody328_221 : StackLang.HolProg 64 :=
.seq NamedBody328_165 NamedBody328_220

def NamedBody328_222 : StackLang.HolProg 64 :=
.seq NamedBody328_162 NamedBody328_221

def NamedBody328_223 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody328_224 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody328_225 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 10 11
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody328_226 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody328_227 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 10 0#64))

def NamedBody328_228 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 10 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def NamedBody328_229 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 32#64)))

def NamedBody328_230 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 12

def NamedBody328_231 : StackLang.HolProg 64 :=
.seq NamedBody328_229 NamedBody328_230

def NamedBody328_232 : StackLang.HolProg 64 :=
.seq NamedBody328_228 NamedBody328_231

def NamedBody328_233 : StackLang.HolProg 64 :=
.seq NamedBody328_227 NamedBody328_232

def NamedBody328_234 : StackLang.HolProg 64 :=
.seq NamedBody328_226 NamedBody328_233

def NamedBody328_235 : StackLang.HolProg 64 :=
.seq NamedBody328_225 NamedBody328_234

def NamedBody328_236 : StackLang.HolProg 64 :=
.seq NamedBody328_224 NamedBody328_235

def NamedBody328_237 : StackLang.HolProg 64 :=
.seq NamedBody328_223 NamedBody328_236

def NamedBody328_238 : StackLang.HolProg 64 :=
.seq NamedBody328_222 NamedBody328_237

def NamedBody328_239 : StackLang.HolProg 64 :=
.seq NamedBody328_161 NamedBody328_238

def NamedBody328_240 : StackLang.HolProg 64 :=
.seq NamedBody328_158 NamedBody328_239

def NamedBody328_241 : StackLang.HolProg 64 :=
.seq NamedBody328_157 NamedBody328_240

def NamedBody328_242 : StackLang.HolProg 64 :=
.seq NamedBody328_156 NamedBody328_241

def NamedBody328_243 : StackLang.HolProg 64 :=
.seq NamedBody328_155 NamedBody328_242

def NamedBody328_244 : StackLang.HolProg 64 :=
.seq NamedBody328_154 NamedBody328_243

def NamedBody328_245 : StackLang.HolProg 64 :=
.seq NamedBody328_153 NamedBody328_244

def NamedBody328_246 : StackLang.HolProg 64 :=
.seq NamedBody328_98 NamedBody328_245

def NamedBody328_247 : StackLang.HolProg 64 :=
.seq NamedBody328_97 NamedBody328_246

def NamedBody328_248 : StackLang.HolProg 64 :=
.seq NamedBody328_96 NamedBody328_247

def NamedBody328_249 : StackLang.HolProg 64 :=
.seq NamedBody328_95 NamedBody328_248

def NamedBody328_250 : StackLang.HolProg 64 :=
.seq NamedBody328_24 NamedBody328_249

def NamedBody328_251 : StackLang.HolProg 64 :=
.seq NamedBody328_23 NamedBody328_250

def NamedBody328_252 : StackLang.HolProg 64 :=
.seq NamedBody328_22 NamedBody328_251

def NamedBody328_253 : StackLang.HolProg 64 :=
.seq NamedBody328_21 NamedBody328_252

def NamedBody328_254 : StackLang.HolProg 64 :=
.seq NamedBody328_20 NamedBody328_253

def NamedBody328_255 : StackLang.HolProg 64 :=
.seq NamedBody328_19 NamedBody328_254

def NamedBody328_256 : StackLang.HolProg 64 :=
.seq NamedBody328_10 NamedBody328_255

def NamedBody328_257 : StackLang.HolProg 64 :=
.seq NamedBody328_9 NamedBody328_256

def NamedBody328_258 : StackLang.HolProg 64 :=
.seq NamedBody328_8 NamedBody328_257

def NamedBody328_259 : StackLang.HolProg 64 :=
.seq NamedBody328_7 NamedBody328_258

def NamedBody328_260 : StackLang.HolProg 64 :=
.seq NamedBody328_6 NamedBody328_259

def Named328 : Nat × StackLang.HolProg 64 := (328, NamedBody328_260)
theorem Named328_eq : StackNames.progCompEntryHOL RiscVConfig.riscvNames Removed328 = Named328 := by
  kernel_rfl
#print axioms Named328_eq
end InitECandidate.Proofs.BackendStages
