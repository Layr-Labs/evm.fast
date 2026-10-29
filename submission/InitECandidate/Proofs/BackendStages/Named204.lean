import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.BackendStages.Removed204
import Flapjack.Compiler.Backend.Backend
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
namespace InitECandidate.Proofs.BackendStages
def NamedBody204_0 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 48#64)))

def NamedBody204_1 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 2#64)

def NamedBody204_2 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 10

def NamedBody204_3 : StackLang.HolProg 64 :=
.seq NamedBody204_1 NamedBody204_2

def NamedBody204_4 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody204_5 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) NamedBody204_3 NamedBody204_4

def NamedBody204_6 : StackLang.HolProg 64 :=
.seq NamedBody204_0 NamedBody204_5

def NamedBody204_7 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 40#64))

def NamedBody204_8 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 13
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 32#64))

def NamedBody204_9 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 11
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 24#64))

def NamedBody204_10 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 10
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody204_11 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 12
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody204_12 : StackLang.HolProg 64 :=
.seq NamedBody204_10 NamedBody204_11

def NamedBody204_13 : StackLang.HolProg 64 :=
.seq NamedBody204_9 NamedBody204_12

def NamedBody204_14 : StackLang.HolProg 64 :=
.seq NamedBody204_8 NamedBody204_13

def NamedBody204_15 : StackLang.HolProg 64 :=
.seq NamedBody204_7 NamedBody204_14

def NamedBody204_16 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody204_17 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 257#64)

def NamedBody204_18 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody204_19 : StackLang.HolProg 64 :=
.seq NamedBody204_17 NamedBody204_18

def NamedBody204_20 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody204_21 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 2#64)

def NamedBody204_22 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 10

def NamedBody204_23 : StackLang.HolProg 64 :=
.seq NamedBody204_21 NamedBody204_22

def NamedBody204_24 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody204_25 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) NamedBody204_23 NamedBody204_24

def NamedBody204_26 : StackLang.HolProg 64 :=
.seq NamedBody204_20 NamedBody204_25

def NamedBody204_27 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def NamedBody204_28 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody204_29 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 204 3

def NamedBody204_30 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody204_31 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody204_32 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody204_33 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody204_34 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def NamedBody204_35 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def NamedBody204_36 : StackLang.HolProg 64 :=
.seq NamedBody204_34 NamedBody204_35

def NamedBody204_37 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def NamedBody204_38 : StackLang.HolProg 64 :=
.seq NamedBody204_36 NamedBody204_37

def NamedBody204_39 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody204_40 : StackLang.HolProg 64 :=
.seq NamedBody204_38 NamedBody204_39

def NamedBody204_41 : StackLang.HolProg 64 :=
.seq NamedBody204_33 NamedBody204_40

def NamedBody204_42 : StackLang.HolProg 64 :=
.seq NamedBody204_32 NamedBody204_41

def NamedBody204_43 : StackLang.HolProg 64 :=
.seq NamedBody204_31 NamedBody204_42

def NamedBody204_44 : StackLang.HolProg 64 :=
.seq NamedBody204_30 NamedBody204_43

def NamedBody204_45 : StackLang.HolProg 64 :=
.seq NamedBody204_29 NamedBody204_44

def NamedBody204_46 : StackLang.HolProg 64 :=
.seq NamedBody204_28 NamedBody204_45

def NamedBody204_47 : StackLang.HolProg 64 :=
.seq NamedBody204_27 NamedBody204_46

def NamedBody204_48 : StackLang.HolProg 64 :=
.seq NamedBody204_26 NamedBody204_47

def NamedBody204_49 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody204_50 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody204_51 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody204_52 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody204_53 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody204_54 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody204_55 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 11 10
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 10)))

def NamedBody204_56 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 40#64))

def NamedBody204_57 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 8
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 32#64))

def NamedBody204_58 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 6
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 24#64))

def NamedBody204_59 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 5
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody204_60 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 7
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody204_61 : StackLang.HolProg 64 :=
.seq NamedBody204_59 NamedBody204_60

def NamedBody204_62 : StackLang.HolProg 64 :=
.seq NamedBody204_58 NamedBody204_61

def NamedBody204_63 : StackLang.HolProg 64 :=
.seq NamedBody204_57 NamedBody204_62

def NamedBody204_64 : StackLang.HolProg 64 :=
.seq NamedBody204_56 NamedBody204_63

def NamedBody204_65 : StackLang.HolProg 64 :=
.seq NamedBody204_55 NamedBody204_64

def NamedBody204_66 : StackLang.HolProg 64 :=
.seq NamedBody204_54 NamedBody204_65

def NamedBody204_67 : StackLang.HolProg 64 :=
.seq NamedBody204_53 NamedBody204_66

def NamedBody204_68 : StackLang.HolProg 64 :=
.seq NamedBody204_52 NamedBody204_67

def NamedBody204_69 : StackLang.HolProg 64 :=
.seq NamedBody204_51 NamedBody204_68

def NamedBody204_70 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 40#64))

def NamedBody204_71 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 8
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 32#64))

def NamedBody204_72 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 6
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 24#64))

def NamedBody204_73 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 5
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody204_74 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 7
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody204_75 : StackLang.HolProg 64 :=
.seq NamedBody204_73 NamedBody204_74

