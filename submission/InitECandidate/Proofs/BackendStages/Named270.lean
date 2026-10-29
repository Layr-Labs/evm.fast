import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.BackendStages.Removed270
import Flapjack.Compiler.Backend.Backend
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
namespace InitECandidate.Proofs.BackendStages
def NamedBody270_0 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 32#64)))

def NamedBody270_1 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 2#64)

def NamedBody270_2 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 10

def NamedBody270_3 : StackLang.HolProg 64 :=
.seq NamedBody270_1 NamedBody270_2

def NamedBody270_4 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody270_5 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) NamedBody270_3 NamedBody270_4

def NamedBody270_6 : StackLang.HolProg 64 :=
.seq NamedBody270_0 NamedBody270_5

def NamedBody270_7 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody270_8 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 12 0#64)

def NamedBody270_9 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 24#64))

def NamedBody270_10 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 11
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody270_11 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 10
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody270_12 : StackLang.HolProg 64 :=
.seq NamedBody270_10 NamedBody270_11

def NamedBody270_13 : StackLang.HolProg 64 :=
.seq NamedBody270_9 NamedBody270_12

def NamedBody270_14 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody270_15 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 656#64)

def NamedBody270_16 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody270_17 : StackLang.HolProg 64 :=
.seq NamedBody270_15 NamedBody270_16

def NamedBody270_18 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody270_19 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 2#64)

def NamedBody270_20 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 10

def NamedBody270_21 : StackLang.HolProg 64 :=
.seq NamedBody270_19 NamedBody270_20

def NamedBody270_22 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody270_23 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) NamedBody270_21 NamedBody270_22

def NamedBody270_24 : StackLang.HolProg 64 :=
.seq NamedBody270_18 NamedBody270_23

def NamedBody270_25 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def NamedBody270_26 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody270_27 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 270 3

def NamedBody270_28 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody270_29 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody270_30 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody270_31 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody270_32 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def NamedBody270_33 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def NamedBody270_34 : StackLang.HolProg 64 :=
.seq NamedBody270_32 NamedBody270_33

def NamedBody270_35 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def NamedBody270_36 : StackLang.HolProg 64 :=
.seq NamedBody270_34 NamedBody270_35

def NamedBody270_37 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody270_38 : StackLang.HolProg 64 :=
.seq NamedBody270_36 NamedBody270_37

def NamedBody270_39 : StackLang.HolProg 64 :=
.seq NamedBody270_31 NamedBody270_38

def NamedBody270_40 : StackLang.HolProg 64 :=
.seq NamedBody270_30 NamedBody270_39

def NamedBody270_41 : StackLang.HolProg 64 :=
.seq NamedBody270_29 NamedBody270_40

def NamedBody270_42 : StackLang.HolProg 64 :=
.seq NamedBody270_28 NamedBody270_41

def NamedBody270_43 : StackLang.HolProg 64 :=
.seq NamedBody270_27 NamedBody270_42

def NamedBody270_44 : StackLang.HolProg 64 :=
.seq NamedBody270_26 NamedBody270_43

def NamedBody270_45 : StackLang.HolProg 64 :=
.seq NamedBody270_25 NamedBody270_44

def NamedBody270_46 : StackLang.HolProg 64 :=
.seq NamedBody270_24 NamedBody270_45

def NamedBody270_47 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody270_48 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody270_49 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody270_50 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody270_51 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody270_52 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody270_53 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 12 10
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 10)))

def NamedBody270_54 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 7
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 24#64))

def NamedBody270_55 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 6
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody270_56 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 5
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody270_57 : StackLang.HolProg 64 :=
.seq NamedBody270_55 NamedBody270_56

def NamedBody270_58 : StackLang.HolProg 64 :=
.seq NamedBody270_54 NamedBody270_57

def NamedBody270_59 : StackLang.HolProg 64 :=
.seq NamedBody270_53 NamedBody270_58

def NamedBody270_60 : StackLang.HolProg 64 :=
.seq NamedBody270_52 NamedBody270_59

