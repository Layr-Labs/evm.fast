import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.BackendStages.Removed337
import Flapjack.Compiler.Backend.Backend
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
namespace InitECandidate.Proofs.BackendStages
def NamedBody337_0 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 48#64)))

def NamedBody337_1 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 2#64)

def NamedBody337_2 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 10

def NamedBody337_3 : StackLang.HolProg 64 :=
.seq NamedBody337_1 NamedBody337_2

def NamedBody337_4 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody337_5 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) NamedBody337_3 NamedBody337_4

def NamedBody337_6 : StackLang.HolProg 64 :=
.seq NamedBody337_0 NamedBody337_5

def NamedBody337_7 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 40#64))

def NamedBody337_8 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 13
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 32#64))

def NamedBody337_9 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 11
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 24#64))

def NamedBody337_10 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 10
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody337_11 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 12
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody337_12 : StackLang.HolProg 64 :=
.seq NamedBody337_10 NamedBody337_11

def NamedBody337_13 : StackLang.HolProg 64 :=
.seq NamedBody337_9 NamedBody337_12

def NamedBody337_14 : StackLang.HolProg 64 :=
.seq NamedBody337_8 NamedBody337_13

def NamedBody337_15 : StackLang.HolProg 64 :=
.seq NamedBody337_7 NamedBody337_14

def NamedBody337_16 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody337_17 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 971#64)

def NamedBody337_18 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody337_19 : StackLang.HolProg 64 :=
.seq NamedBody337_17 NamedBody337_18

def NamedBody337_20 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody337_21 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 2#64)

def NamedBody337_22 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 10

def NamedBody337_23 : StackLang.HolProg 64 :=
.seq NamedBody337_21 NamedBody337_22

def NamedBody337_24 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody337_25 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) NamedBody337_23 NamedBody337_24

def NamedBody337_26 : StackLang.HolProg 64 :=
.seq NamedBody337_20 NamedBody337_25

def NamedBody337_27 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def NamedBody337_28 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody337_29 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 337 3

def NamedBody337_30 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody337_31 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody337_32 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody337_33 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody337_34 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def NamedBody337_35 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def NamedBody337_36 : StackLang.HolProg 64 :=
.seq NamedBody337_34 NamedBody337_35

def NamedBody337_37 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def NamedBody337_38 : StackLang.HolProg 64 :=
.seq NamedBody337_36 NamedBody337_37

def NamedBody337_39 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody337_40 : StackLang.HolProg 64 :=
.seq NamedBody337_38 NamedBody337_39

def NamedBody337_41 : StackLang.HolProg 64 :=
.seq NamedBody337_33 NamedBody337_40

def NamedBody337_42 : StackLang.HolProg 64 :=
.seq NamedBody337_32 NamedBody337_41

def NamedBody337_43 : StackLang.HolProg 64 :=
.seq NamedBody337_31 NamedBody337_42

def NamedBody337_44 : StackLang.HolProg 64 :=
.seq NamedBody337_30 NamedBody337_43

def NamedBody337_45 : StackLang.HolProg 64 :=
.seq NamedBody337_29 NamedBody337_44

def NamedBody337_46 : StackLang.HolProg 64 :=
.seq NamedBody337_28 NamedBody337_45

def NamedBody337_47 : StackLang.HolProg 64 :=
.seq NamedBody337_27 NamedBody337_46

def NamedBody337_48 : StackLang.HolProg 64 :=
.seq NamedBody337_26 NamedBody337_47

def NamedBody337_49 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody337_50 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody337_51 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody337_52 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody337_53 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody337_54 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody337_55 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 9 10
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 10)))

def NamedBody337_56 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 40#64))

def NamedBody337_57 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 12
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 32#64))

def NamedBody337_58 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 8
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 24#64))

def NamedBody337_59 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 7
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody337_60 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 6
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody337_61 : StackLang.HolProg 64 :=
.seq NamedBody337_59 NamedBody337_60

def NamedBody337_62 : StackLang.HolProg 64 :=
.seq NamedBody337_58 NamedBody337_61

def NamedBody337_63 : StackLang.HolProg 64 :=
.seq NamedBody337_57 NamedBody337_62

