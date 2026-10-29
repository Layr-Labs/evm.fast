import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.BackendStages.Removed320
import Flapjack.Compiler.Backend.Backend
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
namespace InitECandidate.Proofs.BackendStages
def NamedBody320_0 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 40#64)))

def NamedBody320_1 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 2#64)

def NamedBody320_2 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 10

def NamedBody320_3 : StackLang.HolProg 64 :=
.seq NamedBody320_1 NamedBody320_2

def NamedBody320_4 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody320_5 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) NamedBody320_3 NamedBody320_4

def NamedBody320_6 : StackLang.HolProg 64 :=
.seq NamedBody320_0 NamedBody320_5

def NamedBody320_7 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 32#64))

def NamedBody320_8 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 13
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 24#64))

def NamedBody320_9 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 10
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody320_10 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 5
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody320_11 : StackLang.HolProg 64 :=
.seq NamedBody320_9 NamedBody320_10

def NamedBody320_12 : StackLang.HolProg 64 :=
.seq NamedBody320_8 NamedBody320_11

def NamedBody320_13 : StackLang.HolProg 64 :=
.seq NamedBody320_7 NamedBody320_12

def NamedBody320_14 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody320_15 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 896#64)

def NamedBody320_16 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody320_17 : StackLang.HolProg 64 :=
.seq NamedBody320_15 NamedBody320_16

def NamedBody320_18 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody320_19 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 2#64)

def NamedBody320_20 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 10

def NamedBody320_21 : StackLang.HolProg 64 :=
.seq NamedBody320_19 NamedBody320_20

def NamedBody320_22 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody320_23 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) NamedBody320_21 NamedBody320_22

def NamedBody320_24 : StackLang.HolProg 64 :=
.seq NamedBody320_18 NamedBody320_23

def NamedBody320_25 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def NamedBody320_26 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody320_27 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 320 3

def NamedBody320_28 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody320_29 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody320_30 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody320_31 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody320_32 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def NamedBody320_33 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def NamedBody320_34 : StackLang.HolProg 64 :=
.seq NamedBody320_32 NamedBody320_33

def NamedBody320_35 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def NamedBody320_36 : StackLang.HolProg 64 :=
.seq NamedBody320_34 NamedBody320_35

def NamedBody320_37 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody320_38 : StackLang.HolProg 64 :=
.seq NamedBody320_36 NamedBody320_37

def NamedBody320_39 : StackLang.HolProg 64 :=
.seq NamedBody320_31 NamedBody320_38

def NamedBody320_40 : StackLang.HolProg 64 :=
.seq NamedBody320_30 NamedBody320_39

def NamedBody320_41 : StackLang.HolProg 64 :=
.seq NamedBody320_29 NamedBody320_40

def NamedBody320_42 : StackLang.HolProg 64 :=
.seq NamedBody320_28 NamedBody320_41

def NamedBody320_43 : StackLang.HolProg 64 :=
.seq NamedBody320_27 NamedBody320_42

def NamedBody320_44 : StackLang.HolProg 64 :=
.seq NamedBody320_26 NamedBody320_43

def NamedBody320_45 : StackLang.HolProg 64 :=
.seq NamedBody320_25 NamedBody320_44

def NamedBody320_46 : StackLang.HolProg 64 :=
.seq NamedBody320_24 NamedBody320_45

def NamedBody320_47 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody320_48 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody320_49 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody320_50 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody320_51 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody320_52 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody320_53 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 1 10
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 10)))

def NamedBody320_54 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 5
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 24#64))

def NamedBody320_55 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 7
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody320_56 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 6
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody320_57 : StackLang.HolProg 64 :=
.seq NamedBody320_55 NamedBody320_56

def NamedBody320_58 : StackLang.HolProg 64 :=
.seq NamedBody320_54 NamedBody320_57

def NamedBody320_59 : StackLang.HolProg 64 :=
.seq NamedBody320_53 NamedBody320_58

def NamedBody320_60 : StackLang.HolProg 64 :=
.seq NamedBody320_52 NamedBody320_59

def NamedBody320_61 : StackLang.HolProg 64 :=
.seq NamedBody320_51 NamedBody320_60

