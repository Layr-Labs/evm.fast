import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.BackendStages.Removed295
import Flapjack.Compiler.Backend.Backend
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
namespace InitECandidate.Proofs.BackendStages
def NamedBody295_0 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody295_1 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 2#64)

def NamedBody295_2 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 10

def NamedBody295_3 : StackLang.HolProg 64 :=
.seq NamedBody295_1 NamedBody295_2

def NamedBody295_4 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody295_5 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) NamedBody295_3 NamedBody295_4

def NamedBody295_6 : StackLang.HolProg 64 :=
.seq NamedBody295_0 NamedBody295_5

def NamedBody295_7 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 11 10
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 10)))

def NamedBody295_8 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 32#64)

def NamedBody295_9 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody295_10 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 11
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody295_11 : StackLang.HolProg 64 :=
.seq NamedBody295_9 NamedBody295_10

def NamedBody295_12 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody295_13 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 801#64)

def NamedBody295_14 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody295_15 : StackLang.HolProg 64 :=
.seq NamedBody295_13 NamedBody295_14

def NamedBody295_16 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody295_17 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 2#64)

def NamedBody295_18 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 10

def NamedBody295_19 : StackLang.HolProg 64 :=
.seq NamedBody295_17 NamedBody295_18

def NamedBody295_20 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody295_21 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) NamedBody295_19 NamedBody295_20

def NamedBody295_22 : StackLang.HolProg 64 :=
.seq NamedBody295_16 NamedBody295_21

def NamedBody295_23 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def NamedBody295_24 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody295_25 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 295 3

def NamedBody295_26 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody295_27 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody295_28 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody295_29 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody295_30 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def NamedBody295_31 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def NamedBody295_32 : StackLang.HolProg 64 :=
.seq NamedBody295_30 NamedBody295_31

def NamedBody295_33 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def NamedBody295_34 : StackLang.HolProg 64 :=
.seq NamedBody295_32 NamedBody295_33

def NamedBody295_35 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody295_36 : StackLang.HolProg 64 :=
.seq NamedBody295_34 NamedBody295_35

def NamedBody295_37 : StackLang.HolProg 64 :=
.seq NamedBody295_29 NamedBody295_36

def NamedBody295_38 : StackLang.HolProg 64 :=
.seq NamedBody295_28 NamedBody295_37

def NamedBody295_39 : StackLang.HolProg 64 :=
.seq NamedBody295_27 NamedBody295_38

def NamedBody295_40 : StackLang.HolProg 64 :=
.seq NamedBody295_26 NamedBody295_39

def NamedBody295_41 : StackLang.HolProg 64 :=
.seq NamedBody295_25 NamedBody295_40

def NamedBody295_42 : StackLang.HolProg 64 :=
.seq NamedBody295_24 NamedBody295_41

def NamedBody295_43 : StackLang.HolProg 64 :=
.seq NamedBody295_23 NamedBody295_42

def NamedBody295_44 : StackLang.HolProg 64 :=
.seq NamedBody295_22 NamedBody295_43

def NamedBody295_45 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody295_46 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody295_47 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody295_48 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody295_49 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody295_50 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody295_51 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 1 10
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 10)))

def NamedBody295_52 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 12
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody295_53 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 11
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody295_54 : StackLang.HolProg 64 :=
.seq NamedBody295_52 NamedBody295_53

def NamedBody295_55 : StackLang.HolProg 64 :=
.seq NamedBody295_51 NamedBody295_54

def NamedBody295_56 : StackLang.HolProg 64 :=
.seq NamedBody295_50 NamedBody295_55

def NamedBody295_57 : StackLang.HolProg 64 :=
.seq NamedBody295_49 NamedBody295_56

def NamedBody295_58 : StackLang.HolProg 64 :=
.seq NamedBody295_48 NamedBody295_57

def NamedBody295_59 : StackLang.HolProg 64 :=
.seq NamedBody295_47 NamedBody295_58

def NamedBody295_60 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 12
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody295_61 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 11
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody295_62 : StackLang.HolProg 64 :=
.seq NamedBody295_60 NamedBody295_61

def NamedBody295_63 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def NamedBody295_64 : StackLang.HolProg 64 :=
.seq NamedBody295_62 NamedBody295_63

def NamedBody295_65 : StackLang.HolProg 64 :=
.call (some (NamedBody295_59, 1, 295, 2)) (Sum.inl 68) (some (NamedBody295_64, 295, 3))

def NamedBody295_66 : StackLang.HolProg 64 :=
.seq NamedBody295_46 NamedBody295_65