def NamedBody337_64 : StackLang.HolProg 64 :=
.seq NamedBody337_56 NamedBody337_63

def NamedBody337_65 : StackLang.HolProg 64 :=
.seq NamedBody337_55 NamedBody337_64

def NamedBody337_66 : StackLang.HolProg 64 :=
.seq NamedBody337_54 NamedBody337_65

def NamedBody337_67 : StackLang.HolProg 64 :=
.seq NamedBody337_53 NamedBody337_66

def NamedBody337_68 : StackLang.HolProg 64 :=
.seq NamedBody337_52 NamedBody337_67

def NamedBody337_69 : StackLang.HolProg 64 :=
.seq NamedBody337_51 NamedBody337_68

def NamedBody337_70 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 40#64))

def NamedBody337_71 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 12
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 32#64))

def NamedBody337_72 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 8
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 24#64))

def NamedBody337_73 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 7
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody337_74 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 6
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody337_75 : StackLang.HolProg 64 :=
.seq NamedBody337_73 NamedBody337_74

def NamedBody337_76 : StackLang.HolProg 64 :=
.seq NamedBody337_72 NamedBody337_75

def NamedBody337_77 : StackLang.HolProg 64 :=
.seq NamedBody337_71 NamedBody337_76

def NamedBody337_78 : StackLang.HolProg 64 :=
.seq NamedBody337_70 NamedBody337_77

def NamedBody337_79 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def NamedBody337_80 : StackLang.HolProg 64 :=
.seq NamedBody337_78 NamedBody337_79

def NamedBody337_81 : StackLang.HolProg 64 :=
.call (some (NamedBody337_69, 1, 337, 2)) (Sum.inl 335) (some (NamedBody337_80, 337, 3))

def NamedBody337_82 : StackLang.HolProg 64 :=
.seq NamedBody337_50 NamedBody337_81

def NamedBody337_83 : StackLang.HolProg 64 :=
.seq NamedBody337_49 NamedBody337_82

def NamedBody337_84 : StackLang.HolProg 64 :=
.seq NamedBody337_48 NamedBody337_83

def NamedBody337_85 : StackLang.HolProg 64 :=
.seq NamedBody337_19 NamedBody337_84

def NamedBody337_86 : StackLang.HolProg 64 :=
.seq NamedBody337_16 NamedBody337_85

def NamedBody337_87 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody337_88 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 8#64)

def NamedBody337_89 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody337_90 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody337_91 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody337_92 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 12
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551480#64))

def NamedBody337_93 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 6#64)

def NamedBody337_94 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody337_95 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def NamedBody337_96 : StackLang.HolProg 64 :=
.seq NamedBody337_94 NamedBody337_95

def NamedBody337_97 : StackLang.HolProg 64 :=
.seq NamedBody337_93 NamedBody337_96

def NamedBody337_98 : StackLang.HolProg 64 :=
.seq NamedBody337_92 NamedBody337_97

def NamedBody337_99 : StackLang.HolProg 64 :=
.seq NamedBody337_91 NamedBody337_98

def NamedBody337_100 : StackLang.HolProg 64 :=
.seq NamedBody337_90 NamedBody337_99

def NamedBody337_101 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 5 12
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 12)))

def NamedBody337_102 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 10 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 11) NamedBody337_100 NamedBody337_101

def NamedBody337_103 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody337_104 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody337_105 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 0#64)

def NamedBody337_106 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 13 0#64)

def NamedBody337_107 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody337_108 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody337_109 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody337_110 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody337_111 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody337_112 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 12 13
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 9)))

def NamedBody337_113 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load8 12
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 12 0#64))

def NamedBody337_114 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody337_115 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsl 10 10
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 8#64)))

def NamedBody337_116 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 10 12
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 10)))

def NamedBody337_117 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody337_118 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 13 13
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 1#64)))

def NamedBody337_119 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody337_120 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.continue 0

def NamedBody337_121 : StackLang.HolProg 64 :=
.seq NamedBody337_119 NamedBody337_120

def NamedBody337_122 : StackLang.HolProg 64 :=
.seq NamedBody337_118 NamedBody337_121