def NamedBody320_62 : StackLang.HolProg 64 :=
.seq NamedBody320_50 NamedBody320_61

def NamedBody320_63 : StackLang.HolProg 64 :=
.seq NamedBody320_49 NamedBody320_62

def NamedBody320_64 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 5
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 24#64))

def NamedBody320_65 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 7
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody320_66 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 6
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody320_67 : StackLang.HolProg 64 :=
.seq NamedBody320_65 NamedBody320_66

def NamedBody320_68 : StackLang.HolProg 64 :=
.seq NamedBody320_64 NamedBody320_67

def NamedBody320_69 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def NamedBody320_70 : StackLang.HolProg 64 :=
.seq NamedBody320_68 NamedBody320_69

def NamedBody320_71 : StackLang.HolProg 64 :=
.call (some (NamedBody320_63, 1, 320, 2)) (Sum.inl 310) (some (NamedBody320_70, 320, 3))

def NamedBody320_72 : StackLang.HolProg 64 :=
.seq NamedBody320_48 NamedBody320_71

def NamedBody320_73 : StackLang.HolProg 64 :=
.seq NamedBody320_47 NamedBody320_72

def NamedBody320_74 : StackLang.HolProg 64 :=
.seq NamedBody320_46 NamedBody320_73

def NamedBody320_75 : StackLang.HolProg 64 :=
.seq NamedBody320_17 NamedBody320_74

def NamedBody320_76 : StackLang.HolProg 64 :=
.seq NamedBody320_14 NamedBody320_75

def NamedBody320_77 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody320_78 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody320_79 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 10
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 7 0#64))

def NamedBody320_80 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody320_81 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 12 0#64)

def NamedBody320_82 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 13 1#64)

def NamedBody320_83 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody320_84 : StackLang.HolProg 64 :=
.seq NamedBody320_82 NamedBody320_83

def NamedBody320_85 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 13 0#64)

def NamedBody320_86 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody320_87 : StackLang.HolProg 64 :=
.seq NamedBody320_85 NamedBody320_86

def NamedBody320_88 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.equal) 5 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 12) NamedBody320_84 NamedBody320_87

def NamedBody320_89 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody320_90 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody320_91 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 12 0#64)

def NamedBody320_92 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 12 1#64)

def NamedBody320_93 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody320_94 : StackLang.HolProg 64 :=
.seq NamedBody320_92 NamedBody320_93

def NamedBody320_95 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 12 0#64)

def NamedBody320_96 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody320_97 : StackLang.HolProg 64 :=
.seq NamedBody320_95 NamedBody320_96

def NamedBody320_98 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.equal) 6 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 12) NamedBody320_94 NamedBody320_97

def NamedBody320_99 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody320_100 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 8 0#64)

def NamedBody320_101 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody320_102 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 12 12
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 13)))

def NamedBody320_103 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody320_104 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 12 11
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 11)))

def NamedBody320_105 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 11 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def NamedBody320_106 : StackLang.HolProg 64 :=
.seq NamedBody320_104 NamedBody320_105

def NamedBody320_107 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 13 0#64)

def NamedBody320_108 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 7
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 24#64))

def NamedBody320_109 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody320_110 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 897#64)

def NamedBody320_111 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody320_112 : StackLang.HolProg 64 :=
.seq NamedBody320_110 NamedBody320_111

def NamedBody320_113 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody320_114 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 2#64)

def NamedBody320_115 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 10

def NamedBody320_116 : StackLang.HolProg 64 :=
.seq NamedBody320_114 NamedBody320_115

def NamedBody320_117 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody320_118 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) NamedBody320_116 NamedBody320_117

def NamedBody320_119 : StackLang.HolProg 64 :=
.seq NamedBody320_113 NamedBody320_118

def NamedBody320_120 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def NamedBody320_121 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody320_122 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 320 5

def NamedBody320_123 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody320_124 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody320_125 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody320_126 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody320_127 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def NamedBody320_128 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def NamedBody320_129 : StackLang.HolProg 64 :=
.seq NamedBody320_127 NamedBody320_128

def NamedBody320_130 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def NamedBody320_131 : StackLang.HolProg 64 :=
.seq NamedBody320_129 NamedBody320_130