def NamedBody270_61 : StackLang.HolProg 64 :=
.seq NamedBody270_51 NamedBody270_60

def NamedBody270_62 : StackLang.HolProg 64 :=
.seq NamedBody270_50 NamedBody270_61

def NamedBody270_63 : StackLang.HolProg 64 :=
.seq NamedBody270_49 NamedBody270_62

def NamedBody270_64 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 7
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 24#64))

def NamedBody270_65 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 6
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody270_66 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 5
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody270_67 : StackLang.HolProg 64 :=
.seq NamedBody270_65 NamedBody270_66

def NamedBody270_68 : StackLang.HolProg 64 :=
.seq NamedBody270_64 NamedBody270_67

def NamedBody270_69 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def NamedBody270_70 : StackLang.HolProg 64 :=
.seq NamedBody270_68 NamedBody270_69

def NamedBody270_71 : StackLang.HolProg 64 :=
.call (some (NamedBody270_63, 1, 270, 2)) (Sum.inl 269) (some (NamedBody270_70, 270, 3))

def NamedBody270_72 : StackLang.HolProg 64 :=
.seq NamedBody270_48 NamedBody270_71

def NamedBody270_73 : StackLang.HolProg 64 :=
.seq NamedBody270_47 NamedBody270_72

def NamedBody270_74 : StackLang.HolProg 64 :=
.seq NamedBody270_46 NamedBody270_73

def NamedBody270_75 : StackLang.HolProg 64 :=
.seq NamedBody270_17 NamedBody270_74

def NamedBody270_76 : StackLang.HolProg 64 :=
.seq NamedBody270_14 NamedBody270_75

def NamedBody270_77 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody270_78 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 8#64)

def NamedBody270_79 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody270_80 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody270_81 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 4#64)

def NamedBody270_82 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody270_83 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551480#64))

def NamedBody270_84 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 3#64)

def NamedBody270_85 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody270_86 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def NamedBody270_87 : StackLang.HolProg 64 :=
.seq NamedBody270_85 NamedBody270_86

def NamedBody270_88 : StackLang.HolProg 64 :=
.seq NamedBody270_84 NamedBody270_87

def NamedBody270_89 : StackLang.HolProg 64 :=
.seq NamedBody270_83 NamedBody270_88

def NamedBody270_90 : StackLang.HolProg 64 :=
.seq NamedBody270_82 NamedBody270_89

def NamedBody270_91 : StackLang.HolProg 64 :=
.seq NamedBody270_81 NamedBody270_90

def NamedBody270_92 : StackLang.HolProg 64 :=
.seq NamedBody270_80 NamedBody270_91

def NamedBody270_93 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody270_94 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 1 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 11) NamedBody270_92 NamedBody270_93

def NamedBody270_95 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody270_96 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody270_97 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 0#64)

def NamedBody270_98 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 0#64)

def NamedBody270_99 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody270_100 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody270_101 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody270_102 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody270_103 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody270_104 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 13 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 12)))

def NamedBody270_105 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load8 13
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 13 0#64))

def NamedBody270_106 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody270_107 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsl 10 10
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 8#64)))

def NamedBody270_108 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 10 13
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 10)))

def NamedBody270_109 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody270_110 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 1 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 1#64)))

def NamedBody270_111 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody270_112 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.continue 0

def NamedBody270_113 : StackLang.HolProg 64 :=
.seq NamedBody270_111 NamedBody270_112

def NamedBody270_114 : StackLang.HolProg 64 :=
.seq NamedBody270_110 NamedBody270_113

def NamedBody270_115 : StackLang.HolProg 64 :=
.seq NamedBody270_109 NamedBody270_114

def NamedBody270_116 : StackLang.HolProg 64 :=
.seq NamedBody270_108 NamedBody270_115

def NamedBody270_117 : StackLang.HolProg 64 :=
.seq NamedBody270_107 NamedBody270_116