def NamedBody337_123 : StackLang.HolProg 64 :=
.seq NamedBody337_117 NamedBody337_122

def NamedBody337_124 : StackLang.HolProg 64 :=
.seq NamedBody337_116 NamedBody337_123

def NamedBody337_125 : StackLang.HolProg 64 :=
.seq NamedBody337_115 NamedBody337_124

def NamedBody337_126 : StackLang.HolProg 64 :=
.seq NamedBody337_114 NamedBody337_125

def NamedBody337_127 : StackLang.HolProg 64 :=
.seq NamedBody337_113 NamedBody337_126

def NamedBody337_128 : StackLang.HolProg 64 :=
.seq NamedBody337_112 NamedBody337_127

def NamedBody337_129 : StackLang.HolProg 64 :=
.seq NamedBody337_111 NamedBody337_128

def NamedBody337_130 : StackLang.HolProg 64 :=
.seq NamedBody337_110 NamedBody337_129

def NamedBody337_131 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody337_132 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.break 0

def NamedBody337_133 : StackLang.HolProg 64 :=
.seq NamedBody337_131 NamedBody337_132

def NamedBody337_134 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 13 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 11) NamedBody337_130 NamedBody337_133

def NamedBody337_135 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody337_136 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody337_137 : StackLang.HolProg 64 :=
.seq NamedBody337_135 NamedBody337_136

def NamedBody337_138 : StackLang.HolProg 64 :=
.seq NamedBody337_134 NamedBody337_137

def NamedBody337_139 : StackLang.HolProg 64 :=
.seq NamedBody337_109 NamedBody337_138

def NamedBody337_140 : StackLang.HolProg 64 :=
.loop NamedBody337_139

def NamedBody337_141 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody337_142 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody337_143 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 48#64)))

def NamedBody337_144 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 1

def NamedBody337_145 : StackLang.HolProg 64 :=
.seq NamedBody337_143 NamedBody337_144

def NamedBody337_146 : StackLang.HolProg 64 :=
.seq NamedBody337_142 NamedBody337_145

def NamedBody337_147 : StackLang.HolProg 64 :=
.seq NamedBody337_141 NamedBody337_146

def NamedBody337_148 : StackLang.HolProg 64 :=
.seq NamedBody337_140 NamedBody337_147

def NamedBody337_149 : StackLang.HolProg 64 :=
.seq NamedBody337_108 NamedBody337_148

def NamedBody337_150 : StackLang.HolProg 64 :=
.seq NamedBody337_107 NamedBody337_149

def NamedBody337_151 : StackLang.HolProg 64 :=
.seq NamedBody337_106 NamedBody337_150

def NamedBody337_152 : StackLang.HolProg 64 :=
.seq NamedBody337_105 NamedBody337_151

def NamedBody337_153 : StackLang.HolProg 64 :=
.seq NamedBody337_104 NamedBody337_152

def NamedBody337_154 : StackLang.HolProg 64 :=
.seq NamedBody337_103 NamedBody337_153

def NamedBody337_155 : StackLang.HolProg 64 :=
.seq NamedBody337_102 NamedBody337_154

def NamedBody337_156 : StackLang.HolProg 64 :=
.seq NamedBody337_89 NamedBody337_155

def NamedBody337_157 : StackLang.HolProg 64 :=
.seq NamedBody337_88 NamedBody337_156

def NamedBody337_158 : StackLang.HolProg 64 :=
.seq NamedBody337_87 NamedBody337_157

def NamedBody337_159 : StackLang.HolProg 64 :=
.seq NamedBody337_86 NamedBody337_158

def NamedBody337_160 : StackLang.HolProg 64 :=
.seq NamedBody337_15 NamedBody337_159

def NamedBody337_161 : StackLang.HolProg 64 :=
.seq NamedBody337_6 NamedBody337_160

def Named337 : Nat × StackLang.HolProg 64 := (337, NamedBody337_161)
theorem Named337_eq : StackNames.progCompEntryHOL RiscVConfig.riscvNames Removed337 = Named337 := by
  kernel_rfl
#print axioms Named337_eq
end InitECandidate.Proofs.BackendStages