def NamedBody320_132 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody320_133 : StackLang.HolProg 64 :=
.seq NamedBody320_131 NamedBody320_132

def NamedBody320_134 : StackLang.HolProg 64 :=
.seq NamedBody320_126 NamedBody320_133

def NamedBody320_135 : StackLang.HolProg 64 :=
.seq NamedBody320_125 NamedBody320_134

def NamedBody320_136 : StackLang.HolProg 64 :=
.seq NamedBody320_124 NamedBody320_135

def NamedBody320_137 : StackLang.HolProg 64 :=
.seq NamedBody320_123 NamedBody320_136

def NamedBody320_138 : StackLang.HolProg 64 :=
.seq NamedBody320_122 NamedBody320_137

def NamedBody320_139 : StackLang.HolProg 64 :=
.seq NamedBody320_121 NamedBody320_138

def NamedBody320_140 : StackLang.HolProg 64 :=
.seq NamedBody320_120 NamedBody320_139

def NamedBody320_141 : StackLang.HolProg 64 :=
.seq NamedBody320_119 NamedBody320_140

def NamedBody320_142 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody320_143 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody320_144 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody320_145 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody320_146 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody320_147 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody320_148 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 11 10
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 10)))

def NamedBody320_149 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 32#64))

def NamedBody320_150 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 12
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 24#64))

def NamedBody320_151 : StackLang.HolProg 64 :=
.seq NamedBody320_149 NamedBody320_150

def NamedBody320_152 : StackLang.HolProg 64 :=
.seq NamedBody320_148 NamedBody320_151

def NamedBody320_153 : StackLang.HolProg 64 :=
.seq NamedBody320_147 NamedBody320_152

def NamedBody320_154 : StackLang.HolProg 64 :=
.seq NamedBody320_146 NamedBody320_153

def NamedBody320_155 : StackLang.HolProg 64 :=
.seq NamedBody320_145 NamedBody320_154

def NamedBody320_156 : StackLang.HolProg 64 :=
.seq NamedBody320_144 NamedBody320_155

def NamedBody320_157 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 32#64))

def NamedBody320_158 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 12
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 24#64))

def NamedBody320_159 : StackLang.HolProg 64 :=
.seq NamedBody320_157 NamedBody320_158

def NamedBody320_160 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def NamedBody320_161 : StackLang.HolProg 64 :=
.seq NamedBody320_159 NamedBody320_160

def NamedBody320_162 : StackLang.HolProg 64 :=
.call (some (NamedBody320_156, 1, 320, 4)) (Sum.inl 319) (some (NamedBody320_161, 320, 5))

def NamedBody320_163 : StackLang.HolProg 64 :=
.seq NamedBody320_143 NamedBody320_162

def NamedBody320_164 : StackLang.HolProg 64 :=
.seq NamedBody320_142 NamedBody320_163

def NamedBody320_165 : StackLang.HolProg 64 :=
.seq NamedBody320_141 NamedBody320_164

def NamedBody320_166 : StackLang.HolProg 64 :=
.seq NamedBody320_112 NamedBody320_165

def NamedBody320_167 : StackLang.HolProg 64 :=
.seq NamedBody320_109 NamedBody320_166

def NamedBody320_168 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody320_169 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody320_170 : StackLang.HolProg 64 :=
.seq NamedBody320_168 NamedBody320_169

def NamedBody320_171 : StackLang.HolProg 64 :=
.seq NamedBody320_167 NamedBody320_170

def NamedBody320_172 : StackLang.HolProg 64 :=
.seq NamedBody320_108 NamedBody320_171

def NamedBody320_173 : StackLang.HolProg 64 :=
.seq NamedBody320_107 NamedBody320_172

def NamedBody320_174 : StackLang.HolProg 64 :=
.seq NamedBody320_106 NamedBody320_173

def NamedBody320_175 : StackLang.HolProg 64 :=
.seq NamedBody320_103 NamedBody320_174

def NamedBody320_176 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody320_177 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 12 11
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 11)))

def NamedBody320_178 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 11 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def NamedBody320_179 : StackLang.HolProg 64 :=
.seq NamedBody320_177 NamedBody320_178

def NamedBody320_180 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 13 0#64)

def NamedBody320_181 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 7
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 24#64))