def NamedBody270_118 : StackLang.HolProg 64 :=
.seq NamedBody270_106 NamedBody270_117

def NamedBody270_119 : StackLang.HolProg 64 :=
.seq NamedBody270_105 NamedBody270_118

def NamedBody270_120 : StackLang.HolProg 64 :=
.seq NamedBody270_104 NamedBody270_119

def NamedBody270_121 : StackLang.HolProg 64 :=
.seq NamedBody270_103 NamedBody270_120

def NamedBody270_122 : StackLang.HolProg 64 :=
.seq NamedBody270_102 NamedBody270_121

def NamedBody270_123 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody270_124 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.break 0

def NamedBody270_125 : StackLang.HolProg 64 :=
.seq NamedBody270_123 NamedBody270_124

def NamedBody270_126 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 1 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 11) NamedBody270_122 NamedBody270_125

def NamedBody270_127 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody270_128 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody270_129 : StackLang.HolProg 64 :=
.seq NamedBody270_127 NamedBody270_128

def NamedBody270_130 : StackLang.HolProg 64 :=
.seq NamedBody270_126 NamedBody270_129

def NamedBody270_131 : StackLang.HolProg 64 :=
.seq NamedBody270_101 NamedBody270_130

def NamedBody270_132 : StackLang.HolProg 64 :=
.loop NamedBody270_131

def NamedBody270_133 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody270_134 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody270_135 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 32#64)))

def NamedBody270_136 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 7

def NamedBody270_137 : StackLang.HolProg 64 :=
.seq NamedBody270_135 NamedBody270_136

def NamedBody270_138 : StackLang.HolProg 64 :=
.seq NamedBody270_134 NamedBody270_137

def NamedBody270_139 : StackLang.HolProg 64 :=
.seq NamedBody270_133 NamedBody270_138

def NamedBody270_140 : StackLang.HolProg 64 :=
.seq NamedBody270_132 NamedBody270_139

def NamedBody270_141 : StackLang.HolProg 64 :=
.seq NamedBody270_100 NamedBody270_140

def NamedBody270_142 : StackLang.HolProg 64 :=
.seq NamedBody270_99 NamedBody270_141

def NamedBody270_143 : StackLang.HolProg 64 :=
.seq NamedBody270_98 NamedBody270_142

def NamedBody270_144 : StackLang.HolProg 64 :=
.seq NamedBody270_97 NamedBody270_143

def NamedBody270_145 : StackLang.HolProg 64 :=
.seq NamedBody270_96 NamedBody270_144

def NamedBody270_146 : StackLang.HolProg 64 :=
.seq NamedBody270_95 NamedBody270_145

def NamedBody270_147 : StackLang.HolProg 64 :=
.seq NamedBody270_94 NamedBody270_146

def NamedBody270_148 : StackLang.HolProg 64 :=
.seq NamedBody270_79 NamedBody270_147

def NamedBody270_149 : StackLang.HolProg 64 :=
.seq NamedBody270_78 NamedBody270_148

def NamedBody270_150 : StackLang.HolProg 64 :=
.seq NamedBody270_77 NamedBody270_149

def NamedBody270_151 : StackLang.HolProg 64 :=
.seq NamedBody270_76 NamedBody270_150

def NamedBody270_152 : StackLang.HolProg 64 :=
.seq NamedBody270_13 NamedBody270_151

def NamedBody270_153 : StackLang.HolProg 64 :=
.seq NamedBody270_8 NamedBody270_152

def NamedBody270_154 : StackLang.HolProg 64 :=
.seq NamedBody270_7 NamedBody270_153

def NamedBody270_155 : StackLang.HolProg 64 :=
.seq NamedBody270_6 NamedBody270_154

def Named270 : Nat × StackLang.HolProg 64 := (270, NamedBody270_155)
theorem Named270_eq : StackNames.progCompEntryHOL RiscVConfig.riscvNames Removed270 = Named270 := by
  kernel_rfl
#print axioms Named270_eq
end InitECandidate.Proofs.BackendStages