def NamedBody295_67 : StackLang.HolProg 64 :=
.seq NamedBody295_45 NamedBody295_66

def NamedBody295_68 : StackLang.HolProg 64 :=
.seq NamedBody295_44 NamedBody295_67

def NamedBody295_69 : StackLang.HolProg 64 :=
.seq NamedBody295_15 NamedBody295_68

def NamedBody295_70 : StackLang.HolProg 64 :=
.seq NamedBody295_12 NamedBody295_69

def NamedBody295_71 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody295_72 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody295_73 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 0#64)

def NamedBody295_74 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody295_75 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 10
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 1 0#64))

def NamedBody295_76 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody295_77 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 10 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 8#64)))

def NamedBody295_78 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 13 0#64)

def NamedBody295_79 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody295_80 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 13
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 10 0#64))

def NamedBody295_81 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody295_82 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 10 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 16#64)))

def NamedBody295_83 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 13 0#64)

def NamedBody295_84 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody295_85 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 13
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 10 0#64))

def NamedBody295_86 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody295_87 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 10 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody295_88 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody295_89 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 11
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 10 0#64))

def NamedBody295_90 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 10 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def NamedBody295_91 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody295_92 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 12

def NamedBody295_93 : StackLang.HolProg 64 :=
.seq NamedBody295_91 NamedBody295_92

def NamedBody295_94 : StackLang.HolProg 64 :=
.seq NamedBody295_90 NamedBody295_93

def NamedBody295_95 : StackLang.HolProg 64 :=
.seq NamedBody295_89 NamedBody295_94

def NamedBody295_96 : StackLang.HolProg 64 :=
.seq NamedBody295_88 NamedBody295_95

def NamedBody295_97 : StackLang.HolProg 64 :=
.seq NamedBody295_87 NamedBody295_96

def NamedBody295_98 : StackLang.HolProg 64 :=
.seq NamedBody295_86 NamedBody295_97

def NamedBody295_99 : StackLang.HolProg 64 :=
.seq NamedBody295_85 NamedBody295_98

def NamedBody295_100 : StackLang.HolProg 64 :=
.seq NamedBody295_84 NamedBody295_99

def NamedBody295_101 : StackLang.HolProg 64 :=
.seq NamedBody295_83 NamedBody295_100

def NamedBody295_102 : StackLang.HolProg 64 :=
.seq NamedBody295_82 NamedBody295_101

def NamedBody295_103 : StackLang.HolProg 64 :=
.seq NamedBody295_81 NamedBody295_102

def NamedBody295_104 : StackLang.HolProg 64 :=
.seq NamedBody295_80 NamedBody295_103

def NamedBody295_105 : StackLang.HolProg 64 :=
.seq NamedBody295_79 NamedBody295_104

def NamedBody295_106 : StackLang.HolProg 64 :=
.seq NamedBody295_78 NamedBody295_105

def NamedBody295_107 : StackLang.HolProg 64 :=
.seq NamedBody295_77 NamedBody295_106

def NamedBody295_108 : StackLang.HolProg 64 :=
.seq NamedBody295_76 NamedBody295_107

def NamedBody295_109 : StackLang.HolProg 64 :=
.seq NamedBody295_75 NamedBody295_108

def NamedBody295_110 : StackLang.HolProg 64 :=
.seq NamedBody295_74 NamedBody295_109

def NamedBody295_111 : StackLang.HolProg 64 :=
.seq NamedBody295_73 NamedBody295_110

def NamedBody295_112 : StackLang.HolProg 64 :=
.seq NamedBody295_72 NamedBody295_111

def NamedBody295_113 : StackLang.HolProg 64 :=
.seq NamedBody295_71 NamedBody295_112

def NamedBody295_114 : StackLang.HolProg 64 :=
.seq NamedBody295_70 NamedBody295_113

def NamedBody295_115 : StackLang.HolProg 64 :=
.seq NamedBody295_11 NamedBody295_114

def NamedBody295_116 : StackLang.HolProg 64 :=
.seq NamedBody295_8 NamedBody295_115

def NamedBody295_117 : StackLang.HolProg 64 :=
.seq NamedBody295_7 NamedBody295_116

def NamedBody295_118 : StackLang.HolProg 64 :=
.seq NamedBody295_6 NamedBody295_117

def Named295 : Nat × StackLang.HolProg 64 := (295, NamedBody295_118)
theorem Named295_eq : StackNames.progCompEntryHOL RiscVConfig.riscvNames Removed295 = Named295 := by
  kernel_rfl
#print axioms Named295_eq
end InitECandidate.Proofs.BackendStages