def NamedBody320_182 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody320_183 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 898#64)

def NamedBody320_184 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody320_185 : StackLang.HolProg 64 :=
.seq NamedBody320_183 NamedBody320_184

def NamedBody320_186 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody320_187 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 2#64)

def NamedBody320_188 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 10

def NamedBody320_189 : StackLang.HolProg 64 :=
.seq NamedBody320_187 NamedBody320_188

def NamedBody320_190 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody320_191 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) NamedBody320_189 NamedBody320_190

def NamedBody320_192 : StackLang.HolProg 64 :=
.seq NamedBody320_186 NamedBody320_191

def NamedBody320_193 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def NamedBody320_194 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody320_195 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 320 7

def NamedBody320_196 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody320_197 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody320_198 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody320_199 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody320_200 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def NamedBody320_201 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def NamedBody320_202 : StackLang.HolProg 64 :=
.seq NamedBody320_200 NamedBody320_201

def NamedBody320_203 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def NamedBody320_204 : StackLang.HolProg 64 :=
.seq NamedBody320_202 NamedBody320_203

def NamedBody320_205 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody320_206 : StackLang.HolProg 64 :=
.seq NamedBody320_204 NamedBody320_205

def NamedBody320_207 : StackLang.HolProg 64 :=
.seq NamedBody320_199 NamedBody320_206

def NamedBody320_208 : StackLang.HolProg 64 :=
.seq NamedBody320_198 NamedBody320_207

def NamedBody320_209 : StackLang.HolProg 64 :=
.seq NamedBody320_197 NamedBody320_208

def NamedBody320_210 : StackLang.HolProg 64 :=
.seq NamedBody320_196 NamedBody320_209

def NamedBody320_211 : StackLang.HolProg 64 :=
.seq NamedBody320_195 NamedBody320_210

def NamedBody320_212 : StackLang.HolProg 64 :=
.seq NamedBody320_194 NamedBody320_211

def NamedBody320_213 : StackLang.HolProg 64 :=
.seq NamedBody320_193 NamedBody320_212

def NamedBody320_214 : StackLang.HolProg 64 :=
.seq NamedBody320_192 NamedBody320_213

def NamedBody320_215 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody320_216 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody320_217 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody320_218 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody320_219 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody320_220 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody320_221 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 11 10
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 10)))

def NamedBody320_222 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 32#64))

def NamedBody320_223 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 12
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 24#64))

def NamedBody320_224 : StackLang.HolProg 64 :=
.seq NamedBody320_222 NamedBody320_223

def NamedBody320_225 : StackLang.HolProg 64 :=
.seq NamedBody320_221 NamedBody320_224

def NamedBody320_226 : StackLang.HolProg 64 :=
.seq NamedBody320_220 NamedBody320_225

def NamedBody320_227 : StackLang.HolProg 64 :=
.seq NamedBody320_219 NamedBody320_226

def NamedBody320_228 : StackLang.HolProg 64 :=
.seq NamedBody320_218 NamedBody320_227

def NamedBody320_229 : StackLang.HolProg 64 :=
.seq NamedBody320_217 NamedBody320_228

def NamedBody320_230 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 32#64))

def NamedBody320_231 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 12
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 24#64))

def NamedBody320_232 : StackLang.HolProg 64 :=
.seq NamedBody320_230 NamedBody320_231

def NamedBody320_233 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def NamedBody320_234 : StackLang.HolProg 64 :=
.seq NamedBody320_232 NamedBody320_233

def NamedBody320_235 : StackLang.HolProg 64 :=
.call (some (NamedBody320_229, 1, 320, 6)) (Sum.inl 315) (some (NamedBody320_234, 320, 7))

def NamedBody320_236 : StackLang.HolProg 64 :=
.seq NamedBody320_216 NamedBody320_235

def NamedBody320_237 : StackLang.HolProg 64 :=
.seq NamedBody320_215 NamedBody320_236

def NamedBody320_238 : StackLang.HolProg 64 :=
.seq NamedBody320_214 NamedBody320_237

def NamedBody320_239 : StackLang.HolProg 64 :=
.seq NamedBody320_185 NamedBody320_238

def NamedBody320_240 : StackLang.HolProg 64 :=
.seq NamedBody320_182 NamedBody320_239