def NamedBody204_76 : StackLang.HolProg 64 :=
.seq NamedBody204_72 NamedBody204_75

def NamedBody204_77 : StackLang.HolProg 64 :=
.seq NamedBody204_71 NamedBody204_76

def NamedBody204_78 : StackLang.HolProg 64 :=
.seq NamedBody204_70 NamedBody204_77

def NamedBody204_79 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def NamedBody204_80 : StackLang.HolProg 64 :=
.seq NamedBody204_78 NamedBody204_79

def NamedBody204_81 : StackLang.HolProg 64 :=
.call (some (NamedBody204_69, 1, 204, 2)) (Sum.inl 102) (some (NamedBody204_80, 204, 3))

def NamedBody204_82 : StackLang.HolProg 64 :=
.seq NamedBody204_50 NamedBody204_81

def NamedBody204_83 : StackLang.HolProg 64 :=
.seq NamedBody204_49 NamedBody204_82

def NamedBody204_84 : StackLang.HolProg 64 :=
.seq NamedBody204_48 NamedBody204_83

def NamedBody204_85 : StackLang.HolProg 64 :=
.seq NamedBody204_19 NamedBody204_84

def NamedBody204_86 : StackLang.HolProg 64 :=
.seq NamedBody204_16 NamedBody204_85

def NamedBody204_87 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody204_88 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody204_89 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 1#64)

def NamedBody204_90 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody204_91 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 0#64)

def NamedBody204_92 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 11 0#64)

def NamedBody204_93 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 12 0#64)

def NamedBody204_94 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 13 0#64)

def NamedBody204_95 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody204_96 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 48#64)))

def NamedBody204_97 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 1

def NamedBody204_98 : StackLang.HolProg 64 :=
.seq NamedBody204_96 NamedBody204_97

def NamedBody204_99 : StackLang.HolProg 64 :=
.seq NamedBody204_95 NamedBody204_98

def NamedBody204_100 : StackLang.HolProg 64 :=
.seq NamedBody204_94 NamedBody204_99

def NamedBody204_101 : StackLang.HolProg 64 :=
.seq NamedBody204_93 NamedBody204_100

def NamedBody204_102 : StackLang.HolProg 64 :=
.seq NamedBody204_92 NamedBody204_101

def NamedBody204_103 : StackLang.HolProg 64 :=
.seq NamedBody204_91 NamedBody204_102

def NamedBody204_104 : StackLang.HolProg 64 :=
.seq NamedBody204_90 NamedBody204_103

def NamedBody204_105 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody204_106 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.equal) 11 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 10) NamedBody204_104 NamedBody204_105

def NamedBody204_107 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody204_108 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody204_109 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody204_110 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 13 18446744073709551615#64)

def NamedBody204_111 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 12 18446744073709551615#64)

def NamedBody204_112 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 11 18446744073709551615#64)

def NamedBody204_113 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 18446744069414583343#64)

def NamedBody204_114 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody204_115 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody204_116 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 48#64)))

def NamedBody204_117 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.rawCall 117

def NamedBody204_118 : StackLang.HolProg 64 :=
.seq NamedBody204_116 NamedBody204_117

def NamedBody204_119 : StackLang.HolProg 64 :=
.seq NamedBody204_115 NamedBody204_118

def NamedBody204_120 : StackLang.HolProg 64 :=
.seq NamedBody204_114 NamedBody204_119

def NamedBody204_121 : StackLang.HolProg 64 :=
.seq NamedBody204_113 NamedBody204_120

def NamedBody204_122 : StackLang.HolProg 64 :=
.seq NamedBody204_112 NamedBody204_121

def NamedBody204_123 : StackLang.HolProg 64 :=
.seq NamedBody204_111 NamedBody204_122

def NamedBody204_124 : StackLang.HolProg 64 :=
.seq NamedBody204_110 NamedBody204_123

def NamedBody204_125 : StackLang.HolProg 64 :=
.seq NamedBody204_109 NamedBody204_124

def NamedBody204_126 : StackLang.HolProg 64 :=
.seq NamedBody204_108 NamedBody204_125

def NamedBody204_127 : StackLang.HolProg 64 :=
.seq NamedBody204_107 NamedBody204_126

def NamedBody204_128 : StackLang.HolProg 64 :=
.seq NamedBody204_106 NamedBody204_127

def NamedBody204_129 : StackLang.HolProg 64 :=
.seq NamedBody204_89 NamedBody204_128

def NamedBody204_130 : StackLang.HolProg 64 :=
.seq NamedBody204_88 NamedBody204_129

def NamedBody204_131 : StackLang.HolProg 64 :=
.seq NamedBody204_87 NamedBody204_130

def NamedBody204_132 : StackLang.HolProg 64 :=
.seq NamedBody204_86 NamedBody204_131

def NamedBody204_133 : StackLang.HolProg 64 :=
.seq NamedBody204_15 NamedBody204_132

def NamedBody204_134 : StackLang.HolProg 64 :=
.seq NamedBody204_6 NamedBody204_133

def Named204 : Nat × StackLang.HolProg 64 := (204, NamedBody204_134)
theorem Named204_eq : StackNames.progCompEntryHOL RiscVConfig.riscvNames Removed204 = Named204 := by
  kernel_rfl
#print axioms Named204_eq
end InitECandidate.Proofs.BackendStages