def NamedBody320_241 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody320_242 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody320_243 : StackLang.HolProg 64 :=
.seq NamedBody320_241 NamedBody320_242

def NamedBody320_244 : StackLang.HolProg 64 :=
.seq NamedBody320_240 NamedBody320_243

def NamedBody320_245 : StackLang.HolProg 64 :=
.seq NamedBody320_181 NamedBody320_244

def NamedBody320_246 : StackLang.HolProg 64 :=
.seq NamedBody320_180 NamedBody320_245

def NamedBody320_247 : StackLang.HolProg 64 :=
.seq NamedBody320_179 NamedBody320_246

def NamedBody320_248 : StackLang.HolProg 64 :=
.seq NamedBody320_176 NamedBody320_247

def NamedBody320_249 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.notEqual) 8 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 12) NamedBody320_175 NamedBody320_248

def NamedBody320_250 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody320_251 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody320_252 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 11
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 12 0#64))

def NamedBody320_253 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 0#64)

def NamedBody320_254 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody320_255 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 40#64)))

def NamedBody320_256 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 1

def NamedBody320_257 : StackLang.HolProg 64 :=
.seq NamedBody320_255 NamedBody320_256

def NamedBody320_258 : StackLang.HolProg 64 :=
.seq NamedBody320_254 NamedBody320_257

def NamedBody320_259 : StackLang.HolProg 64 :=
.seq NamedBody320_253 NamedBody320_258

def NamedBody320_260 : StackLang.HolProg 64 :=
.seq NamedBody320_252 NamedBody320_259

def NamedBody320_261 : StackLang.HolProg 64 :=
.seq NamedBody320_251 NamedBody320_260

def NamedBody320_262 : StackLang.HolProg 64 :=
.seq NamedBody320_250 NamedBody320_261

def NamedBody320_263 : StackLang.HolProg 64 :=
.seq NamedBody320_249 NamedBody320_262

def NamedBody320_264 : StackLang.HolProg 64 :=
.seq NamedBody320_102 NamedBody320_263

def NamedBody320_265 : StackLang.HolProg 64 :=
.seq NamedBody320_101 NamedBody320_264

def NamedBody320_266 : StackLang.HolProg 64 :=
.seq NamedBody320_100 NamedBody320_265

def NamedBody320_267 : StackLang.HolProg 64 :=
.seq NamedBody320_99 NamedBody320_266

def NamedBody320_268 : StackLang.HolProg 64 :=
.seq NamedBody320_98 NamedBody320_267

def NamedBody320_269 : StackLang.HolProg 64 :=
.seq NamedBody320_91 NamedBody320_268

def NamedBody320_270 : StackLang.HolProg 64 :=
.seq NamedBody320_90 NamedBody320_269

def NamedBody320_271 : StackLang.HolProg 64 :=
.seq NamedBody320_89 NamedBody320_270

def NamedBody320_272 : StackLang.HolProg 64 :=
.seq NamedBody320_88 NamedBody320_271

def NamedBody320_273 : StackLang.HolProg 64 :=
.seq NamedBody320_81 NamedBody320_272

def NamedBody320_274 : StackLang.HolProg 64 :=
.seq NamedBody320_80 NamedBody320_273

def NamedBody320_275 : StackLang.HolProg 64 :=
.seq NamedBody320_79 NamedBody320_274

def NamedBody320_276 : StackLang.HolProg 64 :=
.seq NamedBody320_78 NamedBody320_275

def NamedBody320_277 : StackLang.HolProg 64 :=
.seq NamedBody320_77 NamedBody320_276

def NamedBody320_278 : StackLang.HolProg 64 :=
.seq NamedBody320_76 NamedBody320_277

def NamedBody320_279 : StackLang.HolProg 64 :=
.seq NamedBody320_13 NamedBody320_278

def NamedBody320_280 : StackLang.HolProg 64 :=
.seq NamedBody320_6 NamedBody320_279

def Named320 : Nat × StackLang.HolProg 64 := (320, NamedBody320_280)
theorem Named320_eq : StackNames.progCompEntryHOL RiscVConfig.riscvNames Removed320 = Named320 := by
  kernel_rfl
#print axioms Named320_eq
end InitECandidate.Proofs.BackendStages
